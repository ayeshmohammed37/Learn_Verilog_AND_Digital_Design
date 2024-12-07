`timescale 1ns/1ps

module mux_2x1_beh (
    input x, y, s,
    output reg f
);

    always @(x, y, s) begin
        if (s) begin
            f = y;
        end else begin
            f = x;
        end
    end
endmodule