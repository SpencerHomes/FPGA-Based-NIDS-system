//==============================================================================
// async_frame_fifo.v
// Dual-clock (asynchronous) FIFO with FRAME-LEVEL COMMIT, store-and-forward.
//
// Why frame-level commit?
//   The two PHY reference clocks drift (+/-50 ppm each).  If the reader began
//   draining a frame while it was still being written, the faster clock could
//   underrun mid-frame and corrupt the packet.  Here the write side only
//   publishes (to the read side) its pointer when a frame's tlast byte has been
//   stored, so the reader can never see a partial frame; once it starts a frame
//   all bytes are guaranteed present.
//
// Overflow policy:
//   If the FIFO fills while a frame is being written, the whole frame is
//   dropped (write pointer rolled back to the last committed pointer) and
//   wr_drop_pulse fires for one clock.  Previously committed frames survive.
//
// Storage : 2^AW x 9 bit (bit 8 = tlast)  ->  one RAMB16 for AW = 11.
// Crossing: Gray-coded pointers through 2-FF synchronisers.
// Read    : first-word-fall-through (rd_data is always the head entry).
//==============================================================================
`timescale 1ns/1ps
module async_frame_fifo #(
    parameter AW = 11                       // 2048 entries - holds > 1 max frame
)(
    // ---------------- write side ----------------
    input  wire        wclk,
    input  wire        wrst_n,
    input  wire        wr_valid,
    input  wire [7:0]  wr_data,
    input  wire        wr_last,
    output reg         wr_drop_pulse,       // frame discarded (overflow)
    // ---------------- read side -----------------
    input  wire        rclk,
    input  wire        rrst_n,
    input  wire        rd_en,               // pop head (ignored when empty)
    output wire [8:0]  rd_data,             // {last, data}
    output wire        rd_empty             // no COMPLETE frame data available
);
    localparam DEPTH = (1 << AW);

    (* RAM_STYLE = "BLOCK" *) reg [8:0] mem [0:DEPTH-1];

    //--------------------------------------------------------------------------
    function [AW:0] bin2gray;
        input [AW:0] b;
        begin bin2gray = b ^ (b >> 1); end
    endfunction

    function [AW:0] gray2bin;
        input [AW:0] g;
        reg   [AW:0] r;
        integer      i;
        begin
            r[AW] = g[AW];
            for (i = AW-1; i >= 0; i = i - 1)
                r[i] = r[i+1] ^ g[i];
            gray2bin = r;
        end
    endfunction

    //==========================================================================
    // WRITE DOMAIN
    //==========================================================================
    reg  [AW:0] wptr;          // working write pointer
    reg  [AW:0] cptr;          // committed pointer (end of last complete frame)
    reg  [AW:0] cptr_gray;     // Gray version -> read domain
    reg         drop;          // current frame is being discarded

    wire [AW:0] rptr_gray;     // from read domain
    (* ASYNC_REG = "TRUE" *) reg [AW:0] rg_s1 = 0, rg_s2 = 0;

    always @(posedge wclk or negedge wrst_n) begin
        if (!wrst_n) begin rg_s1 <= 0; rg_s2 <= 0; end
        else         begin rg_s1 <= rptr_gray; rg_s2 <= rg_s1; end
    end

    wire [AW:0] rptr_w = gray2bin(rg_s2);
    wire [AW:0] used   = wptr - rptr_w;     // 0 .. DEPTH
    wire        full   = used[AW];          // used == DEPTH
    wire        wr_ok  = !drop && !full;
    wire [AW:0] wptr_n = wptr + 1'b1;

    // RAM write port (no reset on RAM)
    always @(posedge wclk) begin
        if (wr_valid && wr_ok)
            mem[wptr[AW-1:0]] <= {wr_last, wr_data};
    end

    always @(posedge wclk or negedge wrst_n) begin
        if (!wrst_n) begin
            wptr          <= 0;
            cptr          <= 0;
            cptr_gray     <= 0;
            drop          <= 1'b0;
            wr_drop_pulse <= 1'b0;
        end else begin
            wr_drop_pulse <= 1'b0;
            if (wr_valid) begin
                if (wr_ok) begin
                    wptr <= wptr_n;
                    if (wr_last) begin               // commit complete frame
                        cptr      <= wptr_n;
                        cptr_gray <= bin2gray(wptr_n);
                    end
                end else begin
                    if (wr_last) begin               // end of a dropped frame
                        wptr          <= cptr;       // roll back
                        drop          <= 1'b0;
                        wr_drop_pulse <= 1'b1;
                    end else begin
                        drop <= 1'b1;
                    end
                end
            end
        end
    end

    //==========================================================================
    // READ DOMAIN
    //==========================================================================
    reg  [AW:0] rptr;
    reg  [AW:0] rptr_gray_r;
    assign rptr_gray = rptr_gray_r;

    (* ASYNC_REG = "TRUE" *) reg [AW:0] cg_s1 = 0, cg_s2 = 0;

    always @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n) begin cg_s1 <= 0; cg_s2 <= 0; end
        else         begin cg_s1 <= cptr_gray; cg_s2 <= cg_s1; end
    end

    wire [AW:0] cptr_r = gray2bin(cg_s2);
    assign rd_empty = (rptr == cptr_r);

    wire        pop    = rd_en && !rd_empty;
    wire [AW:0] rptr_n = pop ? (rptr + 1'b1) : rptr;

    always @(posedge rclk or negedge rrst_n) begin
        if (!rrst_n) begin
            rptr        <= 0;
            rptr_gray_r <= 0;
        end else begin
            rptr        <= rptr_n;
            rptr_gray_r <= bin2gray(rptr_n);
        end
    end

    // Synchronous-read RAM port, address = next pointer -> FWFT behaviour.
    reg [8:0] rd_q;
    always @(posedge rclk) rd_q <= mem[rptr_n[AW-1:0]];
    assign rd_data = rd_q;
endmodule
