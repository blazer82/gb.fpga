`timescale 1ns/1ns

`include "src/hdl/debug.v"
`include "src/hdl/ascii_encoder.v"
`include "src/hdl/uart_tx.v"

module ascii_encoder_tb;
    reg clk;
    reg halt;
    reg[15:0] addr;
    reg[7:0] data;
    reg rd;
    reg wr;
    reg cs;
    reg[7:0] opcode;
    reg[15:0] pc;
    reg[15:0] last_pc;
    wire tx;

    always #42 clk = !clk;

    debug debug (
        .clk(clk),
        .halt(halt),
        .addr(addr),
        .data(data),
        .rd(rd),
        .wr(wr),
        .cs(cs),
        .opcode(opcode),
        .pc(pc),
        .last_pc(last_pc),
        .tx(tx)
    );

    initial begin
        clk <= 0;
        halt <= 0;
        addr <= 16'h9999;
        data <= 8'h99;
        rd <= 1'b0;
        wr <= 1'b0;
        cs <= 1'b0;
        opcode <= 8'h99;
        pc <= 16'hAAAA;
        last_pc <= 16'h9999;

        #2000 halt <= 1;

        #60000000 $finish;
    end

    initial begin
        $dumpvars(1, debug);
    end
endmodule
