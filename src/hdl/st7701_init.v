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

    clock_div #(.DIV_2N(CLK_DIV_2N)) c1 (.clk_in(clk), .clk_out(sclk));

    localparam DATA_MAX_CNT = 190;
    reg[8:0] data[189:0];
    reg[7:0] data_cnt;
    reg[4:0] bit_cnt;
    reg[23:0] delay_cnt;

    initial begin
        data[0] = 9'h11;  // SLPOUT, requires 300ms delay afterwards!

        data[1] = 9'hff;  // CMD2BKxSEL
        data[2] = 9'h77 + (1 << 8);
        data[3] = 9'h01 + (1 << 8);
        data[4] = 9'h00 + (1 << 8);
        data[5] = 9'h00 + (1 << 8);
        data[6] = 9'h10 + (1 << 8);  // CMD2BK0SEL

        data[7] = 9'hc0;  // BK0_LNESET
        data[8] = 9'h3b + (1 << 8);
        data[9] = 9'h00 + (1 << 8);

        data[10] = 9'hc1;  // BK0_PORCTRL
        data[11] = 9'h0a + (1 << 8);  // vbp
        data[12] = 9'h08 + (1 << 8);  // vfp

        data[13] = 9'hc2;  // BK0_INVSEL
        data[14] = 9'h21 + (1 << 8);
        data[15] = 9'h08 + (1 << 8);

        data[16] = 9'hb0;  // BK0_PVGAMCTRL
        data[17] = 9'h00 + (1 << 8);
        data[18] = 9'h11 + (1 << 8);
        data[19] = 9'h18 + (1 << 8);
        data[20] = 9'h0e + (1 << 8);
        data[21] = 9'h11 + (1 << 8);
        data[22] = 9'h06 + (1 << 8);
        data[23] = 9'h07 + (1 << 8);
        data[24] = 9'h08 + (1 << 8);
        data[25] = 9'h07 + (1 << 8);
        data[26] = 9'h22 + (1 << 8);
        data[27] = 9'h04 + (1 << 8);
        data[28] = 9'h12 + (1 << 8);
        data[29] = 9'h0f + (1 << 8);
        data[30] = 9'haa + (1 << 8);
        data[31] = 9'h31 + (1 << 8);
        data[32] = 9'h18 + (1 << 8);

        data[33] = 9'hb1;  // BK0_NVGAMCTRL
        data[34] = 9'h00 + (1 << 8);
        data[35] = 9'h11 + (1 << 8);
        data[36] = 9'h19 + (1 << 8);
        data[37] = 9'h0e + (1 << 8);
        data[38] = 9'h12 + (1 << 8);
        data[39] = 9'h07 + (1 << 8);
        data[40] = 9'h08 + (1 << 8);
        data[41] = 9'h08 + (1 << 8);
        data[42] = 9'h07 + (1 << 8);
        data[43] = 9'h22 + (1 << 8);
        data[44] = 9'h04 + (1 << 8);
        data[45] = 9'h11 + (1 << 8);
        data[46] = 9'h11 + (1 << 8);
        data[47] = 9'ha9 + (1 << 8);
        data[48] = 9'h32 + (1 << 8);
        data[49] = 9'h18 + (1 << 8);

        data[50] = 9'hff;  // CMD2BKxSEL
        data[51] = 9'h77 + (1 << 8);
        data[52] = 9'h01 + (1 << 8);
        data[53] = 9'h00 + (1 << 8);
        data[54] = 9'h00 + (1 << 8);
        data[55] = 9'h11 + (1 << 8);  // CMD2BK1SEL

        data[56] = 9'hb0;  // BK1_VRHS
        data[57] = 9'h60 + (1 << 8);

        data[58] = 9'hb1;  // BK1_VCOM
        data[59] = 9'h30 + (1 << 8);

        data[60] = 9'hb2;  // BK1_VGHSS
        data[61] = 9'h87 + (1 << 8);

        data[62] = 9'hb3;  // BK1_TESTCMD
        data[63] = 9'h80 + (1 << 8);

        data[64] = 9'hb5;  // BK1_VGLS
        data[65] = 9'h49 + (1 << 8);

        data[66] = 9'hb7;  // BK1_PWCTLR1
        data[67] = 9'h85 + (1 << 8);

        data[68] = 9'hb8;  // BK1_PWCTLR2
        data[69] = 9'h21 + (1 << 8);

        data[70] = 9'hc1;  // BK1_SPD1
        data[71] = 9'h78 + (1 << 8);

        data[72] = 9'hc2;  // BK1_SPD2
        data[73] = 9'h78 + (1 << 8);

        data[74] = 9'he0;
        data[75] = 9'h00 + (1 << 8);
        data[76] = 9'h1b + (1 << 8);
        data[77] = 9'h02 + (1 << 8);

        data[78] = 9'he1;
        data[79] = 9'h08 + (1 << 8);
        data[80] = 9'ha0 + (1 << 8);
        data[81] = 9'h00 + (1 << 8);
        data[82] = 9'h00 + (1 << 8);
        data[83] = 9'h07 + (1 << 8);
        data[84] = 9'ha0 + (1 << 8);
        data[85] = 9'h00 + (1 << 8);
        data[86] = 9'h00 + (1 << 8);
        data[87] = 9'h00 + (1 << 8);
        data[88] = 9'h44 + (1 << 8);
        data[89] = 9'h44 + (1 << 8);

        data[90] = 9'he2;
        data[91] = 9'h11 + (1 << 8);
        data[92] = 9'h11 + (1 << 8);
        data[93] = 9'h44 + (1 << 8);
        data[94] = 9'h44 + (1 << 8);
        data[95] = 9'hed + (1 << 8);
        data[96] = 9'ha0 + (1 << 8);
        data[97] = 9'h00 + (1 << 8);
        data[98] = 9'h00 + (1 << 8);
        data[99] = 9'hec + (1 << 8);
        data[100] = 9'ha0 + (1 << 8);
        data[101] = 9'h00 + (1 << 8);
        data[102] = 9'h00 + (1 << 8);

        data[103] = 9'he3;
        data[104] = 9'h00 + (1 << 8);
        data[105] = 9'h00 + (1 << 8);
        data[106] = 9'h11 + (1 << 8);
        data[107] = 9'h11 + (1 << 8);

        data[108] = 9'he4;
        data[109] = 9'h44 + (1 << 8);
        data[110] = 9'h44 + (1 << 8);

        data[111] = 9'he5;
        data[112] = 9'h0a + (1 << 8);
        data[113] = 9'he9 + (1 << 8);
        data[114] = 9'hd8 + (1 << 8);
        data[115] = 9'ha0 + (1 << 8);
        data[116] = 9'h0c + (1 << 8);
        data[117] = 9'heb + (1 << 8);
        data[118] = 9'hd8 + (1 << 8);
        data[119] = 9'ha0 + (1 << 8);
        data[120] = 9'h0e + (1 << 8);
        data[121] = 9'hed + (1 << 8);
        data[122] = 9'hd8 + (1 << 8);
        data[123] = 9'ha0 + (1 << 8);
        data[124] = 9'h10 + (1 << 8);
        data[125] = 9'hef + (1 << 8);
        data[126] = 9'hd8 + (1 << 8);
        data[127] = 9'ha0 + (1 << 8);

        data[128] = 9'he6;
        data[129] = 9'h00 + (1 << 8);
        data[130] = 9'h00 + (1 << 8);
        data[131] = 9'h11 + (1 << 8);
        data[132] = 9'h11 + (1 << 8);

        data[133] = 9'he7;
        data[134] = 9'h44 + (1 << 8);
        data[135] = 9'h44 + (1 << 8);

        data[136] = 9'he8;
        data[137] = 9'h09 + (1 << 8);
        data[138] = 9'he8 + (1 << 8);
        data[139] = 9'hd8 + (1 << 8);
        data[140] = 9'ha0 + (1 << 8);
        data[141] = 9'h0b + (1 << 8);
        data[142] = 9'hea + (1 << 8);
        data[143] = 9'hd8 + (1 << 8);
        data[144] = 9'ha0 + (1 << 8);
        data[145] = 9'h0d + (1 << 8);
        data[146] = 9'hec + (1 << 8);
        data[147] = 9'hd8 + (1 << 8);
        data[148] = 9'ha0 + (1 << 8);
        data[149] = 9'h0f + (1 << 8);
        data[150] = 9'hee + (1 << 8);
        data[151] = 9'hd8 + (1 << 8);
        data[152] = 9'ha0 + (1 << 8);

        data[153] = 9'heb;
        data[154] = 9'h02 + (1 << 8);
        data[155] = 9'h00 + (1 << 8);
        data[156] = 9'he4 + (1 << 8);
        data[157] = 9'he4 + (1 << 8);
        data[158] = 9'h88 + (1 << 8);
        data[159] = 9'h00 + (1 << 8);
        data[160] = 9'h40 + (1 << 8);

        data[161] = 9'hec;
        data[162] = 9'h3c + (1 << 8);
        data[163] = 9'h00 + (1 << 8);

        data[164] = 9'hed;
        data[165] = 9'hab + (1 << 8);
        data[166] = 9'h89 + (1 << 8);
        data[167] = 9'h76 + (1 << 8);
        data[168] = 9'h54 + (1 << 8);
        data[169] = 9'h02 + (1 << 8);
        data[170] = 9'hff + (1 << 8);
        data[171] = 9'hff + (1 << 8);
        data[172] = 9'hff + (1 << 8);
        data[173] = 9'hff + (1 << 8);
        data[174] = 9'hff + (1 << 8);
        data[175] = 9'hff + (1 << 8);
        data[176] = 9'h20 + (1 << 8);
        data[177] = 9'h45 + (1 << 8);
        data[178] = 9'h67 + (1 << 8);
        data[179] = 9'h98 + (1 << 8);
        data[180] = 9'hba + (1 << 8);

        data[181] = 9'hff;  // CMD2BKxSEL
        data[182] = 9'h77 + (1 << 8);
        data[183] = 9'h01 + (1 << 8);
        data[184] = 9'h00 + (1 << 8);
        data[185] = 9'h00 + (1 << 8);
        data[186] = 9'h00 + (1 << 8);  // CMD2BKxSEL_NONE

        data[187] = 9'h29;  // DISPON

        data[188] = 9'h3a;  // COLMOD
        data[189] = 9'h50 + (1 << 8);

        data_cnt = 0;
        bit_cnt = 0;
        delay_cnt = 0;

        cs = 1;
        sout = 0;
        rst = 1;
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
