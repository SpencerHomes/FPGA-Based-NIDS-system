module packet_parser (
    input wire clk,
    input wire rst_n,

    //axi input
    input wire [7:0] axi_tdata,
    input wire       axi_tlast,
    input wire       axi_tvalid,
    output wire      axi_tready,


    //ethernet metadata
    output reg [47:0] dst_mac ,
    output reg [47:0] src_mac ,
    output reg [15:0] eth_type ,

    //ipv4 metadata
    output reg        is_ipv4,
    output reg [7:0]  ipv4_header_bytes,
    output reg [15:0] ipv4_total_length,
    output reg [31:0] dst_ip,
    output reg [31:0] src_ip,
    output reg [7:0]  ip_protocol,
    output reg        offset_nonzero,
    output reg [15:0] ipv4_header_checksum,
    output reg [15:0] ipv4_identification,
        //dscp and ecn
        output reg [7:2] dscp_field,
        output reg [1:0] ecn_field,
        //ttl
        output reg [7:0] ipv4_ttl,


    //protocol metadata
            output reg      packet_is_tcp,    
            output reg      packet_is_udp,    
            output reg      packet_is_icmp,

            //tcp/udp meta data
            output reg [15:0] dst_port,
            output reg [15:0] src_port,
            output reg [7:0]  tcp_flags,
            output reg [7:0]  tcp_header_bytes,
            output reg [15:0] udp_length,

            //icmp metadata
            output reg [7:0]  icmp_type,
            output reg [7:0]  icmp_code,

//packet valid
    output reg          packet_valid,
    output reg  [15:0]  packet_bytes





);

//keep tready high to let every byte come through
assign axi_tready = 1'b1;

reg [7:0] ipv4_version;

reg [15:0] byte_index;


wire [15:0] transport_start;
assign transport_start = 16'd14 + ipv4_header_bytes;

always @(posedge clk) begin
    if(!rst_n) begin
        byte_index          <= 16'd0;
        packet_bytes        <= 16'd0;
        packet_valid        <= 1'b0;

        ipv4_header_bytes   <= 8'd0;
        is_ipv4             <= 1'b0;
        ipv4_version        <= 4'd0;
        dst_ip              <= 32'd0;
        src_ip              <= 32'd0;
        ip_protocol         <=8'd0;
        offset_nonzero      <=1'd0;
        dscp_field          <=6'd0;
        ecn_field           <=2'd0;
        ipv4_ttl            <=8'd0;
        ipv4_header_checksum<=16'd0;
        ipv4_identification <=16'd0;

        packet_is_tcp       <=1'b0;
        packet_is_udp       <=1'b0;
        packet_is_icmp      <=1'b0;

        dst_port            <=16'd0;
        src_port            <=16'd0;
        tcp_flags           <=8'd0;
        tcp_header_bytes    <=8'd0;
        udp_length          <=16'd0;


        icmp_code           <=8'd0;
        icmp_type           <=8'd0;


    end else begin
        //initially no packets to say valid
        packet_valid <= 1'b0;
        
        if(axi_tvalid && axi_tready) begin
            if (byte_index == 16'd0) begin
                    eth_type                <= 16'd0;
                    is_ipv4                 <= 1'b0;
                    ipv4_version            <= 4'd0;
                    ipv4_header_bytes       <= 8'd0;
                    ipv4_total_length       <= 16'd0;
                    src_ip                  <= 32'd0;
                    dst_ip                  <= 32'd0;
                    ip_protocol             <= 8'd0;
                    offset_nonzero <= 1'b0;
                    dscp_field              <=6'd0;
                    ecn_field               <=2'd0;
                    ipv4_ttl                <=8'd0;
                    ipv4_header_checksum    <=16'd0;
                    ipv4_identification     <=16'd0;



                    packet_is_tcp           <= 1'b0;
                    packet_is_udp           <= 1'b0;
                    packet_is_icmp          <= 1'b0;

                    src_port                <= 16'd0;
                    dst_port                <= 16'd0;
                    tcp_flags                <= 8'd0;
                    tcp_header_bytes        <= 8'd0;
                    udp_length               <= 16'd0;

                    icmp_type                <= 8'd0;
                    icmp_code                <= 8'd0;
            end                
                



                //ethernet bullshi
                case (byte_index)

                    //dst mac
                    16'd0: dst_mac[47:40] <=axi_tdata;
                    16'd1: dst_mac[39:32] <=axi_tdata;
                    16'd2: dst_mac[31:24] <=axi_tdata;
                    16'd3: dst_mac[23:16] <=axi_tdata;
                    16'd4: dst_mac[15:8]  <=axi_tdata;
                    16'd5: dst_mac[7:0]   <=axi_tdata;

                    //src mac
                    16'd6:  src_mac[47:40] <=axi_tdata;
                    16'd7:  src_mac[39:32] <=axi_tdata;
                    16'd8:  src_mac[31:24] <=axi_tdata;
                    16'd9:  src_mac[23:16] <=axi_tdata;
                    16'd10: src_mac[15:8]  <=axi_tdata;
                    16'd11: src_mac[7:0]   <=axi_tdata;  

                    //ethernet type
                    16'd12: eth_type[15:8] <= axi_tdata;                  
                    16'd13: begin 
                        eth_type[7:0]  <= axi_tdata;

                        is_ipv4 <= (eth_type[15:8] == 8'h08) && (axi_tdata == 8'h00);

                    end

                    default:begin
                    end 
                endcase

                //ipv4 bullshi

                if(is_ipv4)begin
                    case (byte_index)
                        16'd14: begin
                            ipv4_version <= axi_tdata[7:4];

                            ipv4_header_bytes <= {2'b00 , axi_tdata[3:0] , 2'b00};
                        end 

                        16'd15: begin
                            dscp_field[7:2] <= axi_tdata[7:2];
                            ecn_field [1:0] <= axi_tdata[1:0]; 
                        end

                        16'd16: ipv4_total_length[15:8] <= axi_tdata;
                        16'd17: ipv4_total_length[7:0] <= axi_tdata;


                        16'd18:ipv4_identification[15:8] <= axi_tdata;
                        16'd19:ipv4_identification[7:0] <= axi_tdata;


                        16'd20: offset_nonzero  <= (axi_tdata[4:0] != 5'd0);
                        16'd21: offset_nonzero  <= offset_nonzero || (axi_tdata != 8'd0);
                        16'd22: ipv4_ttl        <= axi_tdata;

                        16'd23:begin
                            packet_is_tcp <= (axi_tdata == 8'd6);
                            packet_is_udp <= (axi_tdata == 8'd17);
                            packet_is_icmp<= (axi_tdata == 8'd1);
                            ip_protocol   <= axi_tdata;  
                        end

                        16'd24: ipv4_header_checksum[15:8] <= axi_tdata;
                        16'd25: ipv4_header_checksum[7:0] <= axi_tdata;


                        16'd26: src_ip <= {24'd0 , axi_tdata};
                        16'd27: src_ip <= {src_ip[23:0] , axi_tdata};
                        16'd28: src_ip <= {src_ip[23:0] , axi_tdata};
                        16'd29: src_ip <= {src_ip[23:0] , axi_tdata};

                        16'd30: dst_ip <= {24'd0 , axi_tdata};
                        16'd31: dst_ip <= {dst_ip[23:0] , axi_tdata};
                        16'd32: dst_ip <= {dst_ip[23:0] , axi_tdata};
                        16'd33: dst_ip <= {dst_ip[23:0] , axi_tdata};   


                        default: begin
                        end
                    endcase

                end
            if(is_ipv4 && ipv4_version == 4'd4 && ipv4_header_bytes >= 8'd20 && byte_index >= transport_start && !offset_nonzero) begin
                case (ip_protocol)
                //tcp bullshi/parser
                    8'd6: case (byte_index - transport_start)
                        16'd0: src_port[15:8]   <=axi_tdata; 
                        16'd1: src_port[7:0]    <=axi_tdata; 
                        16'd2: dst_port[15:8]   <=axi_tdata; 
                        16'd3: dst_port[7:0]    <=axi_tdata; 
                    //4-11 bytes are ack and sequence number will add them later if required
                        16'd12:tcp_header_bytes <= {2'b00 , axi_tdata[7:4] , 2'b00};
                        16'd13: tcp_flags       <= axi_tdata;



                        default: begin
                        end
                    endcase
                //udp parser        
                        8'd17: begin

                            case (byte_index - transport_start)

                                16'd0:
                                    src_port[15:8] <= axi_tdata;

                                16'd1:
                                    src_port[7:0] <= axi_tdata;

                                16'd2:
                                    dst_port[15:8] <= axi_tdata;

                                16'd3:
                                    dst_port[7:0] <= axi_tdata;

                                16'd4:
                                    udp_length[15:8] <= axi_tdata;

                                16'd5:
                                    udp_length[7:0] <= axi_tdata;

                                default: begin
                                end

                            endcase

                        end


                        // ---------------------------------
                        // ICMP
                        // ---------------------------------
                        8'd1: begin

                            case (byte_index - transport_start)

                                16'd0:
                                    icmp_type <= axi_tdata;

                                16'd1:
                                    icmp_code <= axi_tdata;

                                default: begin
                                end

                            endcase

                        end
                    endcase

            end
            //wrapping things up
            if(axi_tlast) begin
                packet_valid <= 1'b1;
                packet_bytes <= byte_index + 16'd1;

                byte_index   <= 16'd0;
            end else byte_index <= byte_index + 16'd1; 
            end
            end
        end









endmodule








