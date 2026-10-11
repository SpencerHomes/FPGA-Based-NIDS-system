`timescale 1ns / 1ps
// Debug-oriented, receive-only LAN8720 RMII -> Ethernet framing -> packet_parser.
// LED outputs are sticky/toggle indicators so short events remain observable.

module top_packet_parse (
    input wire rmii_ref_clk,
    input wire rst_n,
    input wire [1:0] rmii_rxd,
    input wire rmii_crs_dv,
	 //for debug
    output reg led_rx_seen,
    output reg led_frame_toggle,
    output reg led_ipv4_seen,
    output reg led_tcp_seen,
	 output reg led_dbg_crs_dv_fall_seen,
	 output reg led_dbg_frame_end_seen,
	 //for turning off the seven seg display
    output wire [2:0] SevenSegmentEnable
);
    wire [7:0] rmii_byte;
    wire rmii_byte_valid, rmii_frame_end, rmii_active;
    wire [7:0] axi_tdata;
    wire axi_tlast, axi_tvalid;
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
	 
	 //debug
	 wire dbg_ipv4_prefix_seen;
	 wire rx_active;
	 wire rx_frame_end;
	 wire dbg_crs_dv_fall_seen;
	 wire dbg_frame_end_seen;
	 
    reg rmii_active_d;

    assign axi_tready = 1'b1; // Parser interface in the supplied packet_parser is always-ready.
    assign SevenSegmentEnable = 3'b111; // Active-low digit enables: all displays off.

    rmii_rx u_rmii_rx (
        .clk(rmii_ref_clk), .rst_n(rst_n), .rxd(rmii_rxd),
        .crs_dv(rmii_crs_dv), .rx_data(rmii_byte),
        .rx_valid(rmii_byte_valid), .rx_frame_end(rmii_frame_end),
        .rx_active(rmii_active), .dbg_crs_dv_fall_seen(dbg_crs_dv_fall_seen),
		  .dbg_frame_end_seen(dbg_frame_end_seen)
    );

    ethernet_rx u_ethernet_rx (
        .clk(rmii_ref_clk), .rst_n(rst_n),
        .rmii_data(rmii_byte), .rmii_valid(rmii_byte_valid),
        .rmii_frame_end(rmii_frame_end),
        .axi_tdata(axi_tdata), .axi_tlast(axi_tlast),
        .axi_tvalid(axi_tvalid), .axi_tready(axi_tready)
    );

    packet_parser u_packet_parser (
        .clk(rmii_ref_clk), .rst_n(rst_n),
        .axi_tdata(axi_tdata), .axi_tlast(axi_tlast),
        .axi_tvalid(axi_tvalid), .axi_tready(),
        .dst_mac(dst_mac), .src_mac(src_mac), .eth_type(eth_type),
        .is_ipv4(is_ipv4), .ipv4_header_bytes(ipv4_header_bytes),
        .ipv4_total_length(ipv4_total_length), .dst_ip(dst_ip), .src_ip(src_ip),
        .ip_protocol(ip_protocol), .offset_nonzero(offset_nonzero),
        .ipv4_header_checksum(ipv4_header_checksum),
        .ipv4_identification(ipv4_identification), .dscp_field(dscp_field),
        .ecn_field(ecn_field), .ipv4_ttl(ipv4_ttl),
        .packet_is_tcp(packet_is_tcp), .packet_is_udp(packet_is_udp),
        .packet_is_icmp(packet_is_icmp), .dst_port(dst_port), .src_port(src_port),
        .tcp_flags(tcp_flags), .tcp_header_bytes(tcp_header_bytes),
        .udp_length(udp_length), .icmp_type(icmp_type), .icmp_code(icmp_code),
        .packet_valid(packet_valid), .packet_bytes(packet_bytes),
		  .dbg_ipv4_prefix_seen(dbg_ipv4_prefix_seen)
		  
    );

    // Debug indicators:
    always @(posedge rmii_ref_clk) begin
        if (!rst_n) begin
            rmii_active_d <= 1'b0;
            led_rx_seen <= 1'b0;
            led_frame_toggle <= 1'b0;
            led_ipv4_seen <= 1'b0;
            led_tcp_seen <= 1'b0;
				led_dbg_crs_dv_fall_seen <= 1'b0;
				led_dbg_frame_end_seen <= 1'b0;
        end else begin
            rmii_active_d <= rmii_active;
            if (rmii_active)
                led_rx_seen <= 1'b1;
	 
	// Hardware debug indicators
	// led_rx_seen:      sticky indication of CRS_DV activity
	// led_frame_toggle: changes state once per received frame
	// led_ipv4_seen:    sticky indication of IPv4 recognition
	// led_tcp_seen:     sticky indication of TCP recognition

			  // Toggle on each detected end of frame
			  if (rmii_frame_end)
					led_frame_toggle <= ~led_frame_toggle;

			  // Parser has identified IPv4
			  if (is_ipv4)
					led_ipv4_seen <= 1'b1;

			  // Parser has identified TCP
			  if (packet_is_tcp)
					led_tcp_seen <= 1'b1;
				
			  //RMII frame ending detection shi
			  if (dbg_crs_dv_fall_seen)
					led_dbg_crs_dv_fall_seen <= 1'b1;	
			  if (dbg_frame_end_seen)
					led_dbg_frame_end_seen <= 1'b1;

			  
		 end
	end
endmodule
