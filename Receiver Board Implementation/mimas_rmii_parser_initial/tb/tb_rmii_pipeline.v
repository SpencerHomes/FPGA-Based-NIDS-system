
`timescale 1ns / 1ps

module tb_rmii_pipeline;

    reg clk;
    reg rst_n;
    reg [1:0] rxd;
    reg crs_dv;

    wire [7:0] rmii_byte;
    wire rmii_byte_valid;
    wire rmii_frame_end;
    wire rmii_active;

    wire [7:0] axi_tdata;
    wire axi_tlast;
    wire axi_tvalid;
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

    reg [7:0] frame [0:59];

    integer i;
    integer errors;
    integer timeout_count;
    reg packet_seen;

    // ------------------------------------------------------------
    // Clock: 50 MHz RMII reference clock
    // ------------------------------------------------------------
    initial clk = 1'b0;
    always #10 clk = ~clk;

    // ------------------------------------------------------------
    // DUT 1: RMII dibits -> bytes
    // ------------------------------------------------------------
    rmii_rx u_rmii_rx (
        .clk(clk),
        .rst_n(rst_n),
        .rxd(rxd),
        .crs_dv(crs_dv),
        .rx_data(rmii_byte),
        .rx_valid(rmii_byte_valid),
        .rx_frame_end(rmii_frame_end),
        .rx_active(rmii_active)
    );

    // ------------------------------------------------------------
    // DUT 2: strip preamble/SFD, produce frame bytes
    // ------------------------------------------------------------
    ethernet_rx u_ethernet_rx (
        .clk(clk),
        .rst_n(rst_n),
        .rmii_data(rmii_byte),
        .rmii_valid(rmii_byte_valid),
        .rmii_frame_end(rmii_frame_end),
        .axi_tdata(axi_tdata),
        .axi_tlast(axi_tlast),
        .axi_tvalid(axi_tvalid),
        .axi_tready(axi_tready)
    );

    // ------------------------------------------------------------
    // DUT 3: packet parser
    // ------------------------------------------------------------
    packet_parser u_packet_parser (
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

    assign axi_tready = 1'b1;

    // Capture the one-cycle packet_valid pulse.
    always @(posedge clk) begin
        if (!rst_n)
            packet_seen <= 1'b0;
        else if (packet_valid)
            packet_seen <= 1'b1;
    end

    // ------------------------------------------------------------
    // RMII driver
    // ------------------------------------------------------------

    // Drive each dibit before the next rising edge.
    task send_dibit;
        input [1:0] dibit;
        input dv;
        begin
            @(negedge clk);
            rxd = dibit;
            crs_dv = dv;
        end
    endtask

    // RMII transfers the least-significant dibit first.
    task send_byte;
        input [7:0] data;
        begin
            send_dibit(data[1:0], 1'b1);
            send_dibit(data[3:2], 1'b1);
            send_dibit(data[5:4], 1'b1);
            send_dibit(data[7:6], 1'b1);
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

    // ------------------------------------------------------------
    // Test
    // ------------------------------------------------------------
    initial begin
        rst_n = 1'b0;
        rxd = 2'b00;
        crs_dv = 1'b0;
        errors = 0;
        packet_seen = 1'b0;
        timeout_count = 0;

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

        // EtherType IPv4
        frame[12] = 8'h08;
        frame[13] = 8'h00;

        // IPv4 header
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

        // TCP header: source port 12345, destination port 80
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

        // Ethernet padding to 60 bytes, excluding FCS.
        for (i = 54; i < 60; i = i + 1)
            frame[i] = 8'h00;

        // Reset all three modules.
        repeat (5) @(negedge clk);
        rst_n = 1'b1;
        repeat (3) @(negedge clk);

        $display("");
        $display("=== Sending RMII preamble and SFD ===");

        for (i = 0; i < 7; i = i + 1)
            send_byte(8'h55);

        send_byte(8'hD5);

        $display("=== Sending 60-byte Ethernet frame ===");

        for (i = 0; i < 60; i = i + 1)
            send_byte(frame[i]);

        // Deassert CRS_DV after the final dibit.
        send_dibit(2'b00, 1'b0);

        // Wait for the frame to propagate through the pipeline.
        for (timeout_count = 0;
             timeout_count < 30 && !packet_seen;
             timeout_count = timeout_count + 1)
            @(negedge clk);

        repeat (3) @(negedge clk);

        $display("");
        $display("=== Integrated pipeline results ===");

        if (!packet_seen) begin
            $display("FAIL: packet_valid was never observed");
            errors = errors + 1;
        end else begin
            $display("PASS: packet_valid observed");
        end

        if (is_ipv4 !== 1'b1) begin
            $display("FAIL: is_ipv4 not asserted");
            errors = errors + 1;
        end else begin
            $display("PASS: is_ipv4 asserted");
        end

        if (packet_is_tcp !== 1'b1) begin
            $display("FAIL: packet_is_tcp not asserted");
            errors = errors + 1;
        end else begin
            $display("PASS: packet_is_tcp asserted");
        end

        check16("EtherType", eth_type, 16'h0800);
        check16("IPv4 header bytes",
                {8'h00, ipv4_header_bytes}, 16'd20);
        check16("IPv4 total length", ipv4_total_length, 16'd40);
        check16("IP protocol", {8'h00, ip_protocol}, 16'd6);
        check16("TCP source port", src_port, 16'd12345);
        check16("TCP destination port", dst_port, 16'd80);
        check16("Packet bytes", packet_bytes, 16'd60);

        if (src_ip !== 32'hC0A8010A) begin
            $display("FAIL: src_ip actual=%h expected=C0A8010A",
                     src_ip);
            errors = errors + 1;
        end else begin
            $display("PASS: src_ip = %h", src_ip);
        end

        if (dst_ip !== 32'hC0000202) begin
            $display("FAIL: dst_ip actual=%h expected=C0000202",
                     dst_ip);
            errors = errors + 1;
        end else begin
            $display("PASS: dst_ip = %h", dst_ip);
        end

        $display("");

        if (errors == 0)
            $display("ALL INTEGRATED CHECKS PASSED");
        else
            $display("INTEGRATED TEST FAILED: %0d error(s)", errors);

        $finish;
    end

endmodule