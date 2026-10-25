# SENTINEL — FPGA NIDS live dashboard

A minimal local website and Python UART receiver for monitoring FPGA NIDS alerts.
The website uses Python's standard-library HTTP server; only `pyserial` is needed for real serial hardware.

## Windows setup

1. Install Python 3.10 or newer and ensure the `py` launcher works.
2. Extract the project ZIP.
3. Double-click `run_dashboard.bat`.
4. Open **http://127.0.0.1:5000** in your browser.
5. In **Input connection**, select Hardware UART, enter/select the correct serial port (for example `COM3`), and click **Apply input**. You can choose Demo events to preview the interface without hardware.

Keep the terminal window open. Press `Ctrl+C` in that window to stop the dashboard.

## Linux setup

```bash
cd nids_live_dashboard
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python app.py
```

Open **http://127.0.0.1:5000**. For real hardware, use the correct device path, such as `/dev/ttyUSB0` or `/dev/ttyACM0`. On Linux, serial access may require membership in the `dialout` group. Only one program can normally open a serial port at a time.

## UART settings (fixed)

The receiver uses **19200 baud, 8 data bits, no parity, 1 stop bit (8N1)**. Baud rate is fixed in `serial_listener.py` and cannot be changed from the website or configuration endpoint. The FPGA UART transmitter and USB-UART adapter must use the same settings.

## Expected alert format

The receiver expects UTF-8 JSON Lines: one JSON object per line, terminated with LF (`\n`) or CRLF (`\r\n`). Example:

```json
{"type":"SYN_FLOOD","severity":"CRITICAL","src":"192.168.1.44","dst":"192.168.1.10","dst_port":80,"protocol":"TCP","flags":"0x02"}
{"type":"PORT_SCAN","src_ip":"10.0.0.23","dst_ip":"192.168.1.10","dst_port":443,"protocol":"TCP"}
```

Common aliases such as `alert_type`, `source_ip`, `dest_ip`, `destination_port`, `proto`, and an object nested under `alert` or `data` are supported. Unknown alert names stay visible as `UNCLASSIFIED`. Explicit valid severity provided by the sender takes precedence over the dashboard's display mapping. Missing source/destination fields remain blank; the dashboard does not fill them with fictional values.

If the FPGA sends binary bytes, a fixed-width record, or a different delimiter rather than JSON Lines, this parser must be adapted to the actual UART transmitter format. This application only displays the alert claims it receives; it does not prove the FPGA detected or blocked an attack.

## Board heartbeat handling

The receiver recognizes the board heartbeat signature `{"t":2,"st":"ALIVE", ...}` (also shown with version, message ID, uptime field, and CRC in the raw payload). It displays this as **Board Heartbeat** with **INFO** severity rather than an unclassified security alert. The header reports the UART connection separately from board health. With a heartbeat arriving about every two seconds, the board is considered online while a heartbeat was seen in the last six seconds; after that it reports **Heartbeat lost**. In demo mode, hardware heartbeat health is explicitly not measured.

The event stream severity filter is a multi-select checklist. **Clear all** clears the currently retained event history while leaving UART reception and current board heartbeat health running.

## Run tests

```bash
python -m unittest -v
```

The dashboard retains the latest 1,000 alerts in memory. Use **Export JSON** to save the currently retained events. **Clear all** clears the current alert history after browser confirmation; serial reception continues, so newly received alerts appear normally. Parser error and UART byte/line counters are not reset. History also clears when the app exits. By default, the web server binds only to `127.0.0.1` and is not exposed to the LAN.
