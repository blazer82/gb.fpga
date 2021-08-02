`timescale 1ns / 1ns

module top
    (
        input wire clk,
        input wire[1:0] btn,
        output wire[1:0] led,
        output wire pio1,  // SCLK
        output wire pio2,  // SOUT
        output wire pio3,  // CS
        output wire pio4,  // RESET
        output wire pio8,  // SOUND L
        output wire pio9,  // SOUND R
        output wire pio26, // GB_PCLK
        output wire pio27, // GB_HSYNC
        output wire pio28, // GB_VSYNC
        output wire pio29, // GB_PIXEL0
        output wire pio30, // GB_PIXEL1
        output wire pio42, // RED
        output wire pio43, // GREEN
        output wire pio44, // BLUE
        output wire pio45, // DE
        output wire pio46, // VSYNC
        output wire pio47, // HSYNC
        output wire pio48  // PCLK
    );

    wire clk_gb;
    wire clk_buf60;
    wire clk_buf50;
    wire pclk;
    wire de;
    wire hsync;
    wire vsync;
    wire[15:0] color;

    clock_div c1 (.clk_in(clk), .clk_out(led[1]));
    defparam c1.SIZE = 24;
    defparam c1.DIV_2N = 24'h400000;

    assign led[0] = btn[0];

    clk_wiz_0 clk_wiz_inst (
        .clk_in1(clk),
        .clk_out1(clk_buf60),
        .clk_out2(clk_buf50)
    );

    clock_div c2 (.clk_in(clk_buf50), .clk_out(clk_gb));
    defparam c2.DIV_2N = 6;

    reg halt = 0;
    reg rst = 0;
    reg[7:0] keypad = 8'h00;
    reg[15:0] debounce = 0;
    wire gb_pclk;
    wire gb_de;
    wire gb_hsync;
    wire gb_vsync;
    wire[1:0] gb_pixel;
    wire[15:0] gb_addr;
    wire[7:0] gb_dout;
    wire[7:0] gb_din;
    wire gb_rd;
    wire[15:0] gb_left;
    wire[15:0] gb_right;
    boy b1 (
        .clk(clk_gb | halt),
        .rst(rst),
        .key(keypad),
        .cpl(gb_pclk),
        .hs(gb_hsync),
        .vs(gb_vsync),
        .pixel(gb_pixel),
        .valid(gb_de),
        .a(gb_addr),
        .dout(gb_dout),
        .din(gb_din),
        .rd(gb_rd),
        .left(gb_left),
        .right(gb_right)
    );
    assign pio26 = gb_pclk;
    assign pio27 = gb_hsync;
    assign pio28 = gb_vsync;
    assign pio29 = gb_pixel[0];
    assign pio30 = gb_pixel[1];

    reg[11:0] rst_delay = 12'h000;
    always @(posedge clk) begin
        if (btn[0])
            rst <= btn[0];
        else begin
            if (rst_delay == 12'hf00)
                rst <= 1;
            if (rst_delay == 12'hfff)
                rst <= 0;
            if (rst_delay < 12'hfff)
                rst_delay <= rst_delay + 1;
        end
    end
    
    always @(posedge clk) begin
        if (btn[1] && !debounce)
            halt = !halt;
    end
    
    always @(posedge clk) begin
        if (!btn[1] || debounce != 1)
            debounce = debounce + 1;
    end

    display d1 (.clk(clk_buf60), .pclk(pclk), .hsync(hsync), .vsync(vsync), .de(de), .color());
    defparam d1.CLK_DIV_2N = 2;

    st7701_init st7701 (.clk(clk), .sclk(pio1), .sout(pio2), .cs(pio3), .rst(pio4));

    video_buffer buff1 (
        .gb_pclk(gb_pclk),
        .gb_de(gb_de),
        .gb_hsync(gb_hsync),
        .gb_vsync(gb_vsync),
        .gb_pixel(gb_pixel),
        .rst(rst),
        .pclk(pclk),
        .de(de),
        .hsync(hsync),
        .vsync(vsync),
        .color(color)
    );

    assign pio42 = color[15];
    assign pio43 = color[10];
    assign pio44 = color[4];
    assign pio45 = de;
    assign pio46 = vsync;
    assign pio47 = hsync;
    assign pio48 = pclk;

    blk_mem_gen_1 rom (
        .addra(gb_addr),
        .clka(clk_gb),
        .douta(gb_din),
        .ena(gb_rd)
    );

    pwm sl (.clk(gb_pclk), .digital_in(gb_left[14:6]), .pwm(pio8));
    defparam sl.WIDTH = 9;
    pwm sr (.clk(gb_pclk), .digital_in(gb_right[14:6]), .pwm(pio9));
    defparam sr.WIDTH = 9;

endmodule
