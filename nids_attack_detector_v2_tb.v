`timescale 1ns/1ps
// Directed regression for nids_attack_detector_v2 (metadata level).
// Run:  iverilog -g2001 -s nids_attack_detector_v2_tb -o sim nids_attack_detector_v2.v nids_attack_detector_v2_tb.v && vvp sim
module nids_attack_detector_v2_tb;
    reg clk = 1'b0;
    always #10 clk = ~clk;        // 50 MHz

    reg rst_n;
    reg meta_valid;
    wire meta_ready;
    reg meta_parse_ok, meta_parse_error, meta_unsupported_type, meta_is_ipv4;
    reg [31:0] meta_src_ip, meta_dst_ip;
    reg [7:0]  meta_ip_protocol;
    reg meta_packet_is_tcp, meta_packet_is_udp, meta_packet_is_icmp, meta_transport_valid;
    reg [15:0] meta_src_port, meta_dst_port;
    reg [7:0]  meta_tcp_flags, meta_icmp_type, meta_icmp_code;
    reg meta_ipv4_fragmented;
    reg [12:0] meta_ipv4_fragment_offset;
    reg [15:0] meta_ipv4_identification;
    reg meta_ipv4_more_fragments, meta_ipv4_dont_fragment;
    reg [15:0] meta_ipv4_total_length;
    reg [7:0]  meta_ipv4_header_bytes;
    reg [15:0] meta_packet_bytes;

    wire alert_valid;
    reg  alert_ready;
    wire [3:0] alert_code;
    wire [9:0] alert_flags;
    wire [1:0] alert_severity;
    wire [31:0] alert_src_ip, alert_dst_ip, alert_detail;
    wire [7:0]  alert_protocol;
    wire [15:0] alert_src_port, alert_dst_port;
    wire [31:0] stat_packets, stat_alerts;
    wire [15:0] stat_alerts_dropped, stat_max_proc_cycles;
    wire [15:0] stat_peak_syn, stat_peak_scan, stat_peak_icmp, stat_peak_udp;

    localparam WIN = 25600;       // 100 clocks per 1/256 window step
    nids_attack_detector #(
        .WINDOW_CYCLES(WIN), .SYN_THRESHOLD(5), .SYN_HARD_THRESHOLD(20),
        .SYN_REQUIRE_UNANSWERED(1), .SYN_UNANSWERED_SHIFT(1),
        .PORT_SCAN_THRESHOLD(6), .ICMP_THRESHOLD(4), .UDP_THRESHOLD(6),
        .RL_BURST(2), .ALERT_AW(3)
    ) dut (
        .clk(clk), .rst_n(rst_n),
        .meta_valid(meta_valid), .meta_ready(meta_ready),
        .meta_parse_ok(meta_parse_ok), .meta_parse_error(meta_parse_error),
        .meta_unsupported_type(meta_unsupported_type), .meta_is_ipv4(meta_is_ipv4),
        .meta_src_ip(meta_src_ip), .meta_dst_ip(meta_dst_ip), .meta_ip_protocol(meta_ip_protocol),
        .meta_packet_is_tcp(meta_packet_is_tcp), .meta_packet_is_udp(meta_packet_is_udp),
        .meta_packet_is_icmp(meta_packet_is_icmp), .meta_transport_valid(meta_transport_valid),
        .meta_src_port(meta_src_port), .meta_dst_port(meta_dst_port), .meta_tcp_flags(meta_tcp_flags),
        .meta_icmp_type(meta_icmp_type), .meta_icmp_code(meta_icmp_code),
        .meta_ipv4_fragmented(meta_ipv4_fragmented), .meta_ipv4_fragment_offset(meta_ipv4_fragment_offset),
        .meta_ipv4_identification(meta_ipv4_identification),
        .meta_ipv4_more_fragments(meta_ipv4_more_fragments), .meta_ipv4_dont_fragment(meta_ipv4_dont_fragment),
        .meta_ipv4_total_length(meta_ipv4_total_length), .meta_ipv4_header_bytes(meta_ipv4_header_bytes),
        .meta_packet_bytes(meta_packet_bytes),
        .alert_valid(alert_valid), .alert_ready(alert_ready), .alert_code(alert_code),
        .alert_flags(alert_flags), .alert_severity(alert_severity),
        .alert_src_ip(alert_src_ip), .alert_dst_ip(alert_dst_ip), .alert_protocol(alert_protocol),
        .alert_src_port(alert_src_port), .alert_dst_port(alert_dst_port), .alert_detail(alert_detail),
        .stat_packets(stat_packets), .stat_alerts(stat_alerts), .stat_alerts_dropped(stat_alerts_dropped),
        .stat_max_proc_cycles(stat_max_proc_cycles),
        .stat_peak_syn(stat_peak_syn), .stat_peak_scan(stat_peak_scan),
        .stat_peak_icmp(stat_peak_icmp), .stat_peak_udp(stat_peak_udp)
    );

    localparam [31:0] SRC_A = 32'hC0A8010A, SRC_B = 32'hC0A8010B;
    localparam [31:0] DST_A = 32'hC0A80114, DST_B = 32'hC0A80115, DST_C = 32'hC0A80116;

    // ---------------------------------------------------------------- alert log
    reg [3:0]  lg_code [0:511];
    reg [9:0]  lg_flags[0:511];
    reg [1:0]  lg_sev  [0:511];
    reg [31:0] lg_src  [0:511];
    reg [31:0] lg_dst  [0:511];
    reg [31:0] lg_det  [0:511];
    integer n_alerts;
    integer failures, checks;
    integer worst_proc;
    initial n_alerts = 0;
    always @(posedge clk) if (rst_n && alert_valid && alert_ready) begin
        lg_code[n_alerts] = alert_code;  lg_flags[n_alerts] = alert_flags; lg_sev[n_alerts] = alert_severity;
        lg_src[n_alerts]  = alert_src_ip; lg_dst[n_alerts]  = alert_dst_ip; lg_det[n_alerts] = alert_detail;
        n_alerts = n_alerts + 1;
    end

    function integer find_alert;      // first alert index >= mark with this code, else -1
        input integer mark; input [3:0] code;
        integer k; reg found;
        begin
            find_alert = -1; found = 1'b0;
            for (k = mark; k < n_alerts; k = k + 1)
                if (!found && lg_code[k] == code) begin find_alert = k; found = 1'b1; end
        end
    endfunction
    function integer count_alerts;    // alerts since mark with this code (code 0 = any)
        input integer mark; input [3:0] code;
        integer k;
        begin
            count_alerts = 0;
            for (k = mark; k < n_alerts; k = k + 1)
                if (code == 4'd0 || lg_code[k] == code) count_alerts = count_alerts + 1;
        end
    endfunction

    task check;
        input [8*96-1:0] label;
        input cond;
        begin
            checks = checks + 1;
            if (cond) $display("PASS: %0s", label);
            else begin $display("FAIL: %0s", label); failures = failures + 1; end
        end
    endtask

    // ---------------------------------------------------------------- stimulus helpers
    task set_defaults;
        begin
            meta_parse_ok = 1; meta_parse_error = 0; meta_unsupported_type = 0; meta_is_ipv4 = 1;
            meta_src_ip = SRC_A; meta_dst_ip = DST_A; meta_ip_protocol = 8'd6;
            meta_packet_is_tcp = 0; meta_packet_is_udp = 0; meta_packet_is_icmp = 0; meta_transport_valid = 0;
            meta_src_port = 16'd40000; meta_dst_port = 16'd443; meta_tcp_flags = 0;
            meta_icmp_type = 0; meta_icmp_code = 0;
            meta_ipv4_fragmented = 0; meta_ipv4_fragment_offset = 0; meta_ipv4_identification = 16'h1234;
            meta_ipv4_more_fragments = 0; meta_ipv4_dont_fragment = 0;
            meta_ipv4_total_length = 16'd40; meta_ipv4_header_bytes = 8'd20; meta_packet_bytes = 16'd60;
        end
    endtask

    integer wd;
    reg stalled;
    task send_current;     // present one record, wait for acceptance AND completion
        begin
            @(negedge clk);
            meta_valid = 1'b1;
            wd = 0;
            while (meta_ready !== 1'b1 && wd < 5000) begin @(negedge clk); wd = wd + 1; end
            if (wd >= 5000) begin stalled = 1; $display("FAIL: detector stalled (meta_ready never returned)"); failures = failures + 1; end
            @(posedge clk);
            @(negedge clk);
            meta_valid = 1'b0;
            wd = 0;
            while (meta_ready !== 1'b1 && wd < 5000) begin @(negedge clk); wd = wd + 1; end
            repeat (2) @(posedge clk);
        end
    endtask

    task reset_dut;
        begin
            if (stat_max_proc_cycles > worst_proc) worst_proc = stat_max_proc_cycles;
            @(negedge clk);
            meta_valid = 0; alert_ready = 1; rst_n = 0;
            repeat (4) @(posedge clk);
            @(negedge clk); rst_n = 1;
            wd = 0;
            while (meta_ready !== 1'b1 && wd < 6000) begin @(negedge clk); wd = wd + 1; end   // init sweep
            repeat (2) @(posedge clk);
        end
    endtask

    task send_tcp; input [31:0] s; input [31:0] d; input [15:0] sp; input [15:0] dp; input [7:0] fl;
        begin set_defaults; meta_src_ip = s; meta_dst_ip = d; meta_src_port = sp; meta_dst_port = dp;
              meta_packet_is_tcp = 1; meta_transport_valid = 1; meta_tcp_flags = fl; send_current; end
    endtask
    task send_udp; input [31:0] s; input [31:0] d; input [15:0] sp; input [15:0] dp;
        begin set_defaults; meta_src_ip = s; meta_dst_ip = d; meta_src_port = sp; meta_dst_port = dp;
              meta_ip_protocol = 8'd17; meta_packet_is_udp = 1; meta_transport_valid = 1;
              meta_ipv4_total_length = 16'd60; meta_packet_bytes = 16'd74; send_current; end
    endtask
    task send_icmp; input [31:0] s; input [31:0] d; input [7:0] ty;
        begin set_defaults; meta_src_ip = s; meta_dst_ip = d; meta_ip_protocol = 8'd1;
              meta_packet_is_icmp = 1; meta_transport_valid = 1; meta_icmp_type = ty;
              meta_ipv4_total_length = 16'd28; meta_packet_bytes = 16'd42; send_current; end
    endtask
    task send_malformed;
        begin set_defaults; meta_parse_ok = 0; meta_parse_error = 1; meta_packet_bytes = 16'd23; send_current; end
    endtask
    task send_frag; input [31:0] s; input [31:0] d; input [15:0] id; input [12:0] off; input mf; input df; input [15:0] tot;
        begin set_defaults; meta_src_ip = s; meta_dst_ip = d; meta_ip_protocol = 8'd17;
              meta_ipv4_fragmented = mf || (off != 0); meta_ipv4_fragment_offset = off;
              meta_ipv4_identification = id; meta_ipv4_more_fragments = mf; meta_ipv4_dont_fragment = df;
              meta_ipv4_total_length = tot; meta_packet_bytes = tot + 16'd14; send_current; end
    endtask

    integer i, mark, idx;
    reg [1:0] ep_snap;

    initial begin
        failures = 0; checks = 0; worst_proc = 0; stalled = 0;
        rst_n = 0; meta_valid = 0; alert_ready = 1; set_defaults;
        repeat (4) @(posedge clk);
        reset_dut;
        $display("=================================================================");
        $display(" NIDS attack detector v2 - metadata-level regression");
        $display("=================================================================");

        // ---- 1. benign traffic must stay silent
        mark = n_alerts;
        for (i = 0; i < 10; i = i + 1) send_tcp(SRC_A, DST_A, 16'd40000, 16'd443, 8'h10);   // ACK
        for (i = 0; i < 3; i = i + 1)  send_tcp(SRC_A, DST_A, 16'd40000, 16'd443, 8'h18);   // PSH|ACK
        send_tcp(SRC_A, DST_A, 16'd40000, 16'd443, 8'h11);                                  // FIN|ACK
        send_tcp(SRC_A, DST_A, 16'd40000, 16'd443, 8'h04);                                  // RST
        send_tcp(SRC_A, DST_A, 16'd40000, 16'd443, 8'h14);                                  // RST|ACK
        send_tcp(SRC_A, DST_A, 16'd40000, 16'd443, 8'hC2);                                  // SYN|ECE|CWR (ECN setup) counts as one SYN
        send_icmp(SRC_A, DST_A, 8'd8); send_icmp(SRC_B, DST_A, 8'd8);
        send_udp(SRC_A, DST_A, 16'd5000, 16'd53);
        set_defaults; meta_src_ip = 32'h0; meta_dst_ip = 32'hFFFFFFFF; meta_ip_protocol = 8'd17;   // DHCP discover
        meta_packet_is_udp = 1; meta_transport_valid = 1; meta_src_port = 68; meta_dst_port = 67; send_current;
        check("benign mix produces no alert", count_alerts(mark, 4'd0) == 0);

        // ---- 2. SYN flood (unanswered), dedupe
        reset_dut; mark = n_alerts;
        for (i = 0; i < 4; i = i + 1) send_tcp(32'h0A000001 + i, DST_A, 16'd41000 + i, 16'd80, 8'h02);
        check("4 SYNs (< threshold 5) no alert", count_alerts(mark, 4'd0) == 0);
        send_tcp(32'h0A000010, DST_A, 16'd42000, 16'd80, 8'h02);
        idx = find_alert(mark, 4'd1);
        check("5th unanswered SYN raises SYN alert", idx >= 0);
        if (idx >= 0) begin
            check("  flags bit0, severity 2", lg_flags[idx] == 10'b0000000001 && lg_sev[idx] == 2'd2);
            check("  victim is DST_A, metric = 5", lg_dst[idx] == DST_A && lg_det[idx][15:0] == 16'd5 && lg_det[idx][31:24] == 8'd17);
        end
        for (i = 0; i < 10; i = i + 1) send_tcp(32'h0A000020 + i, DST_A, 16'd43000 + i, 16'd80, 8'h02);
        check("sustained flood: still exactly one SYN alert this window", count_alerts(mark, 4'd1) == 1);

        // ---- 3. busy but healthy server: every SYN answered
        reset_dut; mark = n_alerts;
        for (i = 0; i < 12; i = i + 1) begin
            send_tcp(32'h0A000100 + i, DST_B, 16'd50000 + i, 16'd443, 8'h02);   // SYN to server
            send_tcp(DST_B, 32'h0A000100 + i, 16'd443, 16'd50000 + i, 8'h12);   // SYN|ACK back
        end
        check("12 answered handshakes: no SYN alert (rate rule alone would fire)", count_alerts(mark, 4'd1) == 0);
        for (i = 12; i < 25; i = i + 1) begin
            send_tcp(32'h0A000100 + i, DST_B, 16'd50000 + i, 16'd443, 8'h02);
            send_tcp(DST_B, 32'h0A000100 + i, 16'd443, 16'd50000 + i, 8'h12);
        end
        check("answered SYNs beyond hard ceiling (20) still alert", count_alerts(mark, 4'd1) == 1);

        // ---- 4. vertical port scan; repeated port counts once
        reset_dut; mark = n_alerts;
        for (i = 0; i < 4; i = i + 1) send_tcp(SRC_A, DST_C, 16'd44000 + i, 16'd22, 8'h02);
        check("same port x4 does not count as scan", count_alerts(mark, 4'd2) == 0);
        send_tcp(SRC_A, DST_C, 16'd44010, 16'd23, 8'h02);
        send_tcp(SRC_A, DST_C, 16'd44011, 16'd24, 8'h02);
        send_tcp(SRC_A, DST_C, 16'd44012, 16'd25, 8'h02);
        check("4 distinct ports (< 6) no scan alert yet", count_alerts(mark, 4'd2) == 0);
        send_tcp(SRC_A, DST_C, 16'd44013, 16'd26, 8'h02);
        send_tcp(SRC_A, DST_C, 16'd44014, 16'd27, 8'h02);
        idx = find_alert(mark, 4'd2);
        check("6th distinct port raises scan alert", idx >= 0);
        if (idx >= 0) check("  attacker = SRC_A, flags bit1, metric = 6", lg_src[idx] == SRC_A && lg_flags[idx][1] && lg_det[idx][15:0] == 16'd6);

        // ---- 5. horizontal sweep across 40 hosts (v1 had 8 pair slots)
        reset_dut; mark = n_alerts;
        for (i = 0; i < 40; i = i + 1) send_tcp(SRC_B, 32'hC0A80200 + i, 16'd45000 + i, 16'd22, 8'h02);
        check("40-host sweep on one port detected as scan", count_alerts(mark, 4'd2) == 1);

        // ---- 6. table-exhaustion regression: 40 noise victims, then flood victim #41
        reset_dut; mark = n_alerts;
        for (i = 0; i < 40; i = i + 1) send_tcp(32'h0A010000 + i, 32'hC0A80300 + i, 16'd46000 + i, 16'd80, 8'h02);
        check("40 single-SYN victims: no alert", count_alerts(mark, 4'd0) == 0);
        for (i = 0; i < 5; i = i + 1) send_tcp(32'h0A020000 + i, 32'hC0A803FE, 16'd47000 + i, 16'd80, 8'h02);
        idx = find_alert(mark, 4'd1);
        check("flood on 41st victim still detected (no blind spot)", idx >= 0 && lg_dst[idx] == 32'hC0A803FE);

        // ---- 7. ICMP echo request/reply floods
        reset_dut; mark = n_alerts;
        for (i = 0; i < 3; i = i + 1) send_icmp(32'h0A030000 + i, DST_A, 8'd8);
        check("3 echo requests: no alert", count_alerts(mark, 4'd0) == 0);
        send_icmp(32'h0A030010, DST_A, 8'd8);
        idx = find_alert(mark, 4'd3);
        check("4th echo request raises ICMP alert", idx >= 0 && lg_flags[idx][2] && lg_sev[idx] == 2'd2);
        reset_dut; mark = n_alerts;
        send_icmp(SRC_A, DST_B, 8'd8); send_icmp(SRC_A, DST_B, 8'd8);
        send_icmp(SRC_B, DST_B, 8'd0); send_icmp(32'h0A030020, DST_B, 8'd0);
        check("echo replies count toward the flood (reflection)", count_alerts(mark, 4'd3) == 1);

        // ---- 8. UDP flood
        reset_dut; mark = n_alerts;
        for (i = 0; i < 5; i = i + 1) send_udp(32'h0A040000 + i, DST_A, 16'd30000 + i, 16'd53);
        check("5 UDP: no alert", count_alerts(mark, 4'd0) == 0);
        send_udp(32'h0A040010, DST_A, 16'd30010, 16'd53);
        idx = find_alert(mark, 4'd8);
        check("6th UDP raises UDP flood alert", idx >= 0 && lg_flags[idx][6]);

        // ---- 9. TCP flag anomalies (stealth scans)
        reset_dut; mark = n_alerts; send_tcp(SRC_A, DST_A, 16'd1, 16'd80, 8'h00);
        idx = find_alert(mark, 4'd9); check("NULL scan flagged", idx >= 0 && lg_det[idx][16]);
        reset_dut; mark = n_alerts; send_tcp(SRC_A, DST_A, 16'd1, 16'd80, 8'h29);
        idx = find_alert(mark, 4'd9); check("Xmas scan flagged", idx >= 0 && lg_det[idx][17]);
        reset_dut; mark = n_alerts; send_tcp(SRC_A, DST_A, 16'd1, 16'd80, 8'h03);
        idx = find_alert(mark, 4'd9); check("SYN+FIN flagged", idx >= 0 && lg_det[idx][18]);
        reset_dut; mark = n_alerts; send_tcp(SRC_A, DST_A, 16'd1, 16'd80, 8'h06);
        idx = find_alert(mark, 4'd9); check("SYN+RST flagged", idx >= 0 && lg_det[idx][19]);
        reset_dut; mark = n_alerts; send_tcp(SRC_A, DST_A, 16'd1, 16'd80, 8'h01);
        idx = find_alert(mark, 4'd9); check("FIN-without-ACK flagged", idx >= 0 && lg_det[idx][20] && lg_flags[idx][7] && lg_sev[idx] == 2'd2);

        // ---- 10. land / bogon sources
        reset_dut; mark = n_alerts;
        send_tcp(SRC_A, SRC_A, 16'd139, 16'd139, 8'h02);
        idx = find_alert(mark, 4'd10); check("land attack (src==dst)", idx >= 0 && lg_det[idx][31:24] == 8'd40 && lg_flags[idx][8]);
        reset_dut; mark = n_alerts; send_tcp(32'h7F000001, DST_A, 16'd1, 16'd80, 8'h10);
        idx = find_alert(mark, 4'd10); check("loopback source", idx >= 0 && lg_det[idx][31:24] == 8'd41);
        reset_dut; mark = n_alerts; send_udp(32'hE0000005, DST_A, 16'd1, 16'd80);
        idx = find_alert(mark, 4'd10); check("multicast source", idx >= 0 && lg_det[idx][31:24] == 8'd41);

        // ---- 11. malformed flood: rate limit + summary after the window ends
        reset_dut; mark = n_alerts;
        for (i = 0; i < 10; i = i + 1) send_malformed;
        check("10 malformed frames: only RL_BURST (2) immediate alerts", count_alerts(mark, 4'd4) == 2);
        idx = find_alert(mark, 4'd4);
        check("  critical severity, flag bit3", lg_sev[idx] == 2'd3 && lg_flags[idx][3] && !lg_flags[idx][9]);
        repeat (WIN) @(posedge clk);
        check("window end emits one summary record (8 suppressed)", count_alerts(mark, 4'd4) == 3);
        idx = mark + 2;
        check("  summary flag bit9, reason 64, metric 8", lg_flags[idx][9] && lg_det[idx][31:24] == 8'd64 && lg_det[idx][15:0] == 16'd8);

        // ---- 12. fragments
        reset_dut; mark = n_alerts; send_frag(SRC_A, DST_A, 16'h2201, 13'd0, 1'b1, 1'b0, 16'd1500);
        idx = find_alert(mark, 4'd5); check("plausible first fragment = SUSPICION only", idx >= 0 && lg_sev[idx] == 2'd1);
        reset_dut; mark = n_alerts;
        send_frag(SRC_A, DST_A, 16'h3301, 13'd0,   1'b1, 1'b0, 16'd1500);
        send_frag(SRC_A, DST_A, 16'h3301, 13'd100, 1'b0, 1'b0, 16'd820);
        idx = find_alert(mark, 4'd6); check("overlapping fragments (teardrop) = ALERT reason 4", idx >= 0 && lg_det[idx][31:24] == 8'd4);
        reset_dut; mark = n_alerts; send_frag(SRC_A, DST_A, 16'h4401, 13'd0, 1'b1, 1'b0, 16'd30);
        idx = find_alert(mark, 4'd6); check("MF fragment with 10-byte payload reason 3", idx >= 0 && lg_det[idx][31:24] == 8'd3);
        reset_dut; mark = n_alerts; send_frag(SRC_A, DST_A, 16'h5501, 13'd185, 1'b0, 1'b1, 16'd420);
        idx = find_alert(mark, 4'd6); check("DF + fragment reason 2", idx >= 0 && lg_det[idx][31:24] == 8'd2);
        reset_dut; mark = n_alerts; send_frag(SRC_A, DST_A, 16'h6601, 13'd8191, 1'b0, 1'b0, 16'd1500);
        idx = find_alert(mark, 4'd6); check("ping-of-death style range > 64K reason 5", idx >= 0 && lg_det[idx][31:24] == 8'd5);
        reset_dut; mark = n_alerts; send_frag(SRC_A, DST_A, 16'h7701, 13'd0, 1'b1, 1'b0, 16'd28);
        idx = find_alert(mark, 4'd6); check("tiny first fragment reason 6", idx >= 0 && lg_det[idx][31:24] == 8'd6);
        reset_dut; mark = n_alerts; send_frag(SRC_A, DST_A, 16'h8801, 13'd0, 1'b1, 1'b0, 16'd1500);
        send_frag(SRC_A, DST_A, 16'h8801, 13'd185, 1'b0, 1'b0, 16'd420);
        send_frag(SRC_B, DST_A, 16'h8801, 13'd0, 1'b1, 1'b0, 16'd1500);   // same id, different source: not an overlap
        check("clean fragment train: no anomaly, other-source id reuse ignored", count_alerts(mark, 4'd6) == 0);

        // ---- 13. unsupported ethertype is not "malformed"
        reset_dut; mark = n_alerts; set_defaults; meta_is_ipv4 = 0; meta_parse_ok = 0; meta_unsupported_type = 1; send_current;
        check("unsupported EtherType not mislabelled malformed", count_alerts(mark, 4'd0) == 0);

        // ---- 14. burst split across a window boundary (fixed-window detectors miss this)
        reset_dut; mark = n_alerts;
        while (dut.frac < 8'd246) @(posedge clk);
        for (i = 0; i < 4; i = i + 1) send_tcp(32'h0A050000 + i, DST_A, 16'd48000 + i, 16'd80, 8'h02);
        check("4 SYNs at end of window: below threshold", count_alerts(mark, 4'd0) == 0);
        ep_snap = dut.ep;
        while (dut.ep == ep_snap) @(posedge clk);
        send_tcp(32'h0A050010, DST_A, 16'd48010, 16'd80, 8'h02);
        send_tcp(32'h0A050011, DST_A, 16'd48011, 16'd80, 8'h02);
        check("sliding window: 4 before + 2 after the boundary alerts (fixed window: 4, 2, no alert)", count_alerts(mark, 4'd1) == 1);

        // ---- 15. old counts really expire (bank rotation + sweep)
        reset_dut; mark = n_alerts;
        for (i = 0; i < 4; i = i + 1) send_tcp(32'h0A060000 + i, DST_A, 16'd49000 + i, 16'd80, 8'h02);
        repeat (3 * WIN) @(posedge clk);
        for (i = 0; i < 4; i = i + 1) send_tcp(32'h0A060010 + i, DST_A, 16'd49100 + i, 16'd80, 8'h02);
        check("4 SYNs, 3 windows idle, 4 SYNs: counts expired, no alert", count_alerts(mark, 4'd1) == 0);

        // ---- 16. alert consumer stalled: detector must keep running, overflow must be reported
        reset_dut; mark = n_alerts; alert_ready = 0;
        for (i = 0; i < 12; i = i + 1) begin
            send_icmp(32'h0A070000 + i, 32'hC0A80400 + i, 8'd8);
            send_icmp(32'h0A070100 + i, 32'hC0A80400 + i, 8'd8);
            send_icmp(32'h0A070200 + i, 32'hC0A80400 + i, 8'd8);
            send_icmp(32'h0A070300 + i, 32'hC0A80400 + i, 8'd8);
        end
        check("detector kept accepting packets while alert consumer was stalled", !stalled);
        check("overflowed alerts counted (12 alerts, queue depth 8 -> 4 dropped)", stat_alerts_dropped == 16'd4);
        @(negedge clk); alert_ready = 1;
        repeat (60) @(posedge clk);
        idx = find_alert(mark, 4'd7);
        check("system alert reports the overflow (flags bit5, metric 4)", idx >= 0 && lg_flags[idx][5] && lg_det[idx][15:0] == 16'd4 && lg_det[idx][31:24] == 8'd32);

        // ---- 17. backpressure stability
        reset_dut; alert_ready = 0; send_malformed; repeat (5) @(posedge clk);
        begin : bp
            reg [31:0] d0; reg [3:0] c0;
            d0 = alert_detail; c0 = alert_code;
            repeat (20) @(posedge clk);
            check("held alert record stable while alert_ready=0", alert_valid && alert_detail == d0 && alert_code == c0 && c0 == 4'd4);
        end
        @(negedge clk); alert_ready = 1; repeat (3) @(posedge clk);
        check("queue drains once consumer is ready", !alert_valid);

        // ---- 18. processing budget (min frame spacing at 100 Mbit/s = 336 clocks @ 50 MHz)
        if (stat_max_proc_cycles > worst_proc) worst_proc = stat_max_proc_cycles;
        $display("worst-case clocks per packet observed: %0d (budget 336)", worst_proc);
        check("per-packet processing well inside the 336-clock budget", worst_proc < 100);

        $display("=================================================================");
        if (failures == 0) $display("RESULT: ALL %0d CHECKS PASSED", checks);
        else               $display("RESULT: %0d OF %0d CHECKS FAILED", failures, checks);
        $display("(metadata-level tests; see notes for pcap replay and hardware validation)");
        $display("=================================================================");
        $finish;
    end

    initial begin #2000000000; $display("FAIL: global timeout"); $finish; end
endmodule
