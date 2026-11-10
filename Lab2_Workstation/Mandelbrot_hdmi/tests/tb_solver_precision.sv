`timescale 1ns/1ps
module precision_case #(parameter SW=24, LUT_MULT=0)(output reg done=0);
 reg clk=0;always #5 clk=~clk;
 reg rst=1,iv=0,accepted=0,ready=0;
 wire ir,ov,idle;
 reg [11:0] tag=0;
 reg signed [26:0] cr=0,ci=0;
 reg hit=0;
 wire signed [SW-1:0] scr=cr >>> (27-SW),sci=ci >>> (27-SW);
 wire [11:0] ox,oy;wire [15:0] cnt;
 reg [86:0] vectors[0:2047];reg [2047:0] seen=0;
 reg [31:0] rng=32'h56ae13+SW;
 integer sent=0,received=0,t=0;
 mandel_solver #(.W(SW),.F(SW-4),.XW(12),.YW(12),.LUT_MULT(LUT_MULT)) dut(
 .clk(clk),.rst(rst),.max_iter(16'd1000),.in_inside(hit),.in_valid(iv),.in_ready(ir),
 .in_x(tag),.in_y(~tag),.in_cr(scr),.in_ci(sci),.out_valid(ov),.out_ready(ready),
 .out_x(ox),.out_y(oy),.out_count(cnt),.idle(idle));
 always @(posedge clk) if(!rst&&!done) begin
  rng<={rng[30:0],rng[31]^rng[21]^rng[1]^rng[0]};t=t+1;
  if(t>4000000)$fatal(1,"precision timeout W=%0d",SW);
  accepted=iv&&ir;if(accepted)sent=sent+1;
  if(ov&&ready)begin
   if(ox>=2048 || oy!==~ox || seen[ox] || cnt!==vectors[ox][15:0])
    $fatal(1,"W=%0d pixel=%0d got=%0d expected=%0d",SW,ox,cnt,vectors[ox][15:0]);
   seen[ox]=1;received=received+1;
  end
  if(received==2048)begin
   if(sent!=2048)$fatal(1,"unexpected number dispatched");
   $display("SOLVER PRECISION PASSED W=%0d F=%0d, 2048 vectors, input gaps and output stalls",SW,SW-4);
   done=1;
  end
 end
 always @(negedge clk) if(!rst&&!done)begin
  ready=rng[3]|rng[4];
  if(accepted || !iv)begin
   iv=(sent<2048)&&rng[2];
   if(sent<2048)begin tag=sent;cr=vectors[sent][86:60];ci=vectors[sent][59:33];hit=vectors[sent][32];end
  end
 end
 initial begin
  case(SW)
   27:$readmemh("precision_w27.mem",vectors);
   24:$readmemh("precision_w24.mem",vectors);
   21:$readmemh("precision_w21.mem",vectors);
   18:$readmemh("precision_w18.mem",vectors);
  endcase
  repeat(4)@(negedge clk);rst=0;
 end
endmodule
module tb_solver_precision;
 wire [3:0] done;
 precision_case #(.SW(27)) a(done[0]);precision_case #(.SW(24)) b(done[1]);
 precision_case #(.SW(21)) c(done[2]);precision_case #(.SW(18)) d(done[3]);
 initial begin wait(&done);$display("ALL SOLVER PRECISIONS PASSED");$finish;end
endmodule
