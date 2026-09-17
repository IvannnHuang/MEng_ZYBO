`timescale 1ns / 1ps

module lorenz_solver 
(
    input  clk,
    input  reset,
    input  enable,
    output reg done,

    input  signed [26:0] x_init,
    input  signed [26:0] y_init,
    input  signed [26:0] z_init,

    input  signed [26:0] sig,
    input  signed [26:0] rho,
    input  signed [26:0] beta,
    input  signed [26:0] dt,

    output signed [26:0] x_next,
    output signed [26:0] y_next,
    output signed [26:0] z_next
);

    wire signed [26:0] funct_x, funct_y, funct_z;
    wire signed [26:0] mult_xrhoz, mult_xy, mult_bz;
    reg enable_d;
    wire step = enable & ~enable_d;

    always @(posedge clk) begin
        if (reset) begin
            enable_d <= 1'b0;
            done     <= 1'b0;
        end else begin
            enable_d <= enable;
            done     <= step; 
        end
    end

    // x' = sigma * (y - x), scaled by dt
    signed_mult mult_dx (
        .out(funct_x),
        .a  (sig),
        .b  ((y_next - x_next) >>> dt)
    );
    integrator integrator_x (
        .clk(clk), .reset(reset), .enable(step),
        .InitialOut(x_init), .funct(funct_x), .out(x_next)
    );

    // y' = x * (rho - z) - y, scaled by dt
    signed_mult mult_xrhoz_i (
        .out(mult_xrhoz),
        .a  (x_next >>> dt),
        .b  (rho - z_next)
    );
    assign funct_y = mult_xrhoz - (y_next >>> dt);
    integrator integrator_y (
        .clk(clk), .reset(reset), .enable(step),
        .InitialOut(y_init), .funct(funct_y), .out(y_next)
    );

    // z' = x * y - beta * z, scaled by dt
    signed_mult mult_xy_i (
        .out(mult_xy),
        .a  (x_next >>> dt),
        .b  (y_next)
    );
    signed_mult mult_bz_i (
        .out(mult_bz),
        .a  (z_next >>> dt),
        .b  (beta)
    );
    assign funct_z = mult_xy - mult_bz;
    integrator integrator_z (
        .clk(clk), .reset(reset), .enable(step),
        .InitialOut(z_init), .funct(funct_z), .out(z_next)
    );

endmodule
