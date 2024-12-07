`timescale 1ns / 1ps


module mux_2x1_data (
    input x, y, s,
    output f
);

    assign f = x & ~s | y & s;
    
endmodule