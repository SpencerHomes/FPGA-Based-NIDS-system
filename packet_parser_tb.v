`timescale 1ns/1ps

module packet_parser_tb;

    reg clk;
    reg rst_n;

    reg  [7:0] axi_tdata;
    reg        axi_tlast;
    reg        axi_tvalid;
    wire       axi_tready;

    wire [47:0] dst_mac;
    wire [47:0] src_mac;
    wire [15:0] eth_type;

    wire        is_ipv4;
    wire [7:0]  ipv4_header_bytes;
    wire [15:0] ipv4_total_length;
    wire [31:0] dst_ip;
    wire [31:0] src_ip;
    wire [7:0]  ip_protocol;
    wire        offset_nonzero;
    wire [15:0] ipv4_header_checksum;
    wire [15:0] ipv4_identification;
    wire [7:2]  dscp_field;
    wire [1:0]  ecn_field;
    wire [7:0]  ipv4_ttl;

    wire        packet_is_tcp;
    wire        packet_is_udp;
    wire        packet_is_icmp;

    wire [15:0] dst_port;
    wire [15:0] src_port;
    wire [7:0]  tcp_flags;
    wire [7:0]  tcp_header_bytes;
    wire [15:0] udp_length;

    wire [7:0]  icmp_type;
    wire [7:0]  icmp_code;

    wire        packet_valid;
    wire [15:0] packet_bytes;

    reg [7:0] frame [0:59];
    integer i;
    integer errors;

    // 50 MHz clock (20 ns period)
    initial begin
        clk = 1'b0;
        forever #10 clk = ~clk;
    end

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
        .packet_bytes(packet_bytes)
    );

    // Drive a byte on the falling edge; the DUT accepts it on the
    // following rising edge because axi_tready is tied high.
    task send_byte;
        input [7:0] data_byte;
        input       is_last;
        begin
            @(negedge clk);
            axi_tdata  = data_byte;
            axi_tvalid = 1'b1;
            axi_tlast  = is_last;
            @(posedge clk);
            #1;
        end
    endtask

    task check_bit;
        input [8*40-1:0] test_name;
        input             actual;
        input             expected;
        begin
            if (actual !== expected) begin
                $display("FAIL: %0s (actual=%b expected=%b)",
                         test_name, actual, expected);
                errors = errors + 1;
            end else begin
                $display("PASS: %0s", test_name);
            end
        end
    endtask

    task check8;
        input [8*40-1:0] test_name;
        input [7:0] actual;
        input [7:0] expected;
        begin
            if (actual !== expected) begin
                $display("FAIL: %0s (actual=0x%02h expected=0x%02h)",
                         test_name, actual, expected);
                errors = errors + 1;
            end else begin
                $display("PASS: %0s (0x%02h)", test_name, actual);
            end
        end
    endtask

    task check16;
        input [8*40-1:0] test_name;
        input [15:0] actual;
        input [15:0] expected;
        begin
            if (actual !== expected) begin
                $display("FAIL: %0s (actual=0x%04h expected=0x%04h)",
                         test_name, actual, expected);
                errors = errors + 1;
            end else begin
                $display("PASS: %0s (0x%04h)", test_name, actual);
            end
        end
    endtask

    task check32;
        input [8*40-1:0] test_name;
        input [31:0] actual;
        input [31:0] expected;
        begin
            if (actual !== expected) begin
                $display("FAIL: %0s (actual=0x%08h expected=0x%08h)",
                         test_name, actual, expected);
                errors = errors + 1;
            end else begin
                $display("PASS: %0s (0x%08h)", test_name, actual);
            end
        end
    endtask

    task check48;
        input [8*40-1:0] test_name;
        input [47:0] actual;
        input [47:0] expected;
        begin
            if (actual !== expected) begin
                $display("FAIL: %0s (actual=0x%012h expected=0x%012h)",
                         test_name, actual, expected);
                errors = errors + 1;
            end else begin
                $display("PASS: %0s (0x%012h)", test_name, actual);
            end
        end
    endtask

    initial begin
        rst_n     = 1'b0;
        axi_tdata = 8'h00;
        axi_tlast = 1'b0;
        axi_tvalid = 1'b0;
        errors = 0;

        // The .hex file must be in the simulator's working directory.
        $readmemh("tcp_syn_frame.hex", frame);

        repeat (4) @(negedge clk);
        rst_n = 1'b1;
        repeat (2) @(negedge clk);

        $display("\n===============================================");
        $display(" packet_parser: IPv4/TCP SYN test");
        $display(" 60-byte frame, no preamble and no Ethernet FCS");
        $display("===============================================\n");

        for (i = 0; i < 60; i = i + 1) begin
            send_byte(frame[i], (i == 59));
        end

        // packet_valid is expected to be high immediately after the
        // accepted TLAST beat. Check before the next active clock edge.
        check_bit("packet_valid pulse", packet_valid, 1'b1);
        check16("packet_bytes", packet_bytes, 16'd60);

        check48("destination MAC", dst_mac, 48'h020000000002);
        check48("source MAC",      src_mac, 48'h020000000001);
        check16("EtherType",        eth_type, 16'h0800);
        check_bit("is_ipv4",        is_ipv4, 1'b1);

        check8("IPv4 header length", ipv4_header_bytes, 8'd20);
        check16("IPv4 total length", ipv4_total_length, 16'd40);
        check16("IPv4 identification", ipv4_identification, 16'h1234);
        check8("IPv4 TTL", ipv4_ttl, 8'd64);
        check8("IPv4 protocol", ip_protocol, 8'd6);
        check16("IPv4 header checksum", ipv4_header_checksum, 16'hA52D);
        check32("source IPv4 address", src_ip, 32'hC0A8010A);
        check32("destination IPv4 address", dst_ip, 32'hC0A80114);
        check_bit("fragment offset is zero", offset_nonzero, 1'b0);

        check_bit("packet_is_tcp", packet_is_tcp, 1'b1);
        check_bit("packet_is_udp", packet_is_udp, 1'b0);
        check_bit("packet_is_icmp", packet_is_icmp, 1'b0);
        check16("TCP source port", src_port, 16'd49152);
        check16("TCP destination port", dst_port, 16'd80);
        check8("TCP header length", tcp_header_bytes, 8'd20);
        check8("TCP flags (SYN)", tcp_flags, 8'h02);

        // Release the stream; packet_valid should deassert on the next clock.
        @(negedge clk);
        axi_tvalid = 1'b0;
        axi_tlast  = 1'b0;
        axi_tdata  = 8'h00;
        @(posedge clk);
        #1;
        check_bit("packet_valid clears after one cycle", packet_valid, 1'b0);

        $display("\n===============================================");
        if (errors == 0) begin
            $display("RESULT: ALL TESTS PASSED");
        end else begin
            $display("RESULT: %0d CHECK(S) FAILED", errors);
        end
        $display("===============================================\n");
        $finish;
    end

    // Safety timeout, in case the testbench gets stuck.
    initial begin
        #100000;
        $display("TIMEOUT: simulation did not complete");
        $finish;
    end

endmodule
