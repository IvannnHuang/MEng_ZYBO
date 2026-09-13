`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/13/2026 02:45:41 PM
// Design Name: 
// Module Name: lorenz
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

module lorenz(
    input clk,
    input rst,
    
    
    input signed [26:0] x_init,
    input signed [26:0] y_init,
    input signed [26:0] z_init,
    
    input signed [26:0] x_in,
    input signed [26:0] y_in,
    input signed [26:0] z_in,
    input signed [26:0] dt,
    input signed [26:0] sigma,
    input signed [26:0] beta,
    input signed [26:0] rho,
    input start,
    
    output reg signed [26:0] x_out,
    output reg signed [26:0] y_out,
    output reg signed [26:0] z_out,
    output reg done
    );

    wire signed [26:0] x_next, y_next, z_next;
    wire signed [26:0] dx, dx2, dx3;
    wire signed [26:0] dy, dy2;
    wire signed [26:0] dz, beta_z, dz_diff, dz2;

    // dx/dt = sigma*(y-x)
    assign dx = y_in - x_in;
    signed_mult mult_x1 ( .out(dx2), .a(dx),  .b(sigma) );
    signed_mult mult_x2 ( .out(dx3), .a(dx2), .b(dt)    );

    // dy/dt = x*(rho-z) - y
    signed_mult mult_y1 ( .out(dy),  .a(rho - z_in), .b(x_in) );
    signed_mult mult_y2 ( .out(dy2), .a(dt),          .b(dy - y_in) );

    // dz/dt = x*y - beta*z
    signed_mult mult_z1 ( .out(dz),      .a(x_in), .b(y_in) );
    signed_mult mult_z2 ( .out(beta_z),  .a(beta), .b(z_in) );
    assign dz_diff = dz - beta_z;
    signed_mult mult_z3 ( .out(dz2), .a(dt), .b(dz_diff) );

    assign x_next = dx3 + x_in;
    assign y_next = dy2 + y_in;
    assign z_next = dz2 + z_in;

    always @(posedge clk) begin
        if (rst) begin
            x_out <= x_init; y_out <= y_init; z_out <= z_init;
            done  <= 1'b0;
        end else if (start) begin
            x_out <= x_next; y_out <= y_next; z_out <= z_next;
            done  <= 1'b1;
        end else begin
            done <= 1'b0;
        end      
    end
    
endmodule



