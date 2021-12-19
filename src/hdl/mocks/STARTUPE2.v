`timescale 1ns / 1ns

// verilator lint_off UNUSED
// verilator lint_off UNDRIVEN

module STARTUPE2
    #(
        parameter PROG_USR = "FALSE",
        parameter SIM_CCLK_FREQ = 0.0
    )
    (
        input wire GSR,
        input wire GTS,
        input wire USRCCLKO,
        input wire USRCCLKTS,
        input wire USRDONEO
    );
endmodule

// verilator lint_on UNUSED
// verilator lint_on UNDRIVEN
