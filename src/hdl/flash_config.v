`timescale 1ns / 1ns

module flash_config (
        input wire clk,
        output reg cs,
        input wire sdi,
        output reg sdo
    );

    reg[7:0] data_in[4:0];
    wire clk_enable;
    reg[7:0] count = 8'h00;

    assign clk_enable = count < 68;

    STARTUPE2 #(
        .PROG_USR("FALSE"),
        .SIM_CCLK_FREQ(0.0)
    )
    STARTUPE2_inst (
        .GSR(0),
        .GTS(0),
        .USRCCLKO(clk),
        .USRCCLKTS(~clk_enable),
        .USRDONEO(1)
    );

    initial begin
        data_in[0] = 8'h06;
        data_in[1] = 8'h01;
        data_in[2] = 8'h40;
        data_in[3] = 8'h05;
        data_in[4] = 8'h00;
    end

    always @(negedge clk) begin
        if (clk_enable) begin
            cs <= ~((count > 7 && count < 16) || (count > 23 && count < 40) || (count > 47 && count < 64));

            if (count > 7 && count < 16) begin
                sdo <= data_in[0][7 - (count - 8)];
            end
            if (count > 23 && count < 32) begin
                sdo <= data_in[1][7 - (count - 24)];
            end
            if (count > 31 && count < 40) begin
                sdo <= data_in[2][7 - (count - 32)];
            end
            if (count > 47 && count < 56) begin
                sdo <= data_in[3][7 - (count - 48)];
            end
            if (count > 55 && count < 64) begin
                sdo <= data_in[4][7 - (count - 56)];
            end

            count <= count + 1;
        end
    end

endmodule
