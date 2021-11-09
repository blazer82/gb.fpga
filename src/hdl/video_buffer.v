`timescale 1ns / 1ns

module video_buffer
    (
        input wire gb_pclk,
        input wire gb_de,
        input wire gb_hsync,
        input wire gb_vsync,
        input wire[1:0] gb_pixel,
        input wire rst,
        input wire pclk,
        input wire de,
        input wire hsync,
        input wire vsync,
        output wire[15:0] color
    );

    reg[14:0] addr_in;
    reg clk_in;
    wire[14:0] addr_out;
    wire[1:0] pixel_out;

    reg[7:0] x_in;
    reg[7:0] y_in;
    reg[1:0] x_scale_cnt;
    reg[1:0] y_scale_cnt;

    blk_mem_gen_0 m1 (
        .addra(addr_in),
        .clka(clk_in),
        .dina(gb_pixel),
        .wea(1'b1),
        .addrb(addr_out),
        .clkb(pclk),
        .doutb(pixel_out)
    );

    // Only clock RAM in on valid pixels
    always @(*) begin
        if (gb_de)
            clk_in <= gb_pclk;
    end

    // Count address in on each clock in, and reset on rst gb_vsync
    always @(posedge clk_in, posedge rst, posedge gb_vsync) begin
        if (rst || gb_vsync)
            addr_in <= 15'd0;
        else begin
            if (addr_in < 23199)
                addr_in <= addr_in + 15'd1;
            else
                addr_in <= 15'd0;
        end
    end

    always @(posedge pclk, posedge rst, negedge hsync, negedge vsync) begin
        if (rst || !vsync) begin
            x_in <= 0;
            y_in <= 0;
            x_scale_cnt <= 0;
            y_scale_cnt <= 0;
        end else if (!hsync) begin
            x_in <= 0;
            x_scale_cnt <= 0;
        end else begin
            if (de) begin
                if (x_in < 159) begin
                    if (x_scale_cnt < 2)
                        x_scale_cnt <= x_scale_cnt + 1;
                    else begin
                        x_scale_cnt <= 0;
                        x_in <= x_in + 1;
                    end
                end else begin
                    x_in <= 0;
                    if (y_scale_cnt < 2)
                        y_scale_cnt <= y_scale_cnt + 1;
                    else begin
                        y_scale_cnt <= 0;
                        y_in <= y_in + 1;
                    end
                end
            end
        end
    end

    assign addr_out = (y_in < 145) ? (144 - y_in) * 160 + (160 - x_in) : 144 * 160 + x_in;

    // Assign final output color based on pixel_out
    assign color = (pixel_out == 2'b00) ? 16'hffff : ((pixel_out == 2'b01) ? 16'hcccc : ((pixel_out == 2'b10) ? 16'h6666 : 16'h0000));

endmodule
