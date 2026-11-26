`timescale 1ns/1ps
// -----------------------------------------------------------------------------
// FPGA NIDS metadata-based attack detector, v2 (Verilog-2001)
//
// Drop-in replacement for v1: same meta_* inputs, same alert_* stream (alert_flags
// is widened 6 -> 10 bits; bits [5:0] keep their v1 meaning). Extra stat_* outputs.
//
// Why v2 exists (what v1 could not do on real traffic):
//   * v1 tracked 16 victims / 8 scanner pairs in registers. Any traffic touching more
//     keys than that exhausted the tables = silent blind spot. v2 uses count-min
//     sketches + a Bloom filter in block RAM: bounded memory, no key-count limit.
//   * v1 used a fixed one-second window, so a burst split across the boundary was missed.
//     v2 uses a sliding estimate (current + decayed previous window).
//   * v1 SYN rule fired on any busy server. v2 also checks that SYNs go unanswered
//     (SYN vs SYN-ACK seen from the same host) unless the hard ceiling is exceeded.
//   * v1 stalled the whole detector when the alert consumer (e.g. a UART) was slow and
//     emitted one alert per fragment/malformed packet (self-DoS). v2 never stalls on
//     the alert path: per-class rate limiting + summary records + drop counters.
//   * Added: UDP flood, TCP flag anomalies (NULL/Xmas/SYN+FIN/SYN+RST/FIN-no-ACK scans),
//     land attack / bogon source, tiny first fragment, horizontal+vertical scan metric.
//
// Processing is sequential (one packet at a time, ~30-60 clocks). At 100 Mbit/s the
// minimum frame spacing is 336 clocks @ 50 MHz, so there is >5x headroom.
// stat_max_proc_cycles reports the measured worst case.
//
// Alert flags:  [0] SYN flood  [1] scan  [2] ICMP echo flood  [3] malformed
//               [4] fragment seen/anomaly  [5] system (alert queue overflow)
//               [6] UDP flood  [7] TCP flag anomaly  [8] land/bogon source
//               [9] summary record (suppressed-event count for a class)
// Severity: 0 none, 1 suspicion, 2 alert, 3 critical.
// alert_code: 1 SYN, 2 scan, 3 ICMP, 4 malformed, 5 frag seen, 6 frag anomaly,
//             7 system/overflow, 8 UDP, 9 TCP flag anomaly, 10 land/bogon
// alert_detail[31:24]=reason ID, [23:16]=aux, [15:0]=metric
//   reasons: 1 malformed, 2 DF+frag, 3 non-final frag not x8, 4 overlap, 5 range>64K,
//            6 tiny first fragment, 16 frag seen, 17 SYN rate, 18 scan distinct count,
//            19 ICMP rate, 20 UDP rate, 24 TCP flag anomaly (aux bitmap: 1 NULL, 2 Xmas,
//            4 SYN+FIN, 8 SYN+RST, 16 FIN-no-ACK), 32 alert queue overflow (metric=dropped),
//            40 land, 41 bogon source, 64 summary (metric = suppressed count in last window)
//
// Limits: thresholds must be <= 32767 (15-bit counters). WINDOW_CYCLES should be
// >= ~4096 (a 2048-clock RAM sweep runs once per window).
// -----------------------------------------------------------------------------
module nids_attack_detector #(
    parameter integer WINDOW_CYCLES          = 50000000, // nominal window; 50 MHz -> 1 s
    parameter integer SYN_THRESHOLD          = 200,      // unanswered-SYN level per victim per window
    parameter integer SYN_HARD_THRESHOLD     = 2000,     // alert regardless of SYN-ACKs seen
    parameter integer SYN_REQUIRE_UNANSWERED = 1,        // 0 = pure rate rule (use if tap sees one direction only)
    parameter integer SYN_UNANSWERED_SHIFT   = 2,        // need unanswered >= SYNs>>shift (2 = 25%)
    parameter integer PORT_SCAN_THRESHOLD    = 40,       // distinct (dst ip,dst port) probed per source per window
    parameter integer ICMP_THRESHOLD         = 200,
    parameter integer UDP_THRESHOLD          = 2000,
    parameter integer RL_BURST               = 4,        // stateless alerts passed per class per window
    parameter integer ALERT_AW               = 4         // alert queue depth = 2**ALERT_AW
) (
    input  wire        clk,
    input  wire        rst_n,

    input  wire        meta_valid,
    output wire        meta_ready,
    input  wire        meta_parse_ok,
    input  wire        meta_parse_error,
    input  wire        meta_unsupported_type,
    input  wire        meta_is_ipv4,
    input  wire [31:0] meta_src_ip,
    input  wire [31:0] meta_dst_ip,
    input  wire [7:0]  meta_ip_protocol,
    input  wire        meta_packet_is_tcp,
    input  wire        meta_packet_is_udp,
    input  wire        meta_packet_is_icmp,
    input  wire        meta_transport_valid,
    input  wire [15:0] meta_src_port,
    input  wire [15:0] meta_dst_port,
    input  wire [7:0]  meta_tcp_flags,
    input  wire [7:0]  meta_icmp_type,
    input  wire [7:0]  meta_icmp_code,
    input  wire        meta_ipv4_fragmented,
    input  wire [12:0] meta_ipv4_fragment_offset,
    input  wire [15:0] meta_ipv4_identification,
    input  wire        meta_ipv4_more_fragments,
    input  wire        meta_ipv4_dont_fragment,
    input  wire [15:0] meta_ipv4_total_length,
    input  wire [7:0]  meta_ipv4_header_bytes,
    input  wire [15:0] meta_packet_bytes,

    output wire        alert_valid,
    input  wire        alert_ready,
    output wire [3:0]  alert_code,
    output wire [9:0]  alert_flags,
    output wire [1:0]  alert_severity,
    output wire [31:0] alert_src_ip,
    output wire [31:0] alert_dst_ip,
    output wire [7:0]  alert_protocol,
    output wire [15:0] alert_src_port,
    output wire [15:0] alert_dst_port,
    output wire [31:0] alert_detail,

    // Health / tuning counters
    output reg  [31:0] stat_packets,
    output reg  [31:0] stat_alerts,
    output reg  [15:0] stat_alerts_dropped,
    output reg  [15:0] stat_max_proc_cycles,
    // Highest estimate seen per class in the last completed window (use for threshold tuning)
    output reg  [15:0] stat_peak_syn,
    output reg  [15:0] stat_peak_scan,
    output reg  [15:0] stat_peak_icmp,
    output reg  [15:0] stat_peak_udp
);

    // ------------------------------------------------------------------ constants
    localparam integer SUB_CYCLES = (WINDOW_CYCLES/256 < 1) ? 1 : (WINDOW_CYCLES/256);
    localparam integer SK_DEPTH   = 2048;   // 2 rows x 1024
    localparam integer BL_DEPTH   = 1024;   // 1024 x 16 bit = 16384-bit Bloom filter
    localparam integer REC_W      = 152;

    localparam [2:0] CL_SYN = 3'd0, CL_SYNACK = 3'd1, CL_ICMP = 3'd2, CL_UDP = 3'd3, CL_SCAN = 3'd4;

    localparam [4:0] S_INIT = 5'd0,  S_IDLE = 5'd1,  S_PLAN = 5'd2,
                     S_K0   = 5'd3,  S_K1   = 5'd4,  S_K2   = 5'd5,  S_K3 = 5'd6, S_K4 = 5'd7, S_K5 = 5'd8,
                     S_B0   = 5'd9,  S_B1   = 5'd10, S_B2   = 5'd11,
                     S_F0   = 5'd12, S_F1   = 5'd13, S_F2   = 5'd14,
                     S_EMIT = 5'd15, S_ROLL = 5'd16, S_SUM  = 5'd17, S_SYS = 5'd18;

    // H3 universal hash family: each output bit = XOR of a fixed random subset of key bits.
    // Masks are generated by gen_h3.py (fixed seed). Change the seed to get a different hash set.
    function [9:0] h3_sk0;
        input [34:0] k;
        begin
            h3_sk0 = {
            ^(k & 35'h621e6971e),
            ^(k & 35'h535cbde98),
            ^(k & 35'h35298e0a),
            ^(k & 35'h47bc804ec),
            ^(k & 35'h3c7f21354),
            ^(k & 35'h42d6655b0),
            ^(k & 35'h33c995b01),
            ^(k & 35'h2a2a630ba),
            ^(k & 35'h4c33c9c8f),
            ^(k & 35'h715cfae33)};
        end
    endfunction
    function [9:0] h3_sk1;
        input [34:0] k;
        begin
            h3_sk1 = {
            ^(k & 35'h47a906940),
            ^(k & 35'h18d6e7c62),
            ^(k & 35'h727e950d),
            ^(k & 35'h64abc4334),
            ^(k & 35'h6699a10e3),
            ^(k & 35'h67e0d85ff),
            ^(k & 35'h62d5c0260),
            ^(k & 35'h23a760d64),
            ^(k & 35'h5de7abc82),
            ^(k & 35'h61b49722c)};
        end
    endfunction
    function [13:0] h3_bl;
        input [79:0] k;
        begin
            h3_bl = {
            ^(k & 80'h243f05b56a94265fb4fc),
            ^(k & 80'h314143a87affedd984),
            ^(k & 80'h92a2749536df9f332cc6),
            ^(k & 80'h42af30b3bdfa7801052b),
            ^(k & 80'h546f6fa22a60423d81a0),
            ^(k & 80'h4b6440dc2a66531e0677),
            ^(k & 80'h4ca1a30e0d3e0a7c3256),
            ^(k & 80'hb30ae777a319587de3fe),
            ^(k & 80'hf57e0177720072eed029),
            ^(k & 80'hdde36ffb9fc42bf9f35a),
            ^(k & 80'had05ad90081f591be85b),
            ^(k & 80'h68b5e3d10e93ecfce86c),
            ^(k & 80'hc8b4d900942539c640ba),
            ^(k & 80'hfb63fcf99df07e985968)};
        end
    endfunction


    // ------------------------------------------------------------------ window timing
    reg [31:0] sub_cnt;
    reg [7:0]  frac;            // 0..255 progress through the current window
    reg        roll_pending;
    reg [1:0]  ep;              // epoch 0..2: bank roles rotate (current / previous / being-cleared)
    wire [1:0] pe = (ep == 2'd0) ? 2'd2 : (ep - 2'd1);
    wire [8:0] wprev = 9'd256 - {1'b0, frac};

    reg [4:0]  state;
    reg        sweep_active, init_all;
    reg [10:0] sweep_ptr;

    // ------------------------------------------------------------------ latched packet
    reg [31:0] r_src, r_dst;
    reg [15:0] r_sport, r_dport, r_bytes, r_id, r_tot;
    reg [7:0]  r_proto, r_hdr;
    reg [12:0] r_off;
    reg        r_mf, r_df;
    reg        p_syn, p_synack, p_echo, p_udp, p_flaganom, p_probe, p_mal, p_spoof, p_frag;
    reg [4:0]  r_flagsub;
    reg [1:0]  r_spoofsub;
    reg        d_sa, d_pri, d_bl, d_scan, d_frag, scan_new;
    reg        ev_syn, ev_scan, ev_icmp, ev_udp, ev_fseen, ev_fanom;
    reg [15:0] ev_m_syn, ev_m_scan, ev_m_icmp, ev_m_udp, ev_fpay;
    reg [7:0]  ev_freason;

    // ------------------------------------------------------------------ meta decode
    wire ipv4ok = meta_parse_ok && meta_is_ipv4 && !meta_unsupported_type && !meta_parse_error;
    wire [5:0] f = meta_tcp_flags[5:0];       // FIN SYN RST PSH ACK URG
    wire f_fin = f[0], f_syn = f[1], f_rst = f[2], f_psh = f[3], f_ack = f[4], f_urg = f[5];
    wire m_tcp = ipv4ok && meta_transport_valid && meta_packet_is_tcp && (meta_ip_protocol == 8'd6);
    wire m_udp = ipv4ok && meta_transport_valid && meta_packet_is_udp && (meta_ip_protocol == 8'd17);
    wire m_icmp = ipv4ok && meta_transport_valid && meta_packet_is_icmp && (meta_ip_protocol == 8'd1);
    wire m_syn    = m_tcp && f_syn && !f_ack && !f_rst && !f_fin;
    wire m_synack = m_tcp && f_syn &&  f_ack && !f_rst && !f_fin;
    wire an_null    = (f == 6'b000000);
    wire an_xmas    = f_fin && f_psh && f_urg;
    wire an_synfin  = f_syn && f_fin;
    wire an_synrst  = f_syn && f_rst;
    wire an_finnoack = f_fin && !f_ack;
    wire m_flaganom = m_tcp && (an_null || an_xmas || an_synfin || an_synrst || an_finnoack);
    wire m_probe    = m_syn || m_flaganom;
    wire m_echo     = m_icmp && (meta_icmp_code == 8'd0) && (meta_icmp_type == 8'd8 || meta_icmp_type == 8'd0);
    wire dhcp_disc  = (meta_src_ip == 32'd0) && m_udp && (meta_dst_port == 16'd67);
    wire m_land     = ipv4ok && (meta_src_ip == meta_dst_ip);
    wire m_bogon    = ipv4ok && ((meta_src_ip[31:24] == 8'd0 && !dhcp_disc) || meta_src_ip[31:24] == 8'd127 ||
                                 meta_src_ip[31:28] == 4'hE || meta_src_ip[31:28] == 4'hF);
    wire m_fragpkt  = meta_parse_ok && meta_is_ipv4 && meta_ipv4_fragmented;

    // ------------------------------------------------------------------ alert queue
    reg [REC_W-1:0] fifo_mem [0:(1<<ALERT_AW)-1];
    reg [ALERT_AW-1:0] f_wr, f_rd;
    reg [ALERT_AW:0]   f_cnt;
    wire fifo_full = f_cnt[ALERT_AW];
    wire [REC_W-1:0] rec_out = fifo_mem[f_rd];
    assign alert_valid    = (f_cnt != 0);
    assign alert_code     = rec_out[151:148];
    assign alert_flags    = rec_out[147:138];
    assign alert_severity = rec_out[137:136];
    assign alert_src_ip   = rec_out[135:104];
    assign alert_dst_ip   = rec_out[103:72];
    assign alert_protocol = rec_out[71:64];
    assign alert_src_port = rec_out[63:48];
    assign alert_dst_port = rec_out[47:32];
    assign alert_detail   = rec_out[31:0];
    wire alert_pop = alert_valid && alert_ready;

    reg        drop_pending;
    reg [15:0] drop_since;
    reg [15:0] rl_cnt [0:4];     // 0 malformed, 1 frag seen, 2 frag anomaly, 3 flag anomaly, 4 spoof
    reg [2:0]  sum_i;

    wire roll_go = roll_pending && !sweep_active;
    wire sys_go  = drop_pending && !fifo_full;
    assign meta_ready = (state == S_IDLE) && !roll_go && !sys_go;
    wire meta_fire = meta_valid && meta_ready;

    // ------------------------------------------------------------------ sketch / bloom RAM banks
    reg  [2:0]  op_cls;
    reg  [31:0] op_ip;
    reg         op_inc, op_wr;
    wire [34:0] sk_key = {op_cls, op_ip};
    wire [9:0]  hk0 = h3_sk0(sk_key);
    wire [9:0]  hk1 = h3_sk1(sk_key);
    wire [79:0] bl_key = {r_src, r_dst, r_dport};
    wire [13:0] hbl = h3_bl(bl_key);

    wire [10:0] sk_ra = (state == S_K0) ? {1'b0, hk0} : {1'b1, hk1};
    wire        eng_sk_we = (state == S_K4) || (state == S_K5);
    wire [10:0] eng_sk_wa = (state == S_K4) ? {1'b0, hk0} : {1'b1, hk1};
    reg  [15:0] new0, new1;
    wire [15:0] eng_sk_wd = (state == S_K4) ? new0 : new1;
    wire [9:0]  bl_ra = hbl[13:4];
    wire        eng_bl_we = (state == S_B2);
    reg  [15:0] bl_cw;
    wire [15:0] eng_bl_wd = bl_cw | (16'd1 << hbl[3:0]);

    wire [47:0] sk_rd_all, bl_rd_all;
    wire [15:0] sk_cur  = sk_rd_all[16*ep +: 16];
    wire [15:0] sk_prev = sk_rd_all[16*pe +: 16];
    wire [15:0] bl_cur  = bl_rd_all[16*ep +: 16];
    wire [15:0] bl_prev = bl_rd_all[16*pe +: 16];

    genvar gb;
    generate
        for (gb = 0; gb < 3; gb = gb + 1) begin : g_bank
            wire is_cur  = (ep == gb);
            wire is_prev = (pe == gb);
            wire sw      = sweep_active && (init_all || (!is_cur && !is_prev));
            wire sw_bl   = sw && (sweep_ptr < BL_DEPTH);
            nids_ram #(.AW(11), .DW(16)) u_sk (
                .clk(clk), .we((is_cur && eng_sk_we) || sw),
                .wa(sw ? sweep_ptr : eng_sk_wa), .wd(sw ? 16'd0 : eng_sk_wd),
                .ra(sk_ra), .rd(sk_rd_all[16*gb +: 16]));
            nids_ram #(.AW(10), .DW(16)) u_bl (
                .clk(clk), .we((is_cur && eng_bl_we) || sw_bl),
                .wa(sw ? sweep_ptr[9:0] : bl_ra), .wd(sw ? 16'd0 : eng_bl_wd),
                .ra(bl_ra), .rd(bl_rd_all[16*gb +: 16]));
        end
    endgenerate

    // ------------------------------------------------------------------ sketch arithmetic (state K3/K4)
    reg [15:0] w0c, w0p, w1c, w1p;
    reg [16:0] est_a_r, sa_est;
    reg [14:0] minc_r;
    reg        alerted_r, fire_r;
    wire [14:0] c0 = w0c[14:0], c1 = w1c[14:0], p0 = w0p[14:0], p1 = w1p[14:0];
    wire [14:0] minc = (c0 < c1) ? c0 : c1;
    wire [14:0] minp = (p0 < p1) ? p0 : p1;
    wire [23:0] prod = minp * wprev;
    wire [16:0] est_b = {2'b00, minc} + {1'b0, prod[23:8]};
    wire [16:0] est_a = est_b + {16'd0, op_inc};
    wire [15:0] base_cnt = {1'b0, minc_r} + {15'd0, op_inc};
    wire [14:0] base_sat = (base_cnt > 16'd32767) ? 15'h7FFF : base_cnt[14:0];
    wire [14:0] nc0 = (w0c[14:0] > base_sat) ? w0c[14:0] : base_sat;
    wire [14:0] nc1 = (w1c[14:0] > base_sat) ? w1c[14:0] : base_sat;
    wire unans = (est_a_r > sa_est) && ((est_a_r - sa_est) >= (est_a_r >> SYN_UNANSWERED_SHIFT));
    reg  fire_w;
    always @* begin
        fire_w = 1'b0;
        case (op_cls)
            CL_SYN:  fire_w = !alerted_r && (est_a_r >= SYN_THRESHOLD) &&
                              ((est_a_r >= SYN_HARD_THRESHOLD) || (SYN_REQUIRE_UNANSWERED == 0) || unans);
            CL_ICMP: fire_w = !alerted_r && (est_a_r >= ICMP_THRESHOLD);
            CL_UDP:  fire_w = !alerted_r && (est_a_r >= UDP_THRESHOLD);
            CL_SCAN: fire_w = !alerted_r && (est_a_r >= PORT_SCAN_THRESHOLD);
            default: fire_w = 1'b0;
        endcase
        new0 = {w0c[15] | fire_w, nc0};
        new1 = {w1c[15] | fire_w, nc1};
    end

    // ------------------------------------------------------------------ fragment cache (distributed RAM + valid bits)
    reg [121:0] frag_mem [0:15];
    reg [15:0]  frag_valid;
    reg [3:0]   frag_ptr;
    reg [4:0]   fi;
    reg         f_ov;
    wire [15:0] f_pay   = (r_tot >= {8'd0, r_hdr}) ? (r_tot - {8'd0, r_hdr}) : 16'd0;
    wire [16:0] f_start = {1'b0, r_off, 3'b000};
    wire [16:0] f_end   = f_start + {1'b0, f_pay};
    wire [87:0] f_key   = {r_src, r_dst, r_id, r_proto};
    wire [121:0] frag_rd = frag_mem[fi[3:0]];
    wire frag_hit = frag_valid[fi[3:0]] && (frag_rd[121:34] == f_key) &&
                    (f_start < frag_rd[16:0]) && (frag_rd[33:17] < f_end);
    reg [7:0] f_static_reason;
    always @* begin
        f_static_reason = 8'd0;
        if (r_df)                                   f_static_reason = 8'd2;
        else if (r_mf && (f_pay[2:0] != 3'b000))    f_static_reason = 8'd3;
        else if (f_end > 17'd65535)                 f_static_reason = 8'd5;
        else if (r_off == 13'd0 && r_mf && f_pay < 16'd16) f_static_reason = 8'd6;
    end
    always @(posedge clk)
        if (state == S_F2 && !f_ov && f_pay != 16'd0)
            frag_mem[frag_ptr] <= {f_key, f_start, f_end};

    // ------------------------------------------------------------------ record construction
    reg [4:0] rl_active, rl_pass;
    reg [9:0] e_flags;
    reg [3:0] e_code;
    reg [1:0] e_sev;
    reg [31:0] e_detail;
    integer ri;
    always @* begin
        rl_active = {p_spoof, p_flaganom, ev_fanom, ev_fseen, p_mal};
        for (ri = 0; ri < 5; ri = ri + 1)
            rl_pass[ri] = rl_active[ri] && (rl_cnt[ri] < RL_BURST);
        e_flags = 10'd0;
        e_flags[0] = ev_syn;  e_flags[1] = ev_scan; e_flags[2] = ev_icmp;
        e_flags[3] = rl_pass[0];
        e_flags[4] = rl_pass[1] | rl_pass[2];
        e_flags[6] = ev_udp;  e_flags[7] = rl_pass[3]; e_flags[8] = rl_pass[4];
        e_code = 4'd0; e_sev = 2'd0; e_detail = 32'd0;
        if (rl_pass[0])      begin e_code = 4'd4;  e_sev = 2'd3; e_detail = {8'd1, 8'd0, r_bytes}; end
        else if (rl_pass[4]) begin e_code = 4'd10; e_sev = 2'd2; e_detail = {(r_spoofsub == 2'd1) ? 8'd40 : 8'd41, 6'd0, r_spoofsub, r_bytes}; end
        else if (rl_pass[2]) begin e_code = 4'd6;  e_sev = 2'd2; e_detail = {ev_freason, 8'd0, ev_fpay}; end
        else if (rl_pass[3]) begin e_code = 4'd9;  e_sev = 2'd2; e_detail = {8'd24, 3'b000, r_flagsub, r_bytes}; end
        else if (ev_syn)     begin e_code = 4'd1;  e_sev = 2'd2; e_detail = {8'd17, 8'd0, ev_m_syn}; end
        else if (ev_scan)    begin e_code = 4'd2;  e_sev = 2'd2; e_detail = {8'd18, 8'd0, ev_m_scan}; end
        else if (ev_icmp)    begin e_code = 4'd3;  e_sev = 2'd2; e_detail = {8'd19, 8'd0, ev_m_icmp}; end
        else if (ev_udp)     begin e_code = 4'd8;  e_sev = 2'd2; e_detail = {8'd20, 8'd0, ev_m_udp}; end
        else if (rl_pass[1]) begin e_code = 4'd5;  e_sev = 2'd1; e_detail = {8'd16, 8'd0, ev_fpay}; end
    end

    // summary record (one per class that had suppressed events in the window just ended)
    reg [3:0]  s_code;  reg [9:0] s_flags;  reg [1:0] s_sev;
    wire [15:0] s_cnt = rl_cnt[sum_i];
    wire [15:0] s_supp = s_cnt - RL_BURST;
    always @* begin
        case (sum_i)
            3'd0:    begin s_code = 4'd4;  s_flags = 10'h208; s_sev = 2'd3; end
            3'd1:    begin s_code = 4'd5;  s_flags = 10'h210; s_sev = 2'd1; end
            3'd2:    begin s_code = 4'd6;  s_flags = 10'h210; s_sev = 2'd2; end
            3'd3:    begin s_code = 4'd9;  s_flags = 10'h280; s_sev = 2'd2; end
            default: begin s_code = 4'd10; s_flags = 10'h300; s_sev = 2'd2; end
        endcase
    end

    wire emit_push = (state == S_EMIT) && (e_flags != 10'd0);
    wire sum_push  = (state == S_SUM) && (s_cnt > RL_BURST);
    wire sys_push  = (state == S_SYS);
    wire push_now  = emit_push || sum_push || sys_push;
    wire push_ok   = push_now && !fifo_full;
    wire [REC_W-1:0] rec_next =
        emit_push ? {e_code, e_flags, e_sev, r_src, r_dst, r_proto, r_sport, r_dport, e_detail} :
        sum_push  ? {s_code, s_flags, s_sev, 32'd0, 32'd0, 8'd0, 16'd0, 16'd0, 8'd64, 8'd0, s_supp} :
                    {4'd7, 10'h020, 2'd1, 32'd0, 32'd0, 8'd0, 16'd0, 16'd0, 8'd32, 8'd0, drop_since};
    always @(posedge clk) if (push_ok) fifo_mem[f_wr] <= rec_next;

    // ------------------------------------------------------------------ main sequential logic
    reg [15:0] pk_syn, pk_scan, pk_icmp, pk_udp;
    reg [15:0] proc_cnt;
    wire need_pri = p_syn || p_synack || p_echo || p_udp;
    integer ki;

    always @(posedge clk) begin
        if (!rst_n) begin
            state <= S_INIT;
            sweep_active <= 1'b1; init_all <= 1'b1; sweep_ptr <= 11'd0;
            sub_cnt <= 32'd0; frac <= 8'd0; roll_pending <= 1'b0; ep <= 2'd0;
            f_wr <= 0; f_rd <= 0; f_cnt <= 0;
            drop_pending <= 1'b0; drop_since <= 16'd0; sum_i <= 3'd0;
            frag_valid <= 16'd0; frag_ptr <= 4'd0; fi <= 5'd0; f_ov <= 1'b0;
            stat_packets <= 32'd0; stat_alerts <= 32'd0; stat_alerts_dropped <= 16'd0;
            stat_max_proc_cycles <= 16'd0;
            stat_peak_syn <= 16'd0; stat_peak_scan <= 16'd0; stat_peak_icmp <= 16'd0; stat_peak_udp <= 16'd0;
            pk_syn <= 16'd0; pk_scan <= 16'd0; pk_icmp <= 16'd0; pk_udp <= 16'd0;
            proc_cnt <= 16'd0; sa_est <= 17'd0;
            for (ki = 0; ki < 5; ki = ki + 1) rl_cnt[ki] <= 16'd0;
        end else begin
            // ---- window timer (frozen while a roll is waiting for the engine to go idle)
            if (!roll_pending) begin
                if (sub_cnt >= SUB_CYCLES - 1) begin
                    sub_cnt <= 32'd0;
                    if (frac == 8'hFF) begin frac <= 8'd0; roll_pending <= 1'b1; end
                    else frac <= frac + 8'd1;
                end else sub_cnt <= sub_cnt + 32'd1;
            end

            // ---- background RAM sweep (clears the bank that is about to become "current")
            if (sweep_active) begin
                if (sweep_ptr == SK_DEPTH - 1) begin sweep_active <= 1'b0; sweep_ptr <= 11'd0; end
                else sweep_ptr <= sweep_ptr + 11'd1;
            end

            // ---- alert queue bookkeeping
            if (alert_pop) f_rd <= f_rd + 1'b1;
            if (push_ok)   f_wr <= f_wr + 1'b1;
            case ({push_ok, alert_pop})
                2'b10: f_cnt <= f_cnt + 1'b1;
                2'b01: f_cnt <= f_cnt - 1'b1;
                default: ;
            endcase
            if (push_ok && stat_alerts != 32'hFFFFFFFF) stat_alerts <= stat_alerts + 32'd1;
            if (push_now && fifo_full) begin
                if (stat_alerts_dropped != 16'hFFFF) stat_alerts_dropped <= stat_alerts_dropped + 16'd1;
                if (drop_since != 16'hFFFF) drop_since <= drop_since + 16'd1;
                drop_pending <= 1'b1;
            end

            case (state)
                S_INIT: if (!sweep_active) begin init_all <= 1'b0; state <= S_IDLE; end

                S_IDLE: begin
                    if (roll_go) state <= S_ROLL;
                    else if (sys_go) state <= S_SYS;
                    else if (meta_fire) begin
                        stat_packets <= stat_packets + 32'd1;
                        r_src <= meta_src_ip; r_dst <= meta_dst_ip; r_sport <= meta_src_port; r_dport <= meta_dst_port;
                        r_proto <= meta_ip_protocol; r_bytes <= meta_packet_bytes; r_id <= meta_ipv4_identification;
                        r_tot <= meta_ipv4_total_length; r_hdr <= meta_ipv4_header_bytes;
                        r_off <= meta_ipv4_fragment_offset; r_mf <= meta_ipv4_more_fragments; r_df <= meta_ipv4_dont_fragment;
                        p_syn <= m_syn; p_synack <= m_synack; p_echo <= m_echo; p_udp <= m_udp;
                        p_flaganom <= m_flaganom; p_probe <= m_probe; p_mal <= meta_parse_error;
                        p_spoof <= m_land || m_bogon; p_frag <= m_fragpkt;
                        r_flagsub <= {an_finnoack, an_synrst, an_synfin, an_xmas, an_null};
                        r_spoofsub <= m_land ? 2'd1 : 2'd2;
                        d_sa <= 1'b0; d_pri <= 1'b0; d_bl <= 1'b0; d_scan <= 1'b0; d_frag <= 1'b0; scan_new <= 1'b0;
                        ev_syn <= 1'b0; ev_scan <= 1'b0; ev_icmp <= 1'b0; ev_udp <= 1'b0; ev_fseen <= 1'b0; ev_fanom <= 1'b0;
                        ev_freason <= 8'd0; ev_fpay <= 16'd0;
                        proc_cnt <= 16'd1;
                        state <= S_PLAN;
                    end
                end

                // dispatcher: run each needed sub-operation once, then emit
                S_PLAN: begin
                    proc_cnt <= proc_cnt + 16'd1;
                    if (p_syn && !d_sa) begin
                        op_cls <= CL_SYNACK; op_ip <= r_dst; op_inc <= 1'b0; op_wr <= 1'b0; d_sa <= 1'b1; state <= S_K0;
                    end else if (need_pri && !d_pri) begin
                        op_cls <= p_syn ? CL_SYN : (p_synack ? CL_SYNACK : (p_echo ? CL_ICMP : CL_UDP));
                        op_ip  <= p_synack ? r_src : r_dst;
                        op_inc <= 1'b1; op_wr <= 1'b1; d_pri <= 1'b1; state <= S_K0;
                    end else if (p_probe && !d_bl) begin
                        d_bl <= 1'b1; state <= S_B0;
                    end else if (scan_new && !d_scan) begin
                        op_cls <= CL_SCAN; op_ip <= r_src; op_inc <= 1'b1; op_wr <= 1'b1; d_scan <= 1'b1; state <= S_K0;
                    end else if (p_frag && !d_frag) begin
                        d_frag <= 1'b1; state <= S_F0;
                    end else state <= S_EMIT;
                end

                // count-min sketch access: 2 rows, read -> compute -> conservative-update write
                S_K0: begin proc_cnt <= proc_cnt + 16'd1; state <= S_K1; end
                S_K1: begin proc_cnt <= proc_cnt + 16'd1; w0c <= sk_cur; w0p <= sk_prev; state <= S_K2; end
                S_K2: begin proc_cnt <= proc_cnt + 16'd1; w1c <= sk_cur; w1p <= sk_prev; state <= S_K3; end
                S_K3: begin
                    proc_cnt <= proc_cnt + 16'd1;
                    est_a_r <= est_a; minc_r <= minc; alerted_r <= w0c[15] & w1c[15];
                    if (!op_wr) begin
                        sa_est <= est_b; state <= S_PLAN;
                    end else begin
                        case (op_cls)
                            CL_SYN:  if (est_a[15:0] > pk_syn)  pk_syn  <= est_a[15:0];
                            CL_ICMP: if (est_a[15:0] > pk_icmp) pk_icmp <= est_a[15:0];
                            CL_UDP:  if (est_a[15:0] > pk_udp)  pk_udp  <= est_a[15:0];
                            CL_SCAN: if (est_a[15:0] > pk_scan) pk_scan <= est_a[15:0];
                            default: ;
                        endcase
                        state <= S_K4;
                    end
                end
                S_K4: begin   // row-0 write happens here (see eng_sk_we)
                    proc_cnt <= proc_cnt + 16'd1;
                    fire_r <= fire_w;
                    if (fire_w) begin
                        case (op_cls)
                            CL_SYN:  begin ev_syn  <= 1'b1; ev_m_syn  <= est_a_r[15:0]; end
                            CL_ICMP: begin ev_icmp <= 1'b1; ev_m_icmp <= est_a_r[15:0]; end
                            CL_UDP:  begin ev_udp  <= 1'b1; ev_m_udp  <= est_a_r[15:0]; end
                            CL_SCAN: begin ev_scan <= 1'b1; ev_m_scan <= est_a_r[15:0]; end
                            default: ;
                        endcase
                    end
                    state <= S_K5;
                end
                S_K5: begin proc_cnt <= proc_cnt + 16'd1; state <= S_PLAN; end   // row-1 write

                // Bloom filter: is this (src,dst,dport) new for the source in the last ~2 windows?
                S_B0: begin proc_cnt <= proc_cnt + 16'd1; state <= S_B1; end
                S_B1: begin
                    proc_cnt <= proc_cnt + 16'd1;
                    bl_cw <= bl_cur;
                    scan_new <= !(bl_cur[hbl[3:0]] | bl_prev[hbl[3:0]]);
                    state <= bl_cur[hbl[3:0]] ? S_PLAN : S_B2;
                end
                S_B2: begin proc_cnt <= proc_cnt + 16'd1; state <= S_PLAN; end

                // fragment checks
                S_F0: begin
                    proc_cnt <= proc_cnt + 16'd1;
                    fi <= 5'd0; f_ov <= 1'b0;
                    if (f_static_reason != 8'd0) begin
                        ev_fanom <= 1'b1; ev_freason <= f_static_reason; ev_fpay <= f_pay; state <= S_PLAN;
                    end else state <= S_F1;
                end
                S_F1: begin
                    proc_cnt <= proc_cnt + 16'd1;
                    if (frag_hit) f_ov <= 1'b1;
                    fi <= fi + 5'd1;
                    if (fi == 5'd15) state <= S_F2;
                end
                S_F2: begin
                    proc_cnt <= proc_cnt + 16'd1;
                    ev_fpay <= f_pay;
                    if (f_ov) begin ev_fanom <= 1'b1; ev_freason <= 8'd4; end
                    else begin
                        ev_fseen <= 1'b1;
                        if (f_pay != 16'd0) begin   // cache write happens in the RAM always block
                            frag_valid[frag_ptr] <= 1'b1; frag_ptr <= frag_ptr + 4'd1;
                        end
                    end
                    state <= S_PLAN;
                end

                S_EMIT: begin
                    for (ki = 0; ki < 5; ki = ki + 1)
                        if (rl_active[ki] && rl_cnt[ki] != 16'hFFFF) rl_cnt[ki] <= rl_cnt[ki] + 16'd1;
                    if ((proc_cnt + 16'd1) > stat_max_proc_cycles) stat_max_proc_cycles <= proc_cnt + 16'd1;
                    state <= S_IDLE;
                end

                S_ROLL: begin
                    ep <= (ep == 2'd2) ? 2'd0 : (ep + 2'd1);
                    sweep_active <= 1'b1; sweep_ptr <= 11'd0;
                    roll_pending <= 1'b0;
                    frag_valid <= 16'd0; frag_ptr <= 4'd0;
                    stat_peak_syn <= pk_syn; stat_peak_scan <= pk_scan; stat_peak_icmp <= pk_icmp; stat_peak_udp <= pk_udp;
                    pk_syn <= 16'd0; pk_scan <= 16'd0; pk_icmp <= 16'd0; pk_udp <= 16'd0;
                    sum_i <= 3'd0;
                    state <= S_SUM;
                end

                S_SUM: begin
                    rl_cnt[sum_i] <= 16'd0;
                    if (sum_i == 3'd4) state <= S_IDLE;
                    sum_i <= sum_i + 3'd1;
                end

                S_SYS: begin
                    drop_pending <= 1'b0; drop_since <= 16'd0; state <= S_IDLE;
                end

                default: state <= S_IDLE;
            endcase
        end
    end
endmodule

// Simple-dual-port RAM with registered read (infers Spartan-6 block RAM). No reset by design.
module nids_ram #(parameter AW = 11, parameter DW = 16) (
    input  wire          clk,
    input  wire          we,
    input  wire [AW-1:0] wa,
    input  wire [DW-1:0] wd,
    input  wire [AW-1:0] ra,
    output reg  [DW-1:0] rd
);
    reg [DW-1:0] mem [0:(1<<AW)-1];
    always @(posedge clk) begin
        if (we) mem[wa] <= wd;
        rd <= mem[ra];
    end
endmodule
