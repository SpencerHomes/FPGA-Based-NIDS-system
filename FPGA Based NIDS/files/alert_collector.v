//==============================================================================
// alert_collector.v   (clk_a domain)
//
// Turns every detection event into ONE uniform 325-bit alert record, queues it,
// and hands it to the 100 MHz UART formatter through a toggle req/ack handshake.
//
// Event sources
//   1. nids_attack_detector alert stream   (SYN flood, scan, ICMP/UDP flood,
//      malformed, fragments, TCP flag anomalies, land/bogon, summaries)
//   2. the four original nids_engine pulses (Ping-of-Death length, MALWARE
//      signature, SYN burst 50/10 ms, port 22/23 access)
//
// Why the original pulses are deferred to end-of-frame: they fire mid-frame,
// before source/destination addresses have been parsed.  They are latched per
// frame and emitted once the packet_parser metadata of that frame is available,
// so every alert says WHO attacked WHOM (MAC, IP, port).
//
// Rate limiting (original rules only; the new detector has its own): at most one
// event per rule every RL_MS milliseconds; events suppressed in between are
// counted and reported in the next record's "sup" field.
//
// Record layout (MSB..LSB), 325 bits - must match uart_alert_tx.v:
//   [324:317] rid  [316:309] ev  [308:306] st  [305:304] sev  [303:280] id
//   [279:248] up   [247:200] smac [199:152] dmac [151:120] sip [119:88] dip
//   [87:80] proto  [79:64] sport [63:48] dport  [47:32] val  [31:16] sup [15:0] lost
//
// rid (rule id): 1 SYN flood, 2 scan, 3 ICMP flood, 4 malformed, 5 fragment seen,
//   6 fragment anomaly, 7 alert-queue overflow, 8 UDP flood, 9 TCP flag anomaly,
//   10 spoofed source, 12 SYN burst, 13 ping of death, 14 restricted port,
//   15 payload signature.
// st: 0 THRESHOLD_EXCEEDED 1 RULE_MATCH 2 ANOMALY 3 OBSERVED 4 SUPPRESSED_SUMMARY 5 SYSTEM
//==============================================================================
`timescale 1ns/1ps
module alert_collector #(
    parameter integer CLKS_PER_MS   = 50000,   // clk_a is nominally 50 MHz
    parameter integer RL_MS         = 1000,    // min spacing per original rule
    parameter integer SYN_BURST_VAL = 51       // reported value for the 50/10ms rule
)(
    input  wire        clk,
    input  wire        rst_n,

    // packet context: captured on the cycle the packet record is accepted
    input  wire        ctx_capture,
    input  wire [47:0] ctx_src_mac,
    input  wire [47:0] ctx_dst_mac,
    input  wire [31:0] ctx_src_ip,
    input  wire [31:0] ctx_dst_ip,
    input  wire [7:0]  ctx_proto,
    input  wire [15:0] ctx_sport,
    input  wire [15:0] ctx_dport,
    input  wire [15:0] ctx_total_len,
    input  wire [15:0] ctx_bytes,

    // original nids_engine pulses
    input  wire        leg_icmp,
    input  wire        leg_sig,
    input  wire        leg_syn,
    input  wire        leg_port,

    // nids_attack_detector alert stream
    input  wire        det_valid,
    output wire        det_ready,
    input  wire [3:0]  det_code,
    input  wire [9:0]  det_flags,
    input  wire [1:0]  det_sev,
    input  wire [31:0] det_src_ip,
    input  wire [31:0] det_dst_ip,
    input  wire [7:0]  det_proto,
    input  wire [15:0] det_sport,
    input  wire [15:0] det_dport,
    input  wire [31:0] det_detail,

    // to uart_alert_tx (crosses into clk_100)
    output reg  [324:0] x_data,
    output reg          x_req,
    input  wire         x_ack_async
);
    // The detector has its own queue and must never be stalled: always accept.
    assign det_ready = 1'b1;

    //--------------------------------------------------------------------------
    // Time base, alert id, drop counter
    //--------------------------------------------------------------------------
    reg [15:0] ms_sub;
    reg [31:0] ms_cnt;
    reg [23:0] alert_id;
    reg [15:0] lost;

    //--------------------------------------------------------------------------
    // Packet context + original-rule bookkeeping
    //--------------------------------------------------------------------------
    reg [47:0] c_smac, c_dmac;
    reg [31:0] c_sip, c_dip;
    reg [7:0]  c_proto;
    reg [15:0] c_sport, c_dport, c_tot, c_bytes;

    reg [3:0]  leg_acc;            // pulses seen during the frame in progress
    reg [3:0]  leg_pend;           // events waiting to be emitted
    reg [31:0] leg_last [0:3];
    reg [3:0]  leg_seen;
    reg [15:0] leg_sup  [0:3];
    wire [3:0] leg_pulses = {leg_port, leg_syn, leg_sig, leg_icmp};

    reg [1:0] li;                  // lowest pending original rule
    always @* begin
        if      (leg_pend[0]) li = 2'd0;
        else if (leg_pend[1]) li = 2'd1;
        else if (leg_pend[2]) li = 2'd2;
        else                  li = 2'd3;
    end
    wire sel_det = det_valid;
    wire sel_leg = !det_valid && (leg_pend != 4'd0);
    wire rl_ok   = !leg_seen[li] || ((ms_cnt - leg_last[li]) >= RL_MS);

    //--------------------------------------------------------------------------
    // Detector alert -> rule / evidence / status
    //--------------------------------------------------------------------------
    reg [7:0] d_rid, d_ev;
    reg [2:0] d_st;
    always @* begin
        d_rid = 8'd0; d_ev = 8'd0; d_st = 3'd0;
        case (det_code)
            4'd1:  begin d_rid = 8'd1;  d_ev = 8'd1;  d_st = 3'd0; end   // SYN flood
            4'd2:  begin d_rid = 8'd2;  d_ev = 8'd2;  d_st = 3'd0; end   // scan
            4'd3:  begin d_rid = 8'd3;  d_ev = 8'd3;  d_st = 3'd0; end   // ICMP flood
            4'd4:  begin d_rid = 8'd4;  d_ev = 8'd5;  d_st = 3'd2; end   // malformed
            4'd5:  begin d_rid = 8'd5;  d_ev = 8'd6;  d_st = 3'd3; end   // fragment seen
            4'd6:  begin                                                 // fragment anomaly
                d_rid = 8'd6; d_st = 3'd2;
                case (det_detail[31:24])
                    8'd2:    d_ev = 8'd7;     // DF + fragment
                    8'd3:    d_ev = 8'd8;     // non-final not multiple of 8
                    8'd4:    d_ev = 8'd9;     // overlap
                    8'd5:    d_ev = 8'd10;    // range > 64K
                    8'd6:    d_ev = 8'd11;    // tiny first fragment
                    default: d_ev = 8'd0;
                endcase
            end
            4'd7:  begin d_rid = 8'd7;  d_ev = 8'd19; d_st = 3'd5; end   // alert queue overflow
            4'd8:  begin d_rid = 8'd8;  d_ev = 8'd4;  d_st = 3'd0; end   // UDP flood
            4'd9:  begin                                                 // TCP flag anomaly
                d_rid = 8'd9; d_st = 3'd2;
                if      (det_detail[16]) d_ev = 8'd12;   // NULL
                else if (det_detail[17]) d_ev = 8'd13;   // Xmas
                else if (det_detail[18]) d_ev = 8'd14;   // SYN+FIN
                else if (det_detail[19]) d_ev = 8'd15;   // SYN+RST
                else if (det_detail[20]) d_ev = 8'd16;   // FIN w/o ACK
                else                     d_ev = 8'd0;
            end
            4'd10: begin                                                 // land / bogon
                d_rid = 8'd10; d_st = 3'd2;
                d_ev  = (det_detail[31:24] == 8'd40) ? 8'd17 : 8'd18;
            end
            default: ;
        endcase
        if (det_flags[9]) begin d_st = 3'd4; d_ev = 8'd20; end           // summary record
    end
    wire det_no_mac = det_flags[9] | det_flags[5];   // summary / system: no packet context

    //--------------------------------------------------------------------------
    // Record construction (combinational)
    //--------------------------------------------------------------------------
    reg [7:0]  l_rid, l_ev;
    reg [2:0]  l_st;
    reg [1:0]  l_sev;
    reg [15:0] l_val;
    always @* begin
        case (li)
            2'd0:    begin l_rid = 8'd13; l_ev = 8'd22; l_st = 3'd0; l_sev = 2'd3; l_val = c_tot;  end   // ping of death
            2'd1:    begin l_rid = 8'd15; l_ev = 8'd24; l_st = 3'd1; l_sev = 2'd3; l_val = c_bytes; end  // signature
            2'd2:    begin l_rid = 8'd12; l_ev = 8'd21; l_st = 3'd0; l_sev = 2'd2; l_val = SYN_BURST_VAL; end
            default: begin l_rid = 8'd14; l_ev = 8'd23; l_st = 3'd1; l_sev = 2'd2; l_val = c_dport; end // restricted port
        endcase
    end

    wire [324:0] rec_det = {
        d_rid, d_ev, d_st, det_sev, alert_id, ms_cnt,
        (det_no_mac ? 48'd0 : c_smac), (det_no_mac ? 48'd0 : c_dmac),
        det_src_ip, det_dst_ip, det_proto, det_sport, det_dport,
        det_detail[15:0], 16'd0, lost };

    wire [324:0] rec_leg = {
        l_rid, l_ev, l_st, l_sev, alert_id, ms_cnt,
        c_smac, c_dmac, c_sip, c_dip, c_proto, c_sport, c_dport,
        l_val, leg_sup[li], lost };

    wire         ev_push = sel_det | (sel_leg & rl_ok);
    wire [324:0] rec_w   = sel_det ? rec_det : rec_leg;

    //--------------------------------------------------------------------------
    // 4-deep record FIFO (distributed RAM)
    //--------------------------------------------------------------------------
    reg [324:0] mem [0:3];
    reg [2:0]   wr_ptr, rd_ptr;
    wire        fifo_full  = ((wr_ptr - rd_ptr) == 3'd4);
    wire        fifo_empty = (wr_ptr == rd_ptr);
    wire        mem_we     = ev_push && !fifo_full;
    always @(posedge clk) if (mem_we) mem[wr_ptr[1:0]] <= rec_w;

    //--------------------------------------------------------------------------
    // Sequential control
    //--------------------------------------------------------------------------
    (* ASYNC_REG = "TRUE" *) reg ack_s1 = 1'b0, ack_s2 = 1'b0;
    reg        xfer_busy;
    integer    n;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ms_sub <= 16'd0; ms_cnt <= 32'd0; alert_id <= 24'd1; lost <= 16'd0;
            c_smac <= 48'd0; c_dmac <= 48'd0; c_sip <= 32'd0; c_dip <= 32'd0;
            c_proto <= 8'd0; c_sport <= 16'd0; c_dport <= 16'd0; c_tot <= 16'd0; c_bytes <= 16'd0;
            leg_acc <= 4'd0; leg_pend <= 4'd0; leg_seen <= 4'd0;
            for (n = 0; n < 4; n = n + 1) begin leg_last[n] <= 32'd0; leg_sup[n] <= 16'd0; end
            wr_ptr <= 3'd0; rd_ptr <= 3'd0;
            x_data <= 325'd0; x_req <= 1'b0; xfer_busy <= 1'b0;
            ack_s1 <= 1'b0; ack_s2 <= 1'b0;
        end else begin
            ack_s1 <= x_ack_async;
            ack_s2 <= ack_s1;

            // ---- millisecond time base
            if (ms_sub == CLKS_PER_MS - 1) begin ms_sub <= 16'd0; ms_cnt <= ms_cnt + 32'd1; end
            else ms_sub <= ms_sub + 16'd1;

            // ---- packet context + original-rule pulses
            if (ctx_capture) begin
                c_smac <= ctx_src_mac; c_dmac <= ctx_dst_mac;
                c_sip  <= ctx_src_ip;  c_dip  <= ctx_dst_ip;
                c_proto <= ctx_proto;  c_sport <= ctx_sport; c_dport <= ctx_dport;
                c_tot  <= ctx_total_len; c_bytes <= ctx_bytes;
                leg_pend <= (sel_leg ? (leg_pend & ~(4'b0001 << li)) : leg_pend) | leg_acc | leg_pulses;
                leg_acc  <= 4'd0;
            end else begin
                leg_acc  <= leg_acc | leg_pulses;
                if (sel_leg) leg_pend <= leg_pend & ~(4'b0001 << li);
            end

            // ---- rate limiting bookkeeping for original rules
            if (sel_leg) begin
                if (rl_ok) begin
                    leg_last[li] <= ms_cnt;
                    leg_seen[li] <= 1'b1;
                    leg_sup[li]  <= 16'd0;
                end else if (leg_sup[li] != 16'hFFFF) begin
                    leg_sup[li]  <= leg_sup[li] + 16'd1;
                end
            end

            // ---- enqueue
            if (ev_push) begin
                alert_id <= alert_id + 24'd1;
                if (!fifo_full) wr_ptr <= wr_ptr + 3'd1;
                else if (lost != 16'hFFFF) lost <= lost + 16'd1;
            end

            // ---- hand-off to the 100 MHz domain (toggle req / toggle ack)
            if (!xfer_busy) begin
                if (!fifo_empty) begin
                    x_data    <= mem[rd_ptr[1:0]];
                    rd_ptr    <= rd_ptr + 3'd1;
                    x_req     <= ~x_req;
                    xfer_busy <= 1'b1;
                end
            end else if (ack_s2 == x_req) begin
                xfer_busy <= 1'b0;
            end
        end
    end
endmodule
