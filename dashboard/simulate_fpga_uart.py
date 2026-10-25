"""
Standalone Hardware FPGA Simulator for Spartan-6 UART Serial Output.
Used to test Phase 4 (Adv's Raspberry Pi listener and Web Server) independently
by sending realistic JSON alert strings over a physical or virtual serial port.
"""

import time
import json
import random
import argparse

try:
    import serial
    SERIAL_AVAILABLE = True
except ImportError:
    SERIAL_AVAILABLE = False


def run_simulator(port=None, baud=115200, interval=2.0):
    print("=" * 60)
    print(" Spartan-6 FPGA NIDS UART Serial Output Simulator")
    print(f" Target Port: {port or 'CONSOLE STDOUT'} | Baud: {baud}")
    print("=" * 60)

    ser = None
    if port and SERIAL_AVAILABLE:
        try:
            ser = serial.Serial(port, baud, timeout=1)
            print(f"[OK] Opened serial port {port} at {baud} baud.")
        except Exception as e:
            print(f"[WARN] Could not open {port}: {e}. Outputting to console.")

    attack_types = [
        {"type": "SYN_FLOOD", "src": "192.168.1.10", "dst_port": 80, "flags": "0x02"},
        {"type": "PORT_SCAN", "src": "192.168.1.45", "dst_port": 443, "flags": "0x02"},
        {"type": "PORT_SCAN", "src": "192.168.1.45", "dst_port": 22, "flags": "0x02"},
        {"type": "SSH_BRUTE_FORCE", "src": "10.0.0.15", "dst_port": 22, "flags": "0x18"},
        {"type": "UDP_FLOOD", "src": "172.16.0.88", "dst_port": 53, "flags": "0x00"},
        {"type": "MALFORMED_PACKET", "src": "192.168.1.105", "dst_port": 8080, "flags": "0x29"}
    ]

    packet_counter = 0

    try:
        while True:
            choice = random.choice(attack_types).copy()
            choice["seq"] = packet_counter
            choice["fpga_latency_us"] = round(0.16 + random.uniform(0.01, 0.04), 3)
            choice["timestamp"] = int(time.time())

            json_line = json.dumps(choice) + "\r\n"
            
            if ser and ser.is_open:
                ser.write(json_line.encode("utf-8"))
                print(f"[UART TX -> {port}]: {json_line.strip()}")
            else:
                print(f"[SIMULATED UART TX]: {json_line.strip()}")

            packet_counter += 1
            time.sleep(interval)

    except KeyboardInterrupt:
        print("\nStopping Spartan-6 simulator.")
        if ser:
            ser.close()


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Simulate Spartan-6 FPGA UART output")
    parser.add_argument("--port", type=str, default=None, help="Serial port to write to (e.g., COM4 or /dev/ttyUSB0)")
    parser.add_argument("--baud", type=int, default=115200, help="Baud rate (default: 115200)")
    parser.add_argument("--interval", type=float, default=2.0, help="Seconds between alerts")
    args = parser.parse_args()

    run_simulator(port=args.port, baud=args.baud, interval=args.interval)
