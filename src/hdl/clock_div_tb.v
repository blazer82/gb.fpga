`timescale 1ns/1ns

`include "src/clock_div.v"

module click_div_tb;
    reg clk;
    wire clk_out1;
    wire clk_out2;

    always #5 clk = !clk;

    clock_div c1 (.clk_in(clk), .clk_out(clk_out1));

    clock_div c2 (.clk_in(clk), .clk_out(clk_out2));
    defparam c2.DIV_2N = 2;

    initial begin
        clk <= 0;
        #1000 $finish;
    end

    initial begin
        $dumpvars(1, c1);
        $dumpvars(1, c2);
    end
endmodule
