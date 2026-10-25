# 🛡️ Spartan-6 FPGA Network Intrusion Detection System (NIDS) Dashboard

A real-time, hardware-accelerated Network Intrusion Detection System (NIDS) web dashboard built on **Streamlit**. Designed to monitor wire-speed packet processing from a **Xilinx Spartan-6 FPGA** and edge ingestion on a **Raspberry Pi**.

---

## 📌 Project Architecture & Data Pipeline

The data pipeline flows across four distinct engineering phases:

```text
[ Raw Ethernet PHY ]
        │  (Raw electrical pulses: 1s & 0s)
        ▼
┌────────────────────────────────────────────────────────┐
│ Phase 1: Packet Ingestion (Vikrant's Focus)            │
│ - verilog-ethernet MAC strips Preamble & FCS           │
│ - Pure Ethernet frames converted to AXI-Stream bus     │
└────────────────────────────────────────────────────────┘
        │  (AXI-Stream 8-bit/32-bit @ 100MHz clock)
        ▼
┌────────────────────────────────────────────────────────┐
│ Phase 2: Detection Core (Krushna's Focus)              │
│ - Hardware packet_parser extracts IP, Port, TCP flags  │
│ - Testbench Verified: IPv4=1, TCP=1, Port 80, SYN=0x02 │
│ - Rule Engine evaluates SYN flood / port scan attacks  │
└────────────────────────────────────────────────────────┘
        │  (Triggered Attack Alert Signal)
        ▼
┌────────────────────────────────────────────────────────┐
│ Phase 3: UART Serializer (Krushna & Vikrant)           │
│ - Compact JSON Alert Generator prevents link saturation│
│ - Formats: {"type":"SYN_FLOOD","src":"...",...}       │
│ - uart_tx module transmits at 115,200 baud             │
└────────────────────────────────────────────────────────┘
        │  (Physical UART / GPIO / USB-UART bridge)
        ▼
┌────────────────────────────────────────────────────────┐
│ Phase 4: Edge Ingestion & Web Dashboard (Adv's Focus)  │
│ - Raspberry Pi pyserial background listener            │
│ - Streamlit Dashboard: Real-time telemetry & timelog   │
│ - Metrics: Latency, Throughput, UART load, Audit log   │
└────────────────────────────────────────────────────────┘
```

---

## ✨ Features of the Dashboard

1. **System Health & Topology Tracker**: Live status of Spartan-6 PHY/MAC, AXI-Stream bus, Parser Core, UART Serializer, and Raspberry Pi Edge Server.
2. **Key Performance Indicators (KPIs)**:
   - **Achievable Ingress Throughput**: Wire rate in Mbps and Kpps (e.g. 50–90 Mbps on 100M PHY).
   - **Hardware Core Latency**: ~0.18 µs (~18 clock cycles @ 100 MHz clock).
   - **End-to-End Latency**: ~7.4 ms (including 115200 baud UART link + Pi decode).
   - **UART Bus Saturation**: Live gauge of the 115,200 bps link capacity.
3. **Live Alert Notifications**: Flashing warning banner with extracted IP, destination port, TCP flags (`0x02 SYN`), severity, and mitigation action.
4. **Interactive Telemetry Visualizations**:
   - Real-time Network Ingress & Packet Rate (Dual-axis time-series).
   - Threat Classification Breakdown (Donut chart).
   - Top Targeted Destination Ports & Attacker IPs.
   - Latency Composition across pipeline stages.
5. **Security Event Timelog & Audit Ledger**:
   - Filter by IP address, Attack Type, Severity, and Time.
   - One-click export to **CSV** and **JSON**.
6. **Dual Data Modes**:
   - **Simulation Engine (Default)**: Test all UI features, graphs, and alert feeds instantly with zero hardware connected.
   - **Live Hardware UART**: Connect directly to your USB-UART bridge (`COMx` on Windows or `/dev/ttyUSB0` on Raspberry Pi/Linux).
7. **Interactive Attack Injector**: Trigger SYN Floods, Port Scans, UDP Blasts, and Malformed packets on demand from the sidebar.

---

## 🚀 How to Run Locally

### 1. Prerequisites
Ensure you have Python 3.9+ installed.

### 2. Install Dependencies
Open a terminal in this project directory and run:

```bash
pip install -r requirements.txt
```

*(Installed packages: `streamlit`, `pandas`, `plotly`, `pyserial`)*

### 3. Launch the Dashboard
Run the following command:

```bash
streamlit run app.py
```

Streamlit will automatically open your default browser to:
```
http://localhost:8501
```

---

## 🔌 Connecting to Physical Hardware (Phase 4 Integration)

When testing with the actual Spartan-6 FPGA connected to your laptop or Raspberry Pi:

1. Connect the FPGA's UART TX pin (via USB-to-UART converter, e.g., CP2102 or FT232R) to your computer's USB port.
2. In the Dashboard sidebar:
   - Select **Live Hardware UART**.
   - Choose your COM port (e.g., `COM3`, `COM4` on Windows, or `/dev/ttyUSB0` on Linux/Raspberry Pi).
   - Verify the baud rate is set to **115200**.
   - Click **Connect Hardware Link**.
3. When Krushna's FPGA parser detects an intrusion, the JSON alert will be rendered instantly on the screen!

### Testing UART Without FPGA Board
You can simulate the FPGA's physical UART transmissions using the included simulator script:
```bash
python simulate_fpga_uart.py --port COM4 --baud 115200
```
Or simply run it in terminal mode:
```bash
python simulate_fpga_uart.py
```

---

## 📊 Metric Calculation Rationale

- **Achievable Throughput**: A Spartan-6 Ethernet MAC can parse packets at wire speed. On a 100M PHY, maximum theoretical frame rate is ~148.8 Kpps (64-byte frames). Realistically, mixed-size network traffic yields **40–90 Mbps** and **40–80 Kpps**, which this dashboard tracks accurately.
- **Why UART Bottleneck Matters**: A 115,200 baud serial connection transfers `11,520 bytes/sec`. A 65-byte JSON alert takes:
  $$\text{Latency}_{\text{UART}} = \frac{65 \times 10 \text{ bits}}{115,200 \text{ bps}} \approx 5.64 \text{ ms}$$
  The dashboard explicitly highlights this latency trade-off to demonstrate why filtering at the hardware layer is essential.
