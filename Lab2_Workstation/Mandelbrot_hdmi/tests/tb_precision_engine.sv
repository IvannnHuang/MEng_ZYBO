`timescale 1ns/1ps
module tb_precision_engine;
 reg clk=0; always #5 clk=~clk;
 reg rst=1,start=0;
 reg signed [26:0] cr,ci,step;
 reg [15:0] max_iter;
 reg [7:0] nact;
 wire [1:0] busy,done,awv,wv,wlast,br;
 wire [31:0] cycles[0:1],awaddr[0:1];
 wire [7:0] awlen[0:1],wstrb[0:1];
 wire [2:0] awsize[0:1]; wire [1:0] awburst[0:1];
 wire [63:0] wdata[0:1];
 reg [1:0] bv=0;
 wire [1:0] awr,wr;
 reg [31:0] rng=32'h43da1987;
 always @(posedge clk) rng<={rng[30:0],rng[31]^rng[21]^rng[1]^rng[0]};
 assign awr={rng[5]|rng[6],rng[1]|rng[2]};
 assign wr={rng[7]|rng[8],rng[3]|rng[4]};
 reg [63:0] mem[0:6143];
 reg [15:0] counts[0:16383];
 integer nw[0:1],na[0:1],np[0:1],responses[0:1];
 integer pending[0:1];
 genvar g;
 generate for(g=0;g<2;g=g+1) begin: E
 if(g==0) begin: OLD
 precision_baseline_engine #(.NSOLV(8),.FW(128),.FH(64),.XW(7),.YW(7),.RB(2)) dut (
 .clk(clk),.rst(rst),.start(start),.fb_addr(32'h10000000),
 .cr_left(cr),.ci_top(ci),.step(step),.max_iter(max_iter),.n_active(nact),
 .busy(busy[g]),.done(done[g]),.cycles(cycles[g]),
 .m_awaddr(awaddr[g]),.m_awlen(awlen[g]),.m_awsize(awsize[g]),
 .m_awburst(awburst[g]),.m_awvalid(awv[g]),.m_awready(awr[g]),
 .m_wdata(wdata[g]),.m_wstrb(wstrb[g]),.m_wlast(wlast[g]),
 .m_wvalid(wv[g]),.m_wready(wr[g]),.m_bresp(2'b00),
 .m_bvalid(bv[g]),.m_bready(br[g]));
 always @(posedge clk) if(!rst && dut.w1_v) begin
   if(dut.w1_x>=128 || dut.w1_y>=64) $fatal(1,"old pixel address");
   counts[dut.w1_y*128+dut.w1_x]<=dut.w1_cnt;
   np[g]<=np[g]+1;
 end
 end else begin: NEW
 mandel_engine #(.SW(24),.NSOLV(8),.FW(128),.FH(64),.XW(7),.YW(7),.RB(2)) dut (
 .clk(clk),.rst(rst),.start(start),.fb_addr(32'h10000000),
 .cr_left(cr),.ci_top(ci),.step(step),.max_iter(max_iter),.n_active(nact),
 .busy(busy[g]),.done(done[g]),.cycles(cycles[g]),
 .m_awaddr(awaddr[g]),.m_awlen(awlen[g]),.m_awsize(awsize[g]),
 .m_awburst(awburst[g]),.m_awvalid(awv[g]),.m_awready(awr[g]),
 .m_wdata(wdata[g]),.m_wstrb(wstrb[g]),.m_wlast(wlast[g]),
 .m_wvalid(wv[g]),.m_wready(wr[g]),.m_bresp(2'b00),
 .m_bvalid(bv[g]),.m_bready(br[g]));
 always @(posedge clk) if(!rst && dut.w1_v) begin
   if(dut.w1_x>=128 || dut.w1_y>=64) $fatal(1,"new pixel address");
   counts[8192+dut.w1_y*128+dut.w1_x]<=dut.w1_cnt;
   np[g]<=np[g]+1;
 end
 end
 always @(posedge clk) begin
  if(rst || start) begin nw[g]<=0; na[g]<=0; bv[g]<=0; pending[g]<=0; responses[g]<=0; end
  else begin
   if(awv[g] && awr[g]) begin
    if(awaddr[g] !== 32'h10000000+128*na[g] || awlen[g]!==15 || awsize[g]!==3 || awburst[g]!==1)
     $fatal(1,"AXI address mismatch");
    na[g]<=na[g]+1;
   end
   if(wv[g] && wr[g]) begin
    if(nw[g]>=3072 || wstrb[g]!==255 || wlast[g] !== (nw[g]%16==15) || $isunknown(wdata[g]))
     $fatal(1,"AXI data protocol");
    mem[g*3072+nw[g]]<=wdata[g]; nw[g]<=nw[g]+1;
   end
   // Respond only once both an address and a complete data burst exist.
   bv[g]<=0;
   if(!bv[g] && responses[g]<na[g] && responses[g]<nw[g]/16 && rng[10+g]) begin
    bv[g]<=1; responses[g]<=responses[g]+1;
   end
  end
 end
 end endgenerate
 reg [15:0] expected[0:8191];
 integer k,c,t,different;
 task frame;
 input integer id,real_c,imag_c,delta,it,active;
 begin
  @(negedge clk); cr=real_c;ci=imag_c;step=delta;max_iter=it;nact=active;
  np[0]=0;np[1]=0;
  for(k=0;k<16384;k=k+1) counts[k]=16'hxxxx;
  start=1; @(negedge clk);start=0;
  t=0;
  while(done!==2'b11) begin @(negedge clk);t=t+1; if(t>10000000) $fatal(1,"timeout frame %0d",id);end
  if(nw[0]!=3072 || nw[1]!=3072 || na[0]!=192 || na[1]!=192 || np[0]!=8192 || np[1]!=8192)
   $fatal(1,"missing or duplicated frame data");

  different=0;
  for(k=0;k<8192;k=k+1) begin
   if(counts[k+8192]!==expected[k]) $fatal(1,"independent 24bit model mismatch pixel=%0d got=%0d expected=%0d",k,counts[k+8192],expected[k]);
   if(counts[k]!==counts[k+8192]) different=different+1;
  end
  $display("PRECISION ENGINE MODEL PASSED frame=%0d changed_count_pixels=%0d of 8192",id,different);
  $display("PASS frame=%0d max_iter=%0d nact=%0d baseline=%0d optimized=%0d",id,it,active,cycles[0],cycles[1]);
 end endtask
 initial begin
  cr=0;ci=0;step=0;max_iter=1000;nact=8;np[0]=0;np[1]=0;
  repeat(5) @(negedge clk);rst=0;
  $readmemh("engine_w24_counts.mem",expected);
  frame(0,-16777216,6291456,196608,1000,8);
  $display("PRECISION ENGINE PASSED");$finish;
 end
endmodule
