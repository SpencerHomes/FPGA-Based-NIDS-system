`timescale 1ns/1ps
// Replays a metadata trace (from pcap_to_meta.py) through the detector and prints every alert.
//   iverilog -g2001 -s nids_replay_tb -Pnids_replay_tb.WINDOW_CYCLES=500000 -o replay \
//            nids_attack_detector_v2.v nids_replay_tb.v
//   vvp replay +TRACE=demo_a.txt
// WINDOW_CYCLES must match the --speedup used when making the trace: clk_hz/speedup per capture second.
module nids_replay_tb;
    parameter integer WINDOW_CYCLES = 500000;
    parameter integer SYN_THRESHOLD = 200, SYN_HARD_THRESHOLD = 2000, SYN_REQUIRE_UNANSWERED = 1;
    parameter integer SYN_UNANSWERED_SHIFT = 2, PORT_SCAN_THRESHOLD = 64, ICMP_THRESHOLD = 500, UDP_THRESHOLD = 2000;
    parameter integer RL_BURST = 4;

    reg clk = 0; always #10 clk = ~clk;
    reg rst_n = 0, meta_valid = 0;
    wire meta_ready;
    reg ok, err, unsup, v4, tcp, udp, icmp, tv, frag, mf, df;
    reg [31:0] src, dst; reg [7:0] proto, fl, it, ic, hdr; reg [15:0] sp, dp, ident, tot, plen; reg [12:0] off;
    wire alert_valid; wire [3:0] code; wire [9:0] flags; wire [1:0] sev;
    wire [31:0] asrc, adst, adet; wire [7:0] aproto; wire [15:0] asp, adp;
    wire [31:0] st_pk, st_al; wire [15:0] st_dr, st_mx, pk_syn, pk_scan, pk_icmp, pk_udp;

    nids_attack_detector #(.WINDOW_CYCLES(WINDOW_CYCLES), .SYN_THRESHOLD(SYN_THRESHOLD), .SYN_HARD_THRESHOLD(SYN_HARD_THRESHOLD),
        .SYN_REQUIRE_UNANSWERED(SYN_REQUIRE_UNANSWERED), .SYN_UNANSWERED_SHIFT(SYN_UNANSWERED_SHIFT),
        .PORT_SCAN_THRESHOLD(PORT_SCAN_THRESHOLD), .ICMP_THRESHOLD(ICMP_THRESHOLD), .UDP_THRESHOLD(UDP_THRESHOLD),
        .RL_BURST(RL_BURST)) dut (
        .clk(clk), .rst_n(rst_n), .meta_valid(meta_valid), .meta_ready(meta_ready),
        .meta_parse_ok(ok), .meta_parse_error(err), .meta_unsupported_type(unsup), .meta_is_ipv4(v4),
        .meta_src_ip(src), .meta_dst_ip(dst), .meta_ip_protocol(proto), .meta_packet_is_tcp(tcp),
        .meta_packet_is_udp(udp), .meta_packet_is_icmp(icmp), .meta_transport_valid(tv),
        .meta_src_port(sp), .meta_dst_port(dp), .meta_tcp_flags(fl), .meta_icmp_type(it), .meta_icmp_code(ic),
        .meta_ipv4_fragmented(frag), .meta_ipv4_fragment_offset(off), .meta_ipv4_identification(ident),
        .meta_ipv4_more_fragments(mf), .meta_ipv4_dont_fragment(df), .meta_ipv4_total_length(tot),
        .meta_ipv4_header_bytes(hdr), .meta_packet_bytes(plen),
        .alert_valid(alert_valid), .alert_ready(1'b1), .alert_code(code), .alert_flags(flags), .alert_severity(sev),
        .alert_src_ip(asrc), .alert_dst_ip(adst), .alert_protocol(aproto), .alert_src_port(asp), .alert_dst_port(adp),
        .alert_detail(adet), .stat_packets(st_pk), .stat_alerts(st_al), .stat_alerts_dropped(st_dr),
        .stat_max_proc_cycles(st_mx), .stat_peak_syn(pk_syn), .stat_peak_scan(pk_scan),
        .stat_peak_icmp(pk_icmp), .stat_peak_udp(pk_udp));

    integer cyc = 0; always @(posedge clk) cyc = cyc + 1;
    integer by_code [0:15]; integer k;
    initial for (k = 0; k < 16; k = k + 1) by_code[k] = 0;
    function [8*14-1:0] cname; input [3:0] c;
        case (c) 1: cname = "SYN_FLOOD"; 2: cname = "SCAN"; 3: cname = "ICMP_FLOOD"; 4: cname = "MALFORMED";
                 5: cname = "FRAG_SEEN"; 6: cname = "FRAG_ANOMALY"; 7: cname = "QUEUE_OVERFLOW"; 8: cname = "UDP_FLOOD";
                 9: cname = "TCP_FLAGS"; 10: cname = "LAND_BOGON"; default: cname = "?"; endcase
    endfunction
    real tps; integer wnum = 0;
    always @(posedge clk) if (rst_n && alert_valid) begin
        by_code[code] = by_code[code] + 1;
        $display("t=%8.3fs  %-14s sev=%0d flags=%b  %0d.%0d.%0d.%0d -> %0d.%0d.%0d.%0d  reason=%0d metric=%0d%s",
            cyc / tps, cname(code), sev, flags, asrc[31:24], asrc[23:16], asrc[15:8], asrc[7:0],
            adst[31:24], adst[23:16], adst[15:8], adst[7:0], adet[31:24], adet[15:0], flags[9] ? " (summary)" : "");
    end
    always @(dut.ep) if (rst_n) begin #1; wnum = wnum + 1;
        $display("--- window %0d closed: peak est  syn=%0d scan=%0d icmp=%0d udp=%0d", wnum, pk_syn, pk_scan, pk_icmp, pk_udp); end

    reg [1023:0] fname; integer fd, r, gap;
    reg [31:0] c_gap, c_ctrl, c_src, c_dst, c_proto, c_sp, c_dp, c_fl, c_it, c_ic, c_off, c_id, c_tot, c_hdr, c_len;
    initial begin
        tps = WINDOW_CYCLES / 1.0;     // clocks per capture-second equals WINDOW_CYCLES for a 1 s nominal window
        if (!$value$plusargs("TRACE=%s", fname)) begin $display("usage: vvp replay +TRACE=file"); $finish; end
        fd = $fopen(fname, "r");
        if (fd == 0) begin $display("cannot open trace"); $finish; end
        repeat (4) @(posedge clk); rst_n = 1;
        while (meta_ready !== 1'b1) @(posedge clk);
        while (!$feof(fd)) begin
            r = $fscanf(fd, "%h %h %h %h %h %h %h %h %h %h %h %h %h %h %h\n", c_gap, c_ctrl, c_src, c_dst, c_proto,
                        c_sp, c_dp, c_fl, c_it, c_ic, c_off, c_id, c_tot, c_hdr, c_len);
            if (r == 15) begin
                repeat (c_gap) @(posedge clk);
                @(negedge clk);
                ok = c_ctrl[0]; err = c_ctrl[1]; unsup = c_ctrl[2]; v4 = c_ctrl[3]; tcp = c_ctrl[4]; udp = c_ctrl[5];
                icmp = c_ctrl[6]; tv = c_ctrl[7]; frag = c_ctrl[8]; mf = c_ctrl[9]; df = c_ctrl[10];
                src = c_src; dst = c_dst; proto = c_proto; sp = c_sp; dp = c_dp; fl = c_fl; it = c_it; ic = c_ic;
                off = c_off; ident = c_id; tot = c_tot; hdr = c_hdr; plen = c_len;
                meta_valid = 1;
                while (meta_ready !== 1'b1) @(negedge clk);
                @(negedge clk); meta_valid = 0;
            end
        end
        repeat (2000) @(posedge clk);
        $display("=== done: packets=%0d alerts=%0d dropped=%0d worst-clocks/pkt=%0d", st_pk, st_al, st_dr, st_mx);
        $finish;
    end
endmodule
