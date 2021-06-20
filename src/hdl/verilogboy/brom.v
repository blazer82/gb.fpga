`timescale 1ns / 1ns
`default_nettype wire
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    21:10:17 02/09/2018
// Design Name:
// Module Name:    brom
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module brom(
    input [7:0] a,
    output [7:0] d
    );

    reg [7:0] brom_array [0:255]; // 256 Bytes BROM array

    initial begin
        $readmemh("bootrom.mem", brom_array, 0, 255);
    end

    assign d = brom_array[a];

endmodule
