`timescale 1ns / 1ps

module debouncer #(
    parameter WIDTH = 1,
    parameter CLOCKS = 256,
    parameter CLOCKS_CLOG2 = 8
) (
    input  wire clk,
    input  wire [WIDTH-1:0] din,
    output wire [WIDTH-1:0] dout
);
    genvar i;
    generate for (i=0; i<WIDTH; i=i+1) begin : IDX
        reg [CLOCKS_CLOG2-1:0] count = 'b0;
        reg transitioning = 1'b0;
        reg data = 1'b0;
        always@(posedge clk)
            if (transitioning == 1'b1)
                if (data != din[i])
                    if (count >= CLOCKS-1) begin
                        data <= din[i];
                        transitioning <= 1'b0;
                    end else
                        count <= count + 1'b1;
                else
                    transitioning <= 1'b0;
            else if (data != din[i]) begin
                count <= 'b0;
                transitioning <= 1'b1;
            end
        assign dout[i] = data;
    end endgenerate
endmodule
