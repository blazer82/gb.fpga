`timescale 1ns / 1ns

module top
    (
        input wire clk,
        output wire disp_sclk,
        output wire disp_sdi,
        output wire disp_cs,
        output wire disp_rst,
        output wire disp_de,
        output wire disp_vs,
        output wire disp_hs,
        output wire disp_pclk,
        output wire[4:0] disp_r,
        output wire[5:0] disp_g,
        output wire[4:0] disp_b,
        output wire audio_l,
        output wire audio_r,
        output wire qspi_cs,
        output wire[1:0] qspi_dq,
        output wire gb_clk,
        output wire gb_wr,
        output wire gb_rd,
        output wire gb_cs,
        inout wire gb_rst,
        output wire[15:0] gb_a,
        inout wire[7:0] gb_d,
        input wire joy_b,
        input wire joy_a,
        input wire joy_start,
        input wire joy_select,
        input wire joy_right,
        input wire joy_up,
        input wire joy_down,
        input wire joy_left,
        output wire uart_tx,
        input wire uart_rx
    );

    wire clk_gb;
    wire clk_buf60;
    wire clk_buf50;
    wire pclk;
    wire de;
    wire hsync;
    wire vsync;
    wire[15:0] color;

    clk_wiz_0 clk_wiz_inst (
        .clk_in1(clk),
        .clk_out1(clk_buf50),
        .clk_out2(clk_buf60)
    );

    clock_div c2 (.clk_in(clk_buf50), .clk_out(clk_gb));
    defparam c2.DIV_2N = 6;

    reg halt = 0;
    reg rst = 0;
    wire[7:0] keypad = {~joy_down, ~joy_up, ~joy_left, ~joy_right, ~joy_start, ~joy_select, ~joy_b, ~joy_a};
    wire gb_pclk;
    wire gb_de;
    wire gb_hsync;
    wire gb_vsync;
    wire[1:0] gb_pixel;
    //wire[15:0] gb_addr;
    wire[7:0] gb_dout;
    wire[7:0] gb_din;
    //wire gb_rd;
    wire[15:0] gb_left;
    wire[15:0] gb_right;
    wire rd;
    wire wr;
    assign gb_rst = ~rst;
    assign gb_rd = ~rd;
    assign gb_wr = ~wr;
    assign gb_din = gb_d;
    assign gb_d = wr ? gb_dout : 8'bz;
    boy b1 (
        .clk(clk_gb | halt),
        .phi(gb_clk),
        .rst(rst),
        .key(keypad),
        .cpl(gb_pclk),
        .hs(gb_hsync),
        .vs(gb_vsync),
        .pixel(gb_pixel),
        .valid(gb_de),
        .a(gb_a),
        .dout(gb_dout),
        .din(gb_din),
        .rd(rd),
        .wr(wr),
        .left(gb_left),
        .right(gb_right)
    );

    reg[11:0] rst_delay = 12'h000;
    always @(posedge clk) begin
        if (rst_delay == 12'hf00)
            rst <= 1;
        if (rst_delay == 12'hfff)
            rst <= 0;
        if (rst_delay < 12'hfff)
            rst_delay <= rst_delay + 1;
    end

    display d1 (.clk(clk_buf60), .vsync_in(gb_vsync), .pclk(pclk), .hsync(hsync), .vsync(vsync), .de(de), .color());
    defparam d1.CLK_DIV_2N = 2;

    st7701_init st7701 (.clk(clk), .sclk(disp_sclk), .sout(disp_sdi), .cs(disp_cs), .rst(disp_rst));

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

    assign disp_r = color[15:11];
    assign disp_g = color[10:5];
    assign disp_b = color[4:0];
    assign disp_de = de;
    assign disp_vs = vsync;
    assign disp_hs = hsync;
    assign disp_pclk = pclk;

    /*blk_mem_gen_1 rom (
        .addra(gb_addr),
        .clka(clk_gb),
        .douta(gb_din),
        .ena(gb_rd)
    );*/

    pwm sl (.clk(gb_pclk), .digital_in(gb_left[14:6]), .pwm(audio_l));
    defparam sl.WIDTH = 9;
    pwm sr (.clk(gb_pclk), .digital_in(gb_right[14:6]), .pwm(audio_r));
    defparam sr.WIDTH = 9;

    // Flash config (set QE bit)
    flash_config flash(.clk(clk), .cs(qspi_cs), .sdi(qspi_dq[1]), .sdo(qspi_dq[0]));

    // Halt trigger
    wire trigger;
    halt_trigger halt_trigger (
        .clk(clk),
        .rx(uart_rx),
        .trigger(trigger)
    );

    always @(posedge trigger) begin
        halt <= ~halt;
    end

    // Debug output
    debug debug (
        .clk(clk),
        .halt(halt),
        .tx(uart_tx)
    );

endmodule
