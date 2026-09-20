`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/14/2026 11:38:37 PM
// Design Name:
// Module Name: solver
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
//// solver (Lorenz system ODE solver) ///////////
//////////////////////////////////////////////////

module solver (clk, reset, x_next, y_next, z_next, x_0, y_0, z_0, beta, sig, rho, dt);
    input clk;
    input reset;

    input signed [26:0] x_0;
    input signed [26:0] y_0;
    input signed [26:0] z_0;

    input signed [26:0] beta;
    input signed [26:0] sig;
    input signed [26:0] rho;
     input signed [26:0] dt;

    output wire signed [26:0] x_next;
    output wire signed [26:0] y_next;
    output wire signed [26:0] z_next;

    wire signed [26:0] funct_x;
    wire signed [26:0] funct_y;
    wire signed [26:0] funct_z;

    wire signed [26:0] diff_y_x;
    wire signed [26:0] diff_rho_z;

    wire signed [26:0] mult_xy_out;
    wire signed [26:0] mult_bz_out;
    wire signed [26:0] mult_xrhoz_out;

    // Using recommended equations
    // x
    // x = x + sig[(y-x)>>>dt]
    assign diff_y_x = y_next - x_next;
    signed_mult mult_dx (
        .out(funct_x),
        .a(sig),
        .b(diff_y_x >>> dt)
    );
    integrator integrator_x (
        .out(x_next),
        .funct(funct_x),
        .InitialOut(x_0),
        .clk(clk),
        .reset(reset)
    );
    // y
    // y = y + [(x >>> dt) * (rho - z)] - (y >>> dt)
    assign diff_rho_z = rho - z_next;
    signed_mult multiplier_y (
        .out(mult_xrhoz_out),
        .a(x_next >>> dt),
        .b(diff_rho_z)
    );
    assign funct_y = mult_xrhoz_out - (y_next >>> dt);
    integrator integrator_y (
        .out(y_next),
        .funct(funct_y),
        .InitialOut(y_0),
        .clk(clk),
        .reset(reset)
    );
    // z
    // z = z + z + [(x >>> dt) * y] - [beta * (z >>> dt)]
    signed_mult multiplier_z1 (
        .out(mult_xy_out),
        .a(x_next >>> dt),
        .b(y_next)
    );
    signed_mult multiplier_z2 (
        .out(mult_bz_out),
        .a(z_next >>> dt),
        .b(beta)
    );
    assign funct_z = mult_xy_out - mult_bz_out;
    integrator integrator_z (
        .out(z_next),
        .funct(funct_z),
        .InitialOut(z_0),
        .clk(clk),
        .reset(reset)
    );
endmodule
