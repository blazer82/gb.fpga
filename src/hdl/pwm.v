`timescale 1ns / 1ns

module pwm
    #(
        parameter WIDTH = 16
    )
    (
        input wire clk,
        input wire[WIDTH-1:0] digital_in,
        output wire pwm
    );

    reg[WIDTH-1:0] cnt;

    always @(posedge clk) begin
        cnt <= cnt + 1'b1;
    end

    assign pwm = (digital_in > cnt);
endmodule
