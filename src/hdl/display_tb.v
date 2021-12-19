`timescale 1ns/1ns

`include "src/hdl/clock_div.v"
`include "src/hdl/display.v"

module display_tb;
    reg clk;
    wire pclk;
    wire hsync;
    wire vsync;
    wire de;
    wire[15:0] color;

    always #42 clk = !clk;

    display d1 (.clk(clk), .pclk(pclk), .hsync(hsync), .vsync(vsync), .de(de), .color(color));

    initial begin
        clk = 0;
        #60000000 $finish;
    end

    initial begin
        $dumpvars(1, d1);
    end
endmodule
