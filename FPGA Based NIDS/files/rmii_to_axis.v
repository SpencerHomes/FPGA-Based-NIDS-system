//==============================================================================
// rmii_to_axis.v
// RMII (2-bit) receive  ->  8-bit AXI-Stream-style source (no tready: a PHY
// cannot be back-pressured).  Runs entirely on the PHY's own REF_CLK.
//
// RMII facts handled here (LAN8720, 100 Mbit/s, full duplex):
//   * The PHY outputs CRS_DV (carrier-sense / data-valid, multiplexed).  It may
//     rise before data is valid (RXD=2'b00), so frame start is found by
//     hunting for the preamble (dibit 01) followed by the SFD dibit (11).
//   * Dibits arrive LSB-first: the first dibit is bits [1:0] of the byte.
//   * At end of frame CRS_DV simply falls, OR (if the PHY still holds buffered
//     data) toggles 1,0,1,0 at 25 MHz.  Two consecutive CRS_DV=0 samples are
//     therefore used as the end-of-frame marker (the "falling edge of RX_DV").
//   * The first low sample after the last high one may still be a legitimate
//     dibit (toggle case) or garbage (solid case).  It is clocked into the
//     byte assembler either way; in the solid case it can only produce a
//     partial byte which is discarded, so only whole bytes ever leave.
//
// Output beat = { tdata[7:0], tvalid, tlast, tindex[15:0] }.
//   tindex = byte position relative to frame start (0 = first destination-MAC
//            byte; preamble/SFD are stripped).  It saturates at 16'hFFFF.
// A one-byte holding register delays the stream by one byte so that tlast can
// be attached to the genuinely last byte of the frame (which includes FCS).
//==============================================================================
`timescale 1ns/1ps
module rmii_to_axis (
    input  wire        clk,          // PHY REF_CLK (50 MHz)
    input  wire        rst_n,        // active-low, synchronous to clk
    input  wire [1:0]  rmii_rxd,     // RXD[1:0] from PHY
    input  wire        rmii_crs_dv,  // CRS_DV   from PHY
    output reg  [7:0]  m_tdata,
    output reg         m_tvalid,
    output reg         m_tlast,
    output reg  [15:0] m_tindex
);
    //--------------------------------------------------------------------------
    // Input registers - packed into the IOBs for deterministic input timing
    //--------------------------------------------------------------------------
    (* IOB = "TRUE" *) reg [1:0] rxd_r = 2'b00;
    (* IOB = "TRUE" *) reg       crs_r = 1'b0;

    always @(posedge clk) begin
        rxd_r <= rmii_rxd;
        crs_r <= rmii_crs_dv;
    end

    //--------------------------------------------------------------------------
    // Frame / byte assembler
    //--------------------------------------------------------------------------
    localparam [1:0] S_IDLE = 2'd0,   // waiting for carrier + first preamble dibit
                     S_PRE  = 2'd1,   // inside preamble, waiting for SFD (11)
                     S_DATA = 2'd2;   // collecting frame bytes

    reg [1:0]  state;
    reg        crs_prev;
    reg [7:0]  shreg;       // dibit shift register (LSB-first -> shift right)
    reg [1:0]  dcnt;        // dibit counter inside current byte (0..3)
    reg [15:0] bcnt;        // byte counter = index of the byte being completed
    reg        hold_v;      // holding register occupied
    reg [7:0]  hold_d;
    reg [15:0] hold_i;

    wire [7:0] byte_now = {rxd_r, shreg[7:2]};   // byte if this dibit is the 4th

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state    <= S_IDLE;
            crs_prev <= 1'b0;
            shreg    <= 8'h00;
            dcnt     <= 2'd0;
            bcnt     <= 16'd0;
            hold_v   <= 1'b0;
            hold_d   <= 8'h00;
            hold_i   <= 16'd0;
            m_tdata  <= 8'h00;
            m_tvalid <= 1'b0;
            m_tlast  <= 1'b0;
            m_tindex <= 16'd0;
        end else begin
            crs_prev <= crs_r;
            m_tvalid <= 1'b0;
            m_tlast  <= 1'b0;

            case (state)
            //------------------------------------------------------------------
            S_IDLE: begin
                dcnt   <= 2'd0;
                hold_v <= 1'b0;
                if (crs_r && (rxd_r == 2'b01))
                    state <= S_PRE;
            end
            //------------------------------------------------------------------
            S_PRE: begin
                if (!crs_r) begin
                    state <= S_IDLE;                 // false carrier
                end else if (rxd_r == 2'b11) begin   // SFD found
                    state  <= S_DATA;
                    dcnt   <= 2'd0;
                    bcnt   <= 16'd0;
                    hold_v <= 1'b0;
                end else if (rxd_r != 2'b01) begin
                    state <= S_IDLE;                 // corrupted preamble
                end
            end
            //------------------------------------------------------------------
            S_DATA: begin
                if (!crs_r && !crs_prev) begin
                    // ---- end of frame: two consecutive CRS_DV=0 samples ----
                    if (hold_v) begin
                        m_tdata  <= hold_d;
                        m_tindex <= hold_i;
                        m_tvalid <= 1'b1;
                        m_tlast  <= 1'b1;            // falling edge of RX_DV
                    end
                    hold_v <= 1'b0;
                    dcnt   <= 2'd0;                  // drop any partial byte
                    state  <= S_IDLE;
                end else begin
                    shreg <= {rxd_r, shreg[7:2]};
                    if (dcnt == 2'd3) begin
                        dcnt <= 2'd0;
                        // push previously held byte downstream (not last)
                        if (hold_v) begin
                            m_tdata  <= hold_d;
                            m_tindex <= hold_i;
                            m_tvalid <= 1'b1;
                            m_tlast  <= 1'b0;
                        end
                        hold_d <= byte_now;
                        hold_i <= bcnt;
                        hold_v <= 1'b1;
                        if (bcnt != 16'hFFFF) bcnt <= bcnt + 16'd1;
                    end else begin
                        dcnt <= dcnt + 2'd1;
                    end
                end
            end
            //------------------------------------------------------------------
            default: state <= S_IDLE;
            endcase
        end
    end
endmodule
