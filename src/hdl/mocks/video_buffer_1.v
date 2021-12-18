`timescale 1ns / 1ns

module video_buffer_1
    (
        input wire [14:0] addra,
        input wire clka,
        input wire [1:0] dina,
        input wire wea,
        input wire ena,
        input wire [14:0] addrb,
        input wire clkb,
        output wire [1:0] doutb,
        input wire enb
    );
endmodule
