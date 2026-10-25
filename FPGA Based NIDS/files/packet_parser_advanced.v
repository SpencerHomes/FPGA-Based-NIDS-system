// Advanced streaming Ethernet / IPv4 / TCP / UDP / ICMP metadata parser.
// Verilog-2001 compatible.
//
// Interface contract:
//   * One byte per accepted AXI-Stream transfer.
//   * The first byte is destination-MAC byte 0.
//   * TLAST marks the final byte of a frame.
//   * By default the input stream excludes preamble, SFD and Ethernet FCS.
//   * Set INPUT_HAS_FCS=1 if the upstream MAC passes the 4-byte FCS through.
//   * packet_valid is a metadata-valid signal and stays high until packet_ready.
//   * This parser does not buffer raw frame bytes or perform IP fragment reassembly.
//
// Implemented:
//   * Ethernet II and up to MAX_VLAN_TAGS (default 2) VLAN tags (0x8100/0x88A8)
//   * IPv4 variable IHL (20..60 bytes), basic header validation/checksum
//   * TCP/UDP/ICMP field extraction
//   * Packet-length checks, fragment metadata, unsupported-protocol indication
//
// Not implemented:
//   * IPv6 header/extension parsing, ARP-body parsing, TCP/UDP checksums,
//     fragment reassembly, payload signature matching.

module packet_parser #(
    parameter integer INPUT_HAS_FCS = 0,
    parameter integer MAX_VLAN_TAGS = 2
) (
    input  wire        clk,
    input  wire        rst_n,

    // AXI-Stream frame input
    input  wire [7:0]  axi_tdata,
    input  wire        axi_tlast,
    input  wire        axi_tvalid,
    output wire        axi_tready,

    // Metadata consumer handshake. Tie high for a consumer that always accepts.
    input  wire        packet_ready,

    // Ethernet metadata
    output reg  [47:0] dst_mac,
    output reg  [47:0] src_mac,
    output reg  [15:0] eth_type,             // Innermost/final EtherType
    output reg         is_arp,
    output reg         is_ipv6,
    output reg  [1:0]  vlan_tag_count,
    output reg  [15:0] l3_offset,             // Absolute byte index of L3 header

    // IPv4 metadata
    output reg         is_ipv4,
    output reg  [3:0]  ipv4_version,
    output reg  [7:0]  ipv4_header_bytes,
    output reg  [15:0] ipv4_total_length,
    output reg  [15:0] ipv4_identification,
    output reg  [2:0]  ipv4_flags,
    output reg  [12:0] ipv4_fragment_offset,
    output reg         offset_nonzero,
    output reg         ipv4_dont_fragment,
    output reg         ipv4_more_fragments,
    output reg         ipv4_fragmented,
    output reg  [7:2]  dscp_field,
    output reg  [1:0]  ecn_field,
    output reg  [7:0]  ipv4_ttl,
    output reg  [7:0]  ip_protocol,
    output reg  [15:0] ipv4_header_checksum,
    output reg         ipv4_checksum_checked,
    output reg         ipv4_checksum_ok,
    output reg  [31:0] src_ip,
    output reg  [31:0] dst_ip,

    // Protocol classification
    output reg         packet_is_tcp,
    output reg         packet_is_udp,
    output reg         packet_is_icmp,

    // TCP metadata
    output reg  [15:0] src_port,
    output reg  [15:0] dst_port,
    output reg  [31:0] tcp_sequence_number,
    output reg  [31:0] tcp_acknowledgment_number,
    output reg  [7:0]  tcp_header_bytes,
    output reg  [7:0]  tcp_flags,
    output reg  [15:0] tcp_window_size,
    output reg  [15:0] tcp_checksum,
    output reg  [15:0] tcp_urgent_pointer,

    // UDP metadata
    output reg  [15:0] udp_length,
    output reg  [15:0] udp_checksum,

    // ICMP metadata
    output reg  [7:0]  icmp_type,
    output reg  [7:0]  icmp_code,
    output reg  [15:0] icmp_checksum,

    // Status for the completed frame / metadata record
    output reg         packet_valid,
    output reg         parse_ok,
    output reg         parse_error,
    output reg         unsupported_type,
    output reg         transport_valid,
    output reg  [15:0] packet_bytes
);

    localparam [15:0] ETHERTYPE_IPV4 = 16'h0800;
    localparam [15:0] ETHERTYPE_ARP  = 16'h0806;
    localparam [15:0] ETHERTYPE_IPV6 = 16'h86DD;
    localparam [15:0] ETHERTYPE_VLAN = 16'h8100;
    localparam [15:0] ETHERTYPE_QINQ = 16'h88A8;
    localparam [16:0] INPUT_FCS_BYTES = INPUT_HAS_FCS ? 17'd4 : 17'd0;

    // Backpressure only at frame boundaries: when a metadata record is pending
    // and the consumer is not ready, no next frame byte is accepted.
    assign axi_tready = (~packet_valid) | packet_ready;

    reg [15:0] byte_index;
    reg [15:0] ethertype_high_index;
    reg [15:0] ethertype_low_index;
    reg [7:0]  ethertype_high_byte;
    reg        ethertype_seen;

    reg [31:0] ipv4_checksum_sum;
    reg [7:0]  ipv4_checksum_high_byte;
    reg        ipv4_total_length_seen;
    reg        frame_error_sticky;

    wire [15:0] ipv4_byte_offset;
    wire [15:0] transport_start;
    wire [15:0] transport_offset;
    wire [15:0] frame_bytes_now;
    wire [15:0] current_ethertype;
    wire [16:0] expected_frame_bytes_for_ip;
    wire [16:0] actual_frame_bytes_ext;
    wire [31:0] ipv4_sum_with_current_word;
    wire        ipv4_header_byte_active;
    wire        transport_byte_active;
    wire        tcp_complete_this_beat;
    wire        udp_complete_this_beat;
    wire        icmp_complete_this_beat;
    wire        transport_complete_this_beat;
    wire        transport_complete_at_end;
    wire        ipv4_has_known_protocol;
    wire        ipv4_length_fits_frame;

    assign ipv4_byte_offset = byte_index - l3_offset;
    assign transport_start = l3_offset + ipv4_header_bytes;
    assign transport_offset = byte_index - transport_start;
    assign frame_bytes_now = (byte_index == 16'hFFFF) ? 16'hFFFF : (byte_index + 16'd1);
    assign current_ethertype = {ethertype_high_byte, axi_tdata};
    assign expected_frame_bytes_for_ip = {1'b0, l3_offset} +
                                         {1'b0, ipv4_total_length} +
                                         INPUT_FCS_BYTES;
    assign actual_frame_bytes_ext = {1'b0, frame_bytes_now};
    assign ipv4_sum_with_current_word = ipv4_checksum_sum +
                                        {ipv4_checksum_high_byte, axi_tdata};

    assign ipv4_header_byte_active = is_ipv4 &&
                                     (byte_index >= l3_offset) &&
                                     (ipv4_byte_offset < 16'd60);

    assign transport_byte_active = is_ipv4 && ipv4_total_length_seen &&
                                   (ipv4_version == 4'd4) &&
                                   (ipv4_header_bytes >= 8'd20) &&
                                   (ipv4_total_length >= ipv4_header_bytes) &&
                                   (byte_index >= transport_start) &&
                                   (ipv4_byte_offset < ipv4_total_length) &&
                                   !offset_nonzero;

    assign tcp_complete_this_beat = transport_byte_active &&
                                    (ip_protocol == 8'd6) &&
                                    (tcp_header_bytes >= 8'd20) &&
                                    (transport_offset == (tcp_header_bytes - 8'd1));

    assign udp_complete_this_beat = transport_byte_active &&
                                    (ip_protocol == 8'd17) &&
                                    (transport_offset == 16'd7) &&
                                    (udp_length >= 16'd8) &&
                                    ((ipv4_fragmented) ||
                                     (ipv4_total_length >= ipv4_header_bytes &&
                                      udp_length == (ipv4_total_length - ipv4_header_bytes)));

    assign icmp_complete_this_beat = transport_byte_active &&
                                     (ip_protocol == 8'd1) &&
                                     (transport_offset == 16'd3);

    assign transport_complete_this_beat = tcp_complete_this_beat |
                                          udp_complete_this_beat |
                                          icmp_complete_this_beat;
    assign transport_complete_at_end = transport_valid | transport_complete_this_beat;
    assign ipv4_has_known_protocol = packet_is_tcp | packet_is_udp | packet_is_icmp;
    assign ipv4_length_fits_frame = actual_frame_bytes_ext >= expected_frame_bytes_for_ip;

    function [15:0] fold_ones_complement;
        input [31:0] sum_in;
        reg [31:0] folded;
        begin
            folded = {16'd0, sum_in[15:0]} + sum_in[31:16];
            folded = {16'd0, folded[15:0]} + folded[31:16];
            fold_ones_complement = folded[15:0];
        end
    endfunction

    always @(posedge clk) begin
        if (!rst_n) begin
            byte_index                  <= 16'd0;
            ethertype_high_index        <= 16'd12;
            ethertype_low_index         <= 16'd13;
            ethertype_high_byte         <= 8'd0;
            ethertype_seen              <= 1'b0;
            vlan_tag_count              <= 2'd0;
            l3_offset                   <= 16'd0;
            eth_type                    <= 16'd0;
            dst_mac                     <= 48'd0;
            src_mac                     <= 48'd0;
            is_arp                      <= 1'b0;
            is_ipv6                     <= 1'b0;
            is_ipv4                     <= 1'b0;
            ipv4_version                <= 4'd0;
            ipv4_header_bytes           <= 8'd0;
            ipv4_total_length           <= 16'd0;
            ipv4_identification         <= 16'd0;
            ipv4_flags                  <= 3'd0;
            ipv4_fragment_offset        <= 13'd0;
            offset_nonzero              <= 1'b0;
            ipv4_dont_fragment          <= 1'b0;
            ipv4_more_fragments         <= 1'b0;
            ipv4_fragmented              <= 1'b0;
            dscp_field                  <= 6'd0;
            ecn_field                   <= 2'd0;
            ipv4_ttl                    <= 8'd0;
            ip_protocol                 <= 8'd0;
            ipv4_header_checksum        <= 16'd0;
            ipv4_checksum_checked       <= 1'b0;
            ipv4_checksum_ok            <= 1'b0;
            src_ip                      <= 32'd0;
            dst_ip                      <= 32'd0;
            packet_is_tcp               <= 1'b0;
            packet_is_udp               <= 1'b0;
            packet_is_icmp              <= 1'b0;
            src_port                    <= 16'd0;
            dst_port                    <= 16'd0;
            tcp_sequence_number         <= 32'd0;
            tcp_acknowledgment_number   <= 32'd0;
            tcp_header_bytes            <= 8'd0;
            tcp_flags                   <= 8'd0;
            tcp_window_size             <= 16'd0;
            tcp_checksum                <= 16'd0;
            tcp_urgent_pointer          <= 16'd0;
            udp_length                  <= 16'd0;
            udp_checksum                <= 16'd0;
            icmp_type                   <= 8'd0;
            icmp_code                   <= 8'd0;
            icmp_checksum               <= 16'd0;
            ipv4_checksum_sum           <= 32'd0;
            ipv4_checksum_high_byte     <= 8'd0;
            ipv4_total_length_seen      <= 1'b0;
            frame_error_sticky          <= 1'b0;
            packet_valid                <= 1'b0;
            parse_ok                    <= 1'b0;
            parse_error                 <= 1'b0;
            unsupported_type            <= 1'b0;
            transport_valid             <= 1'b0;
            packet_bytes                <= 16'd0;
        end else begin
            // Release a held metadata record only after its consumer accepts it.
            if (packet_valid && packet_ready)
                packet_valid <= 1'b0;

            if (axi_tvalid && axi_tready) begin
                // Per-frame initialization at the first accepted byte.
                if (byte_index == 16'd0) begin
                    ethertype_high_index      <= 16'd12;
                    ethertype_low_index       <= 16'd13;
                    ethertype_high_byte       <= 8'd0;
                    ethertype_seen            <= 1'b0;
                    vlan_tag_count            <= 2'd0;
                    l3_offset                 <= 16'd0;
                    eth_type                  <= 16'd0;
                    is_arp                    <= 1'b0;
                    is_ipv6                   <= 1'b0;
                    is_ipv4                   <= 1'b0;
                    ipv4_version              <= 4'd0;
                    ipv4_header_bytes         <= 8'd0;
                    ipv4_total_length         <= 16'd0;
                    ipv4_identification       <= 16'd0;
                    ipv4_flags                <= 3'd0;
                    ipv4_fragment_offset      <= 13'd0;
                    offset_nonzero            <= 1'b0;
                    ipv4_dont_fragment        <= 1'b0;
                    ipv4_more_fragments       <= 1'b0;
                    ipv4_fragmented            <= 1'b0;
                    dscp_field                <= 6'd0;
                    ecn_field                 <= 2'd0;
                    ipv4_ttl                  <= 8'd0;
                    ip_protocol               <= 8'd0;
                    ipv4_header_checksum      <= 16'd0;
                    ipv4_checksum_checked     <= 1'b0;
                    ipv4_checksum_ok          <= 1'b0;
                    src_ip                    <= 32'd0;
                    dst_ip                    <= 32'd0;
                    packet_is_tcp             <= 1'b0;
                    packet_is_udp             <= 1'b0;
                    packet_is_icmp            <= 1'b0;
                    src_port                  <= 16'd0;
                    dst_port                  <= 16'd0;
                    tcp_sequence_number       <= 32'd0;
                    tcp_acknowledgment_number <= 32'd0;
                    tcp_header_bytes          <= 8'd0;
                    tcp_flags                 <= 8'd0;
                    tcp_window_size           <= 16'd0;
                    tcp_checksum              <= 16'd0;
                    tcp_urgent_pointer        <= 16'd0;
                    udp_length                <= 16'd0;
                    udp_checksum              <= 16'd0;
                    icmp_type                 <= 8'd0;
                    icmp_code                 <= 8'd0;
                    icmp_checksum             <= 16'd0;
                    ipv4_checksum_sum         <= 32'd0;
                    ipv4_checksum_high_byte   <= 8'd0;
                    ipv4_total_length_seen    <= 1'b0;
                    frame_error_sticky        <= 1'b0;
                    parse_ok                  <= 1'b0;
                    parse_error               <= 1'b0;
                    unsupported_type          <= 1'b0;
                    transport_valid           <= 1'b0;
                end

                // Ethernet MAC addresses: Ethernet frame byte offsets 0..11.
                case (byte_index)
                    16'd0:  dst_mac[47:40] <= axi_tdata;
                    16'd1:  dst_mac[39:32] <= axi_tdata;
                    16'd2:  dst_mac[31:24] <= axi_tdata;
                    16'd3:  dst_mac[23:16] <= axi_tdata;
                    16'd4:  dst_mac[15:8]  <= axi_tdata;
                    16'd5:  dst_mac[7:0]   <= axi_tdata;
                    16'd6:  src_mac[47:40] <= axi_tdata;
                    16'd7:  src_mac[39:32] <= axi_tdata;
                    16'd8:  src_mac[31:24] <= axi_tdata;
                    16'd9:  src_mac[23:16] <= axi_tdata;
                    16'd10: src_mac[15:8]  <= axi_tdata;
                    16'd11: src_mac[7:0]   <= axi_tdata;
                    default: begin end
                endcase

                // Parse EtherType dynamically so VLAN tag(s) shift L3 start.
                if (byte_index == ethertype_high_index)
                    ethertype_high_byte <= axi_tdata;

                if (byte_index == ethertype_low_index) begin
                    if ((current_ethertype == ETHERTYPE_VLAN) ||
                        (current_ethertype == ETHERTYPE_QINQ)) begin
                        if (vlan_tag_count < MAX_VLAN_TAGS) begin
                            vlan_tag_count       <= vlan_tag_count + 2'd1;
                            ethertype_high_index <= ethertype_high_index + 16'd4;
                            ethertype_low_index  <= ethertype_low_index + 16'd4;
                        end else begin
                            // Too many VLAN tags for this implementation. We
                            // intentionally classify this as unsupported, not malformed.
                            ethertype_seen   <= 1'b1;
                            unsupported_type <= 1'b1;
                        end
                    end else begin
                        ethertype_seen <= 1'b1;
                        eth_type       <= current_ethertype;
                        l3_offset      <= byte_index + 16'd1;
                        is_ipv4        <= (current_ethertype == ETHERTYPE_IPV4);
                        is_arp         <= (current_ethertype == ETHERTYPE_ARP);
                        is_ipv6        <= (current_ethertype == ETHERTYPE_IPV6);
                    end
                end

                // IPv4 header: all offsets below are relative to l3_offset.
                if (ipv4_header_byte_active) begin
                    case (ipv4_byte_offset)
                        16'd0: begin
                            ipv4_version      <= axi_tdata[7:4];
                            ipv4_header_bytes <= {2'b00, axi_tdata[3:0], 2'b00};
                            ipv4_checksum_sum <= 32'd0;
                            ipv4_checksum_high_byte <= axi_tdata;
                            ipv4_checksum_checked <= 1'b0;
                            ipv4_checksum_ok      <= 1'b0;
                            ipv4_total_length_seen <= 1'b0;
                            if (axi_tdata[7:4] != 4'd4 || axi_tdata[3:0] < 4'd5)
                                frame_error_sticky <= 1'b1;
                        end
                        16'd1: begin
                            dscp_field <= axi_tdata[7:2];
                            ecn_field  <= axi_tdata[1:0];
                        end
                        16'd2: ipv4_total_length[15:8] <= axi_tdata;
                        16'd3: begin
                            ipv4_total_length[7:0] <= axi_tdata;
                            ipv4_total_length_seen <= 1'b1;
                            if ({ipv4_total_length[15:8], axi_tdata} < {8'd0, ipv4_header_bytes})
                                frame_error_sticky <= 1'b1;
                        end
                        16'd4: ipv4_identification[15:8] <= axi_tdata;
                        16'd5: ipv4_identification[7:0]  <= axi_tdata;
                        16'd6: begin
                            ipv4_flags[2:0]          <= axi_tdata[7:5];
                            ipv4_dont_fragment       <= axi_tdata[6];
                            ipv4_more_fragments      <= axi_tdata[5];
                            ipv4_fragment_offset[12:8] <= axi_tdata[4:0];
                            if (axi_tdata[7])
                                frame_error_sticky <= 1'b1; // Reserved flag must be zero.
                        end
                        16'd7: begin
                            ipv4_fragment_offset[7:0] <= axi_tdata;
                            offset_nonzero <= ({ipv4_fragment_offset[12:8], axi_tdata} != 13'd0);
                            ipv4_fragmented <= ipv4_more_fragments ||
                                               ({ipv4_fragment_offset[12:8], axi_tdata} != 13'd0);
                        end
                        16'd8: ipv4_ttl <= axi_tdata;
                        16'd9: begin
                            ip_protocol   <= axi_tdata;
                            packet_is_tcp <= (axi_tdata == 8'd6);
                            packet_is_udp <= (axi_tdata == 8'd17);
                            packet_is_icmp <= (axi_tdata == 8'd1);
                        end
                        16'd10: ipv4_header_checksum[15:8] <= axi_tdata;
                        16'd11: ipv4_header_checksum[7:0]  <= axi_tdata;
                        16'd12: src_ip[31:24] <= axi_tdata;
                        16'd13: src_ip[23:16] <= axi_tdata;
                        16'd14: src_ip[15:8]  <= axi_tdata;
                        16'd15: src_ip[7:0]   <= axi_tdata;
                        16'd16: dst_ip[31:24] <= axi_tdata;
                        16'd17: dst_ip[23:16] <= axi_tdata;
                        16'd18: dst_ip[15:8]  <= axi_tdata;
                        16'd19: dst_ip[7:0]   <= axi_tdata;
                        default: begin end
                    endcase

                    // IPv4 header checksum: sum 16-bit words, including the
                    // transmitted checksum. Header length is always a multiple of 4.
                    if (ipv4_byte_offset == 16'd0) begin
                        ipv4_checksum_high_byte <= axi_tdata;
                    end else if ((ipv4_byte_offset < ipv4_header_bytes) &&
                                 ipv4_byte_offset[0]) begin
                        ipv4_checksum_sum <= ipv4_checksum_sum +
                                             {ipv4_checksum_high_byte, axi_tdata};
                        if (ipv4_header_bytes >= 8'd20 &&
                            ipv4_byte_offset == (ipv4_header_bytes - 8'd1)) begin
                            ipv4_checksum_checked <= 1'b1;
                            ipv4_checksum_ok <=
                                (fold_ones_complement(ipv4_sum_with_current_word) == 16'hFFFF);
                            if (fold_ones_complement(ipv4_sum_with_current_word) != 16'hFFFF)
                                frame_error_sticky <= 1'b1;
                        end
                    end else if (!ipv4_byte_offset[0]) begin
                        ipv4_checksum_high_byte <= axi_tdata;
                    end
                end

                // Transport parsing only occurs inside the declared IPv4 packet
                // and only for the first fragment (fragment offset == 0).
                if (transport_byte_active) begin
                    case (ip_protocol)
                        8'd6: begin // TCP
                            case (transport_offset)
                                16'd0: src_port[15:8] <= axi_tdata;
                                16'd1: src_port[7:0]  <= axi_tdata;
                                16'd2: dst_port[15:8] <= axi_tdata;
                                16'd3: dst_port[7:0]  <= axi_tdata;
                                16'd4: tcp_sequence_number[31:24] <= axi_tdata;
                                16'd5: tcp_sequence_number[23:16] <= axi_tdata;
                                16'd6: tcp_sequence_number[15:8]  <= axi_tdata;
                                16'd7: tcp_sequence_number[7:0]   <= axi_tdata;
                                16'd8: tcp_acknowledgment_number[31:24] <= axi_tdata;
                                16'd9: tcp_acknowledgment_number[23:16] <= axi_tdata;
                                16'd10: tcp_acknowledgment_number[15:8]  <= axi_tdata;
                                16'd11: tcp_acknowledgment_number[7:0]   <= axi_tdata;
                                16'd12: begin
                                    tcp_header_bytes <= {2'b00, axi_tdata[7:4], 2'b00};
                                    if ({2'b00, axi_tdata[7:4], 2'b00} < 8'd20)
                                        frame_error_sticky <= 1'b1;
                                    if (!ipv4_fragmented &&
                                        (ipv4_total_length <
                                         (ipv4_header_bytes + {2'b00, axi_tdata[7:4], 2'b00})))
                                        frame_error_sticky <= 1'b1;
                                end
                                16'd13: tcp_flags <= axi_tdata;
                                16'd14: tcp_window_size[15:8] <= axi_tdata;
                                16'd15: tcp_window_size[7:0]  <= axi_tdata;
                                16'd16: tcp_checksum[15:8] <= axi_tdata;
                                16'd17: tcp_checksum[7:0]  <= axi_tdata;
                                16'd18: tcp_urgent_pointer[15:8] <= axi_tdata;
                                16'd19: tcp_urgent_pointer[7:0]  <= axi_tdata;
                                default: begin end
                            endcase

                            if ((tcp_header_bytes >= 8'd20) &&
                                (transport_offset == (tcp_header_bytes - 8'd1)))
                                transport_valid <= 1'b1;
                        end

                        8'd17: begin // UDP
                            case (transport_offset)
                                16'd0: src_port[15:8] <= axi_tdata;
                                16'd1: src_port[7:0]  <= axi_tdata;
                                16'd2: dst_port[15:8] <= axi_tdata;
                                16'd3: dst_port[7:0]  <= axi_tdata;
                                16'd4: udp_length[15:8] <= axi_tdata;
                                16'd5: begin
                                    udp_length[7:0] <= axi_tdata;
                                    if ({udp_length[15:8], axi_tdata} < 16'd8)
                                        frame_error_sticky <= 1'b1;
                                    if (!ipv4_fragmented &&
                                        (ipv4_total_length >= ipv4_header_bytes) &&
                                        ({udp_length[15:8], axi_tdata} !=
                                         (ipv4_total_length - ipv4_header_bytes)))
                                        frame_error_sticky <= 1'b1;
                                end
                                16'd6: udp_checksum[15:8] <= axi_tdata;
                                16'd7: begin
                                    udp_checksum[7:0] <= axi_tdata;
                                    if (udp_length >= 16'd8 &&
                                        (ipv4_fragmented ||
                                         ((ipv4_total_length >= ipv4_header_bytes) &&
                                          (udp_length == (ipv4_total_length - ipv4_header_bytes)))))
                                        transport_valid <= 1'b1;
                                end
                                default: begin end
                            endcase
                        end

                        8'd1: begin // ICMP
                            case (transport_offset)
                                16'd0: icmp_type <= axi_tdata;
                                16'd1: icmp_code <= axi_tdata;
                                16'd2: icmp_checksum[15:8] <= axi_tdata;
                                16'd3: begin
                                    icmp_checksum[7:0] <= axi_tdata;
                                    transport_valid <= 1'b1;
                                end
                                default: begin end
                            endcase
                        end

                        default: begin end
                    endcase
                end

                // End-of-frame: publish one metadata record. Errors and
                // unsupported types are reported separately.
                if (axi_tlast) begin
                    packet_valid <= 1'b1;
                    packet_bytes <= frame_bytes_now;
                    byte_index <= 16'd0;

                    if ((frame_bytes_now < 16'd14) || (byte_index == 16'hFFFF)) begin
                        parse_error      <= 1'b1;
                        parse_ok         <= 1'b0;
                        unsupported_type <= 1'b0;
                    end else if (!is_ipv4) begin
                        // ARP/IPv6/other EtherTypes are classified at L2 but
                        // their payloads are not decoded by this IPv4 parser.
                        parse_error      <= frame_error_sticky || !ethertype_seen;
                        parse_ok         <= 1'b0;
                        unsupported_type <= 1'b1;
                    end else if (
                        frame_error_sticky ||
                        !ethertype_seen ||
                        !ipv4_total_length_seen ||
                        (ipv4_version != 4'd4) ||
                        (ipv4_header_bytes < 8'd20) ||
                        (ipv4_header_bytes > 8'd60) ||
                        (ipv4_total_length < ipv4_header_bytes) ||
                        !ipv4_checksum_checked ||
                        !ipv4_checksum_ok ||
                        !ipv4_length_fits_frame ||
                        ((ip_protocol == 8'd1) && !ipv4_fragmented &&
                         (ipv4_total_length < (ipv4_header_bytes + 8'd4))) ||
                        ((ip_protocol == 8'd6) && !ipv4_fragmented &&
                         !transport_complete_at_end) ||
                        ((ip_protocol == 8'd17) && !ipv4_fragmented &&
                         !transport_complete_at_end)
                    ) begin
                        parse_error      <= 1'b1;
                        parse_ok         <= 1'b0;
                        unsupported_type <= 1'b0;
                    end else if (ipv4_has_known_protocol) begin
                        parse_error      <= 1'b0;
                        parse_ok         <= 1'b1;
                        unsupported_type <= 1'b0;
                    end else begin
                        // Structurally valid IPv4 with an L4 protocol this
                        // parser does not decode.
                        parse_error      <= 1'b0;
                        parse_ok         <= 1'b0;
                        unsupported_type <= 1'b1;
                    end
                end else begin
                    if (byte_index != 16'hFFFF)
                        byte_index <= byte_index + 16'd1;
                    else
                        frame_error_sticky <= 1'b1; // Frame exceeds counter range.
                end
            end
        end
    end

endmodule
