`timescale 1ns / 1ns

module st7701_init
    #(
        parameter CLK_DIV_2N = 1
    )
    (
        input wire clk,
        output reg cs,
        output wire sclk,
        output reg sout,
        output reg rst
    );

    clock_div c1 (.clk_in(clk), .clk_out(sclk));
    defparam c1.DIV_2N = CLK_DIV_2N;

    localparam DATA_MAX_CNT = 190;
    reg[8:0] data[189:0];
    reg[7:0] data_cnt;
    reg[4:0] bit_cnt;
    reg[23:0] delay_cnt;

    initial begin
        data[0] <= 8'h11;  // SLPOUT, requires 300ms delay afterwards!

        data[1] <= 8'hff;  // CMD2BKxSEL
        data[2] <= 8'h77 + (1 << 8);
        data[3] <= 8'h01 + (1 << 8);
        data[4] <= 8'h00 + (1 << 8);
        data[5] <= 8'h00 + (1 << 8);
        data[6] <= 8'h10 + (1 << 8);  // CMD2BK0SEL

        data[7] <= 8'hc0;  // BK0_LNESET
        data[8] <= 8'h3b + (1 << 8);
        data[9] <= 8'h00 + (1 << 8);

        data[10] <= 8'hc1;  // BK0_PORCTRL
        data[11] <= 8'h0a + (1 << 8);  // vbp
        data[12] <= 8'h08 + (1 << 8);  // vfp

        data[13] <= 8'hc2;  // BK0_INVSEL
        data[14] <= 8'h21 + (1 << 8);
        data[15] <= 8'h08 + (1 << 8);

        data[16] <= 8'hb0;  // BK0_PVGAMCTRL
        data[17] <= 8'h00 + (1 << 8);
        data[18] <= 8'h11 + (1 << 8);
        data[19] <= 8'h18 + (1 << 8);
        data[20] <= 8'h0e + (1 << 8);
        data[21] <= 8'h11 + (1 << 8);
        data[22] <= 8'h06 + (1 << 8);
        data[23] <= 8'h07 + (1 << 8);
        data[24] <= 8'h08 + (1 << 8);
        data[25] <= 8'h07 + (1 << 8);
        data[26] <= 8'h22 + (1 << 8);
        data[27] <= 8'h04 + (1 << 8);
        data[28] <= 8'h12 + (1 << 8);
        data[29] <= 8'h0f + (1 << 8);
        data[30] <= 8'haa + (1 << 8);
        data[31] <= 8'h31 + (1 << 8);
        data[32] <= 8'h18 + (1 << 8);

        data[33] <= 8'hb1;  // BK0_NVGAMCTRL
        data[34] <= 8'h00 + (1 << 8);
        data[35] <= 8'h11 + (1 << 8);
        data[36] <= 8'h19 + (1 << 8);
        data[37] <= 8'h0e + (1 << 8);
        data[38] <= 8'h12 + (1 << 8);
        data[39] <= 8'h07 + (1 << 8);
        data[40] <= 8'h08 + (1 << 8);
        data[41] <= 8'h08 + (1 << 8);
        data[42] <= 8'h07 + (1 << 8);
        data[43] <= 8'h22 + (1 << 8);
        data[44] <= 8'h04 + (1 << 8);
        data[45] <= 8'h11 + (1 << 8);
        data[46] <= 8'h11 + (1 << 8);
        data[47] <= 8'ha9 + (1 << 8);
        data[48] <= 8'h32 + (1 << 8);
        data[49] <= 8'h18 + (1 << 8);

        data[50] <= 8'hff;  // CMD2BKxSEL
        data[51] <= 8'h77 + (1 << 8);
        data[52] <= 8'h01 + (1 << 8);
        data[53] <= 8'h00 + (1 << 8);
        data[54] <= 8'h00 + (1 << 8);
        data[55] <= 8'h11 + (1 << 8);  // CMD2BK1SEL

        data[56] <= 8'hb0;  // BK1_VRHS
        data[57] <= 8'h60 + (1 << 8);

        data[58] <= 8'hb1;  // BK1_VCOM
        data[59] <= 8'h30 + (1 << 8);

        data[60] <= 8'hb2;  // BK1_VGHSS
        data[61] <= 8'h87 + (1 << 8);

        data[62] <= 8'hb3;  // BK1_TESTCMD
        data[63] <= 8'h80 + (1 << 8);

        data[64] <= 8'hb5;  // BK1_VGLS
        data[65] <= 8'h49 + (1 << 8);

        data[66] <= 8'hb7;  // BK1_PWCTLR1
        data[67] <= 8'h85 + (1 << 8);

        data[68] <= 8'hb8;  // BK1_PWCTLR2
        data[69] <= 8'h21 + (1 << 8);

        data[70] <= 8'hc1;  // BK1_SPD1
        data[71] <= 8'h78 + (1 << 8);

        data[72] <= 8'hc2;  // BK1_SPD2
        data[73] <= 8'h78 + (1 << 8);

        data[74] <= 8'he0;
        data[75] <= 8'h00 + (1 << 8);
        data[76] <= 8'h1b + (1 << 8);
        data[77] <= 8'h02 + (1 << 8);

        data[78] <= 8'he1;
        data[79] <= 8'h08 + (1 << 8);
        data[80] <= 8'ha0 + (1 << 8);
        data[81] <= 8'h00 + (1 << 8);
        data[82] <= 8'h00 + (1 << 8);
        data[83] <= 8'h07 + (1 << 8);
        data[84] <= 8'ha0 + (1 << 8);
        data[85] <= 8'h00 + (1 << 8);
        data[86] <= 8'h00 + (1 << 8);
        data[87] <= 8'h00 + (1 << 8);
        data[88] <= 8'h44 + (1 << 8);
        data[89] <= 8'h44 + (1 << 8);

        data[90] <= 8'he2;
        data[91] <= 8'h11 + (1 << 8);
        data[92] <= 8'h11 + (1 << 8);
        data[93] <= 8'h44 + (1 << 8);
        data[94] <= 8'h44 + (1 << 8);
        data[95] <= 8'hed + (1 << 8);
        data[96] <= 8'ha0 + (1 << 8);
        data[97] <= 8'h00 + (1 << 8);
        data[98] <= 8'h00 + (1 << 8);
        data[99] <= 8'hec + (1 << 8);
        data[100] <= 8'ha0 + (1 << 8);
        data[101] <= 8'h00 + (1 << 8);
        data[102] <= 8'h00 + (1 << 8);

        data[103] <= 8'he3;
        data[104] <= 8'h00 + (1 << 8);
        data[105] <= 8'h00 + (1 << 8);
        data[106] <= 8'h11 + (1 << 8);
        data[107] <= 8'h11 + (1 << 8);

        data[108] <= 8'he4;
        data[109] <= 8'h44 + (1 << 8);
        data[110] <= 8'h44 + (1 << 8);

        data[111] <= 8'he5;
        data[112] <= 8'h0a + (1 << 8);
        data[113] <= 8'he9 + (1 << 8);
        data[114] <= 8'hd8 + (1 << 8);
        data[115] <= 8'ha0 + (1 << 8);
        data[116] <= 8'h0c + (1 << 8);
        data[117] <= 8'heb + (1 << 8);
        data[118] <= 8'hd8 + (1 << 8);
        data[119] <= 8'ha0 + (1 << 8);
        data[120] <= 8'h0e + (1 << 8);
        data[121] <= 8'hed + (1 << 8);
        data[122] <= 8'hd8 + (1 << 8);
        data[123] <= 8'ha0 + (1 << 8);
        data[124] <= 8'h10 + (1 << 8);
        data[125] <= 8'hef + (1 << 8);
        data[126] <= 8'hd8 + (1 << 8);
        data[127] <= 8'ha0 + (1 << 8);

        data[128] <= 8'he6;
        data[129] <= 8'h00 + (1 << 8);
        data[130] <= 8'h00 + (1 << 8);
        data[131] <= 8'h11 + (1 << 8);
        data[132] <= 8'h11 + (1 << 8);

        data[133] <= 8'he7;
        data[134] <= 8'h44 + (1 << 8);
        data[135] <= 8'h44 + (1 << 8);

        data[136] <= 8'he8;
        data[137] <= 8'h09 + (1 << 8);
        data[138] <= 8'he8 + (1 << 8);
        data[139] <= 8'hd8 + (1 << 8);
        data[140] <= 8'ha0 + (1 << 8);
        data[141] <= 8'h0b + (1 << 8);
        data[142] <= 8'hea + (1 << 8);
        data[143] <= 8'hd8 + (1 << 8);
        data[144] <= 8'ha0 + (1 << 8);
        data[145] <= 8'h0d + (1 << 8);
        data[146] <= 8'hec + (1 << 8);
        data[147] <= 8'hd8 + (1 << 8);
        data[148] <= 8'ha0 + (1 << 8);
        data[149] <= 8'h0f + (1 << 8);
        data[150] <= 8'hee + (1 << 8);
        data[151] <= 8'hd8 + (1 << 8);
        data[152] <= 8'ha0 + (1 << 8);

        data[153] <= 8'heb;
        data[154] <= 8'h02 + (1 << 8);
        data[155] <= 8'h00 + (1 << 8);
        data[156] <= 8'he4 + (1 << 8);
        data[157] <= 8'he4 + (1 << 8);
        data[158] <= 8'h88 + (1 << 8);
        data[159] <= 8'h00 + (1 << 8);
        data[160] <= 8'h40 + (1 << 8);

        data[161] <= 8'hec;
        data[162] <= 8'h3c + (1 << 8);
        data[163] <= 8'h00 + (1 << 8);

        data[164] <= 8'hed;
        data[165] <= 8'hab + (1 << 8);
        data[166] <= 8'h89 + (1 << 8);
        data[167] <= 8'h76 + (1 << 8);
        data[168] <= 8'h54 + (1 << 8);
        data[169] <= 8'h02 + (1 << 8);
        data[170] <= 8'hff + (1 << 8);
        data[171] <= 8'hff + (1 << 8);
        data[172] <= 8'hff + (1 << 8);
        data[173] <= 8'hff + (1 << 8);
        data[174] <= 8'hff + (1 << 8);
        data[175] <= 8'hff + (1 << 8);
        data[176] <= 8'h20 + (1 << 8);
        data[177] <= 8'h45 + (1 << 8);
        data[178] <= 8'h67 + (1 << 8);
        data[179] <= 8'h98 + (1 << 8);
        data[180] <= 8'hba + (1 << 8);

        data[181] <= 8'hff;  // CMD2BKxSEL
        data[182] <= 8'h77 + (1 << 8);
        data[183] <= 8'h01 + (1 << 8);
        data[184] <= 8'h00 + (1 << 8);
        data[185] <= 8'h00 + (1 << 8);
        data[186] <= 8'h00 + (1 << 8);  // CMD2BKxSEL_NONE

        data[187] <= 8'h29;  // DISPON

        data[188] <= 8'h3a;  // COLMOD
        data[189] <= 8'h50 + (1 << 8);

        data_cnt <= 0;
        bit_cnt <= 0;
        delay_cnt <= 0;

        cs <= 1;
        sout <= 0;
        rst <= 1;
    end

    always @(negedge sclk) begin
        case (delay_cnt)
            1500000: rst <= 0;
            1600000: rst <= 1;
        endcase
    end

    always @(negedge sclk) begin
        if ((data_cnt == 0 && delay_cnt > 11500000) || (data_cnt < DATA_MAX_CNT && delay_cnt == 13000000)) begin
            cs <= 0;
            sout <= data[data_cnt][8 - bit_cnt];

            if (bit_cnt < 8)
                bit_cnt <= bit_cnt + 1;
            else begin
                bit_cnt <= 0;
                data_cnt <= data_cnt + 1;
            end
        end else begin
            sout <= 0;
            cs <= 1;
        end
    end

    always @(negedge sclk) begin
        if (delay_cnt < 13000000)
            delay_cnt <= delay_cnt + 1;
    end
endmodule
