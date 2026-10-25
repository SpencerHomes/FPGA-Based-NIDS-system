//==============================================================================
// reset_sync.v
// Asynchronous-assert / synchronous-deassert reset synchroniser.
// One instance per clock domain (clk_100, clk_a, clk_b) so every domain leaves
// reset cleanly on ITS OWN clock edge.
//==============================================================================
`timescale 1ns/1ps
module reset_sync (
    input  wire clk,
    input  wire arst_n,   // asynchronous, active-low reset request
    output wire rst_n     // active-low reset, deassertion aligned to clk
);
    (* ASYNC_REG = "TRUE" *) reg [2:0] sync_q = 3'b000;

    always @(posedge clk or negedge arst_n) begin
        if (!arst_n) sync_q <= 3'b000;
        else         sync_q <= {sync_q[1:0], 1'b1};
    end

    assign rst_n = sync_q[2];
endmodule
