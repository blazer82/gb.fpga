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
    wire[WIDTH-1:0] cnt_r;  // reversed counter, see https://zipcpu.com/dsp/2017/09/04/pwm-reinvention.html

    initial begin
        cnt <= 0;
    end

    always @(posedge clk) begin
        cnt <= cnt + 1'b1;
    end

    genvar k;
    generate
        for(k=0; k<WIDTH; k=k+1) begin
            assign cnt_r[k] = cnt[WIDTH-1-k];
        end
    endgenerate

    assign pwm = (digital_in > cnt_r);
endmodule
