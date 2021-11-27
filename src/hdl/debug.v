module debug
    (
        input wire clk,
        input wire halt,
        input wire tx
    );

    localparam s_IDLE      = 3'b00;
    localparam s_TX_BUFFER = 3'b01;
    localparam s_CLEANUP   = 3'b10;
    
    localparam BUFFER_LENGTH = 10;
    localparam TX_WAIT = 16'hF00;

    reg[1:0] state = s_IDLE;

    reg tx_valid = 1'b0;
    reg[7:0] tx_byte;
    reg[BUFFER_LENGTH * 8 - 1:0] tx_buffer;
    reg[7:0] byte_index;
    reg[15:0] wait_cnt;
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
                byte_index <= 0;
                wait_cnt <= 0;

                if (halt & ~handled_halt) begin
                    handled_halt <= halt;
                    tx_buffer <= "HALT    \n\r";
                    state <= s_TX_BUFFER;
                end

                if (~halt & handled_halt) begin
                    handled_halt <= halt;
                    tx_buffer <= "CONTINUE\n\r";
                    state <= s_TX_BUFFER;
                end
            end

            s_TX_BUFFER: begin
                if (wait_cnt < TX_WAIT)
                    wait_cnt <= wait_cnt + 1;
                else begin
                    if (~tx_busy && byte_index < BUFFER_LENGTH) begin
                        tx_byte <= tx_buffer >> ((BUFFER_LENGTH - 1 - byte_index) * 8);
                        tx_valid <= 1'b1;
                        byte_index <= byte_index + 1;
                        wait_cnt <= TX_WAIT - 16'hF;  // a couple of clocks
                    end
                    if (tx_busy) begin
                        tx_valid <= 1'b0;
                        wait_cnt <= 0;
                    end
                    if (~tx_busy && byte_index == BUFFER_LENGTH) begin
                        tx_valid <= 1'b0;
                        state <= s_CLEANUP;
                    end
                end
            end

            s_CLEANUP: begin
                byte_index <= 0;
                state <= s_IDLE;
            end

            default:
				state <= s_IDLE;
        endcase
    end

endmodule
