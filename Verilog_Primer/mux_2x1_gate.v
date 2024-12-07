`timescale 1ns / 1ps

module mux_2x1_gate (
    input x, y, s,
    output f
);

    wire [2:0] w;

    and A0 (w[1], x, w[0]);
    not N0 (w[0], s);
    and A1 (w[2], y, s);
    or O0 (f, w[1], w[2]);
    
endmodule