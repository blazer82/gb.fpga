module debug
    (
        input wire clk,
        input wire gb_clk,
        input wire halt,
        input wire tx,
        input wire[15:0] addr,
        input wire[7:0] data,
        input wire rd,
        input wire wr,
        input wire cs
    );

    localparam s_IDLE      = 3'b00;
    localparam s_TX_BUFFER = 3'b01;
    localparam s_CLEANUP   = 3'b10;

    localparam BUFFER_LENGTH = 22;
    localparam TX_WAIT = 16'hF00;

    reg[1:0] state = s_IDLE;

    reg tx_valid = 1'b0;
    reg[7:0] tx_byte;
    reg[BUFFER_LENGTH * 8 - 1:0] tx_buffer;
    reg[15:0] byte_index;
    reg[15:0] wait_cnt;
    wire tx_busy;

    reg[15:0] b_addr = 16'h00;
    reg[7:0] b_data = 8'h0;

    reg handled_halt = 1'b0;

    uart_tx serial_tx (
        .clk(clk),
        .tx(tx),
        .data_valid(tx_valid),
        .byte(tx_byte),
        .busy(tx_busy)
    );

    function [7:0] n2a (input [3:0] nibble);
        begin
            n2a[7:4] = (nibble < 4'hA) ? 4'h3 : 4'h4;
            n2a[3:0] = nibble - ((nibble < 4'hA) ? 4'h0 : 4'h9);
        end
    endfunction

    always @(posedge clk) begin
        b_addr <= addr;
        
        if (~rd | ~wr)
            b_data <= data;
    end

    // Send out data
    always @(posedge clk) begin
		case (state)
			s_IDLE: begin
                tx_valid <= 1'b0;
                byte_index <= 0;
                wait_cnt <= 0;

                if (halt & ~handled_halt) begin
                    handled_halt <= halt;
                    tx_buffer <= {
                        "ADDR: ",
                        n2a(b_addr >> 12),
                        n2a(b_addr >> 8),
                        n2a(b_addr >> 4),
                        n2a(b_addr),
                        "  DATA: ",
                        n2a(b_data >> 4),
                        n2a(b_data),
                        "\n\r"
                    };
                    state <= s_TX_BUFFER;
                end

                if (~halt & handled_halt) begin
                    handled_halt <= halt;
                    tx_buffer <= "CONTINUE            \n\r";
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
