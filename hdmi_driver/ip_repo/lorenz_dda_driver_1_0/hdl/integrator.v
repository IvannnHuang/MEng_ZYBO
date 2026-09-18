`timescale 1ns / 1ps

module integrator
(
input                   clk,
input                   reset,
input                   enable,      // pulse high for one cycle to take a single integration step
input signed [26:0]     funct,      //the dV/dt function
input signed [26:0]     InitialOut,  //the initial state variable V

output signed [26:0]    out //the state variable V
);

    reg  signed [26:0] v1 ;
    wire signed [26:0] v1new ;
    wire signed [26:0]  adder_out;

    always @(posedge clk) begin
        v1 <= v1new;
    end

    assign adder_out = v1 + funct;   // Adder
    assign v1new = reset ? InitialOut : (enable ? adder_out : v1); // Mux: seed on reset, one step on enable, else hold

    assign out = v1; // Assign output

endmodule