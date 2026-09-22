`timescale 1ns / 1ps

module integrator
(
input                   clk,
input                   reset,
input                   load,        // reload InitialOut without a global reset (software controlled)
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
    assign v1new = (reset | load) ? InitialOut : (enable ? adder_out : v1); 

    assign out = v1; // Assign output

endmodule