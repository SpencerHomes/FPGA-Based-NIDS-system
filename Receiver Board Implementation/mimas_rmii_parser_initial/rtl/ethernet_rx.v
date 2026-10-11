`timescale 1ns / 1ps
// Receive framing adapter for packet_parser.
// Strips 7 x 0x55 preamble bytes and the SFD byte.
// Passes Ethernet frame bytes including FCS; FCS is NOT checked/stripped here.
// One-byte holding register aligns tlast with the final byte.
module ethernet_rx (
    input wire clk, input wire rst_n,
    input wire [7:0] rmii_data,
    input wire rmii_valid, input wire rmii_frame_end,
    output reg [7:0] axi_tdata,
    output reg axi_tlast, output reg axi_tvalid,
    input wire axi_tready
);
    localparam ST_PREAMBLE = 1'b0, ST_DATA = 1'b1;
    reg state;
    reg [3:0] preamble_count;
    reg [7:0] pending_byte;
    reg pending_valid;

    always @(posedge clk) begin
        if (!rst_n) begin
            state <= ST_PREAMBLE; preamble_count <= 0;
            pending_byte <= 0; pending_valid <= 0;
            axi_tdata <= 0; axi_tlast <= 0; axi_tvalid <= 0;
        end else begin
            axi_tlast <= 0;
            axi_tvalid <= 0;

            if (rmii_valid) begin
                if (state == ST_PREAMBLE) begin
                    if (preamble_count < 7)
                        preamble_count <= preamble_count + 1'b1;
                    else begin
                        // Eighth byte is SFD; no payload byte emitted for it.
                        preamble_count <= 0;
                        state <= ST_DATA;
                    end
                end else begin
                    if (pending_valid && axi_tready) begin
                        axi_tdata <= pending_byte;
                        axi_tvalid <= 1;
                    end
                    pending_byte <= rmii_data;
                    pending_valid <= 1;
                end
            end

            if (rmii_frame_end) begin
                if ((state == ST_DATA) && pending_valid && axi_tready) begin
                    axi_tdata <= pending_byte;
                    axi_tvalid <= 1;
                    axi_tlast <= 1;
                end
                state <= ST_PREAMBLE;
                preamble_count <= 0;
                pending_valid <= 0;
            end
        end
    end
endmodule
