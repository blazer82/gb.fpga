`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer: Wenting Zhang
//
// Create Date:    17:12:01 04/13/2018
// Module Name:    timer
// Project Name:   VerilogBoy
// Description:
//   GameBoy internal timer
// Dependencies:
//
// Additional Comments:
//   This should probably run at 1MHz domain, but currently at 4MHz.
//////////////////////////////////////////////////////////////////////////////////
module timer(
    input wire clk,
    input wire [1:0] ct, // certain things can only happen at 1MHz rate
    input wire rst,
    input wire [15:0] a,
    output reg [7:0] dout,
    input wire [7:0] din,
    input wire rd,
    input wire wr,
    output reg int_tim_req,
    input wire int_tim_ack
    );

    wire [7:0] reg_div; // Divider Register
    reg [7:0] reg_tima; // Timer counter
    reg [7:0] reg_tma; // Timer modulo
    reg [7:0] reg_tac; // Timer control

    wire addr_in_timer = ((a == 16'hFF04) ||
                          (a == 16'hFF05) ||
                          (a == 16'hFF06) ||
                          (a == 16'hFF07)) ? 1'b1 : 1'b0;

    reg [15:0] div;

    wire reg_timer_enable = reg_tac[2];
    wire [1:0] reg_clock_sel = reg_tac[1:0];

    assign reg_div[7:0] = div[15:8];
    wire clk_4khz = div[9];
    wire clk_256khz = div[3];
    wire clk_64khz = div[5];
    wire clk_16khz = div[7];
    wire clk_tim;
    assign clk_tim = (reg_timer_enable) ? (
        (reg_clock_sel == 2'b00) ? (clk_4khz) : (
        (reg_clock_sel == 2'b01) ? (clk_256khz) : (
        (reg_clock_sel == 2'b10) ? (clk_64khz) :
                                   (clk_16khz)))) : (1'b0);

    reg last_clk_tim;
    reg write_block;

    // Bus RW
    // Bus RW - Combinational Read
    always @(*)
    begin
        dout = 8'hFF;
        if (a == 16'hFF04) dout = reg_div; else
        if (a == 16'hFF05) dout = reg_tima; else
        if (a == 16'hFF06) dout = reg_tma; else
        if (a == 16'hFF07) dout = reg_tac;
    end

    // Bus RW - Sequential Write
    always @(posedge clk) begin
        last_clk_tim <= clk_tim;
    end

    always @(posedge clk) begin
        if (rst) begin
            //reg_div <= 0;
            reg_tima <= 0;
            reg_tma <= 0;
            reg_tac <= 0;
            div <= 0;
            int_tim_req <= 0;
            write_block <= 0;
        end
        else begin
            div <= div + 1'b1;
            if ((wr) && (a == 16'hFF04)) div <= 4; // compensate 1 cycle delay
            else if ((wr) && (a == 16'hFF06)) begin
                // test acceptance/timer/tma_write_reloading seems to imply
                // that the reloading is done using a latch rather a FF
                // writing to tma in the same cycle will fall through to tima
                // as well.
                reg_tma <= din;
                if (write_block)
                    reg_tima <= din;
            end
            else if ((wr) && (a == 16'hFF07)) reg_tac <= din;
            else if ((wr) && (a == 16'hFF05) && (!write_block)) reg_tima <= din;
            else begin
                if ((last_clk_tim == 1'b1)&&(clk_tim == 1'b0)) begin
                    reg_tima <= reg_tima + 1'b1;
                    if (reg_tima == 8'hFF) begin
                        int_tim_req <= 1'b1; // interrupt doesn't get delayed.
                    end
                end
                else begin
                    if ((int_tim_req)&&(int_tim_ack)) begin
                        int_tim_req <= 1'b0;
                    end
                    if ((ct == 2'b00)&&(reg_timer_enable)) begin
                        if (reg_tima == 8'd0) begin
                            reg_tima <= reg_tma;
                            //int_tim_req <= 1'b1;
                            write_block <= 1'b1;
                        end
                        else begin
                            write_block <= 1'b0;
                        end
                    end
                end
            end
        end
    end

endmodule
