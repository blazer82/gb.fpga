module debug
    (
        input wire clk,
        input wire halt,
        input wire tx
    );

    localparam s_IDLE      = 3'b00;
    localparam s_TX_BUFFER = 3'b01;
    localparam s_WAIT      = 3'b10;
    localparam s_CLEANUP   = 3'b11;

    reg[1:0] state = s_IDLE;

    reg tx_valid = 1'b0;
    reg[7:0] tx_byte;
    wire tx_busy;

    reg handled_halt = 1'b0;

    uart_tx serial_tx (
        .clk(clk),
        .tx(tx),
        .data_valid(tx_valid),
        .byte(tx_byte),
        .busy(tx_busy)
    );

    // Send out data
    always @(posedge clk) begin
		case (state)
			s_IDLE: begin
                tx_valid <= 1'b0;

                if (halt & ~handled_halt) begin
                    handled_halt <= halt;
                    tx_byte <= "H";
                    state <= s_TX_BUFFER;
                end

                if (~halt & handled_halt) begin
                    handled_halt <= halt;
                    tx_byte <= "C";
                    state <= s_TX_BUFFER;
                end
            end

            s_TX_BUFFER: begin
                tx_valid <= 1'b1;
                state <= s_WAIT;
            end

            s_WAIT: begin
                if (tx_busy)
                    tx_valid <= 1'b0;
                else
                    state <= s_CLEANUP;
            end

            s_CLEANUP: begin
                state <= s_IDLE;
            end

            default:
				state <= s_IDLE;
        endcase
    end

endmodule
