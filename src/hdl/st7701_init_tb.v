`timescale 1ns/1ns

`include "src/hdl/clock_div.v"
`include "src/hdl/st7701_init.v"

module st7701_init_tb;
    reg clk;
    wire sclk;
    wire cs;
    wire sout;

    always #42 clk = !clk;

    st7701_init s1 (.clk(clk), .sclk(sclk), .cs(cs), .sout(sout));

    initial begin
        clk <= 0;
        #600000000 $finish;
    end

    initial begin
        $dumpvars(1, s1);
    end
endmodule
