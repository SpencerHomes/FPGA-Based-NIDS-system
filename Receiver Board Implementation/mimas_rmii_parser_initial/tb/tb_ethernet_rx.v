
`timescale 1ns / 1ps

module tb_ethernet_rx;

    reg clk;
    reg rst_n;
    reg [7:0] rmii_data;
    reg rmii_valid;
    reg rmii_frame_end;
    reg axi_tready;

    wire [7:0] axi_tdata;
    wire axi_tlast;
    wire axi_tvalid;

    reg [7:0] expected [0:15];
    integer i;
    integer output_count;
    integer errors;
    integer frame_done;

    ethernet_rx dut (
        .clk(clk),
        .rst_n(rst_n),
        .rmii_data(rmii_data),
        .rmii_valid(rmii_valid),
        .rmii_frame_end(rmii_frame_end),
        .axi_tdata(axi_tdata),
        .axi_tlast(axi_tlast),
        .axi_tvalid(axi_tvalid),
        .axi_tready(axi_tready)
    );

    initial clk = 1'b0;
    always #5 clk = ~clk;

    // Send one input byte to the adapter.
    task send_rmii_byte;
        input [7:0] data;
        begin
            @(negedge clk);
            rmii_data = data;
            rmii_valid = 1'b1;

            @(negedge clk);
            rmii_valid = 1'b0;
        end
    endtask

    // Observe adapter outputs and compare each emitted byte.
    always @(posedge clk) begin
        if (rst_n && axi_tvalid && axi_tready) begin
            $display("OUT[%0d] = %02h, tlast=%b",
                     output_count, axi_tdata, axi_tlast);

            if (output_count >= 16) begin
                $display("FAIL: unexpected extra output byte");
                errors = errors + 1;
            end else if (axi_tdata !== expected[output_count]) begin
                $display("FAIL: byte %0d actual=%02h expected=%02h",
                         output_count, axi_tdata,
                         expected[output_count]);
                errors = errors + 1;
            end

            if (axi_tlast) begin
                if (output_count != 15) begin
                    $display("FAIL: tlast at output index %0d",
                             output_count);
                    errors = errors + 1;
                end
                frame_done = 1;
            end else if (output_count == 15) begin
                $display("FAIL: final byte missing tlast");
                errors = errors + 1;
            end

            output_count = output_count + 1;
        end
    end

    initial begin
        rst_n = 1'b0;
        rmii_data = 8'h00;
        rmii_valid = 1'b0;
        rmii_frame_end = 1'b0;
        axi_tready = 1'b1;
        output_count = 0;
        errors = 0;
        frame_done = 0;

        // Distinct Ethernet bytes make alignment errors easy to see.
        expected[0]  = 8'h00;
        expected[1]  = 8'h11;
        expected[2]  = 8'h22;
        expected[3]  = 8'h33;
        expected[4]  = 8'h44;
        expected[5]  = 8'h55;
        expected[6]  = 8'h66;
        expected[7]  = 8'h77;
        expected[8]  = 8'h88;
        expected[9]  = 8'h99;
        expected[10] = 8'hAA;
        expected[11] = 8'hBB;
        expected[12] = 8'h08;
        expected[13] = 8'h00;
        expected[14] = 8'h45;
        expected[15] = 8'h00;

        repeat (4) @(negedge clk);
        rst_n = 1'b1;
        repeat (2) @(negedge clk);

        $display("Sending seven preamble bytes...");

        for (i = 0; i < 7; i = i + 1)
            send_rmii_byte(8'h55);

        $display("Sending SFD...");
        send_rmii_byte(8'hD5);

        $display("Sending 16 Ethernet bytes...");

        for (i = 0; i < 16; i = i + 1)
            send_rmii_byte(expected[i]);

        // Let the final input-byte transaction finish before frame end.
        @(negedge clk);
        rmii_frame_end = 1'b1;

        @(negedge clk);
        rmii_frame_end = 1'b0;

        // Wait for registered output delivery.
        repeat (5) @(negedge clk);

        $display("");
        $display("---- Ethernet RX test results ----");
        $display("Output bytes: %0d", output_count);

        if (output_count != 16) begin
            $display("FAIL: expected 16 output bytes");
            errors = errors + 1;
        end

        if (frame_done != 1) begin
            $display("FAIL: no correctly positioned tlast observed");
            errors = errors + 1;
        end

        if (errors == 0)
            $display("ALL CHECKS PASSED");
        else
            $display("TEST FAILED: %0d error(s)", errors);

        $finish;
    end

endmodule