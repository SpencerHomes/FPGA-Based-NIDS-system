//==============================================================================
// rmii_tx_from_fifo.v
// Reads complete frames from async_frame_fifo (in the TX PHY's clock domain),
// regenerates preamble + SFD, and serialises the bytes as RMII dibits
// (LSB-first) with TX_EN.  Frame bytes already contain the FCS (the RX path
// forwards everything after the SFD), so the frame leaves bit-identical.
//
// After each frame an inter-frame gap of 48 REF_CLK cycles (96 bit times at
// 100 Mbit/s) is enforced, so that clock drift can never squeeze two frames
// closer together than the Ethernet minimum.
//==============================================================================
`timescale 1ns/1ps
module rmii_tx_from_fifo (
    input  wire        clk,         // TX PHY REF_CLK (50 MHz)
    input  wire        rst_n,
    // FIFO read port (first-word-fall-through)
    input  wire        rd_empty,
    input  wire [8:0]  rd_data,     // {last, data}
    output wire        rd_en,
    // RMII transmit pins (registered, IOB packed)
    output wire [1:0]  rmii_txd,
    output wire        rmii_tx_en
);
    localparam [1:0] S_IDLE = 2'd0, S_PRE = 2'd1, S_DATA = 2'd2, S_GAP = 2'd3;

    (* IOB = "TRUE" *) reg [1:0] txd_r   = 2'b00;
    (* IOB = "TRUE" *) reg       txen_r  = 1'b0;
    assign rmii_txd   = txd_r;
    assign rmii_tx_en = txen_r;

    reg [1:0] state;
    reg [5:0] pcnt;          // preamble / gap counter
    reg [1:0] bcnt;          // dibit index within byte
    reg [7:0] cur;
    reg       cur_last;

    // Pop the FIFO exactly once per byte, on the cycle the first dibit is sent
    assign rd_en = (state == S_DATA) && (bcnt == 2'd0);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state    <= S_IDLE;
            pcnt     <= 6'd0;
            bcnt     <= 2'd0;
            cur      <= 8'h00;
            cur_last <= 1'b0;
            txd_r    <= 2'b00;
            txen_r   <= 1'b0;
        end else begin
            case (state)
            //------------------------------------------------------------------
            S_IDLE: begin
                txd_r  <= 2'b00;
                txen_r <= 1'b0;
                if (!rd_empty) begin               // a full frame is waiting
                    txen_r <= 1'b1;
                    txd_r  <= 2'b01;               // preamble dibit #0
                    pcnt   <= 6'd1;
                    state  <= S_PRE;
                end
            end
            //------------------------------------------------------------------
            // 7 x 0x55 + 0xD5  =  31 x dibit '01'  followed by dibit '11'
            S_PRE: begin
                txen_r <= 1'b1;
                if (pcnt == 6'd31) begin
                    txd_r <= 2'b11;                // last SFD dibit
                    bcnt  <= 2'd0;
                    state <= S_DATA;
                end else begin
                    txd_r <= 2'b01;
                    pcnt  <= pcnt + 6'd1;
                end
            end
            //------------------------------------------------------------------
            S_DATA: begin
                txen_r <= 1'b1;
                case (bcnt)
                    2'd0: begin
                        txd_r    <= rd_data[1:0];
                        cur      <= rd_data[7:0];
                        cur_last <= rd_data[8];
                        bcnt     <= 2'd1;
                    end
                    2'd1: begin txd_r <= cur[3:2]; bcnt <= 2'd2; end
                    2'd2: begin txd_r <= cur[5:4]; bcnt <= 2'd3; end
                    2'd3: begin
                        txd_r <= cur[7:6];
                        bcnt  <= 2'd0;
                        if (cur_last) begin
                            pcnt  <= 6'd0;
                            state <= S_GAP;
                        end
                    end
                endcase
            end
            //------------------------------------------------------------------
            S_GAP: begin
                txen_r <= 1'b0;
                txd_r  <= 2'b00;
                if (pcnt == 6'd47) state <= S_IDLE;
                else               pcnt  <= pcnt + 6'd1;
            end
            endcase
        end
    end
endmodule
