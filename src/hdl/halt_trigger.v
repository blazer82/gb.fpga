module halt_trigger
    (
        input wire clk,
        input wire rx,
        input wire halt,
        input wire gb_clk,
        output reg trigger
    );
    
    reg auto_trigger = 1'b0;
    reg en_auto_trigger = 1'b0;

    wire rx_valid;
    wire[7:0] rx_byte;

    uart_rx serial_rx (
        .clk(clk),
        .rx(rx),
        .data_valid(rx_valid),
        .byte(rx_byte)
    );

    initial
        trigger <= 1'b0;

    always @(posedge gb_clk) begin
        auto_trigger <= ~trigger & en_auto_trigger;
    end

    always @(posedge clk) begin
        if (auto_trigger) begin
            en_auto_trigger <= 1'b0;
            trigger <= 1'b1;
        end else if (rx_valid) begin
            case (rx_byte)
                "s": begin
                    trigger <= 1'b1;
                    en_auto_trigger <= 1'b1;
                end
                "p":
                    trigger <= 1'b1;
            endcase
        end else
            trigger <= 1'b0;
    end

endmodule
