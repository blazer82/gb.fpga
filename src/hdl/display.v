`timescale 1ns / 1ns

module display
    #(
        parameter CLK_DIV_2N = 1,
        parameter WIDTH = 480,
        parameter HEIGHT = 480,
        parameter H_PW = 20,
        parameter H_BP = 8,
        parameter H_FP = 8,
        parameter V_PW = 2,
        parameter V_BP = 8,
        parameter V_FP = 8
    )
    (
        input wire clk,
        output wire pclk,
        output reg hsync,
        output reg vsync,
        output reg de,
        output reg[15:0] color
    );

    reg[9:0] col = 0;
    reg[9:0] row = 0;
    reg de_col = 1;
    reg de_row = 1;

    initial begin
        hsync <= 1;
        vsync <= 1;
        de <= 0;
        color <= 0;
    end

    clock_div c1 (.clk_in(clk), .clk_out(pclk));
    defparam c1.DIV_2N = CLK_DIV_2N;

    always @(posedge pclk) begin
        case (col)
            0: de_col <= 1;
            WIDTH: de_col <= 0;
            WIDTH + H_FP - 1: hsync <= 0;
            WIDTH + H_FP + H_PW - 1: hsync <= 1;
        endcase

        case (row)
            0: de_row <= 1;
            HEIGHT: de_row <= 0;
            HEIGHT + V_FP - 1: vsync <= 0;
            HEIGHT + V_FP + V_PW - 1: vsync <= 1;
        endcase

        if (col == WIDTH + H_FP + H_PW + H_BP) begin
            col <= 0;
            if (row == HEIGHT + V_FP + V_PW + V_BP)
                row <= 0;
            else
                row <= row + 1;
        end else
            col <= col + 1;

        de <= de_col & de_row;
        color <= (row < 240) ? ((row % 120 < 60) ? 16'hf800 : 16'h07e0) : ((col % 120 < 60) ? 16'hffff : 16'h001f);
    end
endmodule
