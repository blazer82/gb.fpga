`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent
// Engineer: Arthur Brown
//
// Create Date: 04/13/2018 03:33:26 PM
// Module Name: uart_tx
// Description: Prints "Button # Pressed!" whenever any one button (#) is pressed
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module uart_tx #(
    parameter BAUD_2_CLOCK_RATIO = 12000000 / 9600, // frequency of clk / target baud rate
	parameter UART_DATA_BITS = 8,
	parameter UART_STOP_BITS = 2,
	parameter BUTTON_POLARITY_VECTOR = 2'b11, // default, both buttons are active-high
	parameter BUTTON_WIDTH = 2 // non-functional for BUTTON_WIDTH != 2. valid_event process must be changed to handle different widths.
) (
    input wire clk,
    input wire [BUTTON_WIDTH-1:0] btn,
    output reg tx,
    output reg busy = 1'b0
);
    localparam STRING_LENGTH = 19;
    localparam BYTE_COUNT_WIDTH = 5; // = $clog2(STRING_LENGTH)

	//  CONTROLLER:
//	reg busy = 1'b0;
	reg [BUTTON_WIDTH-1:0] _btn_norm = ~BUTTON_POLARITY_VECTOR; // btn signal delayed by one cycle, for edge detection
	wire [BUTTON_WIDTH-1:0] btn_norm = ~(btn^BUTTON_POLARITY_VECTOR); // button vector normalized to active high
    wire [BUTTON_WIDTH-1:0] button_posedge = ~_btn_norm & btn_norm; // each bit is 1'b1 if that button has just been pressed
	reg valid_event = 1'b0; // NOTE: if both buttons are pressed at the same time, each event will be missed
	wire start = (busy == 1'b0 && valid_event == 1'b1) ? 1'b1 : 1'b0; // NOTE: if a press is detected while the controller is busy, the event will be missed

	//  COUNTERS:
	//  pseudo for counters:
	//	    for byte_count in range(STRING_LENGTH)
	//      for bit_count in range(-1, UART_DATA_BITS+UART_STOP_BITS-1)
	//      for cd_count in range(BAUD_2_CLOCK_RATIO)
	reg [$clog2(BAUD_2_CLOCK_RATIO)-1:0] cd_count; // clock divider counter, rolls over at approx. target baud rate
	reg [$clog2(UART_DATA_BITS+UART_STOP_BITS+1)-1:0] bit_count; // uart frame bit counter
	reg [BYTE_COUNT_WIDTH-1:0] byte_count; // string index counter
	wire end_of_bit = (cd_count == BAUD_2_CLOCK_RATIO-1) ? 1'b1 : 1'b0;
	wire end_of_byte = (end_of_bit == 1'b1 && bit_count == UART_DATA_BITS+UART_STOP_BITS-1) ? 1'b1 : 1'b0;
	wire end_of_string = (end_of_byte == 1'b1 && byte_count == STRING_LENGTH-1) ? 1'b1 : 1'b0;

	// DATA:
	reg [UART_DATA_BITS-1:0] data = 'b0; // character to be sent over UART
	reg r_btn_event = 1'b0; // contains the ID of the pressed button

	// CONTROLLER LOGIC:
    always@(posedge clk)
        _btn_norm <= btn_norm;

    always@(posedge clk) // register event code for decoding into button ID character
        if (busy == 1'b0)
            case (button_posedge)
            2'b01: begin
                valid_event <= 1'b1;
                r_btn_event <= 1'b0;
            end
            2'b10: begin
                valid_event <= 1'b1;
                r_btn_event <= 1'b1;
            end
            default:
                valid_event <= 1'b0;
            endcase
        else
            valid_event <= 1'b0;

	always@(busy, bit_count, data)
		if (busy == 1'b0) // hold tx high when not in use
			tx = 1'b1;
		else if (&bit_count == 1'b1) // START BIT (bit_count == -1)
			tx = 1'b0;
		else if (bit_count < UART_DATA_BITS) // DATA BITS
			tx = data[bit_count];
		else // STOP BITS
			tx = 1'b1;

    always@(posedge clk)
        if (start == 1'b1)
            busy <= 1'b1;
        else if (end_of_string == 1'b1)
            busy <= 1'b0;
        else
            busy <= busy;

	// COUNTERS LOGIC:
	// each counter is configured to roll over at the applicable end_of_* signal, and reset when the transmitter is not busy
	always@(posedge clk)
		if (busy == 1'b0 || end_of_bit == 1'b1)
			cd_count <= 'b0;
		else
			cd_count <= cd_count + 1'b1;

	always@(posedge clk)
		if (busy == 1'b0 || end_of_byte == 1'b1)
			bit_count <= ~'b0; // bit_count = -1
		else if (end_of_bit == 1'b1)
			bit_count <= bit_count + 1;

	always@(posedge clk)
		if (busy == 1'b0 || end_of_string == 1'b1)
			byte_count <= 'b0;
		else if (end_of_byte == 1'b1)
			byte_count <= byte_count + 1;

	// DATA LOGIC:
	always@(byte_count, r_btn_event) // select a character to send
		case (byte_count)
		0: data <= "B";
		1: data <= "u";
		2: data <= "t";
		3: data <= "t";
		4: data <= "o";
		5: data <= "n";
		6: data <= " ";
		7: data <= (r_btn_event == 1'b1) ? "1" : "0"; // button "0" or "1"
		8: data <= " ";
		9: data <= "P";
		10: data <= "r";
		11: data <= "e";
		12: data <= "s";
		13: data <= "s";
		14: data <= "e";
		15: data <= "d";
		16: data <= "!";
		17: data <= "\n";
		18: data <= "\r";
		default: data <= "?"; // unreachable code
		endcase

endmodule
