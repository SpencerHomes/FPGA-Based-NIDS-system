//==============================================================================
// nids_top.v  -  Inline hardware NIDS, Mimas V2 (XC6SLX9) + 2x LAN8720 (RMII)
//
//   Attacker <-> PHY_A <-RMII-> [ FPGA ] <-RMII-> PHY_B <-> Victim
//
// Clock domains (all mutually asynchronous):
//   clk_a   : PHY_A REF_CLK (50 MHz, PHY is clock master)
//   clk_b   : PHY_B REF_CLK (50 MHz, PHY is clock master)
//   clk_100 : on-board 100 MHz oscillator (UART only)
//
// Data path (store-and-forward, one dual-clock frame FIFO per direction):
//   A->B : rx_a(clk_a) -> fifo_a2b [wclk=clk_a | rclk=clk_b] -> tx_b(clk_b)
//   B->A : rx_b(clk_b) -> fifo_b2a [wclk=clk_b | rclk=clk_a] -> tx_a(clk_a)
//   The A->B stream is additionally sniffed (clk_a domain, passive) by:
//     packet_parser          -> Ethernet/IPv4/TCP/UDP/ICMP metadata per frame
//     nids_attack_detector   -> rate / scan / anomaly detection (optional)
//     nids_engine            -> original rules: ping-of-death length, MALWARE
//                               signature, SYN burst 50/10 ms, port 22/23
//   alert_collector merges all events into one record per alert (with MACs, IPs,
//   ports, timestamp) and hands it to uart_alert_tx (clk_100) for transmission.
//
// Reset: power-on reset counter in clk_100 -> reset_sync per domain.
//==============================================================================
`timescale 1ns/1ps
module nids_top #(
    // 1 = full detector (new). 0 = parser + original four rules only (smaller).
    parameter ADV_DETECTOR = 1
) (
    input  wire       clk_100,

    // ---------------- PHY_A (Attacker side) ----------------
    input  wire       phy_a_ref_clk,
    input  wire [1:0] phy_a_rxd,
    input  wire       phy_a_crs_dv,
    output wire [1:0] phy_a_txd,
    output wire       phy_a_tx_en,

    // ---------------- PHY_B (Victim side) ------------------
    input  wire       phy_b_ref_clk,
    input  wire [1:0] phy_b_rxd,
    input  wire       phy_b_crs_dv,
    output wire [1:0] phy_b_txd,
    output wire       phy_b_tx_en,
	 output wire [2:0] SevenSegmentEnable,

    // ---------------- FT2232 USB-UART (FPGA -> PC) ----------
    output wire       uart_txd
);

	 assign SevenSegmentEnable = 3'b111;
    //--------------------------------------------------------------------------
    // Global power-on reset and per-domain synchronised resets
    //--------------------------------------------------------------------------
    reg [7:0] por_cnt = 8'd0;                   // initialised by GSR at config
    always @(posedge clk_100)
        if (!por_cnt[7]) por_cnt <= por_cnt + 8'd1;
    wire por_n = por_cnt[7];

    wire clk_a = phy_a_ref_clk;
    wire clk_b = phy_b_ref_clk;
    wire rst_n_100, rst_n_a, rst_n_b;

    reset_sync u_rst_100 (.clk(clk_100), .arst_n(por_n), .rst_n(rst_n_100));
    reset_sync u_rst_a   (.clk(clk_a),   .arst_n(por_n), .rst_n(rst_n_a));
    reset_sync u_rst_b   (.clk(clk_b),   .arst_n(por_n), .rst_n(rst_n_b));

    //--------------------------------------------------------------------------
    // RX: RMII -> byte stream
    //--------------------------------------------------------------------------
    wire [7:0]  a_tdata, b_tdata;
    wire        a_tvalid, a_tlast, b_tvalid, b_tlast;
    wire [15:0] a_tindex, b_tindex;

    rmii_to_axis u_rx_a (
        .clk(clk_a), .rst_n(rst_n_a),
        .rmii_rxd(phy_a_rxd), .rmii_crs_dv(phy_a_crs_dv),
        .m_tdata(a_tdata), .m_tvalid(a_tvalid), .m_tlast(a_tlast),
        .m_tindex(a_tindex)
    );

    rmii_to_axis u_rx_b (
        .clk(clk_b), .rst_n(rst_n_b),
        .rmii_rxd(phy_b_rxd), .rmii_crs_dv(phy_b_crs_dv),
        .m_tdata(b_tdata), .m_tvalid(b_tvalid), .m_tlast(b_tlast),
        .m_tindex(b_tindex)
    );

    //--------------------------------------------------------------------------
    // Clock-domain-crossing frame FIFOs
    //--------------------------------------------------------------------------
    wire [8:0] a2b_rd_data, b2a_rd_data;
    wire       a2b_empty,   b2a_empty;
    wire       a2b_rd_en,   b2a_rd_en;
    wire       a2b_drop,    b2a_drop;     // overflow indicators (unused)

    async_frame_fifo #(.AW(11)) u_fifo_a2b (
        .wclk(clk_a), .wrst_n(rst_n_a),
        .wr_valid(a_tvalid), .wr_data(a_tdata), .wr_last(a_tlast),
        .wr_drop_pulse(a2b_drop),
        .rclk(clk_b), .rrst_n(rst_n_b),
        .rd_en(a2b_rd_en), .rd_data(a2b_rd_data), .rd_empty(a2b_empty)
    );

    async_frame_fifo #(.AW(11)) u_fifo_b2a (
        .wclk(clk_b), .wrst_n(rst_n_b),
        .wr_valid(b_tvalid), .wr_data(b_tdata), .wr_last(b_tlast),
        .wr_drop_pulse(b2a_drop),
        .rclk(clk_a), .rrst_n(rst_n_a),
        .rd_en(b2a_rd_en), .rd_data(b2a_rd_data), .rd_empty(b2a_empty)
    );

    //--------------------------------------------------------------------------
    // TX: byte stream -> RMII, each in the destination PHY's own clock domain
    //--------------------------------------------------------------------------
    rmii_tx_from_fifo u_tx_b (          // Attacker -> Victim
        .clk(clk_b), .rst_n(rst_n_b),
        .rd_empty(a2b_empty), .rd_data(a2b_rd_data), .rd_en(a2b_rd_en),
        .rmii_txd(phy_b_txd), .rmii_tx_en(phy_b_tx_en)
    );

    rmii_tx_from_fifo u_tx_a (          // Victim -> Attacker
        .clk(clk_a), .rst_n(rst_n_a),
        .rd_empty(b2a_empty), .rd_data(b2a_rd_data), .rd_en(b2a_rd_en),
        .rmii_txd(phy_a_txd), .rmii_tx_en(phy_a_tx_en)
    );

    //--------------------------------------------------------------------------
    // Passive analysis of the Attacker stream (clk_a domain).  Nothing below can
    // back-pressure or modify the forwarded traffic: it only taps a_t* signals.
    //--------------------------------------------------------------------------

    // ---- original detection rules (unchanged module) ----
    wire leg_icmp, leg_sig, leg_syn, leg_port, syn_active;

    nids_engine u_engine (
        .clk(clk_a), .rst_n(rst_n_a),
        .s_tdata(a_tdata), .s_tvalid(a_tvalid), .s_tlast(a_tlast),
        .s_tindex(a_tindex),
        .trigger_icmp(leg_icmp), .trigger_signature(leg_sig),
        .trigger_syn_flood(leg_syn), .trigger_port_scan(leg_port),
        .syn_flood_active(syn_active)
    );

    // ---- frame metadata parser (the stream still carries the 4-byte FCS) ----
    wire [47:0] pk_dst_mac, pk_src_mac;
    wire        pk_is_ipv4, pk_df, pk_mf, pk_frag;
    wire [7:0]  pk_ihl_bytes, pk_proto, pk_tcp_flags, pk_icmp_type, pk_icmp_code;
    wire [15:0] pk_total_len, pk_ident, pk_sport, pk_dport, pk_bytes;
    wire [12:0] pk_frag_off;
    wire [31:0] pk_sip, pk_dip;
    wire        pk_tcp, pk_udp, pk_icmp;
    wire        pk_valid, pk_ok, pk_err, pk_unsup, pk_tvalid;
    wire        pk_axi_ready;          // ignored: a PHY cannot be back-pressured
    wire        det_meta_ready;

    packet_parser #(.INPUT_HAS_FCS(1), .MAX_VLAN_TAGS(2)) u_parser (
        .clk(clk_a), .rst_n(rst_n_a),
        .axi_tdata(a_tdata), .axi_tlast(a_tlast), .axi_tvalid(a_tvalid),
        .axi_tready(pk_axi_ready),
        .packet_ready(det_meta_ready),
        .dst_mac(pk_dst_mac), .src_mac(pk_src_mac),
        .is_ipv4(pk_is_ipv4),
        .ipv4_header_bytes(pk_ihl_bytes), .ipv4_total_length(pk_total_len),
        .ipv4_identification(pk_ident),
        .ipv4_dont_fragment(pk_df), .ipv4_more_fragments(pk_mf),
        .ipv4_fragment_offset(pk_frag_off), .ipv4_fragmented(pk_frag),
        .ip_protocol(pk_proto), .src_ip(pk_sip), .dst_ip(pk_dip),
        .packet_is_tcp(pk_tcp), .packet_is_udp(pk_udp), .packet_is_icmp(pk_icmp),
        .src_port(pk_sport), .dst_port(pk_dport), .tcp_flags(pk_tcp_flags),
        .icmp_type(pk_icmp_type), .icmp_code(pk_icmp_code),
        .packet_valid(pk_valid), .parse_ok(pk_ok), .parse_error(pk_err),
        .unsupported_type(pk_unsup), .transport_valid(pk_tvalid),
        .packet_bytes(pk_bytes)
    );

    // ---- new rate/scan/anomaly detector ----
    wire        det_valid, det_ready;
    wire [3:0]  det_code;
    wire [9:0]  det_flags;
    wire [1:0]  det_sev;
    wire [31:0] det_sip, det_dip, det_detail;
    wire [7:0]  det_proto;
    wire [15:0] det_sport, det_dport;

    generate
        if (ADV_DETECTOR != 0) begin : g_adv
            nids_attack_detector #(
                .WINDOW_CYCLES(50000000),        // 1 s at the 50 MHz PHY clock
                .SYN_THRESHOLD(200),             // SYNs per victim per window
                .SYN_HARD_THRESHOLD(2000),
                .SYN_REQUIRE_UNANSWERED(0),      // tap only sees attacker -> victim
                .PORT_SCAN_THRESHOLD(40),
                .ICMP_THRESHOLD(200),
                .UDP_THRESHOLD(2000)
            ) u_det (
                .clk(clk_a), .rst_n(rst_n_a),
                .meta_valid(pk_valid), .meta_ready(det_meta_ready),
                .meta_parse_ok(pk_ok), .meta_parse_error(pk_err),
                .meta_unsupported_type(pk_unsup), .meta_is_ipv4(pk_is_ipv4),
                .meta_src_ip(pk_sip), .meta_dst_ip(pk_dip),
                .meta_ip_protocol(pk_proto),
                .meta_packet_is_tcp(pk_tcp), .meta_packet_is_udp(pk_udp),
                .meta_packet_is_icmp(pk_icmp), .meta_transport_valid(pk_tvalid),
                .meta_src_port(pk_sport), .meta_dst_port(pk_dport),
                .meta_tcp_flags(pk_tcp_flags),
                .meta_icmp_type(pk_icmp_type), .meta_icmp_code(pk_icmp_code),
                .meta_ipv4_fragmented(pk_frag), .meta_ipv4_fragment_offset(pk_frag_off),
                .meta_ipv4_identification(pk_ident),
                .meta_ipv4_more_fragments(pk_mf), .meta_ipv4_dont_fragment(pk_df),
                .meta_ipv4_total_length(pk_total_len),
                .meta_ipv4_header_bytes(pk_ihl_bytes), .meta_packet_bytes(pk_bytes),
                .alert_valid(det_valid), .alert_ready(det_ready),
                .alert_code(det_code), .alert_flags(det_flags),
                .alert_severity(det_sev),
                .alert_src_ip(det_sip), .alert_dst_ip(det_dip),
                .alert_protocol(det_proto),
                .alert_src_port(det_sport), .alert_dst_port(det_dport),
                .alert_detail(det_detail)
            );
        end else begin : g_noadv
            assign det_meta_ready = 1'b1;     // consume every record immediately
            assign det_valid      = 1'b0;
            assign det_code       = 4'd0;
            assign det_flags      = 10'd0;
            assign det_sev        = 2'd0;
            assign det_sip        = 32'd0;
            assign det_dip        = 32'd0;
            assign det_proto      = 8'd0;
            assign det_sport      = 16'd0;
            assign det_dport      = 16'd0;
            assign det_detail     = 32'd0;
        end
    endgenerate

    // ---- merge everything into alert records (clk_a) ----
    wire [324:0] x_data;
    wire         x_req, x_ack;

    alert_collector u_collect (
        .clk(clk_a), .rst_n(rst_n_a),
        .ctx_capture(pk_valid & det_meta_ready),
        .ctx_src_mac(pk_src_mac), .ctx_dst_mac(pk_dst_mac),
        .ctx_src_ip(pk_sip), .ctx_dst_ip(pk_dip), .ctx_proto(pk_proto),
        .ctx_sport(pk_sport), .ctx_dport(pk_dport),
        .ctx_total_len(pk_total_len), .ctx_bytes(pk_bytes),
        .leg_icmp(leg_icmp), .leg_sig(leg_sig), .leg_syn(leg_syn), .leg_port(leg_port),
        .det_valid(det_valid), .det_ready(det_ready), .det_code(det_code),
        .det_flags(det_flags), .det_sev(det_sev),
        .det_src_ip(det_sip), .det_dst_ip(det_dip), .det_proto(det_proto),
        .det_sport(det_sport), .det_dport(det_dport), .det_detail(det_detail),
        .x_data(x_data), .x_req(x_req), .x_ack_async(x_ack)
    );

    // ---- JSON-like record formatter + CRC-16 + UART (clk_100) ----
    uart_alert_tx #(.CLKS_PER_BIT(5208), .HEARTBEAT_MS(2000)) u_uart (
        .clk_100(clk_100), .rst_n_100(rst_n_100),
        .x_data(x_data), .x_req(x_req), .x_ack(x_ack),
        .uart_txd(uart_txd)
    );
endmodule
