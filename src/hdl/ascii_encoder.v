`timescale 1ns / 1ns

module ascii_encoder
    #(
        parameter NBR_OF_NIBBLES = 1
    )
    (
        input wire [NBR_OF_NIBBLES * 4 - 1:0] data,
        output wire [NBR_OF_NIBBLES * 8 - 1:0] ascii
    );

    genvar i;
    generate
        for (i = 0; i < NBR_OF_NIBBLES; i = i + 1) begin
            assign ascii[i * 8 + 7:i * 8 + 4] = (data[i * 4 + 3: i * 4] < 4'hA) ? 4'h3 : 4'h4;
            assign ascii[i * 8 + 3:i * 8] = data[i * 4 + 3: i * 4] - ((data[i * 4 + 3: i * 4] < 4'hA) ? 4'h0 : 4'h9);
        end
    endgenerate
endmodule
