`timescale 1ns / 1ns

module video_buffer
    (
        input wire gb_pclk,
        input wire gb_de,
        input wire gb_hsync,
        input wire gb_vsync,
        input wire [1:0] gb_pixel,
        input wire rst,
        input wire pclk,
        input wire de,
        input wire hsync,
        input wire vsync,
        output wire[15:0] color
    );

    reg [14:0] addr_in = 0;
    reg clk_in;
    wire [14:0] addr_out;
    
    wire [1:0] pixel_out1;
    wire [1:0] pixel_out2;
    wire [1:0] pixel_out3;
    wire [1:0] pixel_out;

    reg [1:0] write_buffer_index = 2'b00;
    reg [1:0] read_buffer_index = 2'b01;

    reg [7:0] x_in;
    reg [7:0] y_in;
    reg [1:0] x_scale_cnt;
    reg [1:0] y_scale_cnt;
    
    wire en_wr_buffer1 = write_buffer_index == 2'b00;
    wire en_wr_buffer2 = write_buffer_index == 2'b01;
    wire en_wr_buffer3 = write_buffer_index == 2'b10;
    
    wire en_rd_buffer1 = read_buffer_index == 2'b00;
    wire en_rd_buffer2 = read_buffer_index == 2'b01;
    wire en_rd_buffer3 = read_buffer_index == 2'b10;
    
    video_buffer_1 buffer1 (
        .addra(addr_in),
        .clka(clk_in),
        .dina(gb_pixel),
        .wea(1'b1),
        .ena(en_wr_buffer1),
        .addrb(addr_out),
        .clkb(pclk),
        .doutb(pixel_out1),
        .enb(en_rd_buffer1)
    );
    
    video_buffer_1 buffer2 (
        .addra(addr_in),
        .clka(clk_in),
        .dina(gb_pixel),
        .wea(1'b1),
        .ena(en_wr_buffer2),
        .addrb(addr_out),
        .clkb(pclk),
        .doutb(pixel_out2),
        .enb(en_rd_buffer2)
    );
    
    video_buffer_1 buffer3 (
        .addra(addr_in),
        .clka(clk_in),
        .dina(gb_pixel),
        .wea(1'b1),
        .ena(en_wr_buffer3),
        .addrb(addr_out),
        .clkb(pclk),
        .doutb(pixel_out3),
        .enb(en_rd_buffer3)
    );

    reg [8:0] lut_addr;
    wire [63:0] lut_color;

    blk_mem_gen_1 m2 (
        .addra(lut_addr),
        .clka(pclk),
        .douta(lut_color)
    );

    // Only clock RAM in on valid pixels
    always @(*) begin
        if (gb_de)
            clk_in <= gb_pclk;
    end

    // Count address in on each clock in, and reset on rst gb_vsync
    always @(posedge clk_in, posedge rst, posedge gb_vsync) begin
        if (rst || gb_vsync) begin
            if (addr_in > 11600) begin
                if (write_buffer_index < 2'b10)
                    write_buffer_index <= write_buffer_index + 1;
                else
                    write_buffer_index <= 2'b00;
            end
            addr_in <= 0;
        end else begin
            if (addr_in < 23199)
                addr_in <= addr_in + 1;
            else
                addr_in <= 0;
        end
    end

    always @(posedge pclk, posedge rst, negedge hsync, negedge vsync) begin
        if (rst || !vsync) begin
            x_in <= 0;
            y_in <= 0;
            x_scale_cnt <= 0;
            y_scale_cnt <= 0;
            case (write_buffer_index)
                2'b00: read_buffer_index <= 2'b10;
                2'b01: read_buffer_index <= 2'b00;
                default: read_buffer_index <= 2'b01;
            endcase
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
                    lut_addr <= ((143 - y_in) * 3 + y_scale_cnt) % 432;
                end
            end
        end
    end

    assign addr_out = (y_in < 145) ? (143 - y_in) * 160 + (159 - x_in) : 144 * 160 + x_in;

    // Assign final output color based on pixel_out
    //assign color = (pixel_out == 2'b00) ? 16'hffff : ((pixel_out == 2'b01) ? 16'hce79 : ((pixel_out == 2'b10) ? 16'h632c : 16'h0000));
    assign color = (lut_color >> (pixel_out * 16)) & 16'hffff;
    
    assign pixel_out = en_rd_buffer1 ? pixel_out1 : (en_rd_buffer2 ? pixel_out2 : pixel_out3);

endmodule
