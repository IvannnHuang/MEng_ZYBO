`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 09/14/2026 11:38:37 PM
// Design Name:
// Module Name: integrator
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

/////////////////////////////////////////////////
//// integrator /////////////////////////////////
/////////////////////////////////////////////////

module integrator(out, funct, InitialOut, clk, reset, run);

    input                   clk;
    input                   reset;
    input                   run;        // 0 = hold v1 (pause); 1 = integrate normally
    input signed [26:0]  funct;      //the dV/dt function
    input signed [26:0]  InitialOut;  //the initial state variable V

    output signed [26:0] out; //the state variable V

    reg  signed [26:0] v1 ;
    wire signed [26:0] v1new ;
    wire signed [26:0]  adder_out;

    always @(posedge clk) begin
        v1 <= v1new;
    end

    // Minor adjustment to the integrator
    // OG code did not line up with HW Block diagram
    // Funtionality is the same
    assign adder_out = v1 + funct;   // Adder
    // reset always wins; otherwise hold the current value unless running -
    // this is what lets a paused solver resume from exactly where it left
    // off instead of losing state or drifting while nobody is polling it.
    assign v1new = reset ? InitialOut : (run ? adder_out : v1); // Mux

    assign out = v1; // Assign output

endmodule
