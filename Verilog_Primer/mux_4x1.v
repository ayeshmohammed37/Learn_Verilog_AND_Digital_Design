`timescale 1ns/1ps


module mux_4x1 (
    input [3:0] x,
    input [1:0] s,
    output f
);
    

    wire [1:0] w;

    mux_2x1_gate M0 (
        .x(x[0]),
        .y(x[1]),
        .s(s[0]),
        .f(w[0])
    );

    mux_2x1_gate M1 (
        .x(x[2]),
        .y(x[3]),
        .s(s[0]),
        .f(w[1])
    );

    mux_2x1_gate M2 (
        .x(w[0]),
        .y(w[1]),
        .s(s[1]),
        .f(f)
    );
endmodule