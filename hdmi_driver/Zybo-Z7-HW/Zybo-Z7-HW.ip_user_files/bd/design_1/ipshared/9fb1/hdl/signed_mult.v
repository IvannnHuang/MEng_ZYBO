`timescale 1ns / 1ps

module signed_mult(
    output signed [26:0] out,
    input  signed [26:0] a,
    input  signed [26:0] b
    );
    
    wire signed [53:0] mult_out;
    assign mult_out = a * b; 
    assign out = {mult_out[53], mult_out[45:20]};
endmodule
