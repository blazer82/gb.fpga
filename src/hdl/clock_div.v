`timescale 1ns / 1ns

module clock_div
    #(
        parameter SIZE = 4,
        parameter DIV_2N = 1
    )
    (
        input wire clk_in,
        output reg clk_out
    );

    reg [SIZE - 1:0] counter = 0;

    initial begin
        clk_out <= 0;
    end

    always @(posedge clk_in) begin
        counter <= counter + 1;

        if (counter == DIV_2N - 1) begin
            counter <= 0;
            clk_out <= !clk_out;
        end
    end
endmodule
