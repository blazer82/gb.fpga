`timescale 1ns/1ns

`include "src/hdl/pwm.v"

module pwm_tb;
    reg clk;
    reg clk2;
    reg[7:0] cnt;

    always #2 clk = !clk;
    always #1000 clk2 = !clk2;

    pwm #(.WIDTH(8)) p1 (.clk(clk), .digital_in(cnt), .pwm());

    always @(posedge clk2) begin
        cnt <= cnt + 1;
    end

    initial begin
        clk <= 0;
        clk2 <= 0;
        cnt <= 0;
        #1000000 $finish;
    end

    initial begin
        $dumpvars(1, p1);
    end
endmodule
