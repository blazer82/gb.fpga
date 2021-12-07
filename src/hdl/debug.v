module debug
    (
        input wire clk,
        input wire gb_clk,
        input wire halt,
        input wire[15:0] addr,
        input wire[7:0] data,
        input wire rd,
        input wire wr,
        input wire cs,
        input wire[7:0] opcode,
        input wire[15:0] pc,
        input wire[15:0] last_pc,
        output wire tx
    );

    localparam s_IDLE      = 3'b00;
    localparam s_TX_BUFFER = 3'b01;
    localparam s_CLEANUP   = 3'b10;

    localparam BUFFER_MAX_LENGTH = 61;
    localparam TX_WAIT = 8'h0F;

    reg[1:0] state = s_IDLE;

    reg tx_valid = 1'b0;
    reg[7:0] tx_byte;
    reg[BUFFER_MAX_LENGTH * 8 - 1:0] tx_buffer;
    reg[15:0] buffer_length;
    reg[15:0] byte_index;
    reg[8:0] wait_cnt;
    wire tx_busy;

    reg[31:0] cycle = 32'h0;

    reg[15:0] b_addr = 16'h00;
    reg[7:0] b_data = 8'h0;

    reg handled_halt = 1'b0;

    wire[31:0] ascii_addr;
    wire[15:0] ascii_data;
    wire[15:0] ascii_opcode;
    wire[31:0] ascii_pc;
    wire[31:0] ascii_last_pc;
    wire[63:0] ascii_cycle;

    uart_tx serial_tx (
        .clk(clk),
        .tx(tx),
        .data_valid(tx_valid),
        .byte(tx_byte),
        .busy(tx_busy)
    );

    ascii_encoder #(.NBR_OF_NIBBLES(4)) addr_encoder(.data(b_addr), .ascii(ascii_addr));
    ascii_encoder #(.NBR_OF_NIBBLES(2)) data_encoder(.data(b_data), .ascii(ascii_data));
    ascii_encoder #(.NBR_OF_NIBBLES(2)) opcode_encoder(.data(opcode), .ascii(ascii_opcode));
    ascii_encoder #(.NBR_OF_NIBBLES(4)) pc_encoder(.data(pc), .ascii(ascii_pc));
    ascii_encoder #(.NBR_OF_NIBBLES(4)) last_pc_encoder(.data(last_pc), .ascii(ascii_last_pc));
    ascii_encoder #(.NBR_OF_NIBBLES(8)) cycle_encoder(.data(cycle), .ascii(ascii_cycle));

    always @(posedge clk) begin
        b_addr <= addr;

        if (~rd | ~wr)
            b_data <= data;
    end

    always @(posedge gb_clk) begin
        cycle <= cycle + 1;
    end

    // Send out data
    always @(posedge clk) begin
		case (state)
			s_IDLE: begin
                tx_valid <= 1'b0;
                buffer_length <= 0;
                byte_index <= 0;
                wait_cnt <= 0;

                if (halt & ~handled_halt) begin
                    handled_halt <= halt;
                    buffer_length <= BUFFER_MAX_LENGTH;
                    tx_buffer <= {
                        "C: ",
                        ascii_cycle,
                        "  ADDR: ",
                        ascii_addr,
                        "  DATA: ",
                        ascii_data,
                        "  PC: ",
                        ascii_last_pc,
                        " -> ",
                        ascii_pc,
                        "  OP: ",
                        ascii_opcode,
                        "\n\r"
                    };
                    state <= s_TX_BUFFER;
                end

                if (~halt & handled_halt) begin
                    handled_halt <= halt;
                    buffer_length <= 10;
                    tx_buffer <= "CONTINUE\n\r";
                    state <= s_TX_BUFFER;
                end
            end

            s_TX_BUFFER: begin
                if (wait_cnt < TX_WAIT)
                    wait_cnt <= wait_cnt + 1;
                else begin
                    if (~tx_busy && byte_index < buffer_length) begin
                        tx_byte <= tx_buffer >> ((buffer_length - 1 - byte_index) * 32'd8);
                        tx_valid <= 1'b1;
                        byte_index <= byte_index + 1;
                        wait_cnt <= TX_WAIT - 8'h08;  // a couple of clocks
                    end
                    if (tx_busy) begin
                        tx_valid <= 1'b0;
                        wait_cnt <= 0;
                    end
                    if (~tx_busy && byte_index == buffer_length) begin
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
