"""
Serial Listener & Hardware/Simulation Bridge for Spartan-6 NIDS.
Handles receiving JSON alert packets over UART (115200 baud) as defined in Phase 3 & 4,
and provides a realistic background simulation engine for testing and live demonstrations.
"""

import time
import json
import random
import threading
from data_manager import manager

try:
    import serial
    import serial.tools.list_ports
    SERIAL_AVAILABLE = True
except ImportError:
    SERIAL_AVAILABLE = False


class SerialNIDSListener:
    _instance = None
    _lock = threading.Lock()

    def __new__(cls, *args, **kwargs):
        with cls._lock:
            if cls._instance is None:
                cls._instance = super(SerialNIDSListener, cls).__new__(cls)
                cls._instance._initialized = False
            return cls._instance

    def __init__(self):
        if getattr(self, "_initialized", False):
            return
        
        self.mode = "SIMULATION"  # "SIMULATION" or "HARDWARE"
        self.port_name = "COM3"
        self.baud_rate = 115200
        self.is_running = False
        self.thread = None
        self.serial_handle = None
        self.bytes_read_window = 0
        self.last_metrics_calc = time.time()
        self.traffic_intensity = 1.0  # Multiplier for simulation traffic
        
        self._initialized = True
        self.start()

    @staticmethod
    def get_available_ports():
        """List available system COM / tty ports."""
        if not SERIAL_AVAILABLE:
            return ["No PySerial installed"]
        ports = serial.tools.list_ports.comports()
        port_list = [p.device for p in ports]
        if not port_list:
            port_list = ["No Hardware COM Ports Detected (Use Simulation)"]
        return port_list

    def set_mode(self, mode, port="COM3", baud=115200):
        """Switch between Simulation and Hardware UART mode."""
        if self.mode == mode and self.port_name == port and self.baud_rate == baud:
            return
        
        self.stop()
        self.mode = mode
        self.port_name = port
        self.baud_rate = baud
        self.start()

    def start(self):
        """Start the background ingestion thread."""
        if self.is_running:
            return
        self.is_running = True
        self.thread = threading.Thread(target=self._worker_loop, daemon=True)
        self.thread.start()

    def stop(self):
        """Stop ingestion worker."""
        self.is_running = False
        if self.serial_handle:
            try:
                self.serial_handle.close()
            except Exception:
                pass
            self.serial_handle = None
        if self.thread and self.thread.is_alive():
            self.thread.join(timeout=1.5)

    def trigger_manual_attack(self, attack_type="SYN_FLOOD", target_port=80, attacker_ip="192.168.1.10"):
        """Inject a high-priority attack immediately for demonstration."""
        flags_map = {
            "SYN_FLOOD": "0x02",
            "PORT_SCAN": "0x02",
            "SSH_BRUTE_FORCE": "0x18",
            "UDP_FLOOD": "0x00",
            "MALFORMED_PACKET": "0x29"  # XMAS scan: FIN+PSH+URG
        }
        alert = {
            "type": attack_type,
            "src": attacker_ip,
            "dst_port": target_port,
            "flags": flags_map.get(attack_type, "0x02"),
            "fpga_latency_us": 0.18,
            "uart_latency_ms": 5.65,
            "edge_latency_ms": 1.75
        }
        manager.record_event(alert)
        return alert

    def _worker_loop(self):
        """Main background worker loop handling either hardware UART or simulation."""
        while self.is_running:
            if self.mode == "HARDWARE":
                self._run_hardware_uart()
            else:
                self._run_simulation_step()
            time.sleep(1.0)

    def _run_hardware_uart(self):
        """Connect and stream from physical UART (Spartan-6 / Raspberry Pi)."""
        manager.system_status["mode"] = "HARDWARE_UART"
        if not SERIAL_AVAILABLE:
            manager.system_status["uart_tx_115200"] = "ERR_NO_PYSERIAL"
            time.sleep(2)
            return

        try:
            if self.serial_handle is None or not self.serial_handle.is_open:
                self.serial_handle = serial.Serial(self.port_name, self.baud_rate, timeout=1)
                manager.system_status["uart_tx_115200"] = f"CONNECTED ({self.port_name} @ {self.baud_rate})"
            
            line_bytes = self.serial_handle.readline()
            if line_bytes:
                self.bytes_read_window += len(line_bytes)
                line_str = line_bytes.decode("utf-8", errors="ignore").strip()
                if line_str.startswith("{") and line_str.endswith("}"):
                    manager.record_event(line_str)

        except Exception as e:
            manager.system_status["uart_tx_115200"] = f"DISCONNECTED: {str(e)[:30]}"
            if self.serial_handle:
                try:
                    self.serial_handle.close()
                except Exception:
                    pass
                self.serial_handle = None
            time.sleep(2)

        self._update_telemetry(is_hardware=True)

    def _run_simulation_step(self):
        """Generate simulated network telemetry and sporadic attacks matching Krushna's testbench."""
        manager.system_status["mode"] = "SIMULATION"
        manager.system_status["uart_tx_115200"] = f"VIRTUAL (115200 baud stream)"

        # Periodic attack generation (~25% probability every step)
        if random.random() < (0.28 * self.traffic_intensity):
            attack_choices = [
                ("SYN_FLOOD", 80, "192.168.1.10", "0x02"),
                ("PORT_SCAN", random.choice([21, 22, 23, 80, 443, 3389, 8080]), f"192.168.1.{random.randint(15, 95)}", "0x02"),
                ("SSH_BRUTE_FORCE", 22, "10.0.0.15", "0x18"),
                ("UDP_FLOOD", 53, "172.16.0.88", "0x00"),
                ("MALFORMED_PACKET", 8080, "192.168.1.105", "0x29")
            ]
            choice = random.choice(attack_choices)
            alert = {
                "type": choice[0],
                "src": choice[2],
                "dst_port": choice[1],
                "flags": choice[3],
                "fpga_latency_us": round(0.16 + random.uniform(0.01, 0.05), 3),
                "uart_latency_ms": round(5.4 + random.uniform(0.1, 0.5), 2),
                "edge_latency_ms": round(1.6 + random.uniform(0.1, 0.4), 2)
            }
            manager.record_event(alert)
            self.bytes_read_window += len(json.dumps(alert)) + 2

        self._update_telemetry(is_hardware=False)

    def _update_telemetry(self, is_hardware=False):
        """Calculate and publish achievable throughput and latency metrics."""
        now = time.time()
        elapsed = now - self.last_metrics_calc
        if elapsed >= 1.0:
            if is_hardware:
                uart_bytes_sec = self.bytes_read_window / elapsed
                # Derived network packet rate
                mbps = round(max(5.0, (uart_bytes_sec * 8 / 1000) * 1.5), 2)
                kpps = round(mbps * 1.48, 1)
            else:
                # Realistic Spartan-6 100M/1G Ethernet MAC Ingestion rate
                base_mbps = 52.0 * self.traffic_intensity
                mbps = round(base_mbps + random.uniform(-6.0, 7.5), 2)
                # 64-byte to 1500-byte packets average ~800 bytes -> 1 Mbps ~ 156 pps
                kpps = round((mbps * 1.25) + random.uniform(-2.0, 2.0), 1)
                uart_bytes_sec = min(11520, self.bytes_read_window)

            manager.record_metrics_snapshot(
                throughput_mbps=mbps,
                throughput_kpps=kpps,
                alerts_sec=round(self.bytes_read_window / 65.0, 1),
                uart_bytes=int(uart_bytes_sec)
            )

            self.bytes_read_window = 0
            self.last_metrics_calc = now


# Global listener instance
listener = SerialNIDSListener()
