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

    reg [SIZE - 1:0] counter = DIV_2N - 1;

    initial begin
        clk_out <= 0;
    end

    always @(posedge clk_in) begin
        counter <= counter == 0 ? counter : counter - 1;

        if (counter == 0) begin
            counter <= DIV_2N - 1;
            clk_out <= !clk_out;
        end
    end
endmodule
