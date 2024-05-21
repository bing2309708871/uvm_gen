`timescale 1 ns / 1 ps

module tb;

	localparam int TIME = 2;


    reg clk;
    reg rst_n;

    TEMP_VIF vif(clk,rst_n);

    // DUT




    // An example to create a clock
    initial clk = 1'b0;
    always #2 clk <= ~clk;

    initial begin
        rst_n <= 1'bx;
        #10;
        rst_n <= 1'b0;
        #10;
        rst_n <= 1'b1;
    end

endmodule

