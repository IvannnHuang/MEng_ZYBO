`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/14/2026 11:38:37 PM
// Design Name:
// Module Name: signed_mult
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////
//// signed mult of 7.20 format 2'comp////////////
//////////////////////////////////////////////////

module signed_mult (out, a, b);
    output     signed  [26:0]    out;
    input     signed    [26:0]     a;
    input     signed    [26:0]     b;
    // intermediate full bit length
    wire     signed    [53:0]    mult_out;
    assign mult_out = a * b;
    // select bits for 7.20 fixed point
    assign out = {mult_out[53], mult_out[45:20]};
endmodule
