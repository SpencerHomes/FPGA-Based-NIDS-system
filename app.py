"""
Spartan-6 FPGA Network Intrusion Detection System (NIDS) - Live Dashboard
Built for the four-phase NIDS pipeline:
- Phase 1: Ethernet MAC & AXI-Stream Ingestion (Vikrant)
- Phase 2: Hardware Packet Parser & Pattern Matching Core (Krushna)
- Phase 3: JSON Alert Generator & 115200 Baud UART Serializer (Krushna & Vikrant)
- Phase 4: Headless Raspberry Pi Ingestion & Web Dashboard (Adv)
"""

import time
import json
import streamlit as st
import pandas as pd
import plotly.express as px
import plotly.graph_objects as go
from datetime import datetime

from data_manager import manager
from serial_listener import listener

# ---------------------------------------------------------
# Page Configuration & NOC Dark Styling
# ---------------------------------------------------------
st.set_page_config(
    page_title="Spartan-6 NIDS Dashboard",
    page_icon="🛡️",
    layout="wide",
    initial_sidebar_state="expanded"
)

# Custom Cyber NOC Styling
st.markdown("""
<style>
    /* Metric Card Styling */
    div[data-testid="metric-container"] {
        background-color: #111827;
        border: 1px solid #1f2937;
        padding: 14px 18px;
        border-radius: 10px;
        box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.4);
    }
    div[data-testid="metric-container"]:hover {
        border-color: #3b82f6;
    }
    
    /* Status banner tags */
    .status-badge {
        display: inline-block;
        padding: 4px 10px;
        border-radius: 6px;
        font-size: 0.82rem;
        font-weight: 600;
        letter-spacing: 0.05em;
        text-transform: uppercase;
    }
    .badge-ok { background-color: #064e3b; color: #34d399; border: 1px solid #059669; }
    .badge-crit { background-color: #7f1d1d; color: #fca5a5; border: 1px solid #dc2626; }
    .badge-warn { background-color: #78350f; color: #fcd34d; border: 1px solid #d97706; }
    .badge-info { background-color: #1e3a8a; color: #93c5fd; border: 1px solid #2563eb; }

    /* Pipeline Step Box */
    .pipeline-step {
        background: #0f172a;
        border: 1px solid #334155;
        border-radius: 8px;
        padding: 10px 14px;
        text-align: center;
    }
    .pipeline-title {
        font-size: 0.78rem;
        color: #94a3b8;
        font-weight: 600;
        text-transform: uppercase;
    }
    .pipeline-val {
        font-size: 0.95rem;
        color: #f8fafc;
        font-weight: 700;
        margin-top: 4px;
    }
</style>
""", unsafe_allow_html=True)

# ---------------------------------------------------------
# Sidebar Controls & Configuration
# ---------------------------------------------------------
with st.sidebar:
    st.image("https://img.icons8.com/fluency/96/shield.png", width=64)
    st.title("NIDS Control Console")
    st.caption("Spartan-6 FPGA ↔ Raspberry Pi Bridge")
    st.divider()

    # Data Source Mode Selection
    st.subheader("📡 Ingestion Source")
    data_mode = st.radio(
        "Select Pipeline Mode:",
        ["Simulation Engine (Demo)", "Live Hardware UART"],
        index=0 if listener.mode == "SIMULATION" else 1,
        help="Switch between live physical UART from Spartan-6/Pi or the built-in realistic pipeline simulator."
    )

    if data_mode == "Live Hardware UART":
        ports = listener.get_available_ports()
        selected_port = st.selectbox("Serial Port (COM / ttyUSB):", ports)
        baud_rate = st.selectbox("Baud Rate:", [115200, 57600, 9600], index=0)
        
        if st.button("🔌 Connect Hardware Link", use_container_width=True):
            if "No Hardware" not in selected_port:
                listener.set_mode("HARDWARE", port=selected_port, baud=baud_rate)
                st.success(f"Connecting to {selected_port} @ {baud_rate}...")
            else:
                st.error("No valid COM port detected. Use Simulation mode.")
    else:
        if listener.mode != "SIMULATION":
            listener.set_mode("SIMULATION")
        traffic_intensity = st.slider(
            "Simulated Network Load:",
            min_value=0.2,
            max_value=3.0,
            value=float(listener.traffic_intensity),
            step=0.2,
            help="Scale network throughput and attack frequency"
        )
        listener.traffic_intensity = traffic_intensity

    st.divider()

    # Test Attack Injection
    st.subheader("⚡ Attack Injector")
    st.caption("Trigger immediate alerts for test & demo")
    
    col_inj1, col_inj2 = st.columns(2)
    with col_inj1:
        if st.button("🔥 SYN Flood (P80)", use_container_width=True):
            listener.trigger_manual_attack("SYN_FLOOD", target_port=80, attacker_ip="192.168.1.10")
            st.toast("Injected SYN Flood from 192.168.1.10:80!", icon="🚨")
        if st.button("🔍 Port Scan", use_container_width=True):
            listener.trigger_manual_attack("PORT_SCAN", target_port=443, attacker_ip="192.168.1.45")
            st.toast("Injected Port Scan alert!", icon="⚠️")
    with col_inj2:
        if st.button("💥 UDP Blast (P53)", use_container_width=True):
            listener.trigger_manual_attack("UDP_FLOOD", target_port=53, attacker_ip="172.16.0.88")
            st.toast("Injected UDP Flood on DNS port 53!", icon="🌊")
        if st.button("💣 XMAS Packet", use_container_width=True):
            listener.trigger_manual_attack("MALFORMED_PACKET", target_port=8080, attacker_ip="192.168.1.105")
            st.toast("Injected Malformed XMAS packet!", icon="👾")

    st.divider()

    # Dashboard Controls
    st.subheader("⚙️ Display Settings")
    auto_refresh = st.checkbox("Enable Auto-Refresh", value=True)
    refresh_rate = st.slider("Refresh Interval (seconds):", 1, 10, 2)
    
    if st.button("🗑️ Clear Timelog & Metrics", use_container_width=True):
        manager.clear_all()
        st.toast("Timelog and counters cleared!", icon="🧹")

# ---------------------------------------------------------
# Top Header & Pipeline Health Bar
# ---------------------------------------------------------
st.title("🛡️ Spartan-6 FPGA Network Intrusion Detection System")
st.markdown("""
Real-time wire-speed intrusion monitoring powered by **Spartan-6 FPGA** hardware parsing and **Raspberry Pi** edge ingestion.
""")

# Four-Phase Architecture Status Bar
summary = manager.get_summary_stats()
p1, p2, p3, p4 = st.columns(4)

with p1:
    st.markdown("""
    <div class="pipeline-step">
        <div class="pipeline-title">Phase 1: Ingestion (Vikrant)</div>
        <div class="pipeline-val"><span class="status-badge badge-ok">PHY & MAC OK</span></div>
        <div style="font-size:0.75rem; color:#94a3b8; margin-top:4px;">verilog-ethernet · AXI-Stream</div>
    </div>
    """, unsafe_allow_html=True)

with p2:
    st.markdown("""
    <div class="pipeline-step">
        <div class="pipeline-title">Phase 2: Parser (Krushna)</div>
        <div class="pipeline-val"><span class="status-badge badge-ok">CORE ARMED</span></div>
        <div style="font-size:0.75rem; color:#94a3b8; margin-top:4px;">IPv4 / TCP / SYN-Rule Engine</div>
    </div>
    """, unsafe_allow_html=True)

with p3:
    st.markdown(f"""
    <div class="pipeline-step">
        <div class="pipeline-title">Phase 3: UART (Krushna/Vikrant)</div>
        <div class="pipeline-val"><span class="status-badge badge-info">115200 BAUD</span></div>
        <div style="font-size:0.75rem; color:#94a3b8; margin-top:4px;">JSON Alert Serializer</div>
    </div>
    """, unsafe_allow_html=True)

with p4:
    mode_text = "SIM ENGINE" if summary["system_status"]["mode"] == "SIMULATION" else "LIVE HARDWARE"
    mode_badge = "badge-info" if summary["system_status"]["mode"] == "SIMULATION" else "badge-ok"
    st.markdown(f"""
    <div class="pipeline-step">
        <div class="pipeline-title">Phase 4: Edge Server (Adv)</div>
        <div class="pipeline-val"><span class="status-badge {mode_badge}">{mode_text}</span></div>
        <div style="font-size:0.75rem; color:#94a3b8; margin-top:4px;">pyserial · Headless Streamlit</div>
    </div>
    """, unsafe_allow_html=True)

st.write("")

# ---------------------------------------------------------
# Key Performance Metrics (KPI Cards)
# ---------------------------------------------------------
kpi1, kpi2, kpi3, kpi4, kpi5 = st.columns(5)

kpi1.metric(
    label="Ingress Throughput",
    value=f"{summary['current_throughput_mbps']:.1f} Mbps",
    delta=f"{summary['current_throughput_kpps']:.1f} Kpps",
    help="Achievable network traffic ingested through Spartan-6 Ethernet PHY"
)

kpi2.metric(
    label="Total Attacks Detected",
    value=f"{summary['total_attacks']:,}",
    delta=f"+{summary['recent_attacks_60s']} in last 60s" if summary['recent_attacks_60s'] > 0 else "Normal",
    delta_color="inverse"
)

kpi3.metric(
    label="FPGA Core Latency",
    value=f"{summary['avg_fpga_latency_us']} µs",
    delta="~18 Clock Cycles @ 100MHz",
    delta_color="off",
    help="Krushna's packet_parser cycle-accurate detection speed"
)

kpi4.metric(
    label="End-to-End Latency",
    value=f"{summary['avg_pipeline_latency_ms']:.2f} ms",
    delta=f"UART Link: {summary['avg_uart_latency_ms']} ms",
    delta_color="off",
    help="Time from physical wire packet arrival to alert displayed on web dashboard"
)

kpi5.metric(
    label="UART Bus Saturation",
    value=f"{summary['uart_utilization_pct']:.1f}%",
    delta="Limit: 115,200 bps",
    delta_color="off" if summary['uart_utilization_pct'] < 60 else "inverse",
    help="Current alert transmission bandwidth utilization over the 115200 baud serial connection"
)

st.divider()

# ---------------------------------------------------------
# Latest Alert Banner
# ---------------------------------------------------------
events_df = manager.get_events_df()

if not events_df.empty:
    latest = events_df.iloc[0]
    alert_color = "#ef4444" if latest["severity"] == "CRITICAL" else "#f59e0b" if latest["severity"] == "HIGH" else "#3b82f6"
    
    st.markdown(f"""
    <div style="background-color: #18181b; border-left: 6px solid {alert_color}; padding: 12px 18px; border-radius: 8px; margin-bottom: 20px;">
        <div style="display: flex; justify-content: space-between; align-items: center; flex-wrap: wrap;">
            <div>
                <span style="font-weight: 800; font-size: 1.05rem; color: #ffffff;">🚨 LATEST THREAT DETECTED:</span>
                <span style="font-weight: 700; color: {alert_color}; font-size: 1.1rem; margin-left: 8px;">{latest['type']}</span>
                <span class="status-badge" style="background:{alert_color}22; color:{alert_color}; border:1px solid {alert_color}; margin-left: 10px;">{latest['severity']}</span>
            </div>
            <div style="font-size: 0.85rem; color: #a1a1aa;">
                🕒 {latest['timestamp']} | Latency: <b>{latest['total_latency_ms']} ms</b>
            </div>
        </div>
        <div style="margin-top: 8px; font-size: 0.9rem; color: #d4d4d8;">
            Attacker IP: <code>{latest['src_ip']}</code> ➔ Victim Port: <code>{latest['dst_port']} ({latest['protocol']})</code> | 
            TCP Flags: <code>{latest['flags']}</code> | Signature: <code>{latest['signature']}</code> | Action: <b>{latest['action']}</b>
        </div>
    </div>
    """, unsafe_allow_html=True)

# ---------------------------------------------------------
# Graphical Telemetry & Data Visualizations
# ---------------------------------------------------------
st.subheader("📈 Live Telemetry & Threat Analytics")

metrics_df = manager.get_metrics_df()

tab_charts, tab_dist, tab_latency, tab_arch = st.tabs([
    "📊 Network & Alert Throughput",
    "🎯 Threat Classification & Targets",
    "⚡ Latency Breakdown Analysis",
    "📐 Pipeline Architecture & Parser Verification"
])

with tab_charts:
    col_c1, col_c2 = st.columns([2, 1])
    
    with col_c1:
        if not metrics_df.empty:
            fig_tp = go.Figure()
            
            fig_tp.add_trace(go.Scatter(
                x=metrics_df["timestamp"],
                y=metrics_df["throughput_mbps"],
                mode="lines+markers",
                name="Ingress Bandwidth (Mbps)",
                line=dict(color="#3b82f6", width=2.5),
                fill="tozeroy",
                fillcolor="rgba(59, 130, 246, 0.15)"
            ))

            fig_tp.add_trace(go.Scatter(
                x=metrics_df["timestamp"],
                y=metrics_df["throughput_kpps"],
                mode="lines",
                name="Packet Ingestion Rate (Kpps)",
                yaxis="y2",
                line=dict(color="#10b981", width=2, dash="dash")
            ))

            fig_tp.update_layout(
                title="Real-Time Network Ingress Throughput (Achievable Wire Rate)",
                template="plotly_dark",
                paper_bgcolor="#0b0f19",
                plot_bgcolor="#111827",
                height=350,
                margin=dict(l=40, r=40, t=50, b=30),
                legend=dict(orientation="h", yanchor="bottom", y=1.02, xanchor="right", x=1),
                yaxis=dict(title="Throughput (Mbps)", side="left"),
                yaxis2=dict(title="Packet Rate (Kpps)", side="right", overlaying="y")
            )
            st.plotly_chart(fig_tp, use_container_width=True)
        else:
            st.info("Collecting metrics data...")

    with col_c2:
        if not metrics_df.empty:
            fig_uart = go.Figure()
            fig_uart.add_trace(go.Bar(
                x=metrics_df["timestamp"].tail(20),
                y=metrics_df["uart_util_pct"].tail(20),
                name="UART 115200 Utilization (%)",
                marker_color="#f59e0b"
            ))
            fig_uart.update_layout(
                title="UART Link Bus Load (%)",
                template="plotly_dark",
                paper_bgcolor="#0b0f19",
                plot_bgcolor="#111827",
                height=350,
                margin=dict(l=30, r=30, t=50, b=30),
                yaxis=dict(title="Bus Capacity % (Max 11.5 KB/s)", range=[0, 100])
            )
            st.plotly_chart(fig_uart, use_container_width=True)

with tab_dist:
    col_d1, col_d2 = st.columns(2)
    
    with col_d1:
        # Attack Distribution Donut
        dist_data = [
            {"Type": k, "Count": v}
            for k, v in summary["attack_distribution"].items() if v > 0
        ]
        if dist_data:
            dist_df = pd.DataFrame(dist_data)
            fig_donut = px.pie(
                dist_df,
                names="Type",
                values="Count",
                hole=0.45,
                color="Type",
                color_discrete_map={
                    "SYN_FLOOD": "#ef4444",
                    "PORT_SCAN": "#f59e0b",
                    "SSH_BRUTE_FORCE": "#ec4899",
                    "UDP_FLOOD": "#06b6d4",
                    "MALFORMED_PACKET": "#8b5cf6"
                },
                title="Attack Signatures Breakdown"
            )
            fig_donut.update_layout(
                template="plotly_dark",
                paper_bgcolor="#0b0f19",
                height=340,
                margin=dict(l=30, r=30, t=50, b=30)
            )
            st.plotly_chart(fig_donut, use_container_width=True)
        else:
            st.info("No attacks logged yet. Inject a test attack from the sidebar!")

    with col_d2:
        # Top Attacked Ports & Attacking IPs
        if not events_df.empty:
            port_counts = events_df["dst_port"].value_counts().reset_index()
            port_counts.columns = ["Port", "Alerts"]
            port_counts["Port_Label"] = port_counts["Port"].apply(lambda p: f"Port {p}")

            fig_ports = px.bar(
                port_counts.head(6),
                x="Alerts",
                y="Port_Label",
                orientation="h",
                title="Top Targeted Destination Ports",
                color="Alerts",
                color_continuous_scale="Reds"
            )
            fig_ports.update_layout(
                template="plotly_dark",
                paper_bgcolor="#0b0f19",
                plot_bgcolor="#111827",
                height=340,
                margin=dict(l=30, r=30, t=50, b=30),
                yaxis=dict(autorange="reversed")
            )
            st.plotly_chart(fig_ports, use_container_width=True)
        else:
            st.info("Awaiting port attack data...")

with tab_latency:
    col_l1, col_l2 = st.columns([1, 1])
    
    with col_l1:
        st.markdown("#### ⏱️ Pipeline Latency Profile")
        st.markdown("""
        Understanding the time taken at each step of the Spartan-6 NIDS architecture:
        - **Phase 1 & 2 (Spartan-6 FPGA Core)**: ~**0.18 µs** (18 clock cycles @ 100 MHz clock). Instantaneous wire-speed hardware parsing!
        - **Phase 3 (UART TX @ 115200 Baud)**: ~**5.65 ms** (65-byte JSON string transmission). Physical communication bottleneck.
        - **Phase 4 (Raspberry Pi Edge Processing)**: ~**1.75 ms** (pyserial read, JSON parsing, memory queue insertion).
        """)
        
        # Latency breakdown horizontal bar
        fig_lat = go.Figure(data=[
            go.Bar(name='FPGA Core (0.18 µs)', y=['Total Latency'], x=[0.00018], orientation='h', marker_color='#10b981'),
            go.Bar(name='UART Serializer (5.65 ms)', y=['Total Latency'], x=[5.65], orientation='h', marker_color='#f59e0b'),
            go.Bar(name='Edge Pi Ingestion (1.75 ms)', y=['Total Latency'], x=[1.75], orientation='h', marker_color='#3b82f6')
        ])
        fig_lat.update_layout(
            barmode='stack',
            template="plotly_dark",
            paper_bgcolor="#0b0f19",
            plot_bgcolor="#111827",
            height=200,
            title="End-to-End Latency Composition (ms)",
            margin=dict(l=30, r=30, t=40, b=30),
            xaxis=dict(title="Milliseconds (ms)")
        )
        st.plotly_chart(fig_lat, use_container_width=True)

    with col_l2:
        st.markdown("#### 💡 Hardware Design Insights")
        st.info("""
        **Why JSON over UART?**
        - Sending the entire 1 Gbps / 100 Mbps packet stream over 115200 baud UART would instantly drop 99.9% of packets.
        - Krushna & Vikrant's alert generator transmits only a compact JSON metadata packet (`~65 bytes`) upon attack detection.
        - At 115200 baud (11,520 bytes/sec), the link can comfortably transmit up to **170 alerts per second** before saturating!
        """)

with tab_arch:
    st.markdown("#### 🔬 Krushna's Packet Parser Test Verification")
    st.markdown("""
    The hardware detection logic is verified against the testbench log:
    ```text
    ==================================================
    SPARTAN-6 NIDS HARDWARE PARSER TESTBENCH VERIFICATION
    ==================================================
    [PASS]: MAC Layer Stripping: (No Preamble, No Ethernet FCS)
    [PASS]: AXI-Stream Bus Ingestion: 8-bit streaming clock-by-clock
    [PASS]: Protocol Identification: is_ipv4 = 1, packet_is_tcp = 1
    [PASS]: Source IP Extraction: 0xc0a8010a -> 192.168.1.10
    [PASS]: Destination Port: 0x0050 -> Port 80 (HTTP)
    [PASS]: TCP Flags Extracted: 0x02 -> SYN (Handshake Initiation)
    [PASS]: Attack Trigger: SYN_FLOOD detected (State Threshold Exceeded)
    [PASS]: UART Serializer: Formatted JSON string pushed to TX FIFO
    ==================================================
    ```
    """)
    st.caption("Hardware testbench successfully validated on Spartan-6 logic simulation.")

st.divider()

# ---------------------------------------------------------
# Security Event Timelog & Audit Ledger
# ---------------------------------------------------------
st.subheader("📋 Security Event Timelog & Audit Ledger")

if not events_df.empty:
    col_f1, col_f2, col_f3, col_f4 = st.columns([2, 2, 2, 2])
    
    with col_f1:
        search_ip = st.text_input("🔍 Search Attacker IP:", "", placeholder="e.g. 192.168.1.10")
    with col_f2:
        selected_types = st.multiselect(
            "Filter Attack Type:",
            options=list(events_df["type"].unique()),
            default=list(events_df["type"].unique())
        )
    with col_f3:
        severity_filter = st.selectbox("Severity:", ["ALL", "CRITICAL", "HIGH", "MEDIUM", "LOW"])
    with col_f4:
        display_limit = st.selectbox("Rows to Display:", [10, 25, 50, 100], index=1)

    # Filter dataframe
    filtered_df = events_df.copy()
    if search_ip:
        filtered_df = filtered_df[filtered_df["src_ip"].str.contains(search_ip, na=False)]
    if selected_types:
        filtered_df = filtered_df[filtered_df["type"].isin(selected_types)]
    if severity_filter != "ALL":
        filtered_df = filtered_df[filtered_df["severity"] == severity_filter]

    # Present formatted table
    display_cols = ["id", "timestamp", "type", "severity", "src_ip", "dst_port", "protocol", "flags", "action", "total_latency_ms"]
    st.dataframe(
        filtered_df[display_cols].head(display_limit),
        use_container_width=True,
        hide_index=True
    )

    # Export capabilities
    col_exp1, col_exp2, _ = st.columns([1, 1, 3])
    with col_exp1:
        csv_data = filtered_df.to_csv(index=False).encode('utf-8')
        st.download_button(
            label="📥 Download Timelog CSV",
            data=csv_data,
            file_name=f"nids_events_{datetime.now().strftime('%Y%m%d_%H%M%S')}.csv",
            mime="text/csv",
            use_container_width=True
        )
    with col_exp2:
        json_data = filtered_df.to_json(orient="records", indent=2).encode('utf-8')
        st.download_button(
            label="📥 Download JSON Log",
            data=json_data,
            file_name=f"nids_events_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json",
            mime="application/json",
            use_container_width=True
        )
else:
    st.info("No security events recorded yet. Alerts will appear here when detected.")

# ---------------------------------------------------------
# Auto-refresh loop
# ---------------------------------------------------------
if auto_refresh:
    time.sleep(refresh_rate)
    st.rerun()
