`timescale 1ns / 1ns

module uart_rx
    #(
        parameter CLKS_PER_BIT = 12000000 / 9600
    )
    (
        input wire clk,
        input wire rx,
        output reg data_valid,
        output reg [7:0] byte_data
    );

    localparam s_IDLE         = 3'b000;
    localparam s_RX_START_BIT = 3'b001;
    localparam s_RX_DATA_BITS = 3'b010;
    localparam s_RX_STOP_BIT  = 3'b011;
    localparam s_CLEANUP      = 3'b100;

    reg rx_data_r = 1'b1;
    reg rx_data = 1'b1;
    reg[23:0] clock_cnt = 0;
    reg[2:0] bit_index = 0;
    reg[2:0] state = s_IDLE;

    initial begin
        data_valid <= 0;
        byte_data <= 0;
    end

    always @(posedge clk) begin
        rx_data_r <= rx;
        rx_data <= rx_data_r;
    end

    always @(posedge clk) begin
        case (state)
            s_IDLE: begin
                data_valid <= 1'b0;
                clock_cnt <= 0;
                bit_index <= 0;

                if (rx_data == 1'b0)
                    state <= s_RX_START_BIT;
                else
                    state <= s_IDLE;
            end

            s_RX_START_BIT: begin
                if (clock_cnt == CLKS_PER_BIT / 2) begin
                    if (rx_data == 1'b0)
                        begin
                            clock_cnt <= 0;
                            state <= s_RX_DATA_BITS;
                        end
                    else
                        state <= s_IDLE;
                end else begin
                    clock_cnt <= clock_cnt + 1;
                    state <= s_RX_START_BIT;
                end
            end

            s_RX_DATA_BITS: begin
                if (clock_cnt < CLKS_PER_BIT - 1) begin
                    clock_cnt <= clock_cnt + 1;
                    state  <= s_RX_DATA_BITS;
                end else begin
                    clock_cnt <= 0;
                    byte_data[bit_index] <= rx_data;

                    if (bit_index < 7)  begin
                        bit_index <= bit_index + 1;
                        state <= s_RX_DATA_BITS;
                    end else begin
                        bit_index <= 0;
                        state  <= s_RX_STOP_BIT;
                    end
                end
            end

            s_RX_STOP_BIT: begin
                if (clock_cnt < CLKS_PER_BIT - 1) begin
                    clock_cnt <= clock_cnt + 1;
                    state <= s_RX_STOP_BIT;
                end else begin
                    data_valid <= 1'b1;
                    clock_cnt <= 0;
                    state <= s_CLEANUP;
                end
            end

            s_CLEANUP: begin
                state <= s_IDLE;
                //data_valid <= 1'b0;
            end

            default:
                state <= s_IDLE;
        endcase
    end

endmodule
