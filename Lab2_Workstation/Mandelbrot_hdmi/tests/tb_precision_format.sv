`timescale 1ns/1ps
module tb_precision_format;
 reg clk=0;always #5 clk=~clk;
 reg resetn=0,arvalid=0,rready=0;
 reg [5:0] addr=6'h28;
 wire [2:0] arready,rvalid;
 wire [31:0] data[0:2];
 genvar g;
 generate for(g=0;g<3;g=g+1)begin: R
 mandelbrot_driver_slave_lite_v1_0_S00_AXI #(.SOLVER_W(g==0?27:(g==1?24:18))) dut(
 .busy(1'b0),.done(1'b0),.cycles(32'd0),.btn(4'd0),.sw(4'd0),
 .S_AXI_ACLK(clk),.S_AXI_ARESETN(resetn),.S_AXI_AWADDR(6'd0),.S_AXI_AWPROT(3'd0),
 .S_AXI_AWVALID(1'b0),.S_AXI_WDATA(32'd0),.S_AXI_WSTRB(4'd0),.S_AXI_WVALID(1'b0),.S_AXI_BREADY(1'b1),
 .S_AXI_ARADDR(addr),.S_AXI_ARPROT(3'd0),.S_AXI_ARVALID(arvalid),.S_AXI_ARREADY(arready[g]),
 .S_AXI_RDATA(data[g]),.S_AXI_RVALID(rvalid[g]),.S_AXI_RREADY(rready));
 end endgenerate
 integer t=0;
 initial begin
  repeat(5)@(negedge clk);resetn=1;arvalid=1;
  while(arready!==3'b111)begin @(negedge clk);t=t+1;if(t>20)$fatal(1,"AR timeout");end
  @(negedge clk);arvalid=0;addr=0;
  while(rvalid!==3'b111)begin @(negedge clk);t=t+1;if(t>40)$fatal(1,"R timeout");end
  repeat(4)begin
   if(data[0]!==32'h4d42171b || data[1]!==32'h4d421418 || data[2]!==32'h4d420e12)$fatal(1,"format readback mismatch %h %h %h",data[0],data[1],data[2]);
   @(negedge clk);
  end
  rready=1;@(negedge clk);rready=0;
  $display("PRECISION FORMAT REGISTER PASSED: 27/24/18-bit variants with stalled AXI read");$finish;
 end
endmodule
