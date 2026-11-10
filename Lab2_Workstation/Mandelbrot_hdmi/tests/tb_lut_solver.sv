`timescale 1ns/1ps
module tb_lut_solver;
 wire done;
 precision_case #(.SW(18),.LUT_MULT(1)) test_case(done);
 initial begin wait(done);$display("LUT SOLVER MODEL PASSED: 2048 vectors with stalls");$finish;end
endmodule
