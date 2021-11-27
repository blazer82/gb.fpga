module halt_trigger
    (
        input wire clk,
        input wire rx,
        output wire trigger
    );

    wire rx_valid;
    wire[7:0] rx_byte;

    uart_rx serial_rx (
        .clk(clk),
        .rx(rx),
        .data_valid(rx_valid),
        .byte(rx_byte)
    );

    assign trigger = rx_valid;

endmodule
