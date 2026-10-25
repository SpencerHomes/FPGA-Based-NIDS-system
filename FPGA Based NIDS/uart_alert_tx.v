//==============================================================================
// uart_alert_tx.v
// Alert transport: clk_a trigger pulses -> 100 MHz domain -> command FIFO ->
// ASCII message sequencer -> 115200 8N1 UART.
//
// Clock-domain crossing
//   Each trigger pulse (1 clk_a cycle) toggles a flip-flop in clk_a.  The
//   toggle level is passed through a 2-FF synchroniser into clk_100, where an
//   XOR against the previous sample recreates a clean one-cycle event.  This is
//   safe for any pulse width (the detectors emit pulses >= 4 clk_a cycles
//   apart by construction: one per frame, or one per 7-byte signature match).
//
// Collision handling
//   * Several detectors may fire in the same cycle -> events set per-type
//     "req" bits; a priority picker pushes ONE type per cycle into an 8-deep
//     command FIFO.  A repeat of a type that is still waiting to be enqueued
//     is coalesced; nothing already queued is ever lost or interleaved.
//   * The sequencer pops one command at a time and sends the complete string
//     before starting the next, so messages can never be interleaved.
//
// Command codes: 0 = ICMP, 1 = Signature, 2 = SYN flood, 3 = Port scan
//==============================================================================
`timescale 1ns/1ps
module uart_alert_tx #(
    parameter CLKS_PER_BIT = 5208            // 100 MHz / 115200 = 5208
)(
    input  wire clk_100,
    input  wire rst_n_100,
    input  wire clk_a,
    input  wire rst_n_a,
    input  wire trig_icmp,
    input  wire trig_signature,
    input  wire trig_syn_flood,
    input  wire trig_port_scan,
    output wire uart_txd
);
    //--------------------------------------------------------------------------
    // Message ROM (octal escapes: \015 = CR, \012 = LF)
    //--------------------------------------------------------------------------
    function integer strlen;
        input [8*64-1:0] s;
        integer k;
        begin
            strlen = 0;
            for (k = 0; k < 64; k = k + 1)
                if (s[8*k +: 8] != 8'h00) strlen = strlen + 1;
        end
    endfunction

    localparam [8*64-1:0] M0 = "[ALERT] Ping of Death Attack Detected!\015\012";
    localparam [8*64-1:0] M1 = "[ALERT] Malicious Payload Signature Found!\015\012";
    localparam [8*64-1:0] M2 = "[ALERT] TCP SYN Flood DoS Attack Warning!\015\012";
    localparam [8*64-1:0] M3 = "[ALERT] Restricted Port Scan Attempt Detected!\015\012";

    localparam integer L0 = strlen(M0);
    localparam integer L1 = strlen(M1);
    localparam integer L2 = strlen(M2);
    localparam integer L3 = strlen(M3);

    function [7:0] msg_char;
        input [1:0] code;
        input [7:0] idx;
        begin
            case (code)
                2'd0:    msg_char = M0[8*(L0-1-idx) +: 8];
                2'd1:    msg_char = M1[8*(L1-1-idx) +: 8];
                2'd2:    msg_char = M2[8*(L2-1-idx) +: 8];
                default: msg_char = M3[8*(L3-1-idx) +: 8];
            endcase
        end
    endfunction

    function [7:0] msg_len;
        input [1:0] code;
        begin
            case (code)
                2'd0:    msg_len = L0;
                2'd1:    msg_len = L1;
                2'd2:    msg_len = L2;
                default: msg_len = L3;
            endcase
        end
    endfunction

    //--------------------------------------------------------------------------
    // clk_a side: pulse -> toggle
    //--------------------------------------------------------------------------
    reg [3:0] tgl_a;
    always @(posedge clk_a or negedge rst_n_a) begin
        if (!rst_n_a) tgl_a <= 4'b0000;
        else          tgl_a <= tgl_a ^ {trig_port_scan, trig_syn_flood,
                                        trig_signature, trig_icmp};
    end

    //--------------------------------------------------------------------------
    // clk_100 side: synchronise, edge-detect
    //--------------------------------------------------------------------------
    (* ASYNC_REG = "TRUE" *) reg [3:0] t1 = 4'b0, t2 = 4'b0;
    reg [3:0] t3;
    always @(posedge clk_100 or negedge rst_n_100) begin
        if (!rst_n_100) begin t1 <= 4'b0; t2 <= 4'b0; t3 <= 4'b0; end
        else            begin t1 <= tgl_a; t2 <= t1;  t3 <= t2;  end
    end
    wire [3:0] ev = t2 ^ t3;

    //--------------------------------------------------------------------------
    // Pending-request bits, priority picker, 8-deep command FIFO
    //--------------------------------------------------------------------------
    reg  [3:0] req;
    reg  [1:0] pick_code;
    reg        pick_valid;
    always @* begin
        pick_valid = 1'b1;
        pick_code  = 2'd0;
        if      (req[0]) pick_code = 2'd0;
        else if (req[1]) pick_code = 2'd1;
        else if (req[2]) pick_code = 2'd2;
        else if (req[3]) pick_code = 2'd3;
        else             pick_valid = 1'b0;
    end

    reg  [1:0] cq [0:7];
    reg  [3:0] cq_w, cq_r;
    wire       cq_empty = (cq_w == cq_r);
    wire       cq_full  = (cq_w[2:0] == cq_r[2:0]) && (cq_w[3] != cq_r[3]);
    wire       push     = pick_valid && !cq_full;
    wire [1:0] cq_head  = cq[cq_r[2:0]];

    // FIFO storage (distributed RAM, no reset)
    always @(posedge clk_100)
        if (push) cq[cq_w[2:0]] <= pick_code;

    always @(posedge clk_100 or negedge rst_n_100) begin
        if (!rst_n_100) begin
            req  <= 4'b0000;
            cq_w <= 4'd0;
        end else begin
            // clear the request that was just enqueued, then OR in new events
            req <= (req & ~(push ? (4'b0001 << pick_code) : 4'b0000)) | ev;
            if (push) cq_w <= cq_w + 4'd1;
        end
    end

    //--------------------------------------------------------------------------
    // UART byte transmitter
    //--------------------------------------------------------------------------
    reg  [7:0] tx_data;
    reg        tx_start;
    wire       tx_busy;

    uart_tx_core #(.CLKS_PER_BIT(CLKS_PER_BIT)) u_core (
        .clk(clk_100), .rst_n(rst_n_100),
        .tx_data(tx_data), .tx_start(tx_start),
        .tx_busy(tx_busy), .tx_out(uart_txd)
    );

    //--------------------------------------------------------------------------
    // Message sequencer
    //--------------------------------------------------------------------------
    localparam [2:0] M_IDLE = 3'd0, M_LOAD = 3'd1, M_SEND = 3'd2,
                     M_WAIT = 3'd3, M_DONE = 3'd4;
    reg [2:0] mstate;
    reg [1:0] code;
    reg [7:0] idx;

    always @(posedge clk_100 or negedge rst_n_100) begin
        if (!rst_n_100) begin
            mstate   <= M_IDLE;
            cq_r     <= 4'd0;
            code     <= 2'd0;
            idx      <= 8'd0;
            tx_data  <= 8'h00;
            tx_start <= 1'b0;
        end else begin
            tx_start <= 1'b0;
            case (mstate)
            M_IDLE: if (!cq_empty) begin
                        code   <= cq_head;
                        cq_r   <= cq_r + 4'd1;     // pop
                        idx    <= 8'd0;
                        mstate <= M_SEND;
                    end
            M_SEND: if (!tx_busy && !tx_start) begin
                        tx_data  <= msg_char(code, idx);
                        tx_start <= 1'b1;
                        mstate   <= M_WAIT;
                    end
            M_WAIT: if (tx_busy) mstate <= M_DONE;   // core accepted the byte
            M_DONE: if (!tx_busy) begin
                        if (idx == msg_len(code) - 8'd1) mstate <= M_IDLE;
                        else begin
                            idx    <= idx + 8'd1;
                            mstate <= M_SEND;
                        end
                    end
            default: mstate <= M_IDLE;
            endcase
        end
    end
endmodule

//==============================================================================
// uart_tx_core : 8N1 transmitter, LSB first, one start + one stop bit
//==============================================================================
module uart_tx_core #(
    parameter CLKS_PER_BIT = 5208
)(
    input  wire       clk,
    input  wire       rst_n,
    input  wire [7:0] tx_data,
    input  wire       tx_start,   // 1-clk pulse, ignored while busy
    output reg        tx_busy,
    output reg        tx_out
);
    reg [9:0] sh;                 // {stop, data[7:0], start}
    reg [3:0] bitcnt;
    reg [9:0] baudcnt;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            tx_busy <= 1'b0;
            tx_out  <= 1'b1;
            sh      <= 10'h3FF;
            bitcnt  <= 4'd0;
            baudcnt <= 10'd0;
        end else if (!tx_busy) begin
            tx_out <= 1'b1;
            if (tx_start) begin
                sh      <= {1'b1, tx_data, 1'b0};
                tx_out  <= 1'b0;                  // start bit
                tx_busy <= 1'b1;
                bitcnt  <= 4'd0;
                baudcnt <= 10'd0;
            end
        end else begin
            if (baudcnt == CLKS_PER_BIT - 1) begin
                baudcnt <= 10'd0;
                if (bitcnt == 4'd9) begin          // stop bit finished
                    tx_busy <= 1'b0;
                    tx_out  <= 1'b1;
                end else begin
                    bitcnt <= bitcnt + 4'd1;
                    tx_out <= sh[bitcnt + 4'd1];
                end
            end else begin
                baudcnt <= baudcnt + 10'd1;
            end
        end
    end
endmodule
