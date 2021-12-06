`timescale 1ns/1ns

`include "src/hdl/ascii_encoder.v"

module ascii_encoder_tb;
    reg[7:0] data;
    wire[15:0] ascii;

    ascii_encoder #(.NBR_OF_NIBBLES(2)) e1 (.data(data), .ascii(ascii));

    initial begin
        data <= 8'hF0;
        #1000 $finish;
    end

    initial begin
        $dumpvars(1, e1);
    end
endmodule
