module uart_tx
    #(
		parameter CLKS_PER_BIT = 12000000 / 9600
	)
    (
		input wire clk,
		input wire data_valid,
		input wire[7:0] byte,
		output reg busy,
		output reg tx,
		output reg done
    );

    localparam s_IDLE         = 3'b000;
    localparam s_TX_START_BIT = 3'b001;
    localparam s_TX_DATA_BITS = 3'b010;
    localparam s_TX_STOP_BIT  = 3'b011;
    localparam s_CLEANUP      = 3'b100;

    reg[2:0] state = s_IDLE;
    reg[15:0] clock_cnt = 0;
    reg[2:0] bit_index = 0;
    reg[7:0] tx_data = 0;

    always @(posedge clk) begin
		case (state)
			s_IDLE: begin
				tx <= 1'b1;
				done <= 1'b0;
				clock_cnt <= 0;
				bit_index <= 0;

				if (data_valid == 1'b1) begin
					busy <= 1'b1;
					tx_data <= byte;
					state <= s_TX_START_BIT;
				end else
					state <= s_IDLE;
			end

			s_TX_START_BIT: begin
				tx <= 1'b0;

				if (clock_cnt < CLKS_PER_BIT - 1) begin
					clock_cnt <= clock_cnt + 1;
					state <= s_TX_START_BIT;
				end else begin
					clock_cnt <= 0;
					state <= s_TX_DATA_BITS;
				end
			end

			s_TX_DATA_BITS: begin
				tx <= tx_data[bit_index];

				if (clock_cnt < CLKS_PER_BIT - 1) begin
					clock_cnt <= clock_cnt + 1;
					state <= s_TX_DATA_BITS;
				end else begin
					clock_cnt <= 0;

					if (bit_index < 7) begin
						bit_index <= bit_index + 1;
						state <= s_TX_DATA_BITS;
					end else begin
						bit_index <= 0;
						state <= s_TX_STOP_BIT;
					end
				end
			end

			s_TX_STOP_BIT: begin
				tx <= 1'b1;

				if (clock_cnt < CLKS_PER_BIT - 1) begin
					clock_cnt <= clock_cnt + 1;
					state <= s_TX_STOP_BIT;
				end else begin
					done <= 1'b1;
					clock_cnt <= 0;
					state <= s_CLEANUP;
					busy <= 1'b0;
				end
			end

			s_CLEANUP: begin
				state <= s_IDLE;
			end

			default:
				state <= s_IDLE;
		endcase
	end
endmodule
