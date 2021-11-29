module halt_trigger
    (
        input wire clk,
        input wire rx,
        output reg trigger
    );

    wire rx_valid;
    wire[7:0] rx_byte;

    uart_rx serial_rx (
        .clk(clk),
        .rx(rx),
        .data_valid(rx_valid),
        .byte(rx_byte)
    );

    always @(rx_valid) begin
        if (rx_valid) begin
            case (rx_byte)
                default:
                    trigger <= 1'b1;
            endcase
        end else
            trigger <= 1'b0;
    end

endmodule
