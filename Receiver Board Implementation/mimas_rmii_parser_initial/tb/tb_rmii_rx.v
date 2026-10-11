
`timescale 1ns / 1ps

module tb_rmii_rx;

    reg clk;
    reg rst_n;
    reg [1:0] rxd;
    reg crs_dv;

    wire [7:0] rx_data;
    wire rx_valid;
    wire rx_frame_end;
    wire rx_active;

    integer output_count;
    integer frame_end_count;
    integer test_case;

    rmii_rx dut (
        .clk(clk),
        .rst_n(rst_n),
        .rxd(rxd),
        .crs_dv(crs_dv),
        .rx_data(rx_data),
        .rx_valid(rx_valid),
        .rx_frame_end(rx_frame_end),
        .rx_active(rx_active)
    );

    initial clk = 1'b0;
    always #10 clk = ~clk;  // 50 MHz

    // Drive one RMII dibit before the rising sampling edge.
    task send_dibit;
        input [1:0] dibit;
        input dv;
        begin
            @(negedge clk);
            rxd = dibit;
            crs_dv = dv;
        end
    endtask

    // RMII transmits the least-significant dibit first.
    task send_byte;
        input [7:0] data;
        begin
            send_dibit(data[1:0], 1'b1);
            send_dibit(data[3:2], 1'b1);
            send_dibit(data[5:4], 1'b1);
            send_dibit(data[7:6], 1'b1);
        end
    endtask

    task reset_receiver;
        begin
            @(negedge clk);
            crs_dv = 1'b0;
            rxd = 2'b00;
            rst_n = 1'b0;

            repeat (3) @(negedge clk);

            rst_n = 1'b1;
            repeat (2) @(negedge clk);
        end
    endtask

    // Print each reconstructed byte.
    always @(posedge clk) begin
        if (rst_n && rx_valid) begin
            $display("CASE %0d: byte[%0d] = %02h",
                     test_case, output_count, rx_data);
            output_count = output_count + 1;
        end

        if (rst_n && rx_frame_end) begin
            frame_end_count = frame_end_count + 1;
            $display("CASE %0d: rx_frame_end", test_case);
        end
    end

    // Send a preamble, SFD and 4 Ethernet bytes.
    task send_test_frame;
        begin
            send_byte(8'h55);
            send_byte(8'h55);
            send_byte(8'h55);
            send_byte(8'h55);
            send_byte(8'h55);
            send_byte(8'h55);
            send_byte(8'h55);

            send_byte(8'hD5); // SFD

            send_byte(8'h08); // First Ethernet byte in this test
            send_byte(8'h00);
            send_byte(8'h45);
            send_byte(8'h00);

            // End receive activity.
            send_dibit(2'b00, 1'b0);
        end
    endtask

    initial begin
        rst_n = 1'b0;
        rxd = 2'b00;
        crs_dv = 1'b0;
        output_count = 0;
        frame_end_count = 0;
        test_case = 0;

        // CASE A: CRS_DV is asserted with the first preamble dibit.
        $display("");
        $display("=== CASE A: immediate preamble ===");

        reset_receiver();
        test_case = 1;

        send_test_frame();

        repeat (4) @(negedge clk);

        $display("CASE A total bytes = %0d", output_count);
        $display("CASE A frame-end pulses = %0d", frame_end_count);

        // CASE B: CRS_DV is high before preamble begins.
        // This intentionally inserts two leading zero dibits.
        $display("");
        $display("=== CASE B: leading zero dibits ===");

        reset_receiver();
        test_case = 2;
        output_count = 0;
        frame_end_count = 0;

        send_dibit(2'b00, 1'b1);
        send_dibit(2'b00, 1'b1);

        send_test_frame();

        repeat (4) @(negedge clk);

        $display("CASE B total bytes = %0d", output_count);
        $display("CASE B frame-end pulses = %0d", frame_end_count);

        $display("");
        $display("=== TEST COMPLETE ===");
        $finish;
    end

endmodule