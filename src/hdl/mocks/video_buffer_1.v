`timescale 1ns / 1ns

// verilator lint_off UNUSED
// verilator lint_off UNDRIVEN

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

// verilator lint_on UNUSED
// verilator lint_on UNDRIVEN
