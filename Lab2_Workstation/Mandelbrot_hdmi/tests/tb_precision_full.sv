`timescale 1ns/1ps
// Software default view; ideal AXI sink, not a board measurement.
module tb_precision_full #(parameter SW=24, parameter NSOLV=8, parameter LUT_SOLVERS=0);
 reg clk=0;always #5 clk=~clk;
 reg rst=1,start=0,bv=0;
 wire done,busy,awv,wv,wl,br;
 wire [31:0] cycles,addr;
 wire [63:0] data;
 wire [7:0] strb,len;
 wire [2:0] size;wire [1:0] burst;
 integer nw=0,na=0,nresp=0,np=0,t=0;
 localparam integer STEP=18641;
 localparam [7:0] ACTIVE=NSOLV;
 mandel_engine #(.SW(SW),.NSOLV(NSOLV),.LUT_SOLVERS(LUT_SOLVERS)) dut(.clk(clk),.rst(rst),.start(start),.fb_addr(32'h10000000),
 .cr_left(-27'sd6291456-960*STEP),.ci_top(540*STEP),.step(STEP),
 .max_iter(16'd1000),.n_active(ACTIVE),.busy(busy),.done(done),.cycles(cycles),
 .m_awaddr(addr),.m_awlen(len),.m_awsize(size),.m_awburst(burst),
 .m_awvalid(awv),.m_awready(1'b1),.m_wdata(data),.m_wstrb(strb),
 .m_wlast(wl),.m_wvalid(wv),.m_wready(1'b1),.m_bresp(2'b00),.m_bvalid(bv),.m_bready(br));
 always @(posedge clk) if(!rst && !start) begin
  if(dut.w1_v) np<=np+1;
  if(awv) begin
   if(addr!==32'h10000000+128*na || len!==15 || size!==3 || burst!==1) $fatal(1,"address");
   na<=na+1;
  end
  if(wv) begin
   if(nw>=777600 || strb!==255 || wl!==(nw%16==15) || $isunknown(data)) $fatal(1,"data");
   nw<=nw+1;
  end
  bv<=0;
  if(!bv && nresp<na && nresp<nw/16) begin bv<=1;nresp<=nresp+1;end
  t<=t+1;if(t>100000000) $fatal(1,"timeout");
 end
 initial begin
  repeat(5) @(negedge clk);rst=0;
  @(negedge clk);start=1;@(negedge clk);start=0;
  wait(done);@(negedge clk);
  if(np!=2073600 || nw!=777600 || na!=48600) $fatal(1,"incomplete frame");
  $display("PRECISION FULL FRAME PASSED W=%0d NSOLV=%0d: cycles=%0d at 100MHz = %0f ms (simulation, ideal AXI)",SW,NSOLV,cycles,cycles/100000.0);
  $finish;
 end
endmodule
