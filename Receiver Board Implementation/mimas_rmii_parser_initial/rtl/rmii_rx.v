
`timescale 1ns / 1ps

// RMII dibits -> bytes.
//
// Aligns the initial byte assembly by ignoring leading zero dibits
// while CRS_DV is active. This targets the tested 100BASE-TX
// case where CRS_DV becomes active before preamble data starts.
//
// Important: this is not a complete 10BASE-T/100BASE-TX receiver.
// Validate the actual PHY waveform before using it as a final fix.

module rmii_rx (
    input wire clk,
    input wire rst_n,
    input wire [1:0] rxd,
    input wire crs_dv,

    output reg [7:0] rx_data,
    output reg rx_valid,
    output reg rx_frame_end,
    output reg rx_active,
	 //debug
	 output reg dbg_crs_dv_fall_seen,
	 output reg dbg_frame_end_seen
);

    reg [1:0] dibit_count;
    reg [5:0] byte_low;
    reg crs_dv_d;
    reg receiving_data;

    always @(posedge clk) begin
        if (!rst_n) begin
            dibit_count  <= 2'd0;
            byte_low     <= 6'd0;
            rx_data      <= 8'd0;
            rx_valid     <= 1'b0;
            rx_frame_end <= 1'b0;
            rx_active    <= 1'b0;
            crs_dv_d     <= 1'b0;
            receiving_data <= 1'b0;
				//debug
				dbg_crs_dv_fall_seen <= 1'b0;
				dbg_frame_end_seen <= 1'b0;
        end else begin
            rx_valid     <= 1'b0;
            rx_frame_end <= 1'b0;
            crs_dv_d     <= crs_dv;
            rx_active    <= crs_dv;
				
				if (crs_dv_d && !crs_dv)
					dbg_crs_dv_fall_seen <= 1'b1;
				
				if (rx_frame_end)
					dbg_frame_end_seen <= 1'b1;

            if (crs_dv) begin
                // Before alignment, ignore leading zero dibits.
                if (!receiving_data) begin
                    dibit_count <= 2'd0;

                    if (rxd != 2'b00) begin
                        receiving_data <= 1'b1;
                        byte_low[1:0] <= rxd;
                        dibit_count <= 2'd1;
                    end
                end else begin
                    case (dibit_count)
                        2'd0: begin
                            byte_low[1:0] <= rxd;
                            dibit_count <= 2'd1;
                        end

                        2'd1: begin
                            byte_low[3:2] <= rxd;
                            dibit_count <= 2'd2;
                        end

                        2'd2: begin
                            byte_low[5:4] <= rxd;
                            dibit_count <= 2'd3;
                        end

                        2'd3: begin
                            rx_data <= {rxd, byte_low[5:0]};
                            rx_valid <= 1'b1;
                            dibit_count <= 2'd0;
                        end
                    endcase
                end
            end else begin
                dibit_count <= 2'd0;
                receiving_data <= 1'b0;

                if (crs_dv_d)
                    rx_frame_end <= 1'b1;
            end
        end
    end

endmodule