//==============================================================================
// nids_engine.v
// Streaming detection matrix.  Passively sniffs the Attacker-side (PHY_A)
// byte stream in the clk_a domain; it never stalls or modifies traffic.
//
// Frame layout assumed (untagged Ethernet II, tindex 0 = first dst-MAC byte):
//   0-5 dst MAC | 6-11 src MAC | 12-13 EtherType
//   14 Ver/IHL | 16-17 Total Length | 20-21 Flags/FragOffset | 23 Protocol
//   L4 header starts at 14 + 4*IHL  (= byte 34 for IHL=5):
//        dst port = L4+2 .. L4+3  (bytes 36-37 for IHL=5)
//        TCP flags = L4+13        (byte 47 for IHL=5)
// The L4 offsets are derived from the IHL nibble so IP options cannot be used
// to evade the port/flag checks; for the normal IHL=5 case they equal the
// fixed offsets 36/37/47.  Non-first IP fragments (no L4 header) are ignored
// by the port/flag checks.
//
// Every trigger_* output is a ONE-clock pulse; at most one pulse per frame per
// detector (one-shot latches are cleared at tlast) so a single malicious frame
// cannot flood the alert path.
//==============================================================================
`timescale 1ns/1ps
module nids_engine #(
    parameter [15:0] ICMP_MAX_LEN   = 16'h05DC,  // 1500
    parameter        SYN_THRESHOLD  = 50,        // alert when count > 50
    parameter        WINDOW_CYCLES  = 500000     // 10 ms @ 50 MHz
)(
    input  wire        clk,            // PHY_A REF_CLK, 50 MHz
    input  wire        rst_n,
    // AXI-Stream tap from rmii_to_axis (PHY_A)
    input  wire [7:0]  s_tdata,
    input  wire        s_tvalid,
    input  wire        s_tlast,
    input  wire [15:0] s_tindex,
    // detector outputs
    output reg         trigger_icmp,       // Attack 1
    output reg         trigger_signature,  // Attack 2
    output reg         trigger_syn_flood,  // Attack 3
    output reg         trigger_port_scan,  // Attack 4
    output reg         syn_flood_active    // level: flood flagged in this window
);
    localparam [55:0] SIG = "MALWARE";      // 4D 41 4C 57 41 52 45

    //--------------------------------------------------------------------------
    // Per-frame header state
    //--------------------------------------------------------------------------
    reg        et_hi_ok;      // EtherType high byte == 0x08
    reg        is_ipv4;       // EtherType == 0x0800
    reg        ver_ok;        // IP version nibble == 4
    reg        ihl_ok;        // IHL >= 5
    reg [3:0]  ihl;
    reg [7:0]  len_hi;
    reg        len_gt;        // Total Length > ICMP_MAX_LEN
    reg [7:0]  frag_hi;
    reg        frag_ok;       // fragment offset == 0 (L4 header present)
    reg [7:0]  proto;
    reg [7:0]  dport_hi;

    reg        icmp_done, sig_done, port_done;   // one-shot per frame
    reg [55:0] win;                              // 7-byte sliding window

    // L4 byte positions, derived from IHL (registered; IHL known after byte 14)
    wire [15:0] l4_base = 16'd14 + {10'd0, ihl, 2'b00};
    reg  [15:0] idx_dport_hi, idx_dport_lo, idx_flags;
    always @(posedge clk) begin
        idx_dport_hi <= l4_base + 16'd2;
        idx_dport_lo <= l4_base + 16'd3;
        idx_flags    <= l4_base + 16'd13;
    end

    wire ip_ok = is_ipv4 && ver_ok && ihl_ok;
    wire l4_ok = ip_ok && frag_ok && (proto == 8'h06 || proto == 8'h11); // TCP/UDP

    wire [55:0] win_nxt = {win[47:0], s_tdata};

    // SYN set, ACK clear (mask SYN=0x02 | ACK=0x10)
    wire syn_hit = s_tvalid && (s_tindex == idx_flags) && l4_ok &&
                   (proto == 8'h06) && ((s_tdata & 8'h12) == 8'h02);

    //--------------------------------------------------------------------------
    // Packet-field detectors
    //--------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            et_hi_ok <= 1'b0; is_ipv4 <= 1'b0; ver_ok <= 1'b0; ihl_ok <= 1'b0;
            ihl <= 4'd0; len_hi <= 8'h00; len_gt <= 1'b0; frag_hi <= 8'h00;
            frag_ok <= 1'b0; proto <= 8'h00; dport_hi <= 8'h00;
            icmp_done <= 1'b0; sig_done <= 1'b0; port_done <= 1'b0;
            win <= 56'd0;
            trigger_icmp <= 1'b0; trigger_signature <= 1'b0;
            trigger_port_scan <= 1'b0;
        end else begin
            trigger_icmp      <= 1'b0;
            trigger_signature <= 1'b0;
            trigger_port_scan <= 1'b0;

            if (s_tvalid) begin
                win <= win_nxt;

                // ---------------- fixed-offset header slicing ----------------
                case (s_tindex)
                16'd12: et_hi_ok <= (s_tdata == 8'h08);
                16'd13: is_ipv4  <= et_hi_ok && (s_tdata == 8'h00);
                16'd14: begin
                    ver_ok <= (s_tdata[7:4] == 4'd4);
                    ihl    <= s_tdata[3:0];
                    ihl_ok <= (s_tdata[3:0] >= 4'd5);
                end
                16'd16: len_hi <= s_tdata;
                16'd17: len_gt <= ({len_hi, s_tdata} > ICMP_MAX_LEN);
                16'd20: frag_hi <= s_tdata;
                16'd21: frag_ok <= (frag_hi[4:0] == 5'd0) && (s_tdata == 8'h00);
                16'd23: begin
                    proto <= s_tdata;
                    // ---- Attack 1: oversize ICMP (Ping of Death / flood) ----
                    if (is_ipv4 && ver_ok && ihl_ok && len_gt &&
                        (s_tdata == 8'h01) && !icmp_done) begin
                        trigger_icmp <= 1'b1;
                        icmp_done    <= 1'b1;
                    end
                end
                default: ;
                endcase

                // ---- Attack 4: restricted destination ports 22 / 23 ----
                if (s_tindex == idx_dport_hi)
                    dport_hi <= s_tdata;
                if ((s_tindex == idx_dport_lo) && l4_ok && !port_done &&
                    ({dport_hi, s_tdata} == 16'h0016 ||
                     {dport_hi, s_tdata} == 16'h0017)) begin
                    trigger_port_scan <= 1'b1;
                    port_done         <= 1'b1;
                end

                // ---- Attack 2: 7-byte sliding signature window ----
                if (!sig_done && (win_nxt == SIG)) begin
                    trigger_signature <= 1'b1;
                    sig_done          <= 1'b1;
                end

                // ---- end of frame: re-arm everything ----
                if (s_tlast) begin
                    et_hi_ok <= 1'b0; is_ipv4 <= 1'b0; ver_ok <= 1'b0;
                    ihl_ok   <= 1'b0; len_gt  <= 1'b0; frag_ok <= 1'b0;
                    proto    <= 8'h00;
                    icmp_done <= 1'b0; sig_done <= 1'b0; port_done <= 1'b0;
                    win       <= 56'd0;   // signature cannot span two frames
                end
            end
        end
    end

    //--------------------------------------------------------------------------
    // Attack 3: SYN-flood rate detector (tumbling 10 ms window on clk_a)
    //--------------------------------------------------------------------------
    reg [18:0] win_cnt;
    reg [7:0]  syn_cnt;
    wire       win_end = (win_cnt == (WINDOW_CYCLES - 1));

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            win_cnt           <= 19'd0;
            syn_cnt           <= 8'd0;
            syn_flood_active  <= 1'b0;
            trigger_syn_flood <= 1'b0;
        end else begin
            trigger_syn_flood <= 1'b0;
            if (win_end) begin
                win_cnt          <= 19'd0;
                syn_cnt          <= syn_hit ? 8'd1 : 8'd0;
                syn_flood_active <= 1'b0;
            end else begin
                win_cnt <= win_cnt + 19'd1;
                if (syn_hit) begin
                    if (syn_cnt != 8'hFF) syn_cnt <= syn_cnt + 8'd1;
                    // syn_cnt is the count BEFORE this SYN: == 50 means 51st
                    if ((syn_cnt == SYN_THRESHOLD) && !syn_flood_active) begin
                        trigger_syn_flood <= 1'b1;   // single pulse ...
                        syn_flood_active  <= 1'b1;   // ... level held to window end
                    end
                end
            end
        end
    end
endmodule
