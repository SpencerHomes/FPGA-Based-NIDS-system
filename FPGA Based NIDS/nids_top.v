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
//   The A->B stream is additionally sniffed by nids_engine (clk_a); detector
//   pulses cross into clk_100 inside uart_alert_tx.
//
// Reset: power-on reset counter in clk_100 -> reset_sync per domain.
//==============================================================================
`timescale 1ns/1ps
module nids_top (
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

    // ---------------- FT2232 USB-UART (FPGA -> PC) ----------
    output wire       uart_txd,
	 
	 //For disabling the seven segment displays
    output wire [2:0] SevenSegmentEnable

);

    assign SevenSegmentEnable = 3'b111; // Active-low digit enables: all displays off.

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
    // Detection engine on the Attacker stream + UART alert path
    //--------------------------------------------------------------------------
    wire trig_icmp, trig_sig, trig_syn, trig_port, syn_active;

    nids_engine u_engine (
        .clk(clk_a), .rst_n(rst_n_a),
        .s_tdata(a_tdata), .s_tvalid(a_tvalid), .s_tlast(a_tlast),
        .s_tindex(a_tindex),
        .trigger_icmp(trig_icmp), .trigger_signature(trig_sig),
        .trigger_syn_flood(trig_syn), .trigger_port_scan(trig_port),
        .syn_flood_active(syn_active)
    );

    uart_alert_tx u_uart (
        .clk_100(clk_100), .rst_n_100(rst_n_100),
        .clk_a(clk_a),     .rst_n_a(rst_n_a),
        .trig_icmp(trig_icmp), .trig_signature(trig_sig),
        .trig_syn_flood(trig_syn), .trig_port_scan(trig_port),
        .uart_txd(uart_txd)
    );
endmodule
