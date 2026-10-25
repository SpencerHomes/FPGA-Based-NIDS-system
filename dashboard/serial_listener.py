"""Fixed-19200-baud UART receiver and JSON-lines alert parser for SENTINEL.

Expected input: one UTF-8 JSON object per line (LF or CRLF). The parser accepts
common field aliases and preserves unknown alert names rather than inventing detections.
"""
from __future__ import annotations

import json
import random
import threading
import time
from collections import deque
from datetime import datetime, timezone
from typing import Any

try:
    import serial
    import serial.tools.list_ports
except ImportError:
    serial = None

BAUD_RATE = 19200  # Intentionally fixed: do not make this a UI/configurable value.
MAX_EVENTS = 1000

SEVERITY_BY_TYPE = {
    "SYN_FLOOD": "CRITICAL",
    "DOS": "CRITICAL",
    "DDOS": "CRITICAL",
    "SSH_BRUTE_FORCE": "HIGH",
    "UDP_FLOOD": "HIGH",
    "PORT_SCAN": "MEDIUM",
    "MALFORMED_PACKET": "LOW",
}
TYPE_ALIASES = {
    "SYN FLOOD": "SYN_FLOOD", "SYN-FLOOD": "SYN_FLOOD",
    "SSH BRUTE FORCE": "SSH_BRUTE_FORCE", "SSH-BRUTE-FORCE": "SSH_BRUTE_FORCE",
    "PORT SCAN": "PORT_SCAN", "UDP FLOOD": "UDP_FLOOD",
    "MALFORMED PACKET": "MALFORMED_PACKET",
}
VALID_SEVERITIES = {"CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO"}
HEARTBEAT_NAMES = {"HEARTBEAT", "BOARD_HEARTBEAT", "KEEPALIVE", "KEEP_ALIVE", "BOARD_ALIVE"}
HEARTBEAT_TIMEOUT_SECONDS = 6.0  # Heartbeat nominal interval is about 2 seconds.


def is_heartbeat_payload(data: dict[str, Any]) -> bool:
    """Identify the board's system heartbeat without treating it as an attack."""
    raw_type = str(_first(data, "type", "alert_type", "event", "signature", "name", default="")).strip()
    canonical = raw_type.upper().replace("-", "_").replace(" ", "_")
    if canonical in HEARTBEAT_NAMES:
        return True
    msg_type = _first(data, "t", "msg_type", "message_type", "type_id", default=None)
    status = str(_first(data, "st", "board_status", "device_status", "state", "status", default="")).strip().upper()
    # Signature visible in the board's heartbeat JSON: {"t": 2, "st": "ALIVE", ...}.
    return str(msg_type).strip() == "2" and status == "ALIVE"


def _first(data: dict, *keys: str, default: Any = None) -> Any:
    for key in keys:
        value = data.get(key)
        if value is not None and value != "":
            return value
    return default


def parse_json_objects(line: str) -> list[dict[str, Any]]:
    """Parse JSON object(s) from a line, allowing a short UART/log prefix."""
    result: list[dict[str, Any]] = []
    decoder = json.JSONDecoder()
    pos = 0
    while True:
        start = line.find("{", pos)
        if start < 0:
            break
        try:
            obj, end = decoder.raw_decode(line[start:])
        except json.JSONDecodeError:
            pos = start + 1
            if pos >= len(line):
                break
            continue
        if isinstance(obj, dict):
            result.append(obj)
        pos = start + end
        if pos >= len(line):
            break
    return result


def normalize_alert(payload: dict[str, Any], event_id: int, source_mode: str) -> dict[str, Any]:
    """Normalize an incoming message, distinguishing board heartbeats from detections."""
    nested = payload.get("alert")
    if not isinstance(nested, dict):
        nested = payload.get("data")
    data = nested if isinstance(nested, dict) else payload
    heartbeat = is_heartbeat_payload(data)

    raw_type = str(_first(data, "type", "alert_type", "event", "signature", "name", default="UNKNOWN")).strip()
    canonical_type = TYPE_ALIASES.get(raw_type.upper(), raw_type.upper().replace("-", "_").replace(" ", "_"))
    given_severity = str(_first(data, "severity", "priority", default="")).strip().upper()
    if heartbeat:
        canonical_type = "HEARTBEAT"
        severity = "INFO"
    else:
        severity = given_severity if given_severity in VALID_SEVERITIES else SEVERITY_BY_TYPE.get(canonical_type, "UNCLASSIFIED")

    flags = _first(data, "flags", "tcp_flags", default=None)
    if isinstance(flags, int):
        flags = f"0x{flags:02X}"
    elif flags is not None:
        flags = str(flags)

    timestamp = _first(data, "timestamp", "time", "datetime", default=None)
    if timestamp is None:
        timestamp = datetime.now().astimezone().isoformat(timespec="seconds")
    else:
        timestamp = str(timestamp)

    protocol = _first(data, "protocol", "proto", "l4_protocol", default=None)
    if protocol is not None:
        protocol = str(protocol).upper()

    description = _first(data, "description", "message", "detail", "reason", default=None)
    if heartbeat and not description:
        description = "FPGA board heartbeat received; firmware reports ALIVE."

    return {
        "id": event_id,
        "timestamp": timestamp,
        "received_at": datetime.now(timezone.utc).isoformat(timespec="seconds"),
        "type": canonical_type,
        "display_type": "Board Heartbeat" if heartbeat else canonical_type.replace("_", " ").title(),
        "severity": severity,
        "category": "SYSTEM" if heartbeat else "SECURITY",
        "is_heartbeat": heartbeat,
        "src_ip": _first(data, "src", "src_ip", "source_ip", "source", default=None),
        "dst_ip": _first(data, "dst", "dst_ip", "dest_ip", "destination_ip", "destination", default=None),
        "src_port": _first(data, "src_port", "source_port", default=None),
        "dst_port": _first(data, "dst_port", "dest_port", "destination_port", "port", default=None),
        "protocol": protocol,
        "flags": flags,
        "description": description,
        "rule_id": _first(data, "rule_id", "signature_id", "sid", default="SYSTEM_HEARTBEAT" if heartbeat else None),
        "device_status": _first(data, "st", "board_status", "device_status", "state", default=None) if heartbeat else None,
        "device_message_id": _first(data, "id", "message_id", default=None) if heartbeat else None,
        "device_uptime": _first(data, "up", "uptime", default=None) if heartbeat else None,
        "firmware_version": _first(data, "v", "version", default=None) if heartbeat else None,
        "crc": _first(data, "crc", "checksum", default=None) if heartbeat else None,
        "source_mode": source_mode.upper(),
        "raw": payload,
    }


class NIDSReceiver:
    """Thread-safe UART receiver, alert store, and optional clearly-marked demo mode."""
    def __init__(self, max_events: int = MAX_EVENTS):
        self.events = deque(maxlen=max_events)
        self.lock = threading.RLock()
        self.config_lock = threading.RLock()
        self.mode = "HARDWARE"
        self.port = "COM3"
        self.running = True
        self.serial_handle = None
        self.event_counter = 0
        self.started_at = time.time()
        self.status = {
            "mode": self.mode,
            "port": self.port,
            "baud": BAUD_RATE,
            "connected": False,
            "state": "Waiting for UART",
            "last_error": None,
            "last_rx": None,
            "bytes_received": 0,
            "lines_received": 0,
            "parse_errors": 0,
            "bytes_per_second": 0.0,
            "last_message": None,
            "heartbeat_count": 0,
            "last_heartbeat": None,
            "last_heartbeat_age_seconds": None,
            "board_online": False,
            "board_state": "NO HEARTBEAT",
        }
        self._last_heartbeat_monotonic: float | None = None
        self._rate_window_start = time.monotonic()
        self._rate_window_bytes = 0
        self.worker = threading.Thread(target=self._worker, daemon=True, name="nids-uart-reader")
        self.worker.start()

    @staticmethod
    def available_ports() -> list[str]:
        if serial is None:
            return []
        try:
            return sorted({item.device for item in serial.tools.list_ports.comports()})
        except Exception:
            return []

    def configure(self, mode: str | None = None, port: str | None = None) -> dict[str, Any]:
        new_mode = (mode or self.mode).strip().upper()
        if new_mode not in {"HARDWARE", "SIMULATION"}:
            raise ValueError("mode must be HARDWARE or SIMULATION")
        new_port = (port or self.port).strip()
        if new_mode == "HARDWARE" and not new_port:
            raise ValueError("Enter a serial port, for example COM3 or /dev/ttyUSB0")
        with self.config_lock:
            self._close_serial()
            self.mode, self.port = new_mode, new_port
            with self.lock:
                self.status.update({
                    "mode": new_mode,
                    "port": new_port,
                    "baud": BAUD_RATE,
                    "connected": False,
                    "state": "Waiting for UART" if new_mode == "HARDWARE" else "Demo mode active",
                    "last_error": None,
                    "bytes_per_second": 0.0,
                })
                self._last_heartbeat_monotonic = None
                self.status.update({"last_heartbeat": None, "last_heartbeat_age_seconds": None,
                                    "board_online": False, "board_state": "DEMO MODE" if new_mode == "SIMULATION" else "NO HEARTBEAT"})
        return self.get_status()

    def _close_serial(self) -> None:
        handle, self.serial_handle = self.serial_handle, None
        if handle is not None:
            try:
                handle.close()
            except Exception:
                pass

    def _record_payload(self, payload: dict[str, Any]) -> None:
        with self.lock:
            self.event_counter += 1
            event = normalize_alert(payload, self.event_counter, self.mode)
            self.events.appendleft(event)
            self.status["last_rx"] = datetime.now().astimezone().isoformat(timespec="seconds")
            self.status["last_message"] = event["type"]
            if event["is_heartbeat"]:
                self._last_heartbeat_monotonic = time.monotonic()
                self.status["heartbeat_count"] += 1
                self.status["last_heartbeat"] = self.status["last_rx"]
                self.status["last_heartbeat_age_seconds"] = 0.0
                self.status["board_online"] = True
                self.status["board_state"] = "ONLINE"

    def ingest_line(self, line: str, byte_count: int | None = None) -> int:
        """Ingest a decoded UART line. Returns the number of JSON objects parsed."""
        line = line.strip("\x00\r\n \t")
        if not line:
            return 0
        size = byte_count if byte_count is not None else len(line.encode("utf-8", errors="replace")) + 1
        with self.lock:
            self.status["bytes_received"] += size
            self.status["lines_received"] += 1
            self._rate_window_bytes += size
        objects = parse_json_objects(line)
        if not objects:
            with self.lock:
                self.status["parse_errors"] += 1
                self.status["last_error"] = "Bad UART line: expected a JSON object terminated by newline."
            return 0
        for payload in objects:
            self._record_payload(payload)
        with self.lock:
            self.status["last_error"] = None
        return len(objects)

    def get_status(self) -> dict[str, Any]:
        with self.lock:
            status = dict(self.status)
            age = None if self._last_heartbeat_monotonic is None else max(0.0, time.monotonic() - self._last_heartbeat_monotonic)
            online = age is not None and age <= HEARTBEAT_TIMEOUT_SECONDS and self.mode == "HARDWARE"
            status.update({"mode": self.mode, "port": self.port, "baud": BAUD_RATE,
                           "uptime_seconds": int(time.time() - self.started_at),
                           "last_heartbeat_age_seconds": round(age, 1) if age is not None else None,
                           "board_online": online,
                           "board_state": ("ONLINE" if online else "HEARTBEAT LOST" if age is not None and self.mode == "HARDWARE" else "DEMO MODE" if self.mode == "SIMULATION" else "NO HEARTBEAT")})
        status["available_ports"] = self.available_ports()
        return status

    def get_state(self) -> dict[str, Any]:
        with self.lock:
            events = list(self.events)
        status = self.get_status()
        counts = {key: 0 for key in ("CRITICAL", "HIGH", "MEDIUM", "LOW", "INFO", "UNCLASSIFIED")}
        type_counts: dict[str, int] = {}
        for event in events:
            counts[event["severity"]] = counts.get(event["severity"], 0) + 1
            type_counts[event["type"]] = type_counts.get(event["type"], 0) + 1
        return {"status": status, "events": events, "summary": {
            "total": len(events), "critical": counts["CRITICAL"], "high": counts["HIGH"],
            "medium": counts["MEDIUM"], "low": counts["LOW"], "info": counts["INFO"],
            "unclassified": counts["UNCLASSIFIED"], "types": type_counts,
        }}

    def clear_events(self) -> int:
        """Clear visible event history while preserving receiver and heartbeat health."""
        with self.lock:
            previous = len(self.events)
            self.events.clear()
            return previous

    def _worker(self) -> None:
        sim_next = time.monotonic() + 2.5
        while self.running:
            try:
                if self.mode == "SIMULATION":
                    with self.lock:
                        self.status.update({"connected": True, "state": "Demo mode active", "last_error": None})
                    now = time.monotonic()
                    if now >= sim_next:
                        self._emit_simulated_alert()
                        sim_next = now + random.uniform(5.0, 9.0)
                    time.sleep(0.15)
                else:
                    self._hardware_step()
            except Exception as exc:
                with self.lock:
                    self.status.update({"connected": False, "state": "Receiver error", "last_error": str(exc)[:240]})
                time.sleep(1)

    def _hardware_step(self) -> None:
        if serial is None:
            with self.lock:
                self.status.update({"connected": False, "state": "pyserial not installed",
                                    "last_error": "Install dependencies: pip install -r requirements.txt"})
            time.sleep(2)
            return
        if self.serial_handle is None:
            try:
                self.serial_handle = serial.Serial(
                    port=self.port, baudrate=BAUD_RATE, timeout=0.5,
                    bytesize=serial.EIGHTBITS, parity=serial.PARITY_NONE,
                    stopbits=serial.STOPBITS_ONE,
                )
                with self.lock:
                    self.status.update({"connected": True, "state": f"Connected · {self.port} · {BAUD_RATE} baud", "last_error": None})
            except Exception as exc:
                with self.lock:
                    self.status.update({"connected": False, "state": f"Waiting for {self.port}", "last_error": str(exc)[:240]})
                time.sleep(1.5)
                return
        try:
            raw = self.serial_handle.readline()
            if raw:
                self.ingest_line(raw.decode("utf-8", errors="replace"), byte_count=len(raw))
                with self.lock:
                    self.status["connected"] = True
                    self.status["state"] = f"Connected · {self.port} · {BAUD_RATE} baud"
            now = time.monotonic()
            if now - self._rate_window_start >= 1.0:
                with self.lock:
                    elapsed = now - self._rate_window_start
                    self.status["bytes_per_second"] = round(self._rate_window_bytes / max(elapsed, 0.001), 1)
                    self._rate_window_bytes = 0
                self._rate_window_start = now
        except Exception as exc:
            self._close_serial()
            with self.lock:
                self.status.update({"connected": False, "state": "Serial connection lost", "last_error": str(exc)[:240]})
            time.sleep(0.8)

    def _emit_simulated_alert(self) -> None:
        samples = [
            ("SYN_FLOOD", "CRITICAL", "192.168.1.44", "192.168.1.10", 80, "TCP"),
            ("PORT_SCAN", "MEDIUM", "10.0.0.23", "192.168.1.10", random.choice([22, 80, 443, 3389]), "TCP"),
            ("SSH_BRUTE_FORCE", "HIGH", "172.16.0.88", "192.168.1.10", 22, "TCP"),
            ("UDP_FLOOD", "HIGH", "192.168.1.105", "192.168.1.10", 53, "UDP"),
            ("MALFORMED_PACKET", "LOW", "203.0.113.9", "192.168.1.10", 8080, "TCP"),
        ]
        kind, severity, src, dst, port, proto = random.choice(samples)
        self._record_payload({
            "type": kind, "severity": severity, "src": src, "dst": dst,
            "dst_port": port, "protocol": proto,
            "description": "Demo event. Simulated data, not a live detection.",
        })

    def shutdown(self) -> None:
        self.running = False
        self._close_serial()
        if self.worker.is_alive():
            self.worker.join(timeout=2)
