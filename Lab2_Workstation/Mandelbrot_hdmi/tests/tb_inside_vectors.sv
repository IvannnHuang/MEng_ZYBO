`timescale 1ns/1ps
module tb_inside_vectors;
 reg clk=0;always #5 clk=~clk;
 reg rst=1,iv=0,ready=0,accepted=0;
 wire ir,ov,hit;
 reg signed [26:0] cr=0,ci=0;
 reg [10:0] x=0,y=0;
 wire signed [26:0] ocr,oci;
 wire [10:0] ox,oy;
 reg [54:0] vectors[0:65535];
 integer sent=0,received=0,clocks=0,hits=0;
 reg [31:0] rng=32'h921f9aab;
 mandel_inside dut(.clk(clk),.rst(rst),.in_valid(iv),.in_ready(ir),
 .in_x(x),.in_y(y),.in_cr(cr),.in_ci(ci),.out_valid(ov),.out_ready(ready),
 .out_inside(hit),.out_x(ox),.out_y(oy),.out_cr(ocr),.out_ci(oci));
 always @(posedge clk) if(!rst) begin
  rng<={rng[30:0],rng[31]^rng[21]^rng[1]^rng[0]};
  clocks=clocks+1;
  if(clocks>1000000) $fatal(1,"classifier timeout");
  accepted=iv&&ir;
  if(accepted) sent=sent+1;
  if(ov) begin
   if(received>=65536 || {ocr,oci,hit}!==vectors[received] || ox!==(received%2048) || oy!==((received/2048)%2048))
    $fatal(1,"classifier mismatch at %0d: got %h expected %h, metadata %0d,%0d",received,{ocr,oci,hit},vectors[received],ox,oy);
   if(ready) begin received=received+1;if(hit) hits=hits+1;end
  end
  if(received==65536) begin
   $display("ALL CLASSIFIER VECTORS PASSED: %0d coordinates, %0d hits, random input gaps and output stalls",received,hits);
   $finish;
  end
 end
 always @(negedge clk) if(!rst) begin
  ready=rng[3]|rng[4];
  if(accepted || !iv) begin
   iv=(sent<65536) && rng[2];
   if(sent<65536) begin
    cr=vectors[sent][54:28];ci=vectors[sent][27:1];
    x=sent%2048;y=(sent/2048)%2048;
   end
  end
 end
 initial begin
  $readmemh("inside_vectors.mem",vectors);
  repeat(4) @(negedge clk);rst=0;
 end
endmodule
