#!/usr/bin/env python3
"""
Reads NIDS alert lines from the Mimas V2 USB-UART (19200 8N1), verifies the CRC-16,
detects dropped alerts and prints a readable summary.  Feed `alert` dicts to your
dashboard where marked.

    pip install pyserial
    python nids_dashboard_reader.py COM5          (or /dev/ttyUSB1)
"""
import sys, json, binascii
import serial

MARK = b'"crc":"'

def parse_line(line: bytes):
    """Return (message_dict, crc_ok).  Raises ValueError on a garbled line."""
    i = line.rindex(MARK) + len(MARK)                   # CRC covers bytes up to here
    crc_ok = binascii.crc_hqx(line[:i], 0xFFFF) == int(line[i:i + 4], 16)
    return json.loads(line), crc_ok                     # CRC-16/CCITT-FALSE

def main(port):
    ser = serial.Serial(port, 19200, timeout=1)
    last_id = None
    while True:
        raw = ser.readline().strip()
        if not raw:
            continue
        try:
            msg, ok = parse_line(raw)
        except ValueError:
            print("garbled line ignored:", raw[:60]); continue
        if not ok:
            print("CRC FAIL, dropped:", raw[:60]); continue

        if msg["t"] == 2:                                # heartbeat
            print("[%8d ms] NIDS alive" % msg["up"]); continue

        if last_id is not None and msg["id"] != last_id + 1:
            print("!! %d alert(s) lost before id %d" % (msg["id"] - last_id - 1, msg["id"]))
        last_id = msg["id"]

        alert = msg                                      # <-- hand `alert` to your dashboard here
        print("[%8d ms] %-8s %-22s %s:%s (%s) -> %s:%s | %s=%s | %s | suppressed=%d" % (
            alert["up"], alert["sev"], alert["rule"], alert["sip"], alert["sp"], alert["smac"],
            alert["dip"], alert["dp"], alert["ev"], alert["val"], alert["st"], alert["sup"]))

if __name__ == "__main__":
    main(sys.argv[1] if len(sys.argv) > 1 else "COM5")
