
`timescale 1ns / 1ps

module tb_packet_parser;

    reg clk;
    reg rst_n;
    reg [7:0] axi_tdata;
    reg axi_tlast;
    reg axi_tvalid;

    wire axi_tready;

    wire [47:0] dst_mac, src_mac;
    wire [15:0] eth_type;
    wire is_ipv4;
    wire [7:0] ipv4_header_bytes;
    wire [15:0] ipv4_total_length;
    wire [31:0] dst_ip, src_ip;
    wire [7:0] ip_protocol;
    wire offset_nonzero;
    wire [15:0] ipv4_header_checksum, ipv4_identification;
    wire [7:2] dscp_field;
    wire [1:0] ecn_field;
    wire [7:0] ipv4_ttl;
    wire packet_is_tcp, packet_is_udp, packet_is_icmp;
    wire [15:0] dst_port, src_port;
    wire [7:0] tcp_flags, tcp_header_bytes;
    wire [15:0] udp_length;
    wire [7:0] icmp_type, icmp_code;
    wire packet_valid;
    wire [15:0] packet_bytes;
    wire dbg_ipv4_prefix_seen;

    integer errors;
    integer i;

    reg [7:0] frame [0:53];

    packet_parser dut (
        .clk(clk),
        .rst_n(rst_n),
        .axi_tdata(axi_tdata),
        .axi_tlast(axi_tlast),
        .axi_tvalid(axi_tvalid),
        .axi_tready(axi_tready),

        .dst_mac(dst_mac),
        .src_mac(src_mac),
        .eth_type(eth_type),

        .is_ipv4(is_ipv4),
        .ipv4_header_bytes(ipv4_header_bytes),
        .ipv4_total_length(ipv4_total_length),
        .dst_ip(dst_ip),
        .src_ip(src_ip),
        .ip_protocol(ip_protocol),
        .offset_nonzero(offset_nonzero),
        .ipv4_header_checksum(ipv4_header_checksum),
        .ipv4_identification(ipv4_identification),
        .dscp_field(dscp_field),
        .ecn_field(ecn_field),
        .ipv4_ttl(ipv4_ttl),

        .packet_is_tcp(packet_is_tcp),
        .packet_is_udp(packet_is_udp),
        .packet_is_icmp(packet_is_icmp),

        .dst_port(dst_port),
        .src_port(src_port),
        .tcp_flags(tcp_flags),
        .tcp_header_bytes(tcp_header_bytes),
        .udp_length(udp_length),
        .icmp_type(icmp_type),
        .icmp_code(icmp_code),

        .packet_valid(packet_valid),
        .packet_bytes(packet_bytes),
        .dbg_ipv4_prefix_seen(dbg_ipv4_prefix_seen)
    );

    // 100 MHz simulation clock.
    initial clk = 1'b0;
    always #5 clk = ~clk;

    // Drive one byte per transaction.
    task send_byte;
        input [7:0] data;
        input last;
        begin
            @(negedge clk);
            axi_tdata  = data;
            axi_tvalid = 1'b1;
            axi_tlast  = last;

            @(negedge clk);
            axi_tvalid = 1'b0;
            axi_tlast  = 1'b0;
        end
    endtask

    task check16;
        input [255:0] label;
        input [15:0] actual;
        input [15:0] expected;
        begin
            if (actual !== expected) begin
                $display("FAIL: %0s actual=%h expected=%h",
                         label, actual, expected);
                errors = errors + 1;
            end else begin
                $display("PASS: %0s = %h", label, actual);
            end
        end
    endtask

    initial begin
        rst_n = 1'b0;
        axi_tdata = 8'h00;
        axi_tlast = 1'b0;
        axi_tvalid = 1'b0;
        errors = 0;

        // Ethernet destination MAC: 00:11:22:33:44:55
        frame[0]  = 8'h00;
        frame[1]  = 8'h11;
        frame[2]  = 8'h22;
        frame[3]  = 8'h33;
        frame[4]  = 8'h44;
        frame[5]  = 8'h55;

        // Ethernet source MAC: 66:77:88:99:AA:BB
        frame[6]  = 8'h66;
        frame[7]  = 8'h77;
        frame[8]  = 8'h88;
        frame[9]  = 8'h99;
        frame[10] = 8'hAA;
        frame[11] = 8'hBB;

        // EtherType IPv4.
        frame[12] = 8'h08;
        frame[13] = 8'h00;

        // IPv4 header: 192.168.1.10 -> 192.0.2.2
        frame[14] = 8'h45;
        frame[15] = 8'h00;
        frame[16] = 8'h00;
        frame[17] = 8'h28;
        frame[18] = 8'h00;
        frame[19] = 8'h01;
        frame[20] = 8'h00;
        frame[21] = 8'h00;
        frame[22] = 8'h40;
        frame[23] = 8'h06;
        frame[24] = 8'hDA;
        frame[25] = 8'hB1;
        frame[26] = 8'hC0;
        frame[27] = 8'hA8;
        frame[28] = 8'h01;
        frame[29] = 8'h0A;
        frame[30] = 8'hC0;
        frame[31] = 8'h00;
        frame[32] = 8'h02;
        frame[33] = 8'h02;

        // TCP header: source port 12345, destination port 80.
        frame[34] = 8'h30;
        frame[35] = 8'h39;
        frame[36] = 8'h00;
        frame[37] = 8'h50;
        frame[38] = 8'h00;
        frame[39] = 8'h00;
        frame[40] = 8'h00;
        frame[41] = 8'h01;
        frame[42] = 8'h00;
        frame[43] = 8'h00;
        frame[44] = 8'h00;
        frame[45] = 8'h00;
        frame[46] = 8'h50;
        frame[47] = 8'h02;
        frame[48] = 8'h20;
        frame[49] = 8'h00;
        frame[50] = 8'h00;
        frame[51] = 8'h00;
        frame[52] = 8'h00;
        frame[53] = 8'h00;

        // Reset.
        repeat (4) @(negedge clk);
        rst_n = 1'b1;
        repeat (2) @(negedge clk);

        // Send 54 bytes. No Ethernet FCS is needed for this parser test.
        for (i = 0; i < 54; i = i + 1)
            send_byte(frame[i], (i == 53));

        // Allow registered outputs to settle.
        repeat (3) @(negedge clk);

        $display("");
        $display("---- Parser test results ----");

        check16("EtherType", eth_type, 16'h0800);
        check16("IPv4 header length", {8'h00, ipv4_header_bytes}, 16'd20);
        check16("IPv4 total length", ipv4_total_length, 16'd40);
        check16("IP protocol", {8'h00, ip_protocol}, 16'd6);
        check16("TCP source port", src_port, 16'd12345);
        check16("TCP destination port", dst_port, 16'd80);
        check16("Packet byte count", packet_bytes, 16'd54);

        if (is_ipv4 !== 1'b1) begin
            $display("FAIL: is_ipv4 is not asserted");
            errors = errors + 1;
        end

        if (packet_is_tcp !== 1'b1) begin
            $display("FAIL: packet_is_tcp is not asserted");
            errors = errors + 1;
        end

        if (src_ip !== 32'hC0A8010A) begin
            $display("FAIL: src_ip actual=%h expected=C0A8010A",
                     src_ip);
            errors = errors + 1;
        end

        if (dst_ip !== 32'hC0000202) begin
            $display("FAIL: dst_ip actual=%h expected=C0000202",
                     dst_ip);
            errors = errors + 1;
        end

        if (packet_valid !== 1'b0) begin
            // packet_valid is a one-cycle pulse and may already have cleared.
            $display("INFO: packet_valid is no longer high");
        end

        if (errors == 0)
            $display("ALL CHECKS PASSED");
        else
            $display("TEST FAILED: %0d error(s)", errors);

        $finish;
    end

endmodule