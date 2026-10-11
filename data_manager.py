"""
NIDS Data Manager
Handles thread-safe storage of intrusion alerts, time-series metrics calculation,
persistence to disk (JSONL/CSV), and statistics generation for the Streamlit dashboard.
"""

import os
import json
import time
import threading
from datetime import datetime
from collections import deque
import pandas as pd

class NIDSDataManager:
    _instance = None
    _lock = threading.Lock()

    def __new__(cls, *args, **kwargs):
        with cls._lock:
            if cls._instance is None:
                cls._instance = super(NIDSDataManager, cls).__new__(cls)
                cls._instance._initialized = False
            return cls._instance

    def __init__(self, max_events=2000, max_metric_points=120, log_dir="logs"):
        if getattr(self, "_initialized", False):
            return
        
        self.max_events = max_events
        self.max_metric_points = max_metric_points
        self.log_dir = log_dir
        os.makedirs(self.log_dir, exist_ok=True)
        self.log_file = os.path.join(self.log_dir, "nids_events.jsonl")

        self.data_lock = threading.RLock()
        self.events = deque(maxlen=self.max_events)
        self.metric_series = deque(maxlen=self.max_metric_points)
        
        # Cumulative counters
        self.total_packets_ingested = 0
        self.total_attacks_detected = 0
        self.attack_counts = {
            "SYN_FLOOD": 0,
            "PORT_SCAN": 0,
            "UDP_FLOOD": 0,
            "SSH_BRUTE_FORCE": 0,
            "MALFORMED_PACKET": 0
        }
        
        # System status flags
        self.system_status = {
            "fpga_phy_mac": "ONLINE",
            "axi_stream_bus": "ACTIVE",
            "detection_core": "ARMED",
            "uart_tx_115200": "CONNECTED",
            "edge_server_pi": "RUNNING",
            "mode": "SIMULATION"
        }

        # Initialize with baseline metrics
        self._initialize_baseline_metrics()
        self._initialized = True

    def _initialize_baseline_metrics(self):
        """Pre-populate a few baseline metric points so charts look active immediately."""
        now = time.time()
        for i in range(30, 0, -1):
            ts = now - (i * 2)
            self.metric_series.append({
                "timestamp": datetime.fromtimestamp(ts),
                "epoch": ts,
                "throughput_mbps": round(38.5 + (i % 7) * 2.1, 2),
                "throughput_kpps": round(42.0 + (i % 5) * 3.4, 1),
                "uart_bps": 1280,
                "uart_util_pct": round((1280 / 11520) * 100, 1),
                "alerts_per_sec": 1 if i % 6 == 0 else 0,
                "fpga_latency_us": 0.18,
                "uart_latency_ms": 5.65,
                "total_latency_ms": 7.42
            })

    def record_event(self, raw_data):
        """
        Record a newly parsed intrusion alert.
        Expects a dict or JSON string matching Krushna's FPGA alert generator format:
        e.g., {"type":"SYN_FLOOD", "src":"192.168.1.10", "dst_port":80, ...}
        """
        if isinstance(raw_data, str):
            try:
                event_dict = json.loads(raw_data)
            except Exception:
                event_dict = {"type": "MALFORMED_PACKET", "raw": raw_data}
        else:
            event_dict = dict(raw_data)

        with self.data_lock:
            # Normalize fields
            attack_type = event_dict.get("type", "UNKNOWN_ATTACK").upper()
            src_ip = event_dict.get("src", event_dict.get("src_ip", "0.0.0.0"))
            dst_ip = event_dict.get("dst", event_dict.get("dst_ip", "192.168.1.50"))
            dst_port = int(event_dict.get("dst_port", event_dict.get("port", 80)))
            flags = event_dict.get("flags", "0x02")
            if isinstance(flags, int):
                flags = hex(flags)

            # Assign severity based on type
            severity = "HIGH"
            if attack_type in ["SYN_FLOOD", "DOS"]:
                severity = "CRITICAL"
            elif attack_type in ["SSH_BRUTE_FORCE"]:
                severity = "HIGH"
            elif attack_type in ["PORT_SCAN"]:
                severity = "MEDIUM"
            elif attack_type in ["MALFORMED_PACKET"]:
                severity = "LOW"

            # Realistic latency measurements
            fpga_lat_us = float(event_dict.get("fpga_latency_us", 0.18))  # ~18 clock cycles @ 100MHz
            # 115200 baud transmission: ~65 bytes * 10 bits / 115200 bps = ~5.64ms
            uart_lat_ms = float(event_dict.get("uart_latency_ms", 5.65))
            edge_lat_ms = float(event_dict.get("edge_latency_ms", 1.82))
            total_lat_ms = round((fpga_lat_us / 1000.0) + uart_lat_ms + edge_lat_ms, 2)

            now = datetime.now()
            event_record = {
                "id": len(self.events) + 1,
                "timestamp": now.strftime("%Y-%m-%d %H:%M:%S"),
                "epoch": time.time(),
                "type": attack_type,
                "severity": severity,
                "src_ip": src_ip,
                "dst_ip": dst_ip,
                "dst_port": dst_port,
                "protocol": event_dict.get("protocol", "TCP"),
                "flags": flags,
                "fpga_latency_us": fpga_lat_us,
                "uart_latency_ms": uart_lat_ms,
                "total_latency_ms": total_lat_ms,
                "action": "BLOCKED" if severity in ["CRITICAL", "HIGH"] else "FLAGGED",
                "signature": f"RULE_{attack_type}_TRIG_0x{dst_port:04X}",
                "raw_json": json.dumps(event_dict)
            }

            self.events.appendleft(event_record)
            self.total_attacks_detected += 1
            self.attack_counts[attack_type] = self.attack_counts.get(attack_type, 0) + 1

            # Append to disk log
            try:
                with open(self.log_file, "a") as f:
                    f.write(json.dumps(event_record) + "\n")
            except Exception:
                pass

            return event_record

    def record_metrics_snapshot(self, throughput_mbps, throughput_kpps, alerts_sec=0, uart_bytes=0):
        """Append a time-series metric snapshot for graphical display."""
        with self.data_lock:
            now_dt = datetime.now()
            # 115,200 baud theoretical maximum byte rate = 11,520 bytes/sec
            max_uart_bytes = 11520.0
            uart_util = min(100.0, round((uart_bytes / max_uart_bytes) * 100, 2))

            snapshot = {
                "timestamp": now_dt,
                "epoch": time.time(),
                "throughput_mbps": round(throughput_mbps, 2),
                "throughput_kpps": round(throughput_kpps, 1),
                "uart_bps": uart_bytes * 8,
                "uart_util_pct": uart_util,
                "alerts_per_sec": alerts_sec,
                "fpga_latency_us": 0.18,
                "uart_latency_ms": 5.65,
                "total_latency_ms": 7.42
            }
            self.metric_series.append(snapshot)
            self.total_packets_ingested += int(throughput_kpps * 1000 * 2)

    def get_events_df(self, limit=None):
        """Return the event timelog as a pandas DataFrame."""
        with self.data_lock:
            ev_list = list(self.events)
            if limit:
                ev_list = ev_list[:limit]
            if not ev_list:
                return pd.DataFrame(columns=[
                    "id", "timestamp", "type", "severity", "src_ip", 
                    "dst_port", "protocol", "flags", "total_latency_ms", "action"
                ])
            return pd.DataFrame(ev_list)

    def get_metrics_df(self):
        """Return metric time-series as a pandas DataFrame."""
        with self.data_lock:
            if not self.metric_series:
                return pd.DataFrame(columns=[
                    "timestamp", "throughput_mbps", "throughput_kpps", 
                    "uart_util_pct", "alerts_per_sec", "total_latency_ms"
                ])
            return pd.DataFrame(list(self.metric_series))

    def get_summary_stats(self):
        """Compute key KPI metrics."""
        with self.data_lock:
            metrics_df = self.get_metrics_df()
            curr_mbps = metrics_df["throughput_mbps"].iloc[-1] if not metrics_df.empty else 45.2
            curr_kpps = metrics_df["throughput_kpps"].iloc[-1] if not metrics_df.empty else 52.8
            curr_uart_util = metrics_df["uart_util_pct"].iloc[-1] if not metrics_df.empty else 12.4
            
            # Active attacks in the last 60 seconds
            now_epoch = time.time()
            recent_attacks = sum(1 for e in self.events if (now_epoch - e.get("epoch", 0)) <= 60)

            return {
                "total_attacks": self.total_attacks_detected,
                "recent_attacks_60s": recent_attacks,
                "current_throughput_mbps": curr_mbps,
                "current_throughput_kpps": curr_kpps,
                "uart_utilization_pct": curr_uart_util,
                "avg_fpga_latency_us": 0.18,
                "avg_uart_latency_ms": 5.65,
                "avg_pipeline_latency_ms": 7.42,
                "attack_distribution": dict(self.attack_counts),
                "system_status": dict(self.system_status)
            }

    def clear_all(self):
        """Reset in-memory tables and logs."""
        with self.data_lock:
            self.events.clear()
            self.total_attacks_detected = 0
            for k in self.attack_counts:
                self.attack_counts[k] = 0
            self._initialize_baseline_metrics()
            if os.path.exists(self.log_file):
                try:
                    open(self.log_file, "w").close()
                except Exception:
                    pass

# Global instance
manager = NIDSDataManager()
