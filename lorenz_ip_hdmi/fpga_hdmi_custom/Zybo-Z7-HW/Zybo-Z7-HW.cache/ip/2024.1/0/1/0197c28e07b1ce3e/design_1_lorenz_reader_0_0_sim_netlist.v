// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Thu Sep 17 01:47:06 2026
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_lorenz_reader_0_0_sim_netlist.v
// Design      : design_1_lorenz_reader_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_lorenz_reader_0_0,lorenz_reader,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lorenz_reader,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lorenz_reader inst
       (.axi_arready_reg(s00_axi_arready),
        .axi_awready_reg(s00_axi_awready),
        .axi_rvalid_reg(s00_axi_rvalid),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_integrator
   (DI,
    \v1_reg[7]_0 ,
    \v1_reg[11]_0 ,
    \v1_reg[15]_0 ,
    \v1_reg[19]_0 ,
    \v1_reg[23]_0 ,
    \v1_reg[25]_0 ,
    \v1_reg[26]_0 ,
    v1new,
    S,
    \v1_reg[25]_1 ,
    \v1_reg[26]_1 ,
    \v1_reg[25]_2 ,
    mult_out,
    mult_out_0,
    O,
    s00_axi_aclk,
    \v1_reg[7]_1 ,
    \v1_reg[11]_1 ,
    \v1_reg[15]_1 ,
    \v1_reg[19]_1 ,
    \v1_reg[23]_1 ,
    \v1_reg[26]_2 ,
    mult_out__0,
    adder_out_carry__5_0,
    B,
    mult_out__2_carry,
    mult_out__11_carry,
    P,
    adder_out_carry__4_0,
    adder_out_carry__5_1,
    adder_out_carry__5_2,
    \mult_out_inferred__0/i__carry ,
    \mult_out_inferred__0/i__carry_0 ,
    \mult_out_inferred__0/i__carry_1 );
  output [3:0]DI;
  output [3:0]\v1_reg[7]_0 ;
  output [3:0]\v1_reg[11]_0 ;
  output [3:0]\v1_reg[15]_0 ;
  output [3:0]\v1_reg[19]_0 ;
  output [3:0]\v1_reg[23]_0 ;
  output [1:0]\v1_reg[25]_0 ;
  output \v1_reg[26]_0 ;
  output [18:0]v1new;
  output [0:0]S;
  output [0:0]\v1_reg[25]_1 ;
  output [0:0]\v1_reg[26]_1 ;
  output [0:0]\v1_reg[25]_2 ;
  output [0:0]mult_out;
  output [0:0]mult_out_0;
  input [3:0]O;
  input s00_axi_aclk;
  input [3:0]\v1_reg[7]_1 ;
  input [3:0]\v1_reg[11]_1 ;
  input [3:0]\v1_reg[15]_1 ;
  input [3:0]\v1_reg[19]_1 ;
  input [3:0]\v1_reg[23]_1 ;
  input [2:0]\v1_reg[26]_2 ;
  input mult_out__0;
  input [0:0]adder_out_carry__5_0;
  input [3:0]B;
  input [0:0]mult_out__2_carry;
  input [0:0]mult_out__11_carry;
  input [16:0]P;
  input [3:0]adder_out_carry__4_0;
  input [3:0]adder_out_carry__5_1;
  input [0:0]adder_out_carry__5_2;
  input [0:0]\mult_out_inferred__0/i__carry ;
  input [0:0]\mult_out_inferred__0/i__carry_0 ;
  input [1:0]\mult_out_inferred__0/i__carry_1 ;

  wire [3:0]B;
  wire [3:0]DI;
  wire [3:0]O;
  wire [16:0]P;
  wire [0:0]S;
  wire [26:8]adder_out;
  wire adder_out_carry__0_i_1__0_n_0;
  wire adder_out_carry__0_i_2__0_n_0;
  wire adder_out_carry__0_i_3__0_n_0;
  wire adder_out_carry__0_i_4__0_n_0;
  wire adder_out_carry__0_n_0;
  wire adder_out_carry__0_n_1;
  wire adder_out_carry__0_n_2;
  wire adder_out_carry__0_n_3;
  wire adder_out_carry__1_i_1__0_n_0;
  wire adder_out_carry__1_i_2__0_n_0;
  wire adder_out_carry__1_i_3__0_n_0;
  wire adder_out_carry__1_i_4__0_n_0;
  wire adder_out_carry__1_n_0;
  wire adder_out_carry__1_n_1;
  wire adder_out_carry__1_n_2;
  wire adder_out_carry__1_n_3;
  wire adder_out_carry__2_i_1__0_n_0;
  wire adder_out_carry__2_i_2__0_n_0;
  wire adder_out_carry__2_i_3__0_n_0;
  wire adder_out_carry__2_i_4__0_n_0;
  wire adder_out_carry__2_n_0;
  wire adder_out_carry__2_n_1;
  wire adder_out_carry__2_n_2;
  wire adder_out_carry__2_n_3;
  wire adder_out_carry__3_i_1__0_n_0;
  wire adder_out_carry__3_i_2__0_n_0;
  wire adder_out_carry__3_i_3__0_n_0;
  wire adder_out_carry__3_i_4__0_n_0;
  wire adder_out_carry__3_n_0;
  wire adder_out_carry__3_n_1;
  wire adder_out_carry__3_n_2;
  wire adder_out_carry__3_n_3;
  wire [3:0]adder_out_carry__4_0;
  wire adder_out_carry__4_i_1__0_n_0;
  wire adder_out_carry__4_i_2__0_n_0;
  wire adder_out_carry__4_i_3__0_n_0;
  wire adder_out_carry__4_i_4__0_n_0;
  wire adder_out_carry__4_n_0;
  wire adder_out_carry__4_n_1;
  wire adder_out_carry__4_n_2;
  wire adder_out_carry__4_n_3;
  wire [0:0]adder_out_carry__5_0;
  wire [3:0]adder_out_carry__5_1;
  wire [0:0]adder_out_carry__5_2;
  wire adder_out_carry__5_i_1__1_n_0;
  wire adder_out_carry__5_i_2__0_n_0;
  wire adder_out_carry__5_i_3__0_n_0;
  wire adder_out_carry__5_n_2;
  wire adder_out_carry__5_n_3;
  wire adder_out_carry_i_1__0_n_0;
  wire adder_out_carry_i_2__0_n_0;
  wire adder_out_carry_i_3__0_n_0;
  wire adder_out_carry_i_4__0_n_0;
  wire adder_out_carry_n_0;
  wire adder_out_carry_n_1;
  wire adder_out_carry_n_2;
  wire adder_out_carry_n_3;
  wire [0:0]mult_out;
  wire [0:0]mult_out_0;
  wire mult_out__0;
  wire [0:0]mult_out__11_carry;
  wire [0:0]mult_out__2_carry;
  wire [0:0]\mult_out_inferred__0/i__carry ;
  wire [0:0]\mult_out_inferred__0/i__carry_0 ;
  wire [1:0]\mult_out_inferred__0/i__carry_1 ;
  wire s00_axi_aclk;
  wire [3:0]\v1_reg[11]_0 ;
  wire [3:0]\v1_reg[11]_1 ;
  wire [3:0]\v1_reg[15]_0 ;
  wire [3:0]\v1_reg[15]_1 ;
  wire [3:0]\v1_reg[19]_0 ;
  wire [3:0]\v1_reg[19]_1 ;
  wire [3:0]\v1_reg[23]_0 ;
  wire [3:0]\v1_reg[23]_1 ;
  wire [1:0]\v1_reg[25]_0 ;
  wire [0:0]\v1_reg[25]_1 ;
  wire [0:0]\v1_reg[25]_2 ;
  wire \v1_reg[26]_0 ;
  wire [0:0]\v1_reg[26]_1 ;
  wire [2:0]\v1_reg[26]_2 ;
  wire [3:0]\v1_reg[7]_0 ;
  wire [3:0]\v1_reg[7]_1 ;
  wire [18:0]v1new;
  wire [3:0]NLW_adder_out_carry_O_UNCONNECTED;
  wire [3:0]NLW_adder_out_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_adder_out_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_adder_out_carry__5_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry
       (.CI(1'b0),
        .CO({adder_out_carry_n_0,adder_out_carry_n_1,adder_out_carry_n_2,adder_out_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_adder_out_carry_O_UNCONNECTED[3:0]),
        .S({adder_out_carry_i_1__0_n_0,adder_out_carry_i_2__0_n_0,adder_out_carry_i_3__0_n_0,adder_out_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__0
       (.CI(adder_out_carry_n_0),
        .CO({adder_out_carry__0_n_0,adder_out_carry__0_n_1,adder_out_carry__0_n_2,adder_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[7]_0 ),
        .O(NLW_adder_out_carry__0_O_UNCONNECTED[3:0]),
        .S({adder_out_carry__0_i_1__0_n_0,adder_out_carry__0_i_2__0_n_0,adder_out_carry__0_i_3__0_n_0,adder_out_carry__0_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__0_i_1__0
       (.I0(\v1_reg[7]_0 [3]),
        .I1(P[7]),
        .O(adder_out_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__0_i_2__0
       (.I0(\v1_reg[7]_0 [2]),
        .I1(P[6]),
        .O(adder_out_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__0_i_3__0
       (.I0(\v1_reg[7]_0 [1]),
        .I1(P[5]),
        .O(adder_out_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__0_i_4__0
       (.I0(\v1_reg[7]_0 [0]),
        .I1(P[4]),
        .O(adder_out_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__1
       (.CI(adder_out_carry__0_n_0),
        .CO({adder_out_carry__1_n_0,adder_out_carry__1_n_1,adder_out_carry__1_n_2,adder_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[11]_0 ),
        .O(adder_out[11:8]),
        .S({adder_out_carry__1_i_1__0_n_0,adder_out_carry__1_i_2__0_n_0,adder_out_carry__1_i_3__0_n_0,adder_out_carry__1_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__1_i_1__0
       (.I0(\v1_reg[11]_0 [3]),
        .I1(P[11]),
        .O(adder_out_carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__1_i_2__0
       (.I0(\v1_reg[11]_0 [2]),
        .I1(P[10]),
        .O(adder_out_carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__1_i_3__0
       (.I0(\v1_reg[11]_0 [1]),
        .I1(P[9]),
        .O(adder_out_carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__1_i_4__0
       (.I0(\v1_reg[11]_0 [0]),
        .I1(P[8]),
        .O(adder_out_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__2
       (.CI(adder_out_carry__1_n_0),
        .CO({adder_out_carry__2_n_0,adder_out_carry__2_n_1,adder_out_carry__2_n_2,adder_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[15]_0 ),
        .O(adder_out[15:12]),
        .S({adder_out_carry__2_i_1__0_n_0,adder_out_carry__2_i_2__0_n_0,adder_out_carry__2_i_3__0_n_0,adder_out_carry__2_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__2_i_1__0
       (.I0(\v1_reg[15]_0 [3]),
        .I1(P[15]),
        .O(adder_out_carry__2_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__2_i_2__0
       (.I0(\v1_reg[15]_0 [2]),
        .I1(P[14]),
        .O(adder_out_carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__2_i_3__0
       (.I0(\v1_reg[15]_0 [1]),
        .I1(P[13]),
        .O(adder_out_carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__2_i_4__0
       (.I0(\v1_reg[15]_0 [0]),
        .I1(P[12]),
        .O(adder_out_carry__2_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__3
       (.CI(adder_out_carry__2_n_0),
        .CO({adder_out_carry__3_n_0,adder_out_carry__3_n_1,adder_out_carry__3_n_2,adder_out_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[19]_0 ),
        .O(adder_out[19:16]),
        .S({adder_out_carry__3_i_1__0_n_0,adder_out_carry__3_i_2__0_n_0,adder_out_carry__3_i_3__0_n_0,adder_out_carry__3_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__3_i_1__0
       (.I0(\v1_reg[19]_0 [3]),
        .I1(adder_out_carry__4_0[2]),
        .O(adder_out_carry__3_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__3_i_2__0
       (.I0(\v1_reg[19]_0 [2]),
        .I1(adder_out_carry__4_0[1]),
        .O(adder_out_carry__3_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__3_i_3__0
       (.I0(\v1_reg[19]_0 [1]),
        .I1(adder_out_carry__4_0[0]),
        .O(adder_out_carry__3_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__3_i_4__0
       (.I0(\v1_reg[19]_0 [0]),
        .I1(P[16]),
        .O(adder_out_carry__3_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__4
       (.CI(adder_out_carry__3_n_0),
        .CO({adder_out_carry__4_n_0,adder_out_carry__4_n_1,adder_out_carry__4_n_2,adder_out_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[23]_0 ),
        .O(adder_out[23:20]),
        .S({adder_out_carry__4_i_1__0_n_0,adder_out_carry__4_i_2__0_n_0,adder_out_carry__4_i_3__0_n_0,adder_out_carry__4_i_4__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__4_i_1__0
       (.I0(\v1_reg[23]_0 [3]),
        .I1(adder_out_carry__5_1[2]),
        .O(adder_out_carry__4_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__4_i_2__0
       (.I0(\v1_reg[23]_0 [2]),
        .I1(adder_out_carry__5_1[1]),
        .O(adder_out_carry__4_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__4_i_3__0
       (.I0(\v1_reg[23]_0 [1]),
        .I1(adder_out_carry__5_1[0]),
        .O(adder_out_carry__4_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__4_i_4__0
       (.I0(\v1_reg[23]_0 [0]),
        .I1(adder_out_carry__4_0[3]),
        .O(adder_out_carry__4_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__5
       (.CI(adder_out_carry__4_n_0),
        .CO({NLW_adder_out_carry__5_CO_UNCONNECTED[3:2],adder_out_carry__5_n_2,adder_out_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\v1_reg[25]_0 }),
        .O({NLW_adder_out_carry__5_O_UNCONNECTED[3],adder_out[26:24]}),
        .S({1'b0,adder_out_carry__5_i_1__1_n_0,adder_out_carry__5_i_2__0_n_0,adder_out_carry__5_i_3__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__5_i_1__1
       (.I0(\v1_reg[26]_0 ),
        .I1(adder_out_carry__5_0),
        .O(adder_out_carry__5_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__5_i_2__0
       (.I0(\v1_reg[25]_0 [1]),
        .I1(adder_out_carry__5_2),
        .O(adder_out_carry__5_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__5_i_3__0
       (.I0(\v1_reg[25]_0 [0]),
        .I1(adder_out_carry__5_1[3]),
        .O(adder_out_carry__5_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry_i_1__0
       (.I0(DI[3]),
        .I1(P[3]),
        .O(adder_out_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry_i_2__0
       (.I0(DI[2]),
        .I1(P[2]),
        .O(adder_out_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry_i_3__0
       (.I0(DI[1]),
        .I1(P[1]),
        .O(adder_out_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry_i_4__0
       (.I0(DI[0]),
        .I1(P[0]),
        .O(adder_out_carry_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h96665AAA)) 
    i__carry_i_3__2
       (.I0(\mult_out_inferred__0/i__carry ),
        .I1(\v1_reg[26]_0 ),
        .I2(\v1_reg[25]_0 [1]),
        .I3(B[1]),
        .I4(B[0]),
        .O(mult_out));
  LUT5 #(
    .INIT(32'h96665AAA)) 
    i__carry_i_3__4
       (.I0(\mult_out_inferred__0/i__carry_0 ),
        .I1(\v1_reg[26]_0 ),
        .I2(\v1_reg[25]_0 [1]),
        .I3(\mult_out_inferred__0/i__carry_1 [1]),
        .I4(\mult_out_inferred__0/i__carry_1 [0]),
        .O(mult_out_0));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_10__0
       (.I0(adder_out[15]),
        .I1(mult_out__0),
        .O(v1new[7]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_11__0
       (.I0(adder_out[14]),
        .I1(mult_out__0),
        .O(v1new[6]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_12__0
       (.I0(adder_out[13]),
        .I1(mult_out__0),
        .O(v1new[5]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_13__0
       (.I0(adder_out[12]),
        .I1(mult_out__0),
        .O(v1new[4]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_14__0
       (.I0(adder_out[11]),
        .I1(mult_out__0),
        .O(v1new[3]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_15__0
       (.I0(adder_out[10]),
        .I1(mult_out__0),
        .O(v1new[2]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_16__0
       (.I0(adder_out[9]),
        .I1(mult_out__0),
        .O(v1new[1]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_17__0
       (.I0(adder_out[8]),
        .I1(mult_out__0),
        .O(v1new[0]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out__0_i_1__0
       (.I0(adder_out[24]),
        .I1(mult_out__0),
        .O(v1new[16]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out__0_i_2__0
       (.I0(adder_out[23]),
        .I1(mult_out__0),
        .O(v1new[15]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out__0_i_3__0
       (.I0(adder_out[22]),
        .I1(mult_out__0),
        .O(v1new[14]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out__0_i_4__0
       (.I0(adder_out[21]),
        .I1(mult_out__0),
        .O(v1new[13]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out__0_i_5__0
       (.I0(adder_out[20]),
        .I1(mult_out__0),
        .O(v1new[12]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_6__0
       (.I0(adder_out[19]),
        .I1(mult_out__0),
        .O(v1new[11]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_7__0
       (.I0(adder_out[18]),
        .I1(mult_out__0),
        .O(v1new[10]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_8__0
       (.I0(adder_out[17]),
        .I1(mult_out__0),
        .O(v1new[9]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_9__0
       (.I0(adder_out[16]),
        .I1(mult_out__0),
        .O(v1new[8]));
  LUT2 #(
    .INIT(4'h8)) 
    mult_out__11_carry_i_3
       (.I0(\v1_reg[25]_0 [1]),
        .I1(B[2]),
        .O(\v1_reg[25]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    mult_out__11_carry_i_3__0
       (.I0(\v1_reg[25]_0 [1]),
        .I1(mult_out__11_carry),
        .O(\v1_reg[25]_2 ));
  LUT2 #(
    .INIT(4'h7)) 
    mult_out__2_carry_i_2
       (.I0(\v1_reg[26]_0 ),
        .I1(B[3]),
        .O(S));
  LUT2 #(
    .INIT(4'h7)) 
    mult_out__2_carry_i_2__0
       (.I0(\v1_reg[26]_0 ),
        .I1(mult_out__2_carry),
        .O(\v1_reg[26]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out_i_1__0
       (.I0(adder_out[26]),
        .I1(mult_out__0),
        .O(v1new[18]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out_i_2__0
       (.I0(adder_out[25]),
        .I1(mult_out__0),
        .O(v1new[17]));
  FDRE \v1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O[0]),
        .Q(DI[0]),
        .R(1'b0));
  FDRE \v1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[11]_1 [2]),
        .Q(\v1_reg[11]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[11]_1 [3]),
        .Q(\v1_reg[11]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[15]_1 [0]),
        .Q(\v1_reg[15]_0 [0]),
        .R(1'b0));
  FDRE \v1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[15]_1 [1]),
        .Q(\v1_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[15]_1 [2]),
        .Q(\v1_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[15]_1 [3]),
        .Q(\v1_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[19]_1 [0]),
        .Q(\v1_reg[19]_0 [0]),
        .R(1'b0));
  FDRE \v1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[19]_1 [1]),
        .Q(\v1_reg[19]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[19]_1 [2]),
        .Q(\v1_reg[19]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[19]_1 [3]),
        .Q(\v1_reg[19]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O[1]),
        .Q(DI[1]),
        .R(1'b0));
  FDRE \v1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[23]_1 [0]),
        .Q(\v1_reg[23]_0 [0]),
        .R(1'b0));
  FDRE \v1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[23]_1 [1]),
        .Q(\v1_reg[23]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[23]_1 [2]),
        .Q(\v1_reg[23]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[23]_1 [3]),
        .Q(\v1_reg[23]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[26]_2 [0]),
        .Q(\v1_reg[25]_0 [0]),
        .R(1'b0));
  FDRE \v1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[26]_2 [1]),
        .Q(\v1_reg[25]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[26]_2 [2]),
        .Q(\v1_reg[26]_0 ),
        .R(1'b0));
  FDRE \v1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O[2]),
        .Q(DI[2]),
        .R(1'b0));
  FDRE \v1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O[3]),
        .Q(DI[3]),
        .R(1'b0));
  FDRE \v1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[7]_1 [0]),
        .Q(\v1_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \v1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[7]_1 [1]),
        .Q(\v1_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[7]_1 [2]),
        .Q(\v1_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[7]_1 [3]),
        .Q(\v1_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[11]_1 [0]),
        .Q(\v1_reg[11]_0 [0]),
        .R(1'b0));
  FDRE \v1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[11]_1 [1]),
        .Q(\v1_reg[11]_0 [1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "integrator" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_integrator_0
   (DI,
    \v1_reg[7]_0 ,
    \v1_reg[11]_0 ,
    \v1_reg[15]_0 ,
    \v1_reg[19]_0 ,
    \v1_reg[23]_0 ,
    \v1_reg[25]_0 ,
    \v1_reg[26]_0 ,
    S,
    \v1_reg[17]_0 ,
    \v1_reg[22]_0 ,
    \v1_reg[26]_1 ,
    \v1_reg[26]_2 ,
    \v1_reg[26]_3 ,
    \v1_reg[23]_1 ,
    \v1_reg[19]_1 ,
    \v1_reg[15]_1 ,
    \v1_reg[11]_1 ,
    \v1_reg[7]_1 ,
    \v1_reg[3]_0 ,
    mult_out,
    B,
    \v1_reg[19]_2 ,
    \v1_reg[25]_1 ,
    \v1_reg[25]_2 ,
    \v1_reg[26]_4 ,
    \v1_reg[23]_2 ,
    mult_out__11_carry__1,
    mult_out_0,
    mult_out_1,
    \v1_reg[20]_0 ,
    \v1_reg[22]_1 ,
    \v1_reg[22]_2 ,
    s00_axi_aclk,
    O,
    mult_out_2,
    mult_out_3,
    mult_xrhoz_out,
    v1_reg_1,
    \mult_out_inferred__0/i__carry__2 ,
    P,
    \v1_reg[3]_1 ,
    mult_out_4,
    \v1_reg[7]_2 ,
    \v1_reg[11]_2 ,
    \v1_reg[15]_2 ,
    \v1_reg[19]_3 ,
    \v1_reg[23]_3 ,
    adder_out_carry__5_0,
    CO,
    mult_out__11_carry__1_0,
    i__carry__3_i_2__4);
  output [3:0]DI;
  output [3:0]\v1_reg[7]_0 ;
  output [3:0]\v1_reg[11]_0 ;
  output [3:0]\v1_reg[15]_0 ;
  output [3:0]\v1_reg[19]_0 ;
  output [3:0]\v1_reg[23]_0 ;
  output [1:0]\v1_reg[25]_0 ;
  output [0:0]\v1_reg[26]_0 ;
  output [3:0]S;
  output \v1_reg[17]_0 ;
  output [3:0]\v1_reg[22]_0 ;
  output [0:0]\v1_reg[26]_1 ;
  output [0:0]\v1_reg[26]_2 ;
  output [2:0]\v1_reg[26]_3 ;
  output [3:0]\v1_reg[23]_1 ;
  output [3:0]\v1_reg[19]_1 ;
  output [3:0]\v1_reg[15]_1 ;
  output [3:0]\v1_reg[11]_1 ;
  output [3:0]\v1_reg[7]_1 ;
  output [3:0]\v1_reg[3]_0 ;
  output [1:0]mult_out;
  output [9:0]B;
  output [16:0]\v1_reg[19]_2 ;
  output [3:0]\v1_reg[25]_1 ;
  output [0:0]\v1_reg[25]_2 ;
  output [1:0]\v1_reg[26]_4 ;
  output [0:0]\v1_reg[23]_2 ;
  output [0:0]mult_out__11_carry__1;
  output [0:0]mult_out_0;
  output [0:0]mult_out_1;
  output [1:0]\v1_reg[20]_0 ;
  output [3:0]\v1_reg[22]_1 ;
  output [3:0]\v1_reg[22]_2 ;
  input s00_axi_aclk;
  input [2:0]O;
  input [1:0]mult_out_2;
  input mult_out_3;
  input [1:0]mult_xrhoz_out;
  input [23:0]v1_reg_1;
  input [1:0]\mult_out_inferred__0/i__carry__2 ;
  input [3:0]P;
  input [3:0]\v1_reg[3]_1 ;
  input mult_out_4;
  input [3:0]\v1_reg[7]_2 ;
  input [3:0]\v1_reg[11]_2 ;
  input [3:0]\v1_reg[15]_2 ;
  input [3:0]\v1_reg[19]_3 ;
  input [3:0]\v1_reg[23]_3 ;
  input [2:0]adder_out_carry__5_0;
  input [0:0]CO;
  input [2:0]mult_out__11_carry__1_0;
  input [0:0]i__carry__3_i_2__4;

  wire [9:0]B;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [2:0]O;
  wire [3:0]P;
  wire [3:0]S;
  wire adder_out_carry__0_i_1__1_n_0;
  wire adder_out_carry__0_i_2__1_n_0;
  wire adder_out_carry__0_i_3__1_n_0;
  wire adder_out_carry__0_i_4__1_n_0;
  wire adder_out_carry__0_n_0;
  wire adder_out_carry__0_n_1;
  wire adder_out_carry__0_n_2;
  wire adder_out_carry__0_n_3;
  wire adder_out_carry__0_n_4;
  wire adder_out_carry__0_n_5;
  wire adder_out_carry__0_n_6;
  wire adder_out_carry__0_n_7;
  wire adder_out_carry__1_i_1__1_n_0;
  wire adder_out_carry__1_i_2__1_n_0;
  wire adder_out_carry__1_i_3__1_n_0;
  wire adder_out_carry__1_i_4__1_n_0;
  wire adder_out_carry__1_n_0;
  wire adder_out_carry__1_n_1;
  wire adder_out_carry__1_n_2;
  wire adder_out_carry__1_n_3;
  wire adder_out_carry__1_n_4;
  wire adder_out_carry__1_n_5;
  wire adder_out_carry__1_n_6;
  wire adder_out_carry__1_n_7;
  wire adder_out_carry__2_i_1__1_n_0;
  wire adder_out_carry__2_i_2__1_n_0;
  wire adder_out_carry__2_i_3__1_n_0;
  wire adder_out_carry__2_i_4__1_n_0;
  wire adder_out_carry__2_n_0;
  wire adder_out_carry__2_n_1;
  wire adder_out_carry__2_n_2;
  wire adder_out_carry__2_n_3;
  wire adder_out_carry__2_n_4;
  wire adder_out_carry__2_n_5;
  wire adder_out_carry__2_n_6;
  wire adder_out_carry__2_n_7;
  wire adder_out_carry__3_i_1__1_n_0;
  wire adder_out_carry__3_i_2__1_n_0;
  wire adder_out_carry__3_i_3__1_n_0;
  wire adder_out_carry__3_i_4__1_n_0;
  wire adder_out_carry__3_n_0;
  wire adder_out_carry__3_n_1;
  wire adder_out_carry__3_n_2;
  wire adder_out_carry__3_n_3;
  wire adder_out_carry__3_n_4;
  wire adder_out_carry__3_n_5;
  wire adder_out_carry__3_n_6;
  wire adder_out_carry__3_n_7;
  wire adder_out_carry__4_i_1__1_n_0;
  wire adder_out_carry__4_i_2__1_n_0;
  wire adder_out_carry__4_i_3__1_n_0;
  wire adder_out_carry__4_i_4__1_n_0;
  wire adder_out_carry__4_n_0;
  wire adder_out_carry__4_n_1;
  wire adder_out_carry__4_n_2;
  wire adder_out_carry__4_n_3;
  wire adder_out_carry__4_n_4;
  wire adder_out_carry__4_n_5;
  wire adder_out_carry__4_n_6;
  wire adder_out_carry__4_n_7;
  wire [2:0]adder_out_carry__5_0;
  wire adder_out_carry__5_i_1__0_n_0;
  wire adder_out_carry__5_i_2__1_n_0;
  wire adder_out_carry__5_i_3__1_n_0;
  wire adder_out_carry__5_n_2;
  wire adder_out_carry__5_n_3;
  wire adder_out_carry__5_n_5;
  wire adder_out_carry__5_n_6;
  wire adder_out_carry__5_n_7;
  wire adder_out_carry_i_1__1_n_0;
  wire adder_out_carry_i_2__1_n_0;
  wire adder_out_carry_i_3__1_n_0;
  wire adder_out_carry_i_4__1_n_0;
  wire adder_out_carry_n_0;
  wire adder_out_carry_n_1;
  wire adder_out_carry_n_2;
  wire adder_out_carry_n_3;
  wire adder_out_carry_n_4;
  wire adder_out_carry_n_5;
  wire adder_out_carry_n_6;
  wire adder_out_carry_n_7;
  wire [0:0]i__carry__3_i_2__4;
  wire [1:0]mult_out;
  wire [0:0]mult_out_0;
  wire [0:0]mult_out_1;
  wire [1:0]mult_out_2;
  wire mult_out_3;
  wire mult_out_4;
  wire mult_out__11_carry__0_i_10_n_0;
  wire mult_out__11_carry__0_i_11_n_0;
  wire mult_out__11_carry__0_i_9__0_n_0;
  wire [0:0]mult_out__11_carry__1;
  wire [2:0]mult_out__11_carry__1_0;
  wire [1:0]\mult_out_inferred__0/i__carry__2 ;
  wire [1:0]mult_xrhoz_out;
  wire s00_axi_aclk;
  wire \v1[0]_i_2_n_0 ;
  wire \v1[0]_i_3_n_0 ;
  wire \v1[0]_i_4_n_0 ;
  wire \v1[0]_i_5_n_0 ;
  wire \v1[0]_i_6_n_0 ;
  wire \v1[0]_i_7_n_0 ;
  wire \v1[0]_i_8_n_0 ;
  wire \v1[0]_i_9_n_0 ;
  wire \v1[12]_i_2_n_0 ;
  wire \v1[12]_i_3_n_0 ;
  wire \v1[12]_i_4_n_0 ;
  wire \v1[12]_i_5_n_0 ;
  wire \v1[12]_i_6_n_0 ;
  wire \v1[12]_i_7_n_0 ;
  wire \v1[12]_i_8_n_0 ;
  wire \v1[12]_i_9_n_0 ;
  wire \v1[16]_i_2_n_0 ;
  wire \v1[16]_i_3_n_0 ;
  wire \v1[16]_i_4_n_0 ;
  wire \v1[16]_i_5_n_0 ;
  wire \v1[16]_i_6_n_0 ;
  wire \v1[16]_i_7_n_0 ;
  wire \v1[16]_i_8_n_0 ;
  wire \v1[16]_i_9_n_0 ;
  wire \v1[20]_i_2_n_0 ;
  wire \v1[20]_i_3_n_0 ;
  wire \v1[20]_i_4_n_0 ;
  wire \v1[20]_i_5_n_0 ;
  wire \v1[20]_i_6_n_0 ;
  wire \v1[20]_i_7_n_0 ;
  wire \v1[20]_i_8_n_0 ;
  wire \v1[20]_i_9_n_0 ;
  wire \v1[4]_i_2_n_0 ;
  wire \v1[4]_i_3_n_0 ;
  wire \v1[4]_i_4_n_0 ;
  wire \v1[4]_i_5_n_0 ;
  wire \v1[4]_i_6_n_0 ;
  wire \v1[4]_i_7_n_0 ;
  wire \v1[4]_i_8_n_0 ;
  wire \v1[4]_i_9_n_0 ;
  wire \v1[8]_i_2_n_0 ;
  wire \v1[8]_i_3_n_0 ;
  wire \v1[8]_i_4_n_0 ;
  wire \v1[8]_i_5_n_0 ;
  wire \v1[8]_i_6_n_0 ;
  wire \v1[8]_i_7_n_0 ;
  wire \v1[8]_i_8_n_0 ;
  wire \v1[8]_i_9_n_0 ;
  wire \v1_reg[0]_i_1_n_0 ;
  wire \v1_reg[0]_i_1_n_1 ;
  wire \v1_reg[0]_i_1_n_2 ;
  wire \v1_reg[0]_i_1_n_3 ;
  wire \v1_reg[0]_i_1_n_4 ;
  wire \v1_reg[0]_i_1_n_5 ;
  wire \v1_reg[0]_i_1_n_6 ;
  wire \v1_reg[0]_i_1_n_7 ;
  wire [3:0]\v1_reg[11]_0 ;
  wire [3:0]\v1_reg[11]_1 ;
  wire [3:0]\v1_reg[11]_2 ;
  wire \v1_reg[12]_i_1_n_0 ;
  wire \v1_reg[12]_i_1_n_1 ;
  wire \v1_reg[12]_i_1_n_2 ;
  wire \v1_reg[12]_i_1_n_3 ;
  wire \v1_reg[12]_i_1_n_4 ;
  wire \v1_reg[12]_i_1_n_5 ;
  wire \v1_reg[12]_i_1_n_6 ;
  wire \v1_reg[12]_i_1_n_7 ;
  wire [3:0]\v1_reg[15]_0 ;
  wire [3:0]\v1_reg[15]_1 ;
  wire [3:0]\v1_reg[15]_2 ;
  wire \v1_reg[16]_i_1_n_0 ;
  wire \v1_reg[16]_i_1_n_1 ;
  wire \v1_reg[16]_i_1_n_2 ;
  wire \v1_reg[16]_i_1_n_3 ;
  wire \v1_reg[16]_i_1_n_4 ;
  wire \v1_reg[16]_i_1_n_5 ;
  wire \v1_reg[16]_i_1_n_6 ;
  wire \v1_reg[16]_i_1_n_7 ;
  wire \v1_reg[17]_0 ;
  wire [3:0]\v1_reg[19]_0 ;
  wire [3:0]\v1_reg[19]_1 ;
  wire [16:0]\v1_reg[19]_2 ;
  wire [3:0]\v1_reg[19]_3 ;
  wire [1:0]\v1_reg[20]_0 ;
  wire \v1_reg[20]_i_1_n_1 ;
  wire \v1_reg[20]_i_1_n_2 ;
  wire \v1_reg[20]_i_1_n_3 ;
  wire \v1_reg[20]_i_1_n_4 ;
  wire \v1_reg[20]_i_1_n_5 ;
  wire \v1_reg[20]_i_1_n_6 ;
  wire \v1_reg[20]_i_1_n_7 ;
  wire [3:0]\v1_reg[22]_0 ;
  wire [3:0]\v1_reg[22]_1 ;
  wire [3:0]\v1_reg[22]_2 ;
  wire [3:0]\v1_reg[23]_0 ;
  wire [3:0]\v1_reg[23]_1 ;
  wire [0:0]\v1_reg[23]_2 ;
  wire [3:0]\v1_reg[23]_3 ;
  wire [1:0]\v1_reg[25]_0 ;
  wire [3:0]\v1_reg[25]_1 ;
  wire [0:0]\v1_reg[25]_2 ;
  wire [0:0]\v1_reg[26]_0 ;
  wire [0:0]\v1_reg[26]_1 ;
  wire [0:0]\v1_reg[26]_2 ;
  wire [2:0]\v1_reg[26]_3 ;
  wire [1:0]\v1_reg[26]_4 ;
  wire [3:0]\v1_reg[3]_0 ;
  wire [3:0]\v1_reg[3]_1 ;
  wire \v1_reg[4]_i_1_n_0 ;
  wire \v1_reg[4]_i_1_n_1 ;
  wire \v1_reg[4]_i_1_n_2 ;
  wire \v1_reg[4]_i_1_n_3 ;
  wire \v1_reg[4]_i_1_n_4 ;
  wire \v1_reg[4]_i_1_n_5 ;
  wire \v1_reg[4]_i_1_n_6 ;
  wire \v1_reg[4]_i_1_n_7 ;
  wire [3:0]\v1_reg[7]_0 ;
  wire [3:0]\v1_reg[7]_1 ;
  wire [3:0]\v1_reg[7]_2 ;
  wire \v1_reg[8]_i_1_n_0 ;
  wire \v1_reg[8]_i_1_n_1 ;
  wire \v1_reg[8]_i_1_n_2 ;
  wire \v1_reg[8]_i_1_n_3 ;
  wire \v1_reg[8]_i_1_n_4 ;
  wire \v1_reg[8]_i_1_n_5 ;
  wire \v1_reg[8]_i_1_n_6 ;
  wire \v1_reg[8]_i_1_n_7 ;
  wire [23:0]v1_reg_1;
  wire [3:2]NLW_adder_out_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_adder_out_carry__5_O_UNCONNECTED;
  wire [3:1]NLW_i__carry__2_i_5__0_CO_UNCONNECTED;
  wire [3:0]NLW_i__carry__2_i_5__0_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry
       (.CI(1'b0),
        .CO({adder_out_carry_n_0,adder_out_carry_n_1,adder_out_carry_n_2,adder_out_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O({adder_out_carry_n_4,adder_out_carry_n_5,adder_out_carry_n_6,adder_out_carry_n_7}),
        .S({adder_out_carry_i_1__1_n_0,adder_out_carry_i_2__1_n_0,adder_out_carry_i_3__1_n_0,adder_out_carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__0
       (.CI(adder_out_carry_n_0),
        .CO({adder_out_carry__0_n_0,adder_out_carry__0_n_1,adder_out_carry__0_n_2,adder_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[7]_0 ),
        .O({adder_out_carry__0_n_4,adder_out_carry__0_n_5,adder_out_carry__0_n_6,adder_out_carry__0_n_7}),
        .S({adder_out_carry__0_i_1__1_n_0,adder_out_carry__0_i_2__1_n_0,adder_out_carry__0_i_3__1_n_0,adder_out_carry__0_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__0_i_1__1
       (.I0(\v1_reg[7]_0 [3]),
        .I1(\v1_reg[7]_2 [3]),
        .O(adder_out_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__0_i_2__1
       (.I0(\v1_reg[7]_0 [2]),
        .I1(\v1_reg[7]_2 [2]),
        .O(adder_out_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__0_i_3__1
       (.I0(\v1_reg[7]_0 [1]),
        .I1(\v1_reg[7]_2 [1]),
        .O(adder_out_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__0_i_4__1
       (.I0(\v1_reg[7]_0 [0]),
        .I1(\v1_reg[7]_2 [0]),
        .O(adder_out_carry__0_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__1
       (.CI(adder_out_carry__0_n_0),
        .CO({adder_out_carry__1_n_0,adder_out_carry__1_n_1,adder_out_carry__1_n_2,adder_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[11]_0 ),
        .O({adder_out_carry__1_n_4,adder_out_carry__1_n_5,adder_out_carry__1_n_6,adder_out_carry__1_n_7}),
        .S({adder_out_carry__1_i_1__1_n_0,adder_out_carry__1_i_2__1_n_0,adder_out_carry__1_i_3__1_n_0,adder_out_carry__1_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__1_i_1__1
       (.I0(\v1_reg[11]_0 [3]),
        .I1(\v1_reg[11]_2 [3]),
        .O(adder_out_carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__1_i_2__1
       (.I0(\v1_reg[11]_0 [2]),
        .I1(\v1_reg[11]_2 [2]),
        .O(adder_out_carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__1_i_3__1
       (.I0(\v1_reg[11]_0 [1]),
        .I1(\v1_reg[11]_2 [1]),
        .O(adder_out_carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__1_i_4__1
       (.I0(\v1_reg[11]_0 [0]),
        .I1(\v1_reg[11]_2 [0]),
        .O(adder_out_carry__1_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__2
       (.CI(adder_out_carry__1_n_0),
        .CO({adder_out_carry__2_n_0,adder_out_carry__2_n_1,adder_out_carry__2_n_2,adder_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[15]_0 ),
        .O({adder_out_carry__2_n_4,adder_out_carry__2_n_5,adder_out_carry__2_n_6,adder_out_carry__2_n_7}),
        .S({adder_out_carry__2_i_1__1_n_0,adder_out_carry__2_i_2__1_n_0,adder_out_carry__2_i_3__1_n_0,adder_out_carry__2_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__2_i_1__1
       (.I0(\v1_reg[15]_0 [3]),
        .I1(\v1_reg[15]_2 [3]),
        .O(adder_out_carry__2_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__2_i_2__1
       (.I0(\v1_reg[15]_0 [2]),
        .I1(\v1_reg[15]_2 [2]),
        .O(adder_out_carry__2_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__2_i_3__1
       (.I0(\v1_reg[15]_0 [1]),
        .I1(\v1_reg[15]_2 [1]),
        .O(adder_out_carry__2_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__2_i_4__1
       (.I0(\v1_reg[15]_0 [0]),
        .I1(\v1_reg[15]_2 [0]),
        .O(adder_out_carry__2_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__3
       (.CI(adder_out_carry__2_n_0),
        .CO({adder_out_carry__3_n_0,adder_out_carry__3_n_1,adder_out_carry__3_n_2,adder_out_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[19]_0 ),
        .O({adder_out_carry__3_n_4,adder_out_carry__3_n_5,adder_out_carry__3_n_6,adder_out_carry__3_n_7}),
        .S({adder_out_carry__3_i_1__1_n_0,adder_out_carry__3_i_2__1_n_0,adder_out_carry__3_i_3__1_n_0,adder_out_carry__3_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__3_i_1__1
       (.I0(\v1_reg[19]_0 [3]),
        .I1(\v1_reg[19]_3 [3]),
        .O(adder_out_carry__3_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__3_i_2__1
       (.I0(\v1_reg[19]_0 [2]),
        .I1(\v1_reg[19]_3 [2]),
        .O(adder_out_carry__3_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__3_i_3__1
       (.I0(\v1_reg[19]_0 [1]),
        .I1(\v1_reg[19]_3 [1]),
        .O(adder_out_carry__3_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__3_i_4__1
       (.I0(\v1_reg[19]_0 [0]),
        .I1(\v1_reg[19]_3 [0]),
        .O(adder_out_carry__3_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__4
       (.CI(adder_out_carry__3_n_0),
        .CO({adder_out_carry__4_n_0,adder_out_carry__4_n_1,adder_out_carry__4_n_2,adder_out_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[23]_0 ),
        .O({adder_out_carry__4_n_4,adder_out_carry__4_n_5,adder_out_carry__4_n_6,adder_out_carry__4_n_7}),
        .S({adder_out_carry__4_i_1__1_n_0,adder_out_carry__4_i_2__1_n_0,adder_out_carry__4_i_3__1_n_0,adder_out_carry__4_i_4__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__4_i_1__1
       (.I0(\v1_reg[23]_0 [3]),
        .I1(\v1_reg[23]_3 [3]),
        .O(adder_out_carry__4_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__4_i_2__1
       (.I0(\v1_reg[23]_0 [2]),
        .I1(\v1_reg[23]_3 [2]),
        .O(adder_out_carry__4_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__4_i_3__1
       (.I0(\v1_reg[23]_0 [1]),
        .I1(\v1_reg[23]_3 [1]),
        .O(adder_out_carry__4_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__4_i_4__1
       (.I0(\v1_reg[23]_0 [0]),
        .I1(\v1_reg[23]_3 [0]),
        .O(adder_out_carry__4_i_4__1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__5
       (.CI(adder_out_carry__4_n_0),
        .CO({NLW_adder_out_carry__5_CO_UNCONNECTED[3:2],adder_out_carry__5_n_2,adder_out_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\v1_reg[25]_0 }),
        .O({NLW_adder_out_carry__5_O_UNCONNECTED[3],adder_out_carry__5_n_5,adder_out_carry__5_n_6,adder_out_carry__5_n_7}),
        .S({1'b0,adder_out_carry__5_i_1__0_n_0,adder_out_carry__5_i_2__1_n_0,adder_out_carry__5_i_3__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__5_i_1__0
       (.I0(\v1_reg[26]_0 ),
        .I1(adder_out_carry__5_0[2]),
        .O(adder_out_carry__5_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__5_i_2__1
       (.I0(\v1_reg[25]_0 [1]),
        .I1(adder_out_carry__5_0[1]),
        .O(adder_out_carry__5_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__5_i_3__1
       (.I0(\v1_reg[25]_0 [0]),
        .I1(adder_out_carry__5_0[0]),
        .O(adder_out_carry__5_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry_i_1__1
       (.I0(DI[3]),
        .I1(\v1_reg[3]_1 [3]),
        .O(adder_out_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry_i_2__1
       (.I0(DI[2]),
        .I1(\v1_reg[3]_1 [2]),
        .O(adder_out_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry_i_3__1
       (.I0(DI[1]),
        .I1(\v1_reg[3]_1 [1]),
        .O(adder_out_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry_i_4__1
       (.I0(DI[0]),
        .I1(\v1_reg[3]_1 [0]),
        .O(adder_out_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_1
       (.I0(\v1_reg[7]_0 [3]),
        .I1(v1_reg_1[7]),
        .O(\v1_reg[7]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_2
       (.I0(\v1_reg[7]_0 [2]),
        .I1(v1_reg_1[6]),
        .O(\v1_reg[7]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_3
       (.I0(\v1_reg[7]_0 [1]),
        .I1(v1_reg_1[5]),
        .O(\v1_reg[7]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__0_i_4
       (.I0(\v1_reg[7]_0 [0]),
        .I1(v1_reg_1[4]),
        .O(\v1_reg[7]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__1_i_1
       (.I0(\v1_reg[11]_0 [3]),
        .I1(v1_reg_1[11]),
        .O(\v1_reg[11]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__1_i_2
       (.I0(\v1_reg[11]_0 [2]),
        .I1(v1_reg_1[10]),
        .O(\v1_reg[11]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__1_i_3
       (.I0(\v1_reg[11]_0 [1]),
        .I1(v1_reg_1[9]),
        .O(\v1_reg[11]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__1_i_4
       (.I0(\v1_reg[11]_0 [0]),
        .I1(v1_reg_1[8]),
        .O(\v1_reg[11]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__2_i_1
       (.I0(\v1_reg[15]_0 [3]),
        .I1(v1_reg_1[15]),
        .O(\v1_reg[15]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__2_i_2
       (.I0(\v1_reg[15]_0 [2]),
        .I1(v1_reg_1[14]),
        .O(\v1_reg[15]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__2_i_3
       (.I0(\v1_reg[15]_0 [1]),
        .I1(v1_reg_1[13]),
        .O(\v1_reg[15]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__2_i_4
       (.I0(\v1_reg[15]_0 [0]),
        .I1(v1_reg_1[12]),
        .O(\v1_reg[15]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__3_i_1
       (.I0(\v1_reg[19]_0 [3]),
        .I1(v1_reg_1[19]),
        .O(\v1_reg[19]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__3_i_2
       (.I0(\v1_reg[19]_0 [2]),
        .I1(v1_reg_1[18]),
        .O(\v1_reg[19]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__3_i_3
       (.I0(\v1_reg[19]_0 [1]),
        .I1(v1_reg_1[17]),
        .O(\v1_reg[19]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__3_i_4
       (.I0(\v1_reg[19]_0 [0]),
        .I1(v1_reg_1[16]),
        .O(\v1_reg[19]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__4_i_1
       (.I0(\v1_reg[23]_0 [3]),
        .I1(v1_reg_1[23]),
        .O(\v1_reg[23]_1 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__4_i_2
       (.I0(\v1_reg[23]_0 [2]),
        .I1(v1_reg_1[22]),
        .O(\v1_reg[23]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__4_i_3
       (.I0(\v1_reg[23]_0 [1]),
        .I1(v1_reg_1[21]),
        .O(\v1_reg[23]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__4_i_4
       (.I0(\v1_reg[23]_0 [0]),
        .I1(v1_reg_1[20]),
        .O(\v1_reg[23]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__5_i_1
       (.I0(\v1_reg[26]_0 ),
        .I1(mult_out_3),
        .O(\v1_reg[26]_3 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__5_i_2
       (.I0(\v1_reg[25]_0 [1]),
        .I1(mult_out_2[1]),
        .O(\v1_reg[26]_3 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry__5_i_3
       (.I0(\v1_reg[25]_0 [0]),
        .I1(mult_out_2[0]),
        .O(\v1_reg[26]_3 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_1
       (.I0(DI[3]),
        .I1(v1_reg_1[3]),
        .O(\v1_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_2
       (.I0(DI[2]),
        .I1(v1_reg_1[2]),
        .O(\v1_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_3
       (.I0(DI[1]),
        .I1(v1_reg_1[1]),
        .O(\v1_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    diff_y_x_carry_i_4
       (.I0(DI[0]),
        .I1(v1_reg_1[0]),
        .O(\v1_reg[3]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__3_i_1
       (.I0(\v1_reg[26]_0 ),
        .I1(mult_xrhoz_out[0]),
        .O(\v1_reg[26]_2 ));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__4_i_4
       (.I0(\v1_reg[26]_0 ),
        .I1(mult_xrhoz_out[1]),
        .O(\v1_reg[26]_1 ));
  LUT3 #(
    .INIT(8'h6A)) 
    i__carry__0_i_4__1
       (.I0(P[1]),
        .I1(\mult_out_inferred__0/i__carry__2 [1]),
        .I2(\mult_out_inferred__0/i__carry__2 [0]),
        .O(mult_out_1));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__2_i_1
       (.I0(\mult_out_inferred__0/i__carry__2 [1]),
        .O(\v1_reg[25]_2 ));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_2__5
       (.I0(\mult_out_inferred__0/i__carry__2 [1]),
        .I1(P[3]),
        .O(mult_out[1]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_3__1
       (.I0(\mult_out_inferred__0/i__carry__2 [1]),
        .I1(P[2]),
        .O(mult_out[0]));
  CARRY4 i__carry__2_i_5__0
       (.CI(i__carry__3_i_2__4),
        .CO({NLW_i__carry__2_i_5__0_CO_UNCONNECTED[3:1],mult_out__11_carry__1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_i__carry__2_i_5__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_1__1
       (.I0(P[0]),
        .I1(\mult_out_inferred__0/i__carry__2 [1]),
        .I2(\mult_out_inferred__0/i__carry__2 [0]),
        .O(mult_out_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h3C506CA0)) 
    mult_out__11_carry__0_i_10
       (.I0(\v1_reg[23]_0 [3]),
        .I1(\v1_reg[25]_0 [1]),
        .I2(mult_out_3),
        .I3(mult_out_2[1]),
        .I4(\v1_reg[25]_0 [0]),
        .O(mult_out__11_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCC04C8C8)) 
    mult_out__11_carry__0_i_11
       (.I0(\v1_reg[23]_0 [3]),
        .I1(mult_out_3),
        .I2(\v1_reg[25]_0 [0]),
        .I3(mult_out_2[1]),
        .I4(\v1_reg[25]_0 [1]),
        .O(mult_out__11_carry__0_i_11_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    mult_out__11_carry__0_i_1__0
       (.I0(mult_out__11_carry__0_i_9__0_n_0),
        .I1(mult_out__11_carry__1_0[0]),
        .I2(mult_out__11_carry__0_i_10_n_0),
        .O(\v1_reg[22]_0 [3]));
  LUT6 #(
    .INIT(64'h1771717177111111)) 
    mult_out__11_carry__0_i_2__0
       (.I0(mult_out__11_carry__0_i_9__0_n_0),
        .I1(\v1_reg[17]_0 ),
        .I2(\v1_reg[23]_0 [3]),
        .I3(\v1_reg[25]_0 [0]),
        .I4(mult_out_2[1]),
        .I5(mult_out_3),
        .O(\v1_reg[22]_0 [2]));
  LUT6 #(
    .INIT(64'h6996969699666666)) 
    mult_out__11_carry__0_i_3__0
       (.I0(mult_out__11_carry__0_i_9__0_n_0),
        .I1(\v1_reg[17]_0 ),
        .I2(\v1_reg[23]_0 [3]),
        .I3(\v1_reg[25]_0 [0]),
        .I4(mult_out_2[1]),
        .I5(mult_out_3),
        .O(\v1_reg[22]_0 [1]));
  LUT6 #(
    .INIT(64'h7777888877788888)) 
    mult_out__11_carry__0_i_4
       (.I0(\v1_reg[23]_0 [3]),
        .I1(mult_out_2[1]),
        .I2(\v1_reg[19]_0 [2]),
        .I3(\v1_reg[19]_0 [3]),
        .I4(mult_out_3),
        .I5(\v1_reg[19]_0 [1]),
        .O(\v1_reg[22]_0 [0]));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h963C3C69)) 
    mult_out__11_carry__0_i_5__0
       (.I0(mult_out__11_carry__0_i_9__0_n_0),
        .I1(mult_out__11_carry__1_0[1]),
        .I2(mult_out__11_carry__0_i_11_n_0),
        .I3(mult_out__11_carry__0_i_10_n_0),
        .I4(mult_out__11_carry__1_0[0]),
        .O(\v1_reg[22]_1 [3]));
  LUT4 #(
    .INIT(16'h9669)) 
    mult_out__11_carry__0_i_6__0
       (.I0(\v1_reg[22]_0 [2]),
        .I1(mult_out__11_carry__0_i_10_n_0),
        .I2(mult_out__11_carry__1_0[0]),
        .I3(mult_out__11_carry__0_i_9__0_n_0),
        .O(\v1_reg[22]_1 [2]));
  LUT6 #(
    .INIT(64'h6969A55AC33C0FF0)) 
    mult_out__11_carry__0_i_7__0
       (.I0(mult_out_3),
        .I1(\v1_reg[25]_0 [0]),
        .I2(mult_out__11_carry__0_i_9__0_n_0),
        .I3(\v1_reg[17]_0 ),
        .I4(mult_out_2[1]),
        .I5(\v1_reg[23]_0 [3]),
        .O(\v1_reg[22]_1 [1]));
  LUT6 #(
    .INIT(64'h5959AAAA5966AAAA)) 
    mult_out__11_carry__0_i_8__0
       (.I0(\v1_reg[22]_0 [0]),
        .I1(\v1_reg[23]_0 [2]),
        .I2(mult_out_2[1]),
        .I3(\v1_reg[23]_0 [1]),
        .I4(mult_out_3),
        .I5(\v1_reg[23]_0 [0]),
        .O(\v1_reg[22]_1 [0]));
  LUT4 #(
    .INIT(16'h0F1F)) 
    mult_out__11_carry__0_i_9__0
       (.I0(\v1_reg[23]_0 [2]),
        .I1(\v1_reg[23]_0 [1]),
        .I2(mult_out_3),
        .I3(\v1_reg[23]_0 [0]),
        .O(mult_out__11_carry__0_i_9__0_n_0));
  LUT4 #(
    .INIT(16'h01FF)) 
    mult_out__11_carry__1_i_1__0
       (.I0(\v1_reg[25]_0 [1]),
        .I1(\v1_reg[25]_0 [0]),
        .I2(\v1_reg[23]_0 [3]),
        .I3(mult_out_3),
        .O(\v1_reg[25]_1 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    mult_out__11_carry__1_i_2__0
       (.I0(mult_out__11_carry__0_i_9__0_n_0),
        .I1(\v1_reg[25]_1 [3]),
        .I2(CO),
        .O(\v1_reg[25]_1 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    mult_out__11_carry__1_i_3__0
       (.I0(mult_out__11_carry__0_i_9__0_n_0),
        .I1(\v1_reg[25]_1 [3]),
        .I2(CO),
        .O(\v1_reg[25]_1 [1]));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    mult_out__11_carry__1_i_4__0
       (.I0(mult_out__11_carry__0_i_9__0_n_0),
        .I1(mult_out__11_carry__1_0[1]),
        .I2(mult_out__11_carry__0_i_11_n_0),
        .O(\v1_reg[25]_1 [0]));
  LUT3 #(
    .INIT(8'h7E)) 
    mult_out__11_carry__1_i_5__0
       (.I0(CO),
        .I1(mult_out__11_carry__0_i_9__0_n_0),
        .I2(\v1_reg[25]_1 [3]),
        .O(\v1_reg[22]_2 [3]));
  LUT3 #(
    .INIT(8'h7E)) 
    mult_out__11_carry__1_i_6__0
       (.I0(CO),
        .I1(\v1_reg[25]_1 [3]),
        .I2(mult_out__11_carry__0_i_9__0_n_0),
        .O(\v1_reg[22]_2 [2]));
  LUT4 #(
    .INIT(16'h366C)) 
    mult_out__11_carry__1_i_7__0
       (.I0(mult_out__11_carry__1_0[2]),
        .I1(CO),
        .I2(\v1_reg[25]_1 [3]),
        .I3(mult_out__11_carry__0_i_9__0_n_0),
        .O(\v1_reg[22]_2 [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    mult_out__11_carry__1_i_8__0
       (.I0(\v1_reg[25]_1 [0]),
        .I1(mult_out__11_carry__1_0[2]),
        .I2(\v1_reg[25]_1 [3]),
        .I3(mult_out__11_carry__0_i_9__0_n_0),
        .O(\v1_reg[22]_2 [0]));
  LUT5 #(
    .INIT(32'h3C506CA0)) 
    mult_out__11_carry_i_1__0
       (.I0(\v1_reg[23]_0 [0]),
        .I1(\v1_reg[23]_0 [2]),
        .I2(mult_out_3),
        .I3(mult_out_2[1]),
        .I4(\v1_reg[23]_0 [1]),
        .O(\v1_reg[20]_0 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    mult_out__11_carry_i_2__0
       (.I0(\v1_reg[23]_0 [0]),
        .I1(mult_out_3),
        .I2(\v1_reg[23]_0 [1]),
        .I3(mult_out_2[1]),
        .O(\v1_reg[20]_0 [0]));
  LUT6 #(
    .INIT(64'h1CD06CA0E32F935F)) 
    mult_out__11_carry_i_4__0
       (.I0(\v1_reg[23]_0 [1]),
        .I1(mult_out_2[1]),
        .I2(mult_out_3),
        .I3(\v1_reg[23]_0 [2]),
        .I4(\v1_reg[23]_0 [0]),
        .I5(\v1_reg[17]_0 ),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h78888777)) 
    mult_out__11_carry_i_5__0
       (.I0(mult_out_2[1]),
        .I1(\v1_reg[23]_0 [1]),
        .I2(mult_out_3),
        .I3(\v1_reg[23]_0 [0]),
        .I4(\v1_reg[17]_0 ),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h55AA0F0056AA3C00)) 
    mult_out__11_carry_i_6__0
       (.I0(\v1_reg[23]_0 [0]),
        .I1(\v1_reg[19]_0 [1]),
        .I2(\v1_reg[19]_0 [3]),
        .I3(mult_out_3),
        .I4(mult_out_2[1]),
        .I5(\v1_reg[19]_0 [2]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h3C506CA0)) 
    mult_out__11_carry_i_7__0
       (.I0(\v1_reg[19]_0 [1]),
        .I1(\v1_reg[19]_0 [3]),
        .I2(mult_out_3),
        .I3(mult_out_2[1]),
        .I4(\v1_reg[19]_0 [2]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__1_i_1
       (.I0(adder_out_carry__5_n_5),
        .I1(mult_out_4),
        .O(B[9]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__1_i_10__0
       (.I0(adder_out_carry__3_n_6),
        .I1(mult_out_4),
        .O(B[0]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__1_i_2
       (.I0(adder_out_carry__5_n_6),
        .I1(mult_out_4),
        .O(B[8]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__1_i_3
       (.I0(adder_out_carry__5_n_7),
        .I1(mult_out_4),
        .O(B[7]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__1_i_4__0
       (.I0(adder_out_carry__4_n_4),
        .I1(mult_out_4),
        .O(B[6]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__1_i_5__0
       (.I0(adder_out_carry__4_n_5),
        .I1(mult_out_4),
        .O(B[5]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__1_i_6
       (.I0(adder_out_carry__4_n_6),
        .I1(mult_out_4),
        .O(B[4]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__1_i_7
       (.I0(adder_out_carry__4_n_7),
        .I1(mult_out_4),
        .O(B[3]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__1_i_8
       (.I0(adder_out_carry__3_n_4),
        .I1(mult_out_4),
        .O(B[2]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__1_i_9__0
       (.I0(adder_out_carry__3_n_5),
        .I1(mult_out_4),
        .O(B[1]));
  LUT4 #(
    .INIT(16'h3337)) 
    mult_out__2_carry_i_1__0
       (.I0(\v1_reg[19]_0 [1]),
        .I1(mult_out_3),
        .I2(\v1_reg[19]_0 [3]),
        .I3(\v1_reg[19]_0 [2]),
        .O(\v1_reg[17]_0 ));
  LUT6 #(
    .INIT(64'h7777888877788888)) 
    mult_out__2_carry_i_3__0
       (.I0(\v1_reg[26]_0 ),
        .I1(mult_out_2[1]),
        .I2(\v1_reg[19]_0 [2]),
        .I3(\v1_reg[19]_0 [3]),
        .I4(mult_out_3),
        .I5(\v1_reg[19]_0 [1]),
        .O(\v1_reg[26]_4 [1]));
  LUT4 #(
    .INIT(16'hF0E0)) 
    mult_out__2_carry_i_4__0
       (.I0(\v1_reg[19]_0 [2]),
        .I1(\v1_reg[19]_0 [3]),
        .I2(mult_out_3),
        .I3(\v1_reg[19]_0 [1]),
        .O(\v1_reg[26]_4 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out_i_10__0
       (.I0(adder_out_carry__0_n_4),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [7]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out_i_11__0
       (.I0(adder_out_carry__0_n_5),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [6]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out_i_12__0
       (.I0(adder_out_carry__0_n_6),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [5]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out_i_13__0
       (.I0(adder_out_carry__0_n_7),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [4]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out_i_14__0
       (.I0(adder_out_carry_n_4),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out_i_15__0
       (.I0(adder_out_carry_n_5),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out_i_16__0
       (.I0(adder_out_carry_n_6),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out_i_17__0
       (.I0(adder_out_carry_n_7),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out_i_1__1
       (.I0(adder_out_carry__3_n_7),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [16]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out_i_2__1
       (.I0(adder_out_carry__2_n_4),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [15]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out_i_3
       (.I0(adder_out_carry__2_n_5),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [14]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out_i_4
       (.I0(adder_out_carry__2_n_6),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [13]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out_i_5
       (.I0(adder_out_carry__2_n_7),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [12]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out_i_6
       (.I0(adder_out_carry__1_n_4),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [11]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out_i_7__0
       (.I0(adder_out_carry__1_n_5),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [10]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out_i_8__0
       (.I0(adder_out_carry__1_n_6),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [9]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out_i_9__0
       (.I0(adder_out_carry__1_n_7),
        .I1(mult_out_4),
        .O(\v1_reg[19]_2 [8]));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[0]_i_2 
       (.I0(\v1_reg[3]_1 [3]),
        .I1(mult_out_4),
        .O(\v1[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[0]_i_3 
       (.I0(\v1_reg[3]_1 [2]),
        .I1(mult_out_4),
        .O(\v1[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[0]_i_4 
       (.I0(\v1_reg[3]_1 [1]),
        .I1(mult_out_4),
        .O(\v1[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[0]_i_5 
       (.I0(\v1_reg[3]_1 [0]),
        .I1(mult_out_4),
        .O(\v1[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[0]_i_6 
       (.I0(\v1_reg[3]_1 [3]),
        .I1(DI[3]),
        .I2(mult_out_4),
        .O(\v1[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[0]_i_7 
       (.I0(\v1_reg[3]_1 [2]),
        .I1(mult_out_4),
        .I2(DI[2]),
        .O(\v1[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[0]_i_8 
       (.I0(\v1_reg[3]_1 [1]),
        .I1(DI[1]),
        .I2(mult_out_4),
        .O(\v1[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[0]_i_9 
       (.I0(\v1_reg[3]_1 [0]),
        .I1(mult_out_4),
        .I2(DI[0]),
        .O(\v1[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[12]_i_2 
       (.I0(\v1_reg[15]_2 [3]),
        .I1(mult_out_4),
        .O(\v1[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[12]_i_3 
       (.I0(\v1_reg[15]_2 [2]),
        .I1(mult_out_4),
        .O(\v1[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[12]_i_4 
       (.I0(\v1_reg[15]_2 [1]),
        .I1(mult_out_4),
        .O(\v1[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[12]_i_5 
       (.I0(\v1_reg[15]_2 [0]),
        .I1(mult_out_4),
        .O(\v1[12]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[12]_i_6 
       (.I0(\v1_reg[15]_2 [3]),
        .I1(\v1_reg[15]_0 [3]),
        .I2(mult_out_4),
        .O(\v1[12]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[12]_i_7 
       (.I0(\v1_reg[15]_2 [2]),
        .I1(mult_out_4),
        .I2(\v1_reg[15]_0 [2]),
        .O(\v1[12]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[12]_i_8 
       (.I0(\v1_reg[15]_2 [1]),
        .I1(mult_out_4),
        .I2(\v1_reg[15]_0 [1]),
        .O(\v1[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[12]_i_9 
       (.I0(\v1_reg[15]_2 [0]),
        .I1(\v1_reg[15]_0 [0]),
        .I2(mult_out_4),
        .O(\v1[12]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[16]_i_2 
       (.I0(\v1_reg[19]_3 [3]),
        .I1(mult_out_4),
        .O(\v1[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[16]_i_3 
       (.I0(\v1_reg[19]_3 [2]),
        .I1(mult_out_4),
        .O(\v1[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[16]_i_4 
       (.I0(\v1_reg[19]_3 [1]),
        .I1(mult_out_4),
        .O(\v1[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[16]_i_5 
       (.I0(\v1_reg[19]_3 [0]),
        .I1(mult_out_4),
        .O(\v1[16]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[16]_i_6 
       (.I0(\v1_reg[19]_3 [3]),
        .I1(mult_out_4),
        .I2(\v1_reg[19]_0 [3]),
        .O(\v1[16]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[16]_i_7 
       (.I0(\v1_reg[19]_3 [2]),
        .I1(mult_out_4),
        .I2(\v1_reg[19]_0 [2]),
        .O(\v1[16]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[16]_i_8 
       (.I0(\v1_reg[19]_3 [1]),
        .I1(mult_out_4),
        .I2(\v1_reg[19]_0 [1]),
        .O(\v1[16]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[16]_i_9 
       (.I0(\v1_reg[19]_3 [0]),
        .I1(\v1_reg[19]_0 [0]),
        .I2(mult_out_4),
        .O(\v1[16]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[20]_i_2 
       (.I0(\v1_reg[23]_3 [3]),
        .I1(mult_out_4),
        .O(\v1[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[20]_i_3 
       (.I0(\v1_reg[23]_3 [2]),
        .I1(mult_out_4),
        .O(\v1[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[20]_i_4 
       (.I0(\v1_reg[23]_3 [1]),
        .I1(mult_out_4),
        .O(\v1[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[20]_i_5 
       (.I0(\v1_reg[23]_3 [0]),
        .I1(mult_out_4),
        .O(\v1[20]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[20]_i_6 
       (.I0(\v1_reg[23]_3 [3]),
        .I1(mult_out_4),
        .I2(\v1_reg[23]_0 [3]),
        .O(\v1[20]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[20]_i_7 
       (.I0(\v1_reg[23]_3 [2]),
        .I1(mult_out_4),
        .I2(\v1_reg[23]_0 [2]),
        .O(\v1[20]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[20]_i_8 
       (.I0(\v1_reg[23]_3 [1]),
        .I1(mult_out_4),
        .I2(\v1_reg[23]_0 [1]),
        .O(\v1[20]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[20]_i_9 
       (.I0(\v1_reg[23]_3 [0]),
        .I1(mult_out_4),
        .I2(\v1_reg[23]_0 [0]),
        .O(\v1[20]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[4]_i_2 
       (.I0(\v1_reg[7]_2 [3]),
        .I1(mult_out_4),
        .O(\v1[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[4]_i_3 
       (.I0(\v1_reg[7]_2 [2]),
        .I1(mult_out_4),
        .O(\v1[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[4]_i_4 
       (.I0(\v1_reg[7]_2 [1]),
        .I1(mult_out_4),
        .O(\v1[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[4]_i_5 
       (.I0(\v1_reg[7]_2 [0]),
        .I1(mult_out_4),
        .O(\v1[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[4]_i_6 
       (.I0(\v1_reg[7]_2 [3]),
        .I1(\v1_reg[7]_0 [3]),
        .I2(mult_out_4),
        .O(\v1[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[4]_i_7 
       (.I0(\v1_reg[7]_2 [2]),
        .I1(mult_out_4),
        .I2(\v1_reg[7]_0 [2]),
        .O(\v1[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[4]_i_8 
       (.I0(\v1_reg[7]_2 [1]),
        .I1(mult_out_4),
        .I2(\v1_reg[7]_0 [1]),
        .O(\v1[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[4]_i_9 
       (.I0(\v1_reg[7]_2 [0]),
        .I1(\v1_reg[7]_0 [0]),
        .I2(mult_out_4),
        .O(\v1[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[8]_i_2 
       (.I0(\v1_reg[11]_2 [3]),
        .I1(mult_out_4),
        .O(\v1[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[8]_i_3 
       (.I0(\v1_reg[11]_2 [2]),
        .I1(mult_out_4),
        .O(\v1[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[8]_i_4 
       (.I0(\v1_reg[11]_2 [1]),
        .I1(mult_out_4),
        .O(\v1[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[8]_i_5 
       (.I0(\v1_reg[11]_2 [0]),
        .I1(mult_out_4),
        .O(\v1[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[8]_i_6 
       (.I0(\v1_reg[11]_2 [3]),
        .I1(\v1_reg[11]_0 [3]),
        .I2(mult_out_4),
        .O(\v1[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[8]_i_7 
       (.I0(\v1_reg[11]_2 [2]),
        .I1(mult_out_4),
        .I2(\v1_reg[11]_0 [2]),
        .O(\v1[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[8]_i_8 
       (.I0(\v1_reg[11]_2 [1]),
        .I1(mult_out_4),
        .I2(\v1_reg[11]_0 [1]),
        .O(\v1[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[8]_i_9 
       (.I0(\v1_reg[11]_2 [0]),
        .I1(\v1_reg[11]_0 [0]),
        .I2(mult_out_4),
        .O(\v1[8]_i_9_n_0 ));
  FDRE \v1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[0]_i_1_n_7 ),
        .Q(DI[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\v1_reg[0]_i_1_n_0 ,\v1_reg[0]_i_1_n_1 ,\v1_reg[0]_i_1_n_2 ,\v1_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[0]_i_2_n_0 ,\v1[0]_i_3_n_0 ,\v1[0]_i_4_n_0 ,\v1[0]_i_5_n_0 }),
        .O({\v1_reg[0]_i_1_n_4 ,\v1_reg[0]_i_1_n_5 ,\v1_reg[0]_i_1_n_6 ,\v1_reg[0]_i_1_n_7 }),
        .S({\v1[0]_i_6_n_0 ,\v1[0]_i_7_n_0 ,\v1[0]_i_8_n_0 ,\v1[0]_i_9_n_0 }));
  FDRE \v1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[8]_i_1_n_5 ),
        .Q(\v1_reg[11]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[8]_i_1_n_4 ),
        .Q(\v1_reg[11]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[12]_i_1_n_7 ),
        .Q(\v1_reg[15]_0 [0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[12]_i_1 
       (.CI(\v1_reg[8]_i_1_n_0 ),
        .CO({\v1_reg[12]_i_1_n_0 ,\v1_reg[12]_i_1_n_1 ,\v1_reg[12]_i_1_n_2 ,\v1_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[12]_i_2_n_0 ,\v1[12]_i_3_n_0 ,\v1[12]_i_4_n_0 ,\v1[12]_i_5_n_0 }),
        .O({\v1_reg[12]_i_1_n_4 ,\v1_reg[12]_i_1_n_5 ,\v1_reg[12]_i_1_n_6 ,\v1_reg[12]_i_1_n_7 }),
        .S({\v1[12]_i_6_n_0 ,\v1[12]_i_7_n_0 ,\v1[12]_i_8_n_0 ,\v1[12]_i_9_n_0 }));
  FDRE \v1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[12]_i_1_n_6 ),
        .Q(\v1_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[12]_i_1_n_5 ),
        .Q(\v1_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[12]_i_1_n_4 ),
        .Q(\v1_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[16]_i_1_n_7 ),
        .Q(\v1_reg[19]_0 [0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[16]_i_1 
       (.CI(\v1_reg[12]_i_1_n_0 ),
        .CO({\v1_reg[16]_i_1_n_0 ,\v1_reg[16]_i_1_n_1 ,\v1_reg[16]_i_1_n_2 ,\v1_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[16]_i_2_n_0 ,\v1[16]_i_3_n_0 ,\v1[16]_i_4_n_0 ,\v1[16]_i_5_n_0 }),
        .O({\v1_reg[16]_i_1_n_4 ,\v1_reg[16]_i_1_n_5 ,\v1_reg[16]_i_1_n_6 ,\v1_reg[16]_i_1_n_7 }),
        .S({\v1[16]_i_6_n_0 ,\v1[16]_i_7_n_0 ,\v1[16]_i_8_n_0 ,\v1[16]_i_9_n_0 }));
  FDRE \v1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[16]_i_1_n_6 ),
        .Q(\v1_reg[19]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[16]_i_1_n_5 ),
        .Q(\v1_reg[19]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[16]_i_1_n_4 ),
        .Q(\v1_reg[19]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[0]_i_1_n_6 ),
        .Q(DI[1]),
        .R(1'b0));
  FDRE \v1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[20]_i_1_n_7 ),
        .Q(\v1_reg[23]_0 [0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[20]_i_1 
       (.CI(\v1_reg[16]_i_1_n_0 ),
        .CO({\v1_reg[23]_2 ,\v1_reg[20]_i_1_n_1 ,\v1_reg[20]_i_1_n_2 ,\v1_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[20]_i_2_n_0 ,\v1[20]_i_3_n_0 ,\v1[20]_i_4_n_0 ,\v1[20]_i_5_n_0 }),
        .O({\v1_reg[20]_i_1_n_4 ,\v1_reg[20]_i_1_n_5 ,\v1_reg[20]_i_1_n_6 ,\v1_reg[20]_i_1_n_7 }),
        .S({\v1[20]_i_6_n_0 ,\v1[20]_i_7_n_0 ,\v1[20]_i_8_n_0 ,\v1[20]_i_9_n_0 }));
  FDRE \v1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[20]_i_1_n_6 ),
        .Q(\v1_reg[23]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[20]_i_1_n_5 ),
        .Q(\v1_reg[23]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[20]_i_1_n_4 ),
        .Q(\v1_reg[23]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O[0]),
        .Q(\v1_reg[25]_0 [0]),
        .R(1'b0));
  FDRE \v1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O[1]),
        .Q(\v1_reg[25]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O[2]),
        .Q(\v1_reg[26]_0 ),
        .R(1'b0));
  FDRE \v1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[0]_i_1_n_5 ),
        .Q(DI[2]),
        .R(1'b0));
  FDRE \v1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[0]_i_1_n_4 ),
        .Q(DI[3]),
        .R(1'b0));
  FDRE \v1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[4]_i_1_n_7 ),
        .Q(\v1_reg[7]_0 [0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[4]_i_1 
       (.CI(\v1_reg[0]_i_1_n_0 ),
        .CO({\v1_reg[4]_i_1_n_0 ,\v1_reg[4]_i_1_n_1 ,\v1_reg[4]_i_1_n_2 ,\v1_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[4]_i_2_n_0 ,\v1[4]_i_3_n_0 ,\v1[4]_i_4_n_0 ,\v1[4]_i_5_n_0 }),
        .O({\v1_reg[4]_i_1_n_4 ,\v1_reg[4]_i_1_n_5 ,\v1_reg[4]_i_1_n_6 ,\v1_reg[4]_i_1_n_7 }),
        .S({\v1[4]_i_6_n_0 ,\v1[4]_i_7_n_0 ,\v1[4]_i_8_n_0 ,\v1[4]_i_9_n_0 }));
  FDRE \v1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[4]_i_1_n_6 ),
        .Q(\v1_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[4]_i_1_n_5 ),
        .Q(\v1_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[4]_i_1_n_4 ),
        .Q(\v1_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[8]_i_1_n_7 ),
        .Q(\v1_reg[11]_0 [0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[8]_i_1 
       (.CI(\v1_reg[4]_i_1_n_0 ),
        .CO({\v1_reg[8]_i_1_n_0 ,\v1_reg[8]_i_1_n_1 ,\v1_reg[8]_i_1_n_2 ,\v1_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[8]_i_2_n_0 ,\v1[8]_i_3_n_0 ,\v1[8]_i_4_n_0 ,\v1[8]_i_5_n_0 }),
        .O({\v1_reg[8]_i_1_n_4 ,\v1_reg[8]_i_1_n_5 ,\v1_reg[8]_i_1_n_6 ,\v1_reg[8]_i_1_n_7 }),
        .S({\v1[8]_i_6_n_0 ,\v1[8]_i_7_n_0 ,\v1[8]_i_8_n_0 ,\v1[8]_i_9_n_0 }));
  FDRE \v1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[8]_i_1_n_6 ),
        .Q(\v1_reg[11]_0 [1]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "integrator" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_integrator_1
   (A,
    DI,
    \v1_reg[7]_0 ,
    \v1_reg[11]_0 ,
    \v1_reg[15]_0 ,
    \v1_reg[19]_0 ,
    \v1_reg[23]_0 ,
    \v1_reg[25]_0 ,
    \v1_reg[26]_0 ,
    S,
    diff_rho_z,
    \v1_reg[26]_1 ,
    \v1_reg[26]_2 ,
    \v1_reg[26]_3 ,
    \v1_reg[26]_4 ,
    restart_counter_reg_2_sp_1,
    \v1_reg[25]_1 ,
    \v1_reg[25]_2 ,
    \v1_reg[26]_5 ,
    \v1_reg[25]_3 ,
    \v1_reg[26]_6 ,
    mult_out__11_carry__1,
    \v1_reg[19]_1 ,
    mult_out,
    \v1_reg[26]_7 ,
    \v1_reg[26]_8 ,
    \v1_reg[26]_9 ,
    \v1_reg[26]_10 ,
    s00_axi_aclk,
    O,
    \v1_reg[26]_11 ,
    mult_out__11_carry,
    mult_out__11_carry_0,
    P,
    adder_out_carry__5_0,
    \v1_reg[3]_0 ,
    \v1_reg[7]_1 ,
    \v1_reg[11]_1 ,
    \v1_reg[15]_1 ,
    \v1_reg[19]_2 ,
    restart_counter_reg,
    s00_axi_aresetn,
    CO,
    mult_out__11_carry__1_0,
    i__carry__3_i_2__3,
    adder_out_carry__4_0);
  output [16:0]A;
  output [2:0]DI;
  output [3:0]\v1_reg[7]_0 ;
  output [3:0]\v1_reg[11]_0 ;
  output [3:0]\v1_reg[15]_0 ;
  output [3:0]\v1_reg[19]_0 ;
  output [3:0]\v1_reg[23]_0 ;
  output [1:0]\v1_reg[25]_0 ;
  output [0:0]\v1_reg[26]_0 ;
  output [3:0]S;
  output [9:0]diff_rho_z;
  output \v1_reg[26]_1 ;
  output [3:0]\v1_reg[26]_2 ;
  output [0:0]\v1_reg[26]_3 ;
  output [1:0]\v1_reg[26]_4 ;
  output restart_counter_reg_2_sp_1;
  output [1:0]\v1_reg[25]_1 ;
  output [16:0]\v1_reg[25]_2 ;
  output [3:0]\v1_reg[26]_5 ;
  output [1:0]\v1_reg[25]_3 ;
  output [0:0]\v1_reg[26]_6 ;
  output [0:0]mult_out__11_carry__1;
  output [0:0]\v1_reg[19]_1 ;
  output [0:0]mult_out;
  output [0:0]\v1_reg[26]_7 ;
  output [1:0]\v1_reg[26]_8 ;
  output [3:0]\v1_reg[26]_9 ;
  output [3:0]\v1_reg[26]_10 ;
  input s00_axi_aclk;
  input [3:0]O;
  input [2:0]\v1_reg[26]_11 ;
  input [0:0]mult_out__11_carry;
  input mult_out__11_carry_0;
  input [2:0]P;
  input [2:0]adder_out_carry__5_0;
  input [3:0]\v1_reg[3]_0 ;
  input [3:0]\v1_reg[7]_1 ;
  input [3:0]\v1_reg[11]_1 ;
  input [3:0]\v1_reg[15]_1 ;
  input [3:0]\v1_reg[19]_2 ;
  input [10:0]restart_counter_reg;
  input s00_axi_aresetn;
  input [0:0]CO;
  input [2:0]mult_out__11_carry__1_0;
  input [0:0]i__carry__3_i_2__3;
  input [3:0]adder_out_carry__4_0;

  wire [16:0]A;
  wire [0:0]CO;
  wire [2:0]DI;
  wire [3:0]O;
  wire [2:0]P;
  wire [3:0]S;
  wire adder_out_carry__0_i_1_n_0;
  wire adder_out_carry__0_i_2_n_0;
  wire adder_out_carry__0_i_3_n_0;
  wire adder_out_carry__0_i_4_n_0;
  wire adder_out_carry__0_n_0;
  wire adder_out_carry__0_n_1;
  wire adder_out_carry__0_n_2;
  wire adder_out_carry__0_n_3;
  wire adder_out_carry__1_i_1_n_0;
  wire adder_out_carry__1_i_2_n_0;
  wire adder_out_carry__1_i_3_n_0;
  wire adder_out_carry__1_i_4_n_0;
  wire adder_out_carry__1_n_0;
  wire adder_out_carry__1_n_1;
  wire adder_out_carry__1_n_2;
  wire adder_out_carry__1_n_3;
  wire adder_out_carry__1_n_4;
  wire adder_out_carry__1_n_5;
  wire adder_out_carry__1_n_6;
  wire adder_out_carry__1_n_7;
  wire adder_out_carry__2_i_1_n_0;
  wire adder_out_carry__2_i_2_n_0;
  wire adder_out_carry__2_i_3_n_0;
  wire adder_out_carry__2_i_4_n_0;
  wire adder_out_carry__2_n_0;
  wire adder_out_carry__2_n_1;
  wire adder_out_carry__2_n_2;
  wire adder_out_carry__2_n_3;
  wire adder_out_carry__2_n_4;
  wire adder_out_carry__2_n_5;
  wire adder_out_carry__2_n_6;
  wire adder_out_carry__2_n_7;
  wire adder_out_carry__3_i_1_n_0;
  wire adder_out_carry__3_i_2_n_0;
  wire adder_out_carry__3_i_3_n_0;
  wire adder_out_carry__3_i_4_n_0;
  wire adder_out_carry__3_n_0;
  wire adder_out_carry__3_n_1;
  wire adder_out_carry__3_n_2;
  wire adder_out_carry__3_n_3;
  wire adder_out_carry__3_n_4;
  wire adder_out_carry__3_n_5;
  wire adder_out_carry__3_n_6;
  wire adder_out_carry__3_n_7;
  wire [3:0]adder_out_carry__4_0;
  wire adder_out_carry__4_i_1_n_0;
  wire adder_out_carry__4_i_2_n_0;
  wire adder_out_carry__4_i_3_n_0;
  wire adder_out_carry__4_i_4_n_0;
  wire adder_out_carry__4_n_0;
  wire adder_out_carry__4_n_1;
  wire adder_out_carry__4_n_2;
  wire adder_out_carry__4_n_3;
  wire adder_out_carry__4_n_4;
  wire adder_out_carry__4_n_5;
  wire adder_out_carry__4_n_6;
  wire adder_out_carry__4_n_7;
  wire [2:0]adder_out_carry__5_0;
  wire adder_out_carry__5_i_1_n_0;
  wire adder_out_carry__5_i_2_n_0;
  wire adder_out_carry__5_i_3_n_0;
  wire adder_out_carry__5_n_2;
  wire adder_out_carry__5_n_3;
  wire adder_out_carry__5_n_5;
  wire adder_out_carry__5_n_6;
  wire adder_out_carry__5_n_7;
  wire adder_out_carry_i_1_n_0;
  wire adder_out_carry_i_2_n_0;
  wire adder_out_carry_i_3_n_0;
  wire adder_out_carry_i_4_n_0;
  wire adder_out_carry_n_0;
  wire adder_out_carry_n_1;
  wire adder_out_carry_n_2;
  wire adder_out_carry_n_3;
  wire [9:0]diff_rho_z;
  wire [0:0]i__carry__3_i_2__3;
  wire [0:0]mult_out;
  wire [0:0]mult_out__11_carry;
  wire mult_out__11_carry_0;
  wire mult_out__11_carry__0_i_10__0_n_0;
  wire mult_out__11_carry__0_i_11__0_n_0;
  wire mult_out__11_carry__0_i_9_n_0;
  wire [0:0]mult_out__11_carry__1;
  wire [2:0]mult_out__11_carry__1_0;
  wire mult_out__1_i_10_n_0;
  wire mult_out__1_i_11_n_0;
  wire mult_out__1_i_12_n_0;
  wire mult_out__1_i_13_n_0;
  wire mult_out__1_i_1__0_n_3;
  wire mult_out__1_i_2__0_n_0;
  wire mult_out__1_i_2__0_n_1;
  wire mult_out__1_i_2__0_n_2;
  wire mult_out__1_i_2__0_n_3;
  wire mult_out__1_i_3__0_n_0;
  wire mult_out__1_i_3__0_n_1;
  wire mult_out__1_i_3__0_n_2;
  wire mult_out__1_i_3__0_n_3;
  wire mult_out__1_i_4_n_0;
  wire mult_out__1_i_5_n_0;
  wire mult_out__1_i_6__0_n_0;
  wire mult_out__1_i_7__0_n_0;
  wire mult_out__1_i_8__0_n_0;
  wire mult_out__1_i_9_n_0;
  wire mult_out_i_10_n_0;
  wire mult_out_i_11_n_0;
  wire mult_out_i_12_n_0;
  wire mult_out_i_13_n_0;
  wire mult_out_i_14_n_0;
  wire mult_out_i_15_n_0;
  wire mult_out_i_16_n_0;
  wire mult_out_i_17_n_0;
  wire mult_out_i_18_n_0;
  wire mult_out_i_19_n_0;
  wire mult_out_i_20_n_0;
  wire mult_out_i_21_n_0;
  wire mult_out_i_22_n_0;
  wire mult_out_i_23_n_0;
  wire mult_out_i_3__0_n_0;
  wire mult_out_i_3__0_n_1;
  wire mult_out_i_3__0_n_2;
  wire mult_out_i_3__0_n_3;
  wire mult_out_i_4__0_n_0;
  wire mult_out_i_4__0_n_1;
  wire mult_out_i_4__0_n_2;
  wire mult_out_i_4__0_n_3;
  wire mult_out_i_5__0_n_0;
  wire mult_out_i_5__0_n_1;
  wire mult_out_i_5__0_n_2;
  wire mult_out_i_5__0_n_3;
  wire mult_out_i_6__0_n_0;
  wire mult_out_i_6__0_n_1;
  wire mult_out_i_6__0_n_2;
  wire mult_out_i_6__0_n_3;
  wire mult_out_i_7_n_0;
  wire mult_out_i_8_n_0;
  wire mult_out_i_9_n_0;
  wire \restart_counter[0]_i_3_n_0 ;
  wire \restart_counter[0]_i_4_n_0 ;
  wire [10:0]restart_counter_reg;
  wire restart_counter_reg_2_sn_1;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire \v1[0]_i_2__1_n_0 ;
  wire \v1[0]_i_3__1_n_0 ;
  wire \v1[0]_i_4__1_n_0 ;
  wire \v1[0]_i_5__1_n_0 ;
  wire \v1[0]_i_6__1_n_0 ;
  wire \v1[0]_i_7__1_n_0 ;
  wire \v1[0]_i_8__1_n_0 ;
  wire \v1[0]_i_9__1_n_0 ;
  wire \v1[12]_i_2__1_n_0 ;
  wire \v1[12]_i_3__1_n_0 ;
  wire \v1[12]_i_4__1_n_0 ;
  wire \v1[12]_i_5__1_n_0 ;
  wire \v1[12]_i_6__1_n_0 ;
  wire \v1[12]_i_7__1_n_0 ;
  wire \v1[12]_i_8__1_n_0 ;
  wire \v1[12]_i_9__1_n_0 ;
  wire \v1[16]_i_2__1_n_0 ;
  wire \v1[16]_i_3__1_n_0 ;
  wire \v1[16]_i_4__1_n_0 ;
  wire \v1[16]_i_5__1_n_0 ;
  wire \v1[16]_i_6__1_n_0 ;
  wire \v1[16]_i_7__1_n_0 ;
  wire \v1[16]_i_8__1_n_0 ;
  wire \v1[16]_i_9__1_n_0 ;
  wire \v1[4]_i_2__1_n_0 ;
  wire \v1[4]_i_3__1_n_0 ;
  wire \v1[4]_i_4__1_n_0 ;
  wire \v1[4]_i_5__1_n_0 ;
  wire \v1[4]_i_6__1_n_0 ;
  wire \v1[4]_i_7__1_n_0 ;
  wire \v1[4]_i_8__1_n_0 ;
  wire \v1[4]_i_9__1_n_0 ;
  wire \v1[8]_i_2__1_n_0 ;
  wire \v1[8]_i_3__1_n_0 ;
  wire \v1[8]_i_4__1_n_0 ;
  wire \v1[8]_i_5__1_n_0 ;
  wire \v1[8]_i_6__1_n_0 ;
  wire \v1[8]_i_7__1_n_0 ;
  wire \v1[8]_i_8__1_n_0 ;
  wire \v1[8]_i_9__1_n_0 ;
  wire \v1_reg[0]_i_1__1_n_0 ;
  wire \v1_reg[0]_i_1__1_n_1 ;
  wire \v1_reg[0]_i_1__1_n_2 ;
  wire \v1_reg[0]_i_1__1_n_3 ;
  wire \v1_reg[0]_i_1__1_n_4 ;
  wire \v1_reg[0]_i_1__1_n_5 ;
  wire \v1_reg[0]_i_1__1_n_6 ;
  wire \v1_reg[0]_i_1__1_n_7 ;
  wire [3:0]\v1_reg[11]_0 ;
  wire [3:0]\v1_reg[11]_1 ;
  wire \v1_reg[12]_i_1__1_n_0 ;
  wire \v1_reg[12]_i_1__1_n_1 ;
  wire \v1_reg[12]_i_1__1_n_2 ;
  wire \v1_reg[12]_i_1__1_n_3 ;
  wire \v1_reg[12]_i_1__1_n_4 ;
  wire \v1_reg[12]_i_1__1_n_5 ;
  wire \v1_reg[12]_i_1__1_n_6 ;
  wire \v1_reg[12]_i_1__1_n_7 ;
  wire [3:0]\v1_reg[15]_0 ;
  wire [3:0]\v1_reg[15]_1 ;
  wire \v1_reg[16]_i_1__1_n_1 ;
  wire \v1_reg[16]_i_1__1_n_2 ;
  wire \v1_reg[16]_i_1__1_n_3 ;
  wire \v1_reg[16]_i_1__1_n_4 ;
  wire \v1_reg[16]_i_1__1_n_5 ;
  wire \v1_reg[16]_i_1__1_n_6 ;
  wire \v1_reg[16]_i_1__1_n_7 ;
  wire [3:0]\v1_reg[19]_0 ;
  wire [0:0]\v1_reg[19]_1 ;
  wire [3:0]\v1_reg[19]_2 ;
  wire [3:0]\v1_reg[23]_0 ;
  wire [1:0]\v1_reg[25]_0 ;
  wire [1:0]\v1_reg[25]_1 ;
  wire [16:0]\v1_reg[25]_2 ;
  wire [1:0]\v1_reg[25]_3 ;
  wire [0:0]\v1_reg[26]_0 ;
  wire \v1_reg[26]_1 ;
  wire [3:0]\v1_reg[26]_10 ;
  wire [2:0]\v1_reg[26]_11 ;
  wire [3:0]\v1_reg[26]_2 ;
  wire [0:0]\v1_reg[26]_3 ;
  wire [1:0]\v1_reg[26]_4 ;
  wire [3:0]\v1_reg[26]_5 ;
  wire [0:0]\v1_reg[26]_6 ;
  wire [0:0]\v1_reg[26]_7 ;
  wire [1:0]\v1_reg[26]_8 ;
  wire [3:0]\v1_reg[26]_9 ;
  wire [3:0]\v1_reg[3]_0 ;
  wire \v1_reg[4]_i_1__1_n_0 ;
  wire \v1_reg[4]_i_1__1_n_1 ;
  wire \v1_reg[4]_i_1__1_n_2 ;
  wire \v1_reg[4]_i_1__1_n_3 ;
  wire \v1_reg[4]_i_1__1_n_4 ;
  wire \v1_reg[4]_i_1__1_n_5 ;
  wire \v1_reg[4]_i_1__1_n_6 ;
  wire \v1_reg[4]_i_1__1_n_7 ;
  wire [3:0]\v1_reg[7]_0 ;
  wire [3:0]\v1_reg[7]_1 ;
  wire \v1_reg[8]_i_1__1_n_0 ;
  wire \v1_reg[8]_i_1__1_n_1 ;
  wire \v1_reg[8]_i_1__1_n_2 ;
  wire \v1_reg[8]_i_1__1_n_3 ;
  wire \v1_reg[8]_i_1__1_n_4 ;
  wire \v1_reg[8]_i_1__1_n_5 ;
  wire \v1_reg[8]_i_1__1_n_6 ;
  wire \v1_reg[8]_i_1__1_n_7 ;
  wire [3:0]NLW_adder_out_carry_O_UNCONNECTED;
  wire [3:0]NLW_adder_out_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_adder_out_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_adder_out_carry__5_O_UNCONNECTED;
  wire [3:1]NLW_i__carry__2_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_i__carry__2_i_5_O_UNCONNECTED;
  wire [3:1]NLW_mult_out__1_i_1__0_CO_UNCONNECTED;
  wire [3:2]NLW_mult_out__1_i_1__0_O_UNCONNECTED;

  assign restart_counter_reg_2_sp_1 = restart_counter_reg_2_sn_1;
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry
       (.CI(1'b0),
        .CO({adder_out_carry_n_0,adder_out_carry_n_1,adder_out_carry_n_2,adder_out_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,A[0]}),
        .O(NLW_adder_out_carry_O_UNCONNECTED[3:0]),
        .S({adder_out_carry_i_1_n_0,adder_out_carry_i_2_n_0,adder_out_carry_i_3_n_0,adder_out_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__0
       (.CI(adder_out_carry_n_0),
        .CO({adder_out_carry__0_n_0,adder_out_carry__0_n_1,adder_out_carry__0_n_2,adder_out_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[7]_0 ),
        .O(NLW_adder_out_carry__0_O_UNCONNECTED[3:0]),
        .S({adder_out_carry__0_i_1_n_0,adder_out_carry__0_i_2_n_0,adder_out_carry__0_i_3_n_0,adder_out_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__0_i_1
       (.I0(\v1_reg[7]_0 [3]),
        .I1(\v1_reg[7]_1 [3]),
        .O(adder_out_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__0_i_2
       (.I0(\v1_reg[7]_0 [2]),
        .I1(\v1_reg[7]_1 [2]),
        .O(adder_out_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__0_i_3
       (.I0(\v1_reg[7]_0 [1]),
        .I1(\v1_reg[7]_1 [1]),
        .O(adder_out_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__0_i_4
       (.I0(\v1_reg[7]_0 [0]),
        .I1(\v1_reg[7]_1 [0]),
        .O(adder_out_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__1
       (.CI(adder_out_carry__0_n_0),
        .CO({adder_out_carry__1_n_0,adder_out_carry__1_n_1,adder_out_carry__1_n_2,adder_out_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[11]_0 ),
        .O({adder_out_carry__1_n_4,adder_out_carry__1_n_5,adder_out_carry__1_n_6,adder_out_carry__1_n_7}),
        .S({adder_out_carry__1_i_1_n_0,adder_out_carry__1_i_2_n_0,adder_out_carry__1_i_3_n_0,adder_out_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__1_i_1
       (.I0(\v1_reg[11]_0 [3]),
        .I1(\v1_reg[11]_1 [3]),
        .O(adder_out_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__1_i_2
       (.I0(\v1_reg[11]_0 [2]),
        .I1(\v1_reg[11]_1 [2]),
        .O(adder_out_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__1_i_3
       (.I0(\v1_reg[11]_0 [1]),
        .I1(\v1_reg[11]_1 [1]),
        .O(adder_out_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__1_i_4
       (.I0(\v1_reg[11]_0 [0]),
        .I1(\v1_reg[11]_1 [0]),
        .O(adder_out_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__2
       (.CI(adder_out_carry__1_n_0),
        .CO({adder_out_carry__2_n_0,adder_out_carry__2_n_1,adder_out_carry__2_n_2,adder_out_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[15]_0 ),
        .O({adder_out_carry__2_n_4,adder_out_carry__2_n_5,adder_out_carry__2_n_6,adder_out_carry__2_n_7}),
        .S({adder_out_carry__2_i_1_n_0,adder_out_carry__2_i_2_n_0,adder_out_carry__2_i_3_n_0,adder_out_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__2_i_1
       (.I0(\v1_reg[15]_0 [3]),
        .I1(\v1_reg[15]_1 [3]),
        .O(adder_out_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__2_i_2
       (.I0(\v1_reg[15]_0 [2]),
        .I1(\v1_reg[15]_1 [2]),
        .O(adder_out_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__2_i_3
       (.I0(\v1_reg[15]_0 [1]),
        .I1(\v1_reg[15]_1 [1]),
        .O(adder_out_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__2_i_4
       (.I0(\v1_reg[15]_0 [0]),
        .I1(\v1_reg[15]_1 [0]),
        .O(adder_out_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__3
       (.CI(adder_out_carry__2_n_0),
        .CO({adder_out_carry__3_n_0,adder_out_carry__3_n_1,adder_out_carry__3_n_2,adder_out_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[19]_0 ),
        .O({adder_out_carry__3_n_4,adder_out_carry__3_n_5,adder_out_carry__3_n_6,adder_out_carry__3_n_7}),
        .S({adder_out_carry__3_i_1_n_0,adder_out_carry__3_i_2_n_0,adder_out_carry__3_i_3_n_0,adder_out_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__3_i_1
       (.I0(\v1_reg[19]_0 [3]),
        .I1(\v1_reg[19]_2 [3]),
        .O(adder_out_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__3_i_2
       (.I0(\v1_reg[19]_0 [2]),
        .I1(\v1_reg[19]_2 [2]),
        .O(adder_out_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__3_i_3
       (.I0(\v1_reg[19]_0 [1]),
        .I1(\v1_reg[19]_2 [1]),
        .O(adder_out_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__3_i_4
       (.I0(\v1_reg[19]_0 [0]),
        .I1(\v1_reg[19]_2 [0]),
        .O(adder_out_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__4
       (.CI(adder_out_carry__3_n_0),
        .CO({adder_out_carry__4_n_0,adder_out_carry__4_n_1,adder_out_carry__4_n_2,adder_out_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(\v1_reg[23]_0 ),
        .O({adder_out_carry__4_n_4,adder_out_carry__4_n_5,adder_out_carry__4_n_6,adder_out_carry__4_n_7}),
        .S({adder_out_carry__4_i_1_n_0,adder_out_carry__4_i_2_n_0,adder_out_carry__4_i_3_n_0,adder_out_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__4_i_1
       (.I0(\v1_reg[23]_0 [3]),
        .I1(adder_out_carry__4_0[3]),
        .O(adder_out_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__4_i_2
       (.I0(\v1_reg[23]_0 [2]),
        .I1(adder_out_carry__4_0[2]),
        .O(adder_out_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__4_i_3
       (.I0(\v1_reg[23]_0 [1]),
        .I1(adder_out_carry__4_0[1]),
        .O(adder_out_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__4_i_4
       (.I0(\v1_reg[23]_0 [0]),
        .I1(adder_out_carry__4_0[0]),
        .O(adder_out_carry__4_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 adder_out_carry__5
       (.CI(adder_out_carry__4_n_0),
        .CO({NLW_adder_out_carry__5_CO_UNCONNECTED[3:2],adder_out_carry__5_n_2,adder_out_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\v1_reg[25]_0 }),
        .O({NLW_adder_out_carry__5_O_UNCONNECTED[3],adder_out_carry__5_n_5,adder_out_carry__5_n_6,adder_out_carry__5_n_7}),
        .S({1'b0,adder_out_carry__5_i_1_n_0,adder_out_carry__5_i_2_n_0,adder_out_carry__5_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__5_i_1
       (.I0(\v1_reg[26]_0 ),
        .I1(adder_out_carry__5_0[2]),
        .O(adder_out_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__5_i_2
       (.I0(\v1_reg[25]_0 [1]),
        .I1(adder_out_carry__5_0[1]),
        .O(adder_out_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry__5_i_3
       (.I0(\v1_reg[25]_0 [0]),
        .I1(adder_out_carry__5_0[0]),
        .O(adder_out_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry_i_1
       (.I0(DI[2]),
        .I1(\v1_reg[3]_0 [3]),
        .O(adder_out_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry_i_2
       (.I0(DI[1]),
        .I1(\v1_reg[3]_0 [2]),
        .O(adder_out_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry_i_3
       (.I0(DI[0]),
        .I1(\v1_reg[3]_0 [1]),
        .O(adder_out_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    adder_out_carry_i_4
       (.I0(A[0]),
        .I1(\v1_reg[3]_0 [0]),
        .O(adder_out_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_1__0
       (.I0(\v1_reg[26]_0 ),
        .I1(P[1]),
        .O(\v1_reg[26]_7 ));
  CARRY4 i__carry__2_i_5
       (.CI(i__carry__3_i_2__3),
        .CO({NLW_i__carry__2_i_5_CO_UNCONNECTED[3:1],mult_out__11_carry__1}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_i__carry__2_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__3_i_1__2
       (.I0(\v1_reg[26]_0 ),
        .O(\v1_reg[26]_6 ));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_5
       (.I0(\v1_reg[26]_0 ),
        .I1(P[2]),
        .O(\v1_reg[26]_3 ));
  LUT3 #(
    .INIT(8'h96)) 
    i__carry_i_2
       (.I0(P[0]),
        .I1(\v1_reg[26]_0 ),
        .I2(\v1_reg[25]_0 [1]),
        .O(mult_out));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out__0_i_1
       (.I0(adder_out_carry__5_n_7),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [16]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_10
       (.I0(adder_out_carry__2_n_4),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [7]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_11
       (.I0(adder_out_carry__2_n_5),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [6]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_12
       (.I0(adder_out_carry__2_n_6),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [5]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_13
       (.I0(adder_out_carry__2_n_7),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [4]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_14
       (.I0(adder_out_carry__1_n_4),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [3]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_15
       (.I0(adder_out_carry__1_n_5),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [2]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_16
       (.I0(adder_out_carry__1_n_6),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [1]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_17
       (.I0(adder_out_carry__1_n_7),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out__0_i_2
       (.I0(adder_out_carry__4_n_4),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [15]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_3
       (.I0(adder_out_carry__4_n_5),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [14]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_4
       (.I0(adder_out_carry__4_n_6),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [13]));
  LUT2 #(
    .INIT(4'hE)) 
    mult_out__0_i_5
       (.I0(adder_out_carry__4_n_7),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [12]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_6
       (.I0(adder_out_carry__3_n_4),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [11]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_7
       (.I0(adder_out_carry__3_n_5),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [10]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_8
       (.I0(adder_out_carry__3_n_6),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [9]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out__0_i_9
       (.I0(adder_out_carry__3_n_7),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_2 [8]));
  LUT3 #(
    .INIT(8'hD4)) 
    mult_out__11_carry__0_i_1
       (.I0(mult_out__11_carry__0_i_9_n_0),
        .I1(mult_out__11_carry__1_0[0]),
        .I2(mult_out__11_carry__0_i_10__0_n_0),
        .O(\v1_reg[26]_2 [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h3C506CA0)) 
    mult_out__11_carry__0_i_10__0
       (.I0(diff_rho_z[6]),
        .I1(diff_rho_z[8]),
        .I2(mult_out__11_carry_0),
        .I3(mult_out__11_carry),
        .I4(diff_rho_z[7]),
        .O(mult_out__11_carry__0_i_10__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hCCC804C8)) 
    mult_out__11_carry__0_i_11__0
       (.I0(diff_rho_z[6]),
        .I1(mult_out__11_carry_0),
        .I2(diff_rho_z[7]),
        .I3(diff_rho_z[8]),
        .I4(mult_out__11_carry),
        .O(mult_out__11_carry__0_i_11__0_n_0));
  LUT6 #(
    .INIT(64'h1771717177111111)) 
    mult_out__11_carry__0_i_2
       (.I0(mult_out__11_carry__0_i_9_n_0),
        .I1(\v1_reg[26]_1 ),
        .I2(diff_rho_z[6]),
        .I3(diff_rho_z[7]),
        .I4(mult_out__11_carry),
        .I5(mult_out__11_carry_0),
        .O(\v1_reg[26]_2 [2]));
  LUT6 #(
    .INIT(64'h6996969699666666)) 
    mult_out__11_carry__0_i_3
       (.I0(mult_out__11_carry__0_i_9_n_0),
        .I1(\v1_reg[26]_1 ),
        .I2(diff_rho_z[6]),
        .I3(diff_rho_z[7]),
        .I4(mult_out__11_carry),
        .I5(mult_out__11_carry_0),
        .O(\v1_reg[26]_2 [1]));
  LUT6 #(
    .INIT(64'h7777888877788888)) 
    mult_out__11_carry__0_i_4__0
       (.I0(diff_rho_z[6]),
        .I1(mult_out__11_carry),
        .I2(diff_rho_z[1]),
        .I3(diff_rho_z[2]),
        .I4(mult_out__11_carry_0),
        .I5(diff_rho_z[0]),
        .O(\v1_reg[26]_2 [0]));
  LUT5 #(
    .INIT(32'h963C3C69)) 
    mult_out__11_carry__0_i_5
       (.I0(mult_out__11_carry__0_i_9_n_0),
        .I1(mult_out__11_carry__1_0[1]),
        .I2(mult_out__11_carry__0_i_11__0_n_0),
        .I3(mult_out__11_carry__0_i_10__0_n_0),
        .I4(mult_out__11_carry__1_0[0]),
        .O(\v1_reg[26]_9 [3]));
  LUT4 #(
    .INIT(16'h9669)) 
    mult_out__11_carry__0_i_6
       (.I0(\v1_reg[26]_2 [2]),
        .I1(mult_out__11_carry__0_i_10__0_n_0),
        .I2(mult_out__11_carry__1_0[0]),
        .I3(mult_out__11_carry__0_i_9_n_0),
        .O(\v1_reg[26]_9 [2]));
  LUT6 #(
    .INIT(64'h6969C33CA55A0FF0)) 
    mult_out__11_carry__0_i_7
       (.I0(mult_out__11_carry_0),
        .I1(diff_rho_z[7]),
        .I2(mult_out__11_carry__0_i_9_n_0),
        .I3(\v1_reg[26]_1 ),
        .I4(diff_rho_z[6]),
        .I5(mult_out__11_carry),
        .O(\v1_reg[26]_9 [1]));
  LUT6 #(
    .INIT(64'h6565AAAA655AAAAA)) 
    mult_out__11_carry__0_i_8
       (.I0(\v1_reg[26]_2 [0]),
        .I1(mult_out__11_carry),
        .I2(diff_rho_z[5]),
        .I3(diff_rho_z[4]),
        .I4(mult_out__11_carry_0),
        .I5(diff_rho_z[3]),
        .O(\v1_reg[26]_9 [0]));
  LUT4 #(
    .INIT(16'h0F1F)) 
    mult_out__11_carry__0_i_9
       (.I0(diff_rho_z[5]),
        .I1(diff_rho_z[4]),
        .I2(mult_out__11_carry_0),
        .I3(diff_rho_z[3]),
        .O(mult_out__11_carry__0_i_9_n_0));
  LUT4 #(
    .INIT(16'h01FF)) 
    mult_out__11_carry__1_i_1
       (.I0(diff_rho_z[8]),
        .I1(diff_rho_z[7]),
        .I2(diff_rho_z[6]),
        .I3(mult_out__11_carry_0),
        .O(\v1_reg[26]_5 [3]));
  LUT3 #(
    .INIT(8'h69)) 
    mult_out__11_carry__1_i_2
       (.I0(mult_out__11_carry__0_i_9_n_0),
        .I1(\v1_reg[26]_5 [3]),
        .I2(CO),
        .O(\v1_reg[26]_5 [2]));
  LUT3 #(
    .INIT(8'h69)) 
    mult_out__11_carry__1_i_3
       (.I0(mult_out__11_carry__0_i_9_n_0),
        .I1(\v1_reg[26]_5 [3]),
        .I2(CO),
        .O(\v1_reg[26]_5 [1]));
  LUT3 #(
    .INIT(8'hD4)) 
    mult_out__11_carry__1_i_4
       (.I0(mult_out__11_carry__0_i_9_n_0),
        .I1(mult_out__11_carry__1_0[1]),
        .I2(mult_out__11_carry__0_i_11__0_n_0),
        .O(\v1_reg[26]_5 [0]));
  LUT3 #(
    .INIT(8'h7E)) 
    mult_out__11_carry__1_i_5
       (.I0(CO),
        .I1(mult_out__11_carry__0_i_9_n_0),
        .I2(\v1_reg[26]_5 [3]),
        .O(\v1_reg[26]_10 [3]));
  LUT3 #(
    .INIT(8'h7E)) 
    mult_out__11_carry__1_i_6
       (.I0(CO),
        .I1(\v1_reg[26]_5 [3]),
        .I2(mult_out__11_carry__0_i_9_n_0),
        .O(\v1_reg[26]_10 [2]));
  LUT4 #(
    .INIT(16'h366C)) 
    mult_out__11_carry__1_i_7
       (.I0(mult_out__11_carry__1_0[2]),
        .I1(CO),
        .I2(\v1_reg[26]_5 [3]),
        .I3(mult_out__11_carry__0_i_9_n_0),
        .O(\v1_reg[26]_10 [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    mult_out__11_carry__1_i_8
       (.I0(\v1_reg[26]_5 [0]),
        .I1(mult_out__11_carry__1_0[2]),
        .I2(\v1_reg[26]_5 [3]),
        .I3(mult_out__11_carry__0_i_9_n_0),
        .O(\v1_reg[26]_10 [0]));
  LUT5 #(
    .INIT(32'h3C506CA0)) 
    mult_out__11_carry_i_1
       (.I0(diff_rho_z[3]),
        .I1(diff_rho_z[5]),
        .I2(mult_out__11_carry_0),
        .I3(mult_out__11_carry),
        .I4(diff_rho_z[4]),
        .O(\v1_reg[26]_8 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    mult_out__11_carry_i_2
       (.I0(diff_rho_z[3]),
        .I1(mult_out__11_carry_0),
        .I2(mult_out__11_carry),
        .I3(diff_rho_z[4]),
        .O(\v1_reg[26]_8 [0]));
  LUT6 #(
    .INIT(64'h1CD06CA0E32F935F)) 
    mult_out__11_carry_i_4
       (.I0(diff_rho_z[4]),
        .I1(mult_out__11_carry),
        .I2(mult_out__11_carry_0),
        .I3(diff_rho_z[5]),
        .I4(diff_rho_z[3]),
        .I5(\v1_reg[26]_1 ),
        .O(S[3]));
  LUT5 #(
    .INIT(32'h78888777)) 
    mult_out__11_carry_i_5
       (.I0(diff_rho_z[4]),
        .I1(mult_out__11_carry),
        .I2(mult_out__11_carry_0),
        .I3(diff_rho_z[3]),
        .I4(\v1_reg[26]_1 ),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h55AA0F0056AA3C00)) 
    mult_out__11_carry_i_6
       (.I0(diff_rho_z[3]),
        .I1(diff_rho_z[0]),
        .I2(diff_rho_z[2]),
        .I3(mult_out__11_carry_0),
        .I4(mult_out__11_carry),
        .I5(diff_rho_z[1]),
        .O(S[1]));
  LUT5 #(
    .INIT(32'h3C506CA0)) 
    mult_out__11_carry_i_7
       (.I0(diff_rho_z[0]),
        .I1(diff_rho_z[2]),
        .I2(mult_out__11_carry_0),
        .I3(mult_out__11_carry),
        .I4(diff_rho_z[1]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out__1_i_10
       (.I0(\v1_reg[23]_0 [0]),
        .O(mult_out__1_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out__1_i_11
       (.I0(\v1_reg[19]_0 [3]),
        .O(mult_out__1_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out__1_i_12
       (.I0(\v1_reg[19]_0 [2]),
        .O(mult_out__1_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out__1_i_13
       (.I0(\v1_reg[19]_0 [1]),
        .O(mult_out__1_i_13_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mult_out__1_i_1__0
       (.CI(mult_out__1_i_2__0_n_0),
        .CO({NLW_mult_out__1_i_1__0_CO_UNCONNECTED[3:1],mult_out__1_i_1__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_mult_out__1_i_1__0_O_UNCONNECTED[3:2],diff_rho_z[9:8]}),
        .S({1'b0,1'b0,mult_out__1_i_4_n_0,mult_out__1_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mult_out__1_i_2__0
       (.CI(mult_out__1_i_3__0_n_0),
        .CO({mult_out__1_i_2__0_n_0,mult_out__1_i_2__0_n_1,mult_out__1_i_2__0_n_2,mult_out__1_i_2__0_n_3}),
        .CYINIT(1'b0),
        .DI({mult_out__1_i_6__0_n_0,mult_out__1_i_7__0_n_0,mult_out__1_i_8__0_n_0,1'b0}),
        .O(diff_rho_z[7:4]),
        .S({\v1_reg[25]_0 [0],\v1_reg[23]_0 [3:2],mult_out__1_i_9_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mult_out__1_i_3__0
       (.CI(mult_out_i_3__0_n_0),
        .CO({mult_out__1_i_3__0_n_0,mult_out__1_i_3__0_n_1,mult_out__1_i_3__0_n_2,mult_out__1_i_3__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(diff_rho_z[3:0]),
        .S({mult_out__1_i_10_n_0,mult_out__1_i_11_n_0,mult_out__1_i_12_n_0,mult_out__1_i_13_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out__1_i_4
       (.I0(\v1_reg[26]_0 ),
        .O(mult_out__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out__1_i_5
       (.I0(\v1_reg[25]_0 [1]),
        .O(mult_out__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out__1_i_6__0
       (.I0(\v1_reg[25]_0 [0]),
        .O(mult_out__1_i_6__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out__1_i_7__0
       (.I0(\v1_reg[23]_0 [3]),
        .O(mult_out__1_i_7__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out__1_i_8__0
       (.I0(\v1_reg[23]_0 [2]),
        .O(mult_out__1_i_8__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out__1_i_9
       (.I0(\v1_reg[23]_0 [1]),
        .O(mult_out__1_i_9_n_0));
  LUT4 #(
    .INIT(16'h3337)) 
    mult_out__2_carry_i_1
       (.I0(diff_rho_z[0]),
        .I1(mult_out__11_carry_0),
        .I2(diff_rho_z[2]),
        .I3(diff_rho_z[1]),
        .O(\v1_reg[26]_1 ));
  LUT6 #(
    .INIT(64'h7777888877788888)) 
    mult_out__2_carry_i_3
       (.I0(diff_rho_z[9]),
        .I1(mult_out__11_carry),
        .I2(diff_rho_z[1]),
        .I3(diff_rho_z[2]),
        .I4(mult_out__11_carry_0),
        .I5(diff_rho_z[0]),
        .O(\v1_reg[25]_3 [1]));
  LUT4 #(
    .INIT(16'hF0E0)) 
    mult_out__2_carry_i_4
       (.I0(diff_rho_z[1]),
        .I1(diff_rho_z[2]),
        .I2(mult_out__11_carry_0),
        .I3(diff_rho_z[0]),
        .O(\v1_reg[25]_3 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    mult_out_carry_i_1
       (.I0(\v1_reg[26]_0 ),
        .I1(\v1_reg[25]_0 [1]),
        .O(\v1_reg[26]_4 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    mult_out_carry_i_2
       (.I0(\v1_reg[25]_0 [1]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1_reg[26]_4 [0]));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out_i_1
       (.I0(adder_out_carry__5_n_5),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_1 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_10
       (.I0(\v1_reg[15]_0 [1]),
        .O(mult_out_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_11
       (.I0(\v1_reg[15]_0 [0]),
        .O(mult_out_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_12
       (.I0(\v1_reg[11]_0 [3]),
        .O(mult_out_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_13
       (.I0(\v1_reg[11]_0 [2]),
        .O(mult_out_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_14
       (.I0(\v1_reg[11]_0 [1]),
        .O(mult_out_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_15
       (.I0(\v1_reg[11]_0 [0]),
        .O(mult_out_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_16
       (.I0(\v1_reg[7]_0 [3]),
        .O(mult_out_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_17
       (.I0(\v1_reg[7]_0 [2]),
        .O(mult_out_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_18
       (.I0(\v1_reg[7]_0 [1]),
        .O(mult_out_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_19
       (.I0(A[0]),
        .O(mult_out_i_19_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    mult_out_i_2
       (.I0(adder_out_carry__5_n_6),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1_reg[25]_1 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_20
       (.I0(\v1_reg[7]_0 [0]),
        .O(mult_out_i_20_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_21
       (.I0(DI[2]),
        .O(mult_out_i_21_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_22
       (.I0(DI[1]),
        .O(mult_out_i_22_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_23
       (.I0(DI[0]),
        .O(mult_out_i_23_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mult_out_i_3__0
       (.CI(mult_out_i_4__0_n_0),
        .CO({mult_out_i_3__0_n_0,mult_out_i_3__0_n_1,mult_out_i_3__0_n_2,mult_out_i_3__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(A[16:13]),
        .S({mult_out_i_7_n_0,mult_out_i_8_n_0,mult_out_i_9_n_0,mult_out_i_10_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mult_out_i_4__0
       (.CI(mult_out_i_5__0_n_0),
        .CO({mult_out_i_4__0_n_0,mult_out_i_4__0_n_1,mult_out_i_4__0_n_2,mult_out_i_4__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(A[12:9]),
        .S({mult_out_i_11_n_0,mult_out_i_12_n_0,mult_out_i_13_n_0,mult_out_i_14_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mult_out_i_5__0
       (.CI(mult_out_i_6__0_n_0),
        .CO({mult_out_i_5__0_n_0,mult_out_i_5__0_n_1,mult_out_i_5__0_n_2,mult_out_i_5__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(A[8:5]),
        .S({mult_out_i_15_n_0,mult_out_i_16_n_0,mult_out_i_17_n_0,mult_out_i_18_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 mult_out_i_6__0
       (.CI(1'b0),
        .CO({mult_out_i_6__0_n_0,mult_out_i_6__0_n_1,mult_out_i_6__0_n_2,mult_out_i_6__0_n_3}),
        .CYINIT(mult_out_i_19_n_0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(A[4:1]),
        .S({mult_out_i_20_n_0,mult_out_i_21_n_0,mult_out_i_22_n_0,mult_out_i_23_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_7
       (.I0(\v1_reg[19]_0 [0]),
        .O(mult_out_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_8
       (.I0(\v1_reg[15]_0 [3]),
        .O(mult_out_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    mult_out_i_9
       (.I0(\v1_reg[15]_0 [2]),
        .O(mult_out_i_9_n_0));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    \restart_counter[0]_i_1 
       (.I0(restart_counter_reg[2]),
        .I1(restart_counter_reg[1]),
        .I2(restart_counter_reg[0]),
        .I3(\restart_counter[0]_i_3_n_0 ),
        .I4(\restart_counter[0]_i_4_n_0 ),
        .I5(s00_axi_aresetn),
        .O(restart_counter_reg_2_sn_1));
  LUT4 #(
    .INIT(16'h8000)) 
    \restart_counter[0]_i_3 
       (.I0(restart_counter_reg[10]),
        .I1(restart_counter_reg[9]),
        .I2(restart_counter_reg[8]),
        .I3(restart_counter_reg[7]),
        .O(\restart_counter[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \restart_counter[0]_i_4 
       (.I0(restart_counter_reg[6]),
        .I1(restart_counter_reg[5]),
        .I2(restart_counter_reg[4]),
        .I3(restart_counter_reg[3]),
        .O(\restart_counter[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[0]_i_2__1 
       (.I0(\v1_reg[3]_0 [3]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[0]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[0]_i_3__1 
       (.I0(\v1_reg[3]_0 [2]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[0]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[0]_i_4__1 
       (.I0(\v1_reg[3]_0 [1]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[0]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[0]_i_5__1 
       (.I0(\v1_reg[3]_0 [0]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[0]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[0]_i_6__1 
       (.I0(\v1_reg[3]_0 [3]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(DI[2]),
        .O(\v1[0]_i_6__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[0]_i_7__1 
       (.I0(\v1_reg[3]_0 [2]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(DI[1]),
        .O(\v1[0]_i_7__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[0]_i_8__1 
       (.I0(\v1_reg[3]_0 [1]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(DI[0]),
        .O(\v1[0]_i_8__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[0]_i_9__1 
       (.I0(\v1_reg[3]_0 [0]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(A[0]),
        .O(\v1[0]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[12]_i_2__1 
       (.I0(\v1_reg[15]_1 [3]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[12]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[12]_i_3__1 
       (.I0(\v1_reg[15]_1 [2]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[12]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[12]_i_4__1 
       (.I0(\v1_reg[15]_1 [1]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[12]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[12]_i_5__1 
       (.I0(\v1_reg[15]_1 [0]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[12]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[12]_i_6__1 
       (.I0(\v1_reg[15]_1 [3]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[15]_0 [3]),
        .O(\v1[12]_i_6__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[12]_i_7__1 
       (.I0(\v1_reg[15]_1 [2]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[15]_0 [2]),
        .O(\v1[12]_i_7__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[12]_i_8__1 
       (.I0(\v1_reg[15]_1 [1]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[15]_0 [1]),
        .O(\v1[12]_i_8__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[12]_i_9__1 
       (.I0(\v1_reg[15]_1 [0]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[15]_0 [0]),
        .O(\v1[12]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[16]_i_2__1 
       (.I0(\v1_reg[19]_2 [3]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[16]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[16]_i_3__1 
       (.I0(\v1_reg[19]_2 [2]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[16]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[16]_i_4__1 
       (.I0(\v1_reg[19]_2 [1]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[16]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[16]_i_5__1 
       (.I0(\v1_reg[19]_2 [0]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[16]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[16]_i_6__1 
       (.I0(\v1_reg[19]_2 [3]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[19]_0 [3]),
        .O(\v1[16]_i_6__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[16]_i_7__1 
       (.I0(\v1_reg[19]_2 [2]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[19]_0 [2]),
        .O(\v1[16]_i_7__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[16]_i_8__1 
       (.I0(\v1_reg[19]_2 [1]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[19]_0 [1]),
        .O(\v1[16]_i_8__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[16]_i_9__1 
       (.I0(\v1_reg[19]_2 [0]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[19]_0 [0]),
        .O(\v1[16]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[4]_i_2__1 
       (.I0(\v1_reg[7]_1 [3]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[4]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[4]_i_3__1 
       (.I0(\v1_reg[7]_1 [2]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[4]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[4]_i_4__1 
       (.I0(\v1_reg[7]_1 [1]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[4]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[4]_i_5__1 
       (.I0(\v1_reg[7]_1 [0]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[4]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[4]_i_6__1 
       (.I0(\v1_reg[7]_1 [3]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[7]_0 [3]),
        .O(\v1[4]_i_6__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[4]_i_7__1 
       (.I0(\v1_reg[7]_1 [2]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[7]_0 [2]),
        .O(\v1[4]_i_7__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[4]_i_8__1 
       (.I0(\v1_reg[7]_1 [1]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[7]_0 [1]),
        .O(\v1[4]_i_8__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[4]_i_9__1 
       (.I0(\v1_reg[7]_1 [0]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[7]_0 [0]),
        .O(\v1[4]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[8]_i_2__1 
       (.I0(\v1_reg[11]_1 [3]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[8]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[8]_i_3__1 
       (.I0(\v1_reg[11]_1 [2]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[8]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[8]_i_4__1 
       (.I0(\v1_reg[11]_1 [1]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[8]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[8]_i_5__1 
       (.I0(\v1_reg[11]_1 [0]),
        .I1(restart_counter_reg_2_sn_1),
        .O(\v1[8]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[8]_i_6__1 
       (.I0(\v1_reg[11]_1 [3]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[11]_0 [3]),
        .O(\v1[8]_i_6__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[8]_i_7__1 
       (.I0(\v1_reg[11]_1 [2]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[11]_0 [2]),
        .O(\v1[8]_i_7__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[8]_i_8__1 
       (.I0(\v1_reg[11]_1 [1]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[11]_0 [1]),
        .O(\v1[8]_i_8__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[8]_i_9__1 
       (.I0(\v1_reg[11]_1 [0]),
        .I1(restart_counter_reg_2_sn_1),
        .I2(\v1_reg[11]_0 [0]),
        .O(\v1[8]_i_9__1_n_0 ));
  FDRE \v1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[0]_i_1__1_n_7 ),
        .Q(A[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[0]_i_1__1 
       (.CI(1'b0),
        .CO({\v1_reg[0]_i_1__1_n_0 ,\v1_reg[0]_i_1__1_n_1 ,\v1_reg[0]_i_1__1_n_2 ,\v1_reg[0]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[0]_i_2__1_n_0 ,\v1[0]_i_3__1_n_0 ,\v1[0]_i_4__1_n_0 ,\v1[0]_i_5__1_n_0 }),
        .O({\v1_reg[0]_i_1__1_n_4 ,\v1_reg[0]_i_1__1_n_5 ,\v1_reg[0]_i_1__1_n_6 ,\v1_reg[0]_i_1__1_n_7 }),
        .S({\v1[0]_i_6__1_n_0 ,\v1[0]_i_7__1_n_0 ,\v1[0]_i_8__1_n_0 ,\v1[0]_i_9__1_n_0 }));
  FDRE \v1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[8]_i_1__1_n_5 ),
        .Q(\v1_reg[11]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[8]_i_1__1_n_4 ),
        .Q(\v1_reg[11]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[12]_i_1__1_n_7 ),
        .Q(\v1_reg[15]_0 [0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[12]_i_1__1 
       (.CI(\v1_reg[8]_i_1__1_n_0 ),
        .CO({\v1_reg[12]_i_1__1_n_0 ,\v1_reg[12]_i_1__1_n_1 ,\v1_reg[12]_i_1__1_n_2 ,\v1_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[12]_i_2__1_n_0 ,\v1[12]_i_3__1_n_0 ,\v1[12]_i_4__1_n_0 ,\v1[12]_i_5__1_n_0 }),
        .O({\v1_reg[12]_i_1__1_n_4 ,\v1_reg[12]_i_1__1_n_5 ,\v1_reg[12]_i_1__1_n_6 ,\v1_reg[12]_i_1__1_n_7 }),
        .S({\v1[12]_i_6__1_n_0 ,\v1[12]_i_7__1_n_0 ,\v1[12]_i_8__1_n_0 ,\v1[12]_i_9__1_n_0 }));
  FDRE \v1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[12]_i_1__1_n_6 ),
        .Q(\v1_reg[15]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[12]_i_1__1_n_5 ),
        .Q(\v1_reg[15]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[12]_i_1__1_n_4 ),
        .Q(\v1_reg[15]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[16]_i_1__1_n_7 ),
        .Q(\v1_reg[19]_0 [0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[16]_i_1__1 
       (.CI(\v1_reg[12]_i_1__1_n_0 ),
        .CO({\v1_reg[19]_1 ,\v1_reg[16]_i_1__1_n_1 ,\v1_reg[16]_i_1__1_n_2 ,\v1_reg[16]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[16]_i_2__1_n_0 ,\v1[16]_i_3__1_n_0 ,\v1[16]_i_4__1_n_0 ,\v1[16]_i_5__1_n_0 }),
        .O({\v1_reg[16]_i_1__1_n_4 ,\v1_reg[16]_i_1__1_n_5 ,\v1_reg[16]_i_1__1_n_6 ,\v1_reg[16]_i_1__1_n_7 }),
        .S({\v1[16]_i_6__1_n_0 ,\v1[16]_i_7__1_n_0 ,\v1[16]_i_8__1_n_0 ,\v1[16]_i_9__1_n_0 }));
  FDRE \v1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[16]_i_1__1_n_6 ),
        .Q(\v1_reg[19]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[16]_i_1__1_n_5 ),
        .Q(\v1_reg[19]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[16]_i_1__1_n_4 ),
        .Q(\v1_reg[19]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[0]_i_1__1_n_6 ),
        .Q(DI[0]),
        .R(1'b0));
  FDRE \v1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O[0]),
        .Q(\v1_reg[23]_0 [0]),
        .R(1'b0));
  FDRE \v1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O[1]),
        .Q(\v1_reg[23]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O[2]),
        .Q(\v1_reg[23]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(O[3]),
        .Q(\v1_reg[23]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[26]_11 [0]),
        .Q(\v1_reg[25]_0 [0]),
        .R(1'b0));
  FDRE \v1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[26]_11 [1]),
        .Q(\v1_reg[25]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[26]_11 [2]),
        .Q(\v1_reg[26]_0 ),
        .R(1'b0));
  FDRE \v1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[0]_i_1__1_n_5 ),
        .Q(DI[1]),
        .R(1'b0));
  FDRE \v1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[0]_i_1__1_n_4 ),
        .Q(DI[2]),
        .R(1'b0));
  FDRE \v1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[4]_i_1__1_n_7 ),
        .Q(\v1_reg[7]_0 [0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[4]_i_1__1 
       (.CI(\v1_reg[0]_i_1__1_n_0 ),
        .CO({\v1_reg[4]_i_1__1_n_0 ,\v1_reg[4]_i_1__1_n_1 ,\v1_reg[4]_i_1__1_n_2 ,\v1_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[4]_i_2__1_n_0 ,\v1[4]_i_3__1_n_0 ,\v1[4]_i_4__1_n_0 ,\v1[4]_i_5__1_n_0 }),
        .O({\v1_reg[4]_i_1__1_n_4 ,\v1_reg[4]_i_1__1_n_5 ,\v1_reg[4]_i_1__1_n_6 ,\v1_reg[4]_i_1__1_n_7 }),
        .S({\v1[4]_i_6__1_n_0 ,\v1[4]_i_7__1_n_0 ,\v1[4]_i_8__1_n_0 ,\v1[4]_i_9__1_n_0 }));
  FDRE \v1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[4]_i_1__1_n_6 ),
        .Q(\v1_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \v1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[4]_i_1__1_n_5 ),
        .Q(\v1_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \v1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[4]_i_1__1_n_4 ),
        .Q(\v1_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \v1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[8]_i_1__1_n_7 ),
        .Q(\v1_reg[11]_0 [0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[8]_i_1__1 
       (.CI(\v1_reg[4]_i_1__1_n_0 ),
        .CO({\v1_reg[8]_i_1__1_n_0 ,\v1_reg[8]_i_1__1_n_1 ,\v1_reg[8]_i_1__1_n_2 ,\v1_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[8]_i_2__1_n_0 ,\v1[8]_i_3__1_n_0 ,\v1[8]_i_4__1_n_0 ,\v1[8]_i_5__1_n_0 }),
        .O({\v1_reg[8]_i_1__1_n_4 ,\v1_reg[8]_i_1__1_n_5 ,\v1_reg[8]_i_1__1_n_6 ,\v1_reg[8]_i_1__1_n_7 }),
        .S({\v1[8]_i_6__1_n_0 ,\v1[8]_i_7__1_n_0 ,\v1[8]_i_8__1_n_0 ,\v1[8]_i_9__1_n_0 }));
  FDRE \v1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\v1_reg[8]_i_1__1_n_6 ),
        .Q(\v1_reg[11]_0 [1]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lorenz_reader
   (axi_awready_reg,
    axi_rvalid_reg,
    axi_arready_reg,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg;
  output axi_rvalid_reg;
  output axi_arready_reg;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire [26:0]\integrator_x/v1_reg ;
  wire [26:0]\integrator_y/v1_reg ;
  wire [26:0]\integrator_z/v1_reg ;
  wire \restart_counter[0]_i_5_n_0 ;
  wire [10:0]restart_counter_reg;
  wire \restart_counter_reg[0]_i_2_n_0 ;
  wire \restart_counter_reg[0]_i_2_n_1 ;
  wire \restart_counter_reg[0]_i_2_n_2 ;
  wire \restart_counter_reg[0]_i_2_n_3 ;
  wire \restart_counter_reg[0]_i_2_n_4 ;
  wire \restart_counter_reg[0]_i_2_n_5 ;
  wire \restart_counter_reg[0]_i_2_n_6 ;
  wire \restart_counter_reg[0]_i_2_n_7 ;
  wire \restart_counter_reg[4]_i_1_n_0 ;
  wire \restart_counter_reg[4]_i_1_n_1 ;
  wire \restart_counter_reg[4]_i_1_n_2 ;
  wire \restart_counter_reg[4]_i_1_n_3 ;
  wire \restart_counter_reg[4]_i_1_n_4 ;
  wire \restart_counter_reg[4]_i_1_n_5 ;
  wire \restart_counter_reg[4]_i_1_n_6 ;
  wire \restart_counter_reg[4]_i_1_n_7 ;
  wire \restart_counter_reg[8]_i_1_n_2 ;
  wire \restart_counter_reg[8]_i_1_n_3 ;
  wire \restart_counter_reg[8]_i_1_n_5 ;
  wire \restart_counter_reg[8]_i_1_n_6 ;
  wire \restart_counter_reg[8]_i_1_n_7 ;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire solver_reset;
  wire [3:2]\NLW_restart_counter_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_restart_counter_reg[8]_i_1_O_UNCONNECTED ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lorenz_reader_slave_lite_v1_0_S00_AXI lorenz_reader_slave_lite_v1_0_S00_AXI_inst
       (.axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .v1_reg(\integrator_z/v1_reg ),
        .v1_reg_0(\integrator_y/v1_reg ),
        .v1_reg_1(\integrator_x/v1_reg ));
  LUT1 #(
    .INIT(2'h1)) 
    \restart_counter[0]_i_5 
       (.I0(restart_counter_reg[0]),
        .O(\restart_counter[0]_i_5_n_0 ));
  FDRE \restart_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\restart_counter_reg[0]_i_2_n_7 ),
        .Q(restart_counter_reg[0]),
        .R(solver_reset));
  CARRY4 \restart_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\restart_counter_reg[0]_i_2_n_0 ,\restart_counter_reg[0]_i_2_n_1 ,\restart_counter_reg[0]_i_2_n_2 ,\restart_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\restart_counter_reg[0]_i_2_n_4 ,\restart_counter_reg[0]_i_2_n_5 ,\restart_counter_reg[0]_i_2_n_6 ,\restart_counter_reg[0]_i_2_n_7 }),
        .S({restart_counter_reg[3:1],\restart_counter[0]_i_5_n_0 }));
  FDRE \restart_counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\restart_counter_reg[8]_i_1_n_5 ),
        .Q(restart_counter_reg[10]),
        .R(solver_reset));
  FDRE \restart_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\restart_counter_reg[0]_i_2_n_6 ),
        .Q(restart_counter_reg[1]),
        .R(solver_reset));
  FDRE \restart_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\restart_counter_reg[0]_i_2_n_5 ),
        .Q(restart_counter_reg[2]),
        .R(solver_reset));
  FDRE \restart_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\restart_counter_reg[0]_i_2_n_4 ),
        .Q(restart_counter_reg[3]),
        .R(solver_reset));
  FDRE \restart_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\restart_counter_reg[4]_i_1_n_7 ),
        .Q(restart_counter_reg[4]),
        .R(solver_reset));
  CARRY4 \restart_counter_reg[4]_i_1 
       (.CI(\restart_counter_reg[0]_i_2_n_0 ),
        .CO({\restart_counter_reg[4]_i_1_n_0 ,\restart_counter_reg[4]_i_1_n_1 ,\restart_counter_reg[4]_i_1_n_2 ,\restart_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\restart_counter_reg[4]_i_1_n_4 ,\restart_counter_reg[4]_i_1_n_5 ,\restart_counter_reg[4]_i_1_n_6 ,\restart_counter_reg[4]_i_1_n_7 }),
        .S(restart_counter_reg[7:4]));
  FDRE \restart_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\restart_counter_reg[4]_i_1_n_6 ),
        .Q(restart_counter_reg[5]),
        .R(solver_reset));
  FDRE \restart_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\restart_counter_reg[4]_i_1_n_5 ),
        .Q(restart_counter_reg[6]),
        .R(solver_reset));
  FDRE \restart_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\restart_counter_reg[4]_i_1_n_4 ),
        .Q(restart_counter_reg[7]),
        .R(solver_reset));
  FDRE \restart_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\restart_counter_reg[8]_i_1_n_7 ),
        .Q(restart_counter_reg[8]),
        .R(solver_reset));
  CARRY4 \restart_counter_reg[8]_i_1 
       (.CI(\restart_counter_reg[4]_i_1_n_0 ),
        .CO({\NLW_restart_counter_reg[8]_i_1_CO_UNCONNECTED [3:2],\restart_counter_reg[8]_i_1_n_2 ,\restart_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_restart_counter_reg[8]_i_1_O_UNCONNECTED [3],\restart_counter_reg[8]_i_1_n_5 ,\restart_counter_reg[8]_i_1_n_6 ,\restart_counter_reg[8]_i_1_n_7 }),
        .S({1'b0,restart_counter_reg[10:8]}));
  FDRE \restart_counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\restart_counter_reg[8]_i_1_n_6 ),
        .Q(restart_counter_reg[9]),
        .R(solver_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_solver solver_i
       (.restart_counter_reg(restart_counter_reg),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .solver_reset(solver_reset),
        .v1_reg(\integrator_z/v1_reg ),
        .v1_reg_0(\integrator_y/v1_reg ),
        .v1_reg_1(\integrator_x/v1_reg ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lorenz_reader_slave_lite_v1_0_S00_AXI
   (s00_axi_bvalid,
    axi_awready_reg_0,
    s00_axi_wready,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    s00_axi_rdata,
    s00_axi_aclk,
    s00_axi_arvalid,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_rready,
    v1_reg,
    v1_reg_0,
    v1_reg_1,
    s00_axi_araddr,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_wstrb);
  output s00_axi_bvalid;
  output axi_awready_reg_0;
  output s00_axi_wready;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input s00_axi_arvalid;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_rready;
  input [26:0]v1_reg;
  input [26:0]v1_reg_0;
  input [26:0]v1_reg_1;
  input [1:0]s00_axi_araddr;
  input [1:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;

  wire \FSM_sequential_state_read[0]_i_1_n_0 ;
  wire \FSM_sequential_state_read[1]_i_1_n_0 ;
  wire \FSM_sequential_state_write[0]_i_1_n_0 ;
  wire \FSM_sequential_state_write[1]_i_1_n_0 ;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[3]_i_2_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_arready_reg_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0__0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire [31:7]p_1_in;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg3;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire [26:0]v1_reg;
  wire [26:0]v1_reg_0;
  wire [26:0]v1_reg_1;
  wire [26:0]x_reg;
  wire [26:0]y_reg;
  wire [26:0]z_reg;

  LUT6 #(
    .INIT(64'hFFFF88880FFFFFFF)) 
    \FSM_sequential_state_read[0]_i_1 
       (.I0(s00_axi_rready),
        .I1(axi_rvalid_reg_0),
        .I2(s00_axi_arvalid),
        .I3(axi_arready_reg_0),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF7777F0000000)) 
    \FSM_sequential_state_read[1]_i_1 
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(axi_arready_reg_0),
        .I3(s00_axi_arvalid),
        .I4(state_read[0]),
        .I5(state_read[1]),
        .O(\FSM_sequential_state_read[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[0]_i_1_n_0 ),
        .Q(state_read[0]),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Rdata:10,Raddr:01" *) 
  FDRE \FSM_sequential_state_read_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_read[1]_i_1_n_0 ),
        .Q(state_read[1]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFF0F7FF)) 
    \FSM_sequential_state_write[0]_i_1 
       (.I0(axi_awready_reg_0),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF0F0800)) 
    \FSM_sequential_state_write[1]_i_1 
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_wvalid),
        .I3(state_write[0]),
        .I4(state_write[1]),
        .O(\FSM_sequential_state_write[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[0]_i_1_n_0 ),
        .Q(state_write[0]),
        .R(axi_awready_i_1_n_0));
  (* FSM_ENCODED_STATES = "Idle:00,Wdata:10,Waddr:01" *) 
  FDRE \FSM_sequential_state_write_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_write[1]_i_1_n_0 ),
        .Q(state_write[1]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(state_read[0]),
        .I2(s00_axi_aresetn),
        .I3(\axi_araddr[3]_i_2_n_0 ),
        .I4(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(state_read[0]),
        .I2(s00_axi_aresetn),
        .I3(\axi_araddr[3]_i_2_n_0 ),
        .I4(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_araddr[3]_i_2 
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(state_read[1]),
        .O(\axi_araddr[3]_i_2_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(1'b0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF55FFFF40554055)) 
    axi_arready_i_1
       (.I0(state_read[0]),
        .I1(s00_axi_rready),
        .I2(axi_rvalid_reg_0),
        .I3(state_read[1]),
        .I4(s00_axi_arvalid),
        .I5(axi_arready_reg_0),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCCC4FFCF)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .I2(state_write[1]),
        .I3(s00_axi_wvalid),
        .I4(state_write[0]),
        .O(axi_awready_i_2_n_0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_i_2_n_0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFF3838C3FF0000)) 
    axi_bvalid_i_1
       (.I0(axi_awready0__0),
        .I1(state_write[0]),
        .I2(state_write[1]),
        .I3(s00_axi_bready),
        .I4(s00_axi_bvalid),
        .I5(s00_axi_wvalid),
        .O(axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_bvalid_i_2
       (.I0(s00_axi_awvalid),
        .I1(axi_awready_reg_0),
        .O(axi_awready0__0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hA2A2A2A2FAAAAAAA)) 
    axi_rvalid_i_1
       (.I0(axi_rvalid_reg_0),
        .I1(s00_axi_rready),
        .I2(state_read[0]),
        .I3(axi_arready_reg_0),
        .I4(s00_axi_arvalid),
        .I5(state_read[1]),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'hF1)) 
    axi_wready_i_1
       (.I0(state_write[1]),
        .I1(state_write[0]),
        .I2(s00_axi_wready),
        .O(axi_wready_i_1_n_0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_i_1_n_0),
        .Q(s00_axi_wready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(y_reg[0]),
        .I1(x_reg[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[0]),
        .O(s00_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(y_reg[10]),
        .I1(x_reg[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[10]),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(y_reg[11]),
        .I1(x_reg[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[11]),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(y_reg[12]),
        .I1(x_reg[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[12]),
        .O(s00_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(y_reg[13]),
        .I1(x_reg[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[13]),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(y_reg[14]),
        .I1(x_reg[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[14]),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(y_reg[15]),
        .I1(x_reg[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[15]),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(y_reg[16]),
        .I1(x_reg[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[16]),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(y_reg[17]),
        .I1(x_reg[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[17]),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(y_reg[18]),
        .I1(x_reg[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[18]),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(y_reg[19]),
        .I1(x_reg[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[19]),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(y_reg[1]),
        .I1(x_reg[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[1]),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(y_reg[20]),
        .I1(x_reg[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[20]),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(y_reg[21]),
        .I1(x_reg[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[21]),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(y_reg[22]),
        .I1(x_reg[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[22]),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(y_reg[23]),
        .I1(x_reg[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[23]),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(y_reg[24]),
        .I1(x_reg[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[24]),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(y_reg[25]),
        .I1(x_reg[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[25]),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(y_reg[26]),
        .I1(x_reg[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[26]),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(y_reg[26]),
        .I1(x_reg[26]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[26]),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(y_reg[26]),
        .I1(x_reg[26]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[26]),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(y_reg[26]),
        .I1(x_reg[26]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[26]),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(y_reg[2]),
        .I1(x_reg[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[2]),
        .O(s00_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(y_reg[26]),
        .I1(x_reg[26]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[26]),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(y_reg[26]),
        .I1(x_reg[26]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[26]),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(y_reg[3]),
        .I1(x_reg[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[3]),
        .O(s00_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(y_reg[4]),
        .I1(x_reg[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[4]),
        .O(s00_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(y_reg[5]),
        .I1(x_reg[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[5]),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(y_reg[6]),
        .I1(x_reg[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[6]),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(y_reg[7]),
        .I1(x_reg[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[7]),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(y_reg[8]),
        .I1(x_reg[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[8]),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(y_reg[9]),
        .I1(x_reg[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(z_reg[9]),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(\slv_reg3[31]_i_2_n_0 ),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(\slv_reg3[31]_i_2_n_0 ),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(\slv_reg3[31]_i_2_n_0 ),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(p_1_in[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(axi_awaddr[2]),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000808080000000)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(\slv_reg3[31]_i_2_n_0 ),
        .I3(s00_axi_awaddr[1]),
        .I4(s00_axi_awvalid),
        .I5(axi_awaddr[3]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[0]),
        .Q(x_reg[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[10]),
        .Q(x_reg[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[11]),
        .Q(x_reg[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[12]),
        .Q(x_reg[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[13]),
        .Q(x_reg[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[14]),
        .Q(x_reg[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[15]),
        .Q(x_reg[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[16]),
        .Q(x_reg[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[17]),
        .Q(x_reg[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[18]),
        .Q(x_reg[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[19]),
        .Q(x_reg[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[1]),
        .Q(x_reg[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[20]),
        .Q(x_reg[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[21]),
        .Q(x_reg[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[22]),
        .Q(x_reg[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[23]),
        .Q(x_reg[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[24]),
        .Q(x_reg[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[25]),
        .Q(x_reg[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[26]),
        .Q(x_reg[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[2]),
        .Q(x_reg[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[3]),
        .Q(x_reg[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[4]),
        .Q(x_reg[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[5]),
        .Q(x_reg[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[6]),
        .Q(x_reg[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[7]),
        .Q(x_reg[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[8]),
        .Q(x_reg[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \x_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_1[9]),
        .Q(x_reg[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[0]),
        .Q(y_reg[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[10]),
        .Q(y_reg[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[11]),
        .Q(y_reg[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[12]),
        .Q(y_reg[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[13]),
        .Q(y_reg[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[14]),
        .Q(y_reg[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[15]),
        .Q(y_reg[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[16]),
        .Q(y_reg[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[17]),
        .Q(y_reg[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[18]),
        .Q(y_reg[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[19]),
        .Q(y_reg[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[1]),
        .Q(y_reg[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[20]),
        .Q(y_reg[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[21]),
        .Q(y_reg[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[22]),
        .Q(y_reg[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[23]),
        .Q(y_reg[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[24]),
        .Q(y_reg[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[25]),
        .Q(y_reg[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[26]),
        .Q(y_reg[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[2]),
        .Q(y_reg[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[3]),
        .Q(y_reg[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[4]),
        .Q(y_reg[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[5]),
        .Q(y_reg[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[6]),
        .Q(y_reg[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[7]),
        .Q(y_reg[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[8]),
        .Q(y_reg[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \y_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg_0[9]),
        .Q(y_reg[9]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[0]),
        .Q(z_reg[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[10]),
        .Q(z_reg[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[11]),
        .Q(z_reg[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[12]),
        .Q(z_reg[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[13]),
        .Q(z_reg[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[14]),
        .Q(z_reg[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[15]),
        .Q(z_reg[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[16]),
        .Q(z_reg[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[17]),
        .Q(z_reg[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[18]),
        .Q(z_reg[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[19]),
        .Q(z_reg[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[1]),
        .Q(z_reg[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[20]),
        .Q(z_reg[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[21]),
        .Q(z_reg[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[22]),
        .Q(z_reg[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[23]),
        .Q(z_reg[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[24]),
        .Q(z_reg[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[25]),
        .Q(z_reg[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[26]),
        .Q(z_reg[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[2]),
        .Q(z_reg[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[3]),
        .Q(z_reg[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[4]),
        .Q(z_reg[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[5]),
        .Q(z_reg[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[6]),
        .Q(z_reg[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[7]),
        .Q(z_reg[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[8]),
        .Q(z_reg[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \z_reg_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(v1_reg[9]),
        .Q(z_reg[9]),
        .R(axi_awready_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signed_mult
   (P,
    mult_out_0,
    mult_out_1,
    mult_out_2,
    mult_out_3,
    O,
    mult_out_4,
    mult_out_5,
    mult_out_6,
    mult_out_7,
    \v1_reg[23] ,
    \v1_reg[26] ,
    A,
    adder_out_carry__3_i_3__0,
    adder_out_carry__4_i_3__0,
    DI,
    \mult_out_inferred__0/i__carry__3_0 ,
    \v1_reg[26]_0 ,
    \v1_reg[26]_1 ,
    v1_reg_1,
    \mult_out_inferred__0/i__carry_0 );
  output [20:0]P;
  output [3:0]mult_out_0;
  output [3:0]mult_out_1;
  output [0:0]mult_out_2;
  output [0:0]mult_out_3;
  output [3:0]O;
  output [3:0]mult_out_4;
  output [3:0]mult_out_5;
  output [3:0]mult_out_6;
  output [3:0]mult_out_7;
  output [3:0]\v1_reg[23] ;
  output [2:0]\v1_reg[26] ;
  input [16:0]A;
  input [0:0]adder_out_carry__3_i_3__0;
  input [0:0]adder_out_carry__4_i_3__0;
  input [1:0]DI;
  input [1:0]\mult_out_inferred__0/i__carry__3_0 ;
  input \v1_reg[26]_0 ;
  input \v1_reg[26]_1 ;
  input [25:0]v1_reg_1;
  input [0:0]\mult_out_inferred__0/i__carry_0 ;

  wire [16:0]A;
  wire [1:0]DI;
  wire [3:0]O;
  wire [20:0]P;
  wire [0:0]adder_out_carry__3_i_3__0;
  wire [0:0]adder_out_carry__4_i_3__0;
  wire i__carry__0_i_1__1_n_0;
  wire i__carry__0_i_2__1_n_0;
  wire i__carry__0_i_3__1_n_0;
  wire i__carry__1_i_1__1_n_0;
  wire i__carry__1_i_2__1_n_0;
  wire i__carry__1_i_3__1_n_0;
  wire i__carry__1_i_4__1_n_0;
  wire i__carry__2_i_4__1_n_0;
  wire i__carry__2_i_5__1_n_0;
  wire i__carry__3_i_1_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_3__1_n_0;
  wire [3:0]mult_out_0;
  wire [3:0]mult_out_1;
  wire [0:0]mult_out_2;
  wire [0:0]mult_out_3;
  wire [3:0]mult_out_4;
  wire [3:0]mult_out_5;
  wire [3:0]mult_out_6;
  wire [3:0]mult_out_7;
  wire [0:0]\mult_out_inferred__0/i__carry_0 ;
  wire \mult_out_inferred__0/i__carry__0_n_0 ;
  wire \mult_out_inferred__0/i__carry__0_n_1 ;
  wire \mult_out_inferred__0/i__carry__0_n_2 ;
  wire \mult_out_inferred__0/i__carry__0_n_3 ;
  wire \mult_out_inferred__0/i__carry__1_n_0 ;
  wire \mult_out_inferred__0/i__carry__1_n_1 ;
  wire \mult_out_inferred__0/i__carry__1_n_2 ;
  wire \mult_out_inferred__0/i__carry__1_n_3 ;
  wire \mult_out_inferred__0/i__carry__2_n_0 ;
  wire \mult_out_inferred__0/i__carry__2_n_1 ;
  wire \mult_out_inferred__0/i__carry__2_n_2 ;
  wire \mult_out_inferred__0/i__carry__2_n_3 ;
  wire [1:0]\mult_out_inferred__0/i__carry__3_0 ;
  wire \mult_out_inferred__0/i__carry_n_0 ;
  wire \mult_out_inferred__0/i__carry_n_1 ;
  wire \mult_out_inferred__0/i__carry_n_2 ;
  wire \mult_out_inferred__0/i__carry_n_3 ;
  wire mult_out_n_103;
  wire mult_out_n_104;
  wire mult_out_n_105;
  wire mult_out_n_58;
  wire mult_out_n_59;
  wire mult_out_n_60;
  wire mult_out_n_61;
  wire mult_out_n_62;
  wire mult_out_n_63;
  wire mult_out_n_64;
  wire mult_out_n_65;
  wire mult_out_n_66;
  wire mult_out_n_67;
  wire mult_out_n_68;
  wire mult_out_n_69;
  wire mult_out_n_72;
  wire mult_out_n_73;
  wire mult_out_n_74;
  wire mult_out_n_75;
  wire mult_out_n_76;
  wire mult_out_n_77;
  wire mult_out_n_78;
  wire mult_out_n_79;
  wire mult_out_n_80;
  wire mult_out_n_83;
  wire mult_out_n_84;
  wire mult_out_n_85;
  wire \v1[0]_i_2__0_n_0 ;
  wire \v1[0]_i_3__0_n_0 ;
  wire \v1[0]_i_4__0_n_0 ;
  wire \v1[0]_i_5__0_n_0 ;
  wire \v1[0]_i_6__0_n_0 ;
  wire \v1[0]_i_7__0_n_0 ;
  wire \v1[0]_i_8__0_n_0 ;
  wire \v1[0]_i_9__0_n_0 ;
  wire \v1[12]_i_2__0_n_0 ;
  wire \v1[12]_i_3__0_n_0 ;
  wire \v1[12]_i_4__0_n_0 ;
  wire \v1[12]_i_5__0_n_0 ;
  wire \v1[12]_i_6__0_n_0 ;
  wire \v1[12]_i_7__0_n_0 ;
  wire \v1[12]_i_8__0_n_0 ;
  wire \v1[12]_i_9__0_n_0 ;
  wire \v1[16]_i_2__0_n_0 ;
  wire \v1[16]_i_3__0_n_0 ;
  wire \v1[16]_i_4__0_n_0 ;
  wire \v1[16]_i_5__0_n_0 ;
  wire \v1[16]_i_6__0_n_0 ;
  wire \v1[16]_i_7__0_n_0 ;
  wire \v1[16]_i_8__0_n_0 ;
  wire \v1[16]_i_9__0_n_0 ;
  wire \v1[20]_i_2__0_n_0 ;
  wire \v1[20]_i_3__0_n_0 ;
  wire \v1[20]_i_4__0_n_0 ;
  wire \v1[20]_i_5__0_n_0 ;
  wire \v1[20]_i_6__0_n_0 ;
  wire \v1[20]_i_7__0_n_0 ;
  wire \v1[20]_i_8__0_n_0 ;
  wire \v1[20]_i_9__0_n_0 ;
  wire \v1[24]_i_2__0_n_0 ;
  wire \v1[24]_i_3__0_n_0 ;
  wire \v1[24]_i_4__1_n_0 ;
  wire \v1[24]_i_5__0_n_0 ;
  wire \v1[24]_i_6__0_n_0 ;
  wire \v1[4]_i_2__0_n_0 ;
  wire \v1[4]_i_3__0_n_0 ;
  wire \v1[4]_i_4__0_n_0 ;
  wire \v1[4]_i_5__0_n_0 ;
  wire \v1[4]_i_6__0_n_0 ;
  wire \v1[4]_i_7__0_n_0 ;
  wire \v1[4]_i_8__0_n_0 ;
  wire \v1[4]_i_9__0_n_0 ;
  wire \v1[8]_i_2__0_n_0 ;
  wire \v1[8]_i_3__0_n_0 ;
  wire \v1[8]_i_4__0_n_0 ;
  wire \v1[8]_i_5__0_n_0 ;
  wire \v1[8]_i_6__0_n_0 ;
  wire \v1[8]_i_7__0_n_0 ;
  wire \v1[8]_i_8__0_n_0 ;
  wire \v1[8]_i_9__0_n_0 ;
  wire \v1_reg[0]_i_1__0_n_0 ;
  wire \v1_reg[0]_i_1__0_n_1 ;
  wire \v1_reg[0]_i_1__0_n_2 ;
  wire \v1_reg[0]_i_1__0_n_3 ;
  wire \v1_reg[12]_i_1__0_n_0 ;
  wire \v1_reg[12]_i_1__0_n_1 ;
  wire \v1_reg[12]_i_1__0_n_2 ;
  wire \v1_reg[12]_i_1__0_n_3 ;
  wire \v1_reg[16]_i_1__0_n_0 ;
  wire \v1_reg[16]_i_1__0_n_1 ;
  wire \v1_reg[16]_i_1__0_n_2 ;
  wire \v1_reg[16]_i_1__0_n_3 ;
  wire \v1_reg[20]_i_1__0_n_0 ;
  wire \v1_reg[20]_i_1__0_n_1 ;
  wire \v1_reg[20]_i_1__0_n_2 ;
  wire \v1_reg[20]_i_1__0_n_3 ;
  wire [3:0]\v1_reg[23] ;
  wire \v1_reg[24]_i_1__0_n_2 ;
  wire \v1_reg[24]_i_1__0_n_3 ;
  wire [2:0]\v1_reg[26] ;
  wire \v1_reg[26]_0 ;
  wire \v1_reg[26]_1 ;
  wire \v1_reg[4]_i_1__0_n_0 ;
  wire \v1_reg[4]_i_1__0_n_1 ;
  wire \v1_reg[4]_i_1__0_n_2 ;
  wire \v1_reg[4]_i_1__0_n_3 ;
  wire \v1_reg[8]_i_1__0_n_0 ;
  wire \v1_reg[8]_i_1__0_n_1 ;
  wire \v1_reg[8]_i_1__0_n_2 ;
  wire \v1_reg[8]_i_1__0_n_3 ;
  wire [25:0]v1_reg_1;
  wire NLW_mult_out_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_out_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_out_OVERFLOW_UNCONNECTED;
  wire NLW_mult_out_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_out_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_out_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_out_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_out_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_out_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mult_out_PCOUT_UNCONNECTED;
  wire [3:1]\NLW_mult_out_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:0]\NLW_mult_out_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [3:0]\NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED ;
  wire [3:1]\NLW_mult_out_inferred__0/i__carry__3_O_UNCONNECTED ;
  wire [3:2]\NLW_v1_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_v1_reg[24]_i_1__0_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__1
       (.I0(mult_out_n_78),
        .I1(DI[0]),
        .O(i__carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__1
       (.I0(mult_out_n_79),
        .I1(DI[0]),
        .O(i__carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__1
       (.I0(mult_out_n_80),
        .I1(DI[0]),
        .O(i__carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1__1
       (.I0(mult_out_n_74),
        .I1(DI[0]),
        .O(i__carry__1_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2__1
       (.I0(mult_out_n_75),
        .I1(DI[0]),
        .O(i__carry__1_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3__1
       (.I0(mult_out_n_76),
        .I1(DI[0]),
        .O(i__carry__1_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4__1
       (.I0(mult_out_n_77),
        .I1(DI[0]),
        .O(i__carry__1_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_4__1
       (.I0(mult_out_n_72),
        .I1(DI[0]),
        .O(i__carry__2_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_5__1
       (.I0(mult_out_n_73),
        .I1(DI[0]),
        .O(i__carry__2_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1
       (.I0(P[20]),
        .I1(mult_out_n_69),
        .O(i__carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__1
       (.I0(mult_out_n_83),
        .I1(DI[0]),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__1
       (.I0(mult_out_n_84),
        .I1(\mult_out_inferred__0/i__carry_0 ),
        .O(i__carry_i_3__1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 10x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_out
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult_out_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_out_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_out_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_out_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_out_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_out_OVERFLOW_UNCONNECTED),
        .P({mult_out_n_58,mult_out_n_59,mult_out_n_60,mult_out_n_61,mult_out_n_62,mult_out_n_63,mult_out_n_64,mult_out_n_65,mult_out_n_66,mult_out_n_67,mult_out_n_68,mult_out_n_69,P[20:19],mult_out_n_72,mult_out_n_73,mult_out_n_74,mult_out_n_75,mult_out_n_76,mult_out_n_77,mult_out_n_78,mult_out_n_79,mult_out_n_80,P[18:17],mult_out_n_83,mult_out_n_84,mult_out_n_85,P[16:0],mult_out_n_103,mult_out_n_104,mult_out_n_105}),
        .PATTERNBDETECT(NLW_mult_out_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_out_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mult_out_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_out_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\mult_out_inferred__0/i__carry_n_0 ,\mult_out_inferred__0/i__carry_n_1 ,\mult_out_inferred__0/i__carry_n_2 ,\mult_out_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({P[17],mult_out_n_83,mult_out_n_84,1'b0}),
        .O(mult_out_0),
        .S({adder_out_carry__3_i_3__0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0,mult_out_n_85}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__0 
       (.CI(\mult_out_inferred__0/i__carry_n_0 ),
        .CO({\mult_out_inferred__0/i__carry__0_n_0 ,\mult_out_inferred__0/i__carry__0_n_1 ,\mult_out_inferred__0/i__carry__0_n_2 ,\mult_out_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out_n_78,mult_out_n_79,mult_out_n_80,P[18]}),
        .O(mult_out_1),
        .S({i__carry__0_i_1__1_n_0,i__carry__0_i_2__1_n_0,i__carry__0_i_3__1_n_0,adder_out_carry__4_i_3__0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__1 
       (.CI(\mult_out_inferred__0/i__carry__0_n_0 ),
        .CO({\mult_out_inferred__0/i__carry__1_n_0 ,\mult_out_inferred__0/i__carry__1_n_1 ,\mult_out_inferred__0/i__carry__1_n_2 ,\mult_out_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out_n_74,mult_out_n_75,mult_out_n_76,mult_out_n_77}),
        .O({\NLW_mult_out_inferred__0/i__carry__1_O_UNCONNECTED [3:1],mult_out_2}),
        .S({i__carry__1_i_1__1_n_0,i__carry__1_i_2__1_n_0,i__carry__1_i_3__1_n_0,i__carry__1_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__2 
       (.CI(\mult_out_inferred__0/i__carry__1_n_0 ),
        .CO({\mult_out_inferred__0/i__carry__2_n_0 ,\mult_out_inferred__0/i__carry__2_n_1 ,\mult_out_inferred__0/i__carry__2_n_2 ,\mult_out_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({DI,mult_out_n_72,mult_out_n_73}),
        .O(\NLW_mult_out_inferred__0/i__carry__2_O_UNCONNECTED [3:0]),
        .S({\mult_out_inferred__0/i__carry__3_0 ,i__carry__2_i_4__1_n_0,i__carry__2_i_5__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__3 
       (.CI(\mult_out_inferred__0/i__carry__2_n_0 ),
        .CO(\NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_mult_out_inferred__0/i__carry__3_O_UNCONNECTED [3:1],mult_out_3}),
        .S({1'b0,1'b0,1'b0,i__carry__3_i_1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[0]_i_2__0 
       (.I0(P[3]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[0]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[0]_i_3__0 
       (.I0(P[2]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[0]_i_4__0 
       (.I0(P[1]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[0]_i_5__0 
       (.I0(P[0]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[0]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[0]_i_6__0 
       (.I0(P[3]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[3]),
        .O(\v1[0]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[0]_i_7__0 
       (.I0(P[2]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[2]),
        .O(\v1[0]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[0]_i_8__0 
       (.I0(P[1]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[1]),
        .O(\v1[0]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[0]_i_9__0 
       (.I0(P[0]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[0]),
        .O(\v1[0]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[12]_i_2__0 
       (.I0(P[15]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[12]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[12]_i_3__0 
       (.I0(P[14]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[12]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[12]_i_4__0 
       (.I0(P[13]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[12]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[12]_i_5__0 
       (.I0(P[12]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[12]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[12]_i_6__0 
       (.I0(P[15]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[15]),
        .O(\v1[12]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[12]_i_7__0 
       (.I0(P[14]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[14]),
        .O(\v1[12]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[12]_i_8__0 
       (.I0(P[13]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[13]),
        .O(\v1[12]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[12]_i_9__0 
       (.I0(P[12]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[12]),
        .O(\v1[12]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[16]_i_2__0 
       (.I0(mult_out_0[2]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[16]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[16]_i_3__0 
       (.I0(mult_out_0[1]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[16]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[16]_i_4__0 
       (.I0(mult_out_0[0]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[16]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[16]_i_5__0 
       (.I0(P[16]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[16]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[16]_i_6__0 
       (.I0(mult_out_0[2]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[19]),
        .O(\v1[16]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[16]_i_7__0 
       (.I0(mult_out_0[1]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[18]),
        .O(\v1[16]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[16]_i_8__0 
       (.I0(mult_out_0[0]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[17]),
        .O(\v1[16]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[16]_i_9__0 
       (.I0(P[16]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[16]),
        .O(\v1[16]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[20]_i_2__0 
       (.I0(mult_out_1[2]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[20]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[20]_i_3__0 
       (.I0(mult_out_1[1]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[20]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[20]_i_4__0 
       (.I0(mult_out_1[0]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[20]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[20]_i_5__0 
       (.I0(mult_out_0[3]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[20]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[20]_i_6__0 
       (.I0(mult_out_1[2]),
        .I1(v1_reg_1[23]),
        .I2(\v1_reg[26]_0 ),
        .O(\v1[20]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[20]_i_7__0 
       (.I0(mult_out_1[1]),
        .I1(v1_reg_1[22]),
        .I2(\v1_reg[26]_0 ),
        .O(\v1[20]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[20]_i_8__0 
       (.I0(mult_out_1[0]),
        .I1(v1_reg_1[21]),
        .I2(\v1_reg[26]_0 ),
        .O(\v1[20]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[20]_i_9__0 
       (.I0(mult_out_0[3]),
        .I1(v1_reg_1[20]),
        .I2(\v1_reg[26]_0 ),
        .O(\v1[20]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[24]_i_2__0 
       (.I0(mult_out_2),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[24]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[24]_i_3__0 
       (.I0(mult_out_1[3]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[24]_i_3__0_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[24]_i_4__1 
       (.I0(mult_out_3),
        .I1(\v1_reg[26]_1 ),
        .I2(\v1_reg[26]_0 ),
        .O(\v1[24]_i_4__1_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[24]_i_5__0 
       (.I0(mult_out_2),
        .I1(v1_reg_1[25]),
        .I2(\v1_reg[26]_0 ),
        .O(\v1[24]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[24]_i_6__0 
       (.I0(mult_out_1[3]),
        .I1(v1_reg_1[24]),
        .I2(\v1_reg[26]_0 ),
        .O(\v1[24]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[4]_i_2__0 
       (.I0(P[7]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[4]_i_3__0 
       (.I0(P[6]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[4]_i_4__0 
       (.I0(P[5]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[4]_i_5__0 
       (.I0(P[4]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[4]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[4]_i_6__0 
       (.I0(P[7]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[7]),
        .O(\v1[4]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[4]_i_7__0 
       (.I0(P[6]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[6]),
        .O(\v1[4]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[4]_i_8__0 
       (.I0(P[5]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[5]),
        .O(\v1[4]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[4]_i_9__0 
       (.I0(P[4]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[4]),
        .O(\v1[4]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[8]_i_2__0 
       (.I0(P[11]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[8]_i_3__0 
       (.I0(P[10]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[8]_i_4__0 
       (.I0(P[9]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[8]_i_5__0 
       (.I0(P[8]),
        .I1(\v1_reg[26]_0 ),
        .O(\v1[8]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[8]_i_6__0 
       (.I0(P[11]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[11]),
        .O(\v1[8]_i_6__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[8]_i_7__0 
       (.I0(P[10]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[10]),
        .O(\v1[8]_i_7__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[8]_i_8__0 
       (.I0(P[9]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[9]),
        .O(\v1[8]_i_8__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[8]_i_9__0 
       (.I0(P[8]),
        .I1(\v1_reg[26]_0 ),
        .I2(v1_reg_1[8]),
        .O(\v1[8]_i_9__0_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[0]_i_1__0 
       (.CI(1'b0),
        .CO({\v1_reg[0]_i_1__0_n_0 ,\v1_reg[0]_i_1__0_n_1 ,\v1_reg[0]_i_1__0_n_2 ,\v1_reg[0]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[0]_i_2__0_n_0 ,\v1[0]_i_3__0_n_0 ,\v1[0]_i_4__0_n_0 ,\v1[0]_i_5__0_n_0 }),
        .O(O),
        .S({\v1[0]_i_6__0_n_0 ,\v1[0]_i_7__0_n_0 ,\v1[0]_i_8__0_n_0 ,\v1[0]_i_9__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[12]_i_1__0 
       (.CI(\v1_reg[8]_i_1__0_n_0 ),
        .CO({\v1_reg[12]_i_1__0_n_0 ,\v1_reg[12]_i_1__0_n_1 ,\v1_reg[12]_i_1__0_n_2 ,\v1_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[12]_i_2__0_n_0 ,\v1[12]_i_3__0_n_0 ,\v1[12]_i_4__0_n_0 ,\v1[12]_i_5__0_n_0 }),
        .O(mult_out_6),
        .S({\v1[12]_i_6__0_n_0 ,\v1[12]_i_7__0_n_0 ,\v1[12]_i_8__0_n_0 ,\v1[12]_i_9__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[16]_i_1__0 
       (.CI(\v1_reg[12]_i_1__0_n_0 ),
        .CO({\v1_reg[16]_i_1__0_n_0 ,\v1_reg[16]_i_1__0_n_1 ,\v1_reg[16]_i_1__0_n_2 ,\v1_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[16]_i_2__0_n_0 ,\v1[16]_i_3__0_n_0 ,\v1[16]_i_4__0_n_0 ,\v1[16]_i_5__0_n_0 }),
        .O(mult_out_7),
        .S({\v1[16]_i_6__0_n_0 ,\v1[16]_i_7__0_n_0 ,\v1[16]_i_8__0_n_0 ,\v1[16]_i_9__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[20]_i_1__0 
       (.CI(\v1_reg[16]_i_1__0_n_0 ),
        .CO({\v1_reg[20]_i_1__0_n_0 ,\v1_reg[20]_i_1__0_n_1 ,\v1_reg[20]_i_1__0_n_2 ,\v1_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[20]_i_2__0_n_0 ,\v1[20]_i_3__0_n_0 ,\v1[20]_i_4__0_n_0 ,\v1[20]_i_5__0_n_0 }),
        .O(\v1_reg[23] ),
        .S({\v1[20]_i_6__0_n_0 ,\v1[20]_i_7__0_n_0 ,\v1[20]_i_8__0_n_0 ,\v1[20]_i_9__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[24]_i_1__0 
       (.CI(\v1_reg[20]_i_1__0_n_0 ),
        .CO({\NLW_v1_reg[24]_i_1__0_CO_UNCONNECTED [3:2],\v1_reg[24]_i_1__0_n_2 ,\v1_reg[24]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\v1[24]_i_2__0_n_0 ,\v1[24]_i_3__0_n_0 }),
        .O({\NLW_v1_reg[24]_i_1__0_O_UNCONNECTED [3],\v1_reg[26] }),
        .S({1'b0,\v1[24]_i_4__1_n_0 ,\v1[24]_i_5__0_n_0 ,\v1[24]_i_6__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[4]_i_1__0 
       (.CI(\v1_reg[0]_i_1__0_n_0 ),
        .CO({\v1_reg[4]_i_1__0_n_0 ,\v1_reg[4]_i_1__0_n_1 ,\v1_reg[4]_i_1__0_n_2 ,\v1_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[4]_i_2__0_n_0 ,\v1[4]_i_3__0_n_0 ,\v1[4]_i_4__0_n_0 ,\v1[4]_i_5__0_n_0 }),
        .O(mult_out_4),
        .S({\v1[4]_i_6__0_n_0 ,\v1[4]_i_7__0_n_0 ,\v1[4]_i_8__0_n_0 ,\v1[4]_i_9__0_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[8]_i_1__0 
       (.CI(\v1_reg[4]_i_1__0_n_0 ),
        .CO({\v1_reg[8]_i_1__0_n_0 ,\v1_reg[8]_i_1__0_n_1 ,\v1_reg[8]_i_1__0_n_2 ,\v1_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[8]_i_2__0_n_0 ,\v1[8]_i_3__0_n_0 ,\v1[8]_i_4__0_n_0 ,\v1[8]_i_5__0_n_0 }),
        .O(mult_out_5),
        .S({\v1[8]_i_6__0_n_0 ,\v1[8]_i_7__0_n_0 ,\v1[8]_i_8__0_n_0 ,\v1[8]_i_9__0_n_0 }));
endmodule

(* ORIG_REF_NAME = "signed_mult" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signed_mult_2
   (mult_out_0,
    CO,
    \v1_reg[26] ,
    \v1_reg[26]_0 ,
    mult_out__1_0,
    mult_out__1_1,
    mult_out__1_2,
    \v1_reg[26]_1 ,
    \v1_reg[23] ,
    \v1_reg[19] ,
    \v1_reg[15] ,
    \v1_reg[11] ,
    O,
    s00_axi_aclk,
    v1new,
    diff_rho_z,
    v1_reg,
    mult_out__11_carry__0_i_5,
    S,
    DI,
    i__carry_i_2__2_0,
    i__carry__0_i_2__2_0,
    i__carry__0_i_2__2_1,
    i__carry__1_i_2__2_0,
    i__carry__1_i_2__2_1,
    i__carry__3_i_2__1_0,
    \mult_out_inferred__0/i__carry__3_0 ,
    \v1_reg[26]_2 ,
    \v1_reg[26]_3 ,
    v1_reg_0,
    \v1_reg[26]_4 ,
    \v1_reg[26]_5 ,
    \v1_reg[26]_6 ,
    \mult_out_inferred__0/i__carry_0 );
  output [0:0]mult_out_0;
  output [0:0]CO;
  output [2:0]\v1_reg[26] ;
  output [0:0]\v1_reg[26]_0 ;
  output [24:0]mult_out__1_0;
  output [2:0]mult_out__1_1;
  output [2:0]mult_out__1_2;
  output [2:0]\v1_reg[26]_1 ;
  output [3:0]\v1_reg[23] ;
  output [3:0]\v1_reg[19] ;
  output [3:0]\v1_reg[15] ;
  output [3:0]\v1_reg[11] ;
  output [2:0]O;
  input s00_axi_aclk;
  input [18:0]v1new;
  input [25:0]diff_rho_z;
  input [0:0]v1_reg;
  input mult_out__11_carry__0_i_5;
  input [2:0]S;
  input [2:0]DI;
  input [3:0]i__carry_i_2__2_0;
  input [3:0]i__carry__0_i_2__2_0;
  input [3:0]i__carry__0_i_2__2_1;
  input [3:0]i__carry__1_i_2__2_0;
  input [3:0]i__carry__1_i_2__2_1;
  input [0:0]i__carry__3_i_2__1_0;
  input [0:0]\mult_out_inferred__0/i__carry__3_0 ;
  input [0:0]\v1_reg[26]_2 ;
  input [1:0]\v1_reg[26]_3 ;
  input [15:0]v1_reg_0;
  input [2:0]\v1_reg[26]_4 ;
  input \v1_reg[26]_5 ;
  input [0:0]\v1_reg[26]_6 ;
  input [0:0]\mult_out_inferred__0/i__carry_0 ;

  wire [0:0]CO;
  wire [2:0]DI;
  wire [2:0]O;
  wire [2:0]S;
  wire [25:0]diff_rho_z;
  wire i__carry__0_i_1__2_n_0;
  wire i__carry__0_i_1__3_n_0;
  wire [3:0]i__carry__0_i_2__2_0;
  wire [3:0]i__carry__0_i_2__2_1;
  wire i__carry__0_i_2__2_n_0;
  wire i__carry__0_i_2__3_n_0;
  wire i__carry__0_i_3__2_n_0;
  wire i__carry__0_i_3__3_n_0;
  wire i__carry__0_i_4__2_n_0;
  wire i__carry__0_i_4__3_n_0;
  wire i__carry__1_i_1__2_n_0;
  wire i__carry__1_i_1__3_n_0;
  wire [3:0]i__carry__1_i_2__2_0;
  wire [3:0]i__carry__1_i_2__2_1;
  wire i__carry__1_i_2__2_n_0;
  wire i__carry__1_i_2__3_n_0;
  wire i__carry__1_i_3__2_n_0;
  wire i__carry__1_i_3__3_n_0;
  wire i__carry__1_i_4__2_n_0;
  wire i__carry__1_i_4__3_n_0;
  wire i__carry__2_i_1__2_n_0;
  wire i__carry__2_i_1__4_n_0;
  wire i__carry__2_i_2__1_n_0;
  wire i__carry__2_i_2__3_n_0;
  wire i__carry__2_i_3__2_n_0;
  wire i__carry__2_i_3__3_n_0;
  wire i__carry__2_i_4__2_n_0;
  wire i__carry__2_i_4__3_n_0;
  wire i__carry__3_i_1__0_n_0;
  wire i__carry__3_i_1__4_n_0;
  wire [0:0]i__carry__3_i_2__1_0;
  wire i__carry__3_i_2__1_n_0;
  wire i__carry__3_i_2__3_n_0;
  wire i__carry__3_i_3__0_n_0;
  wire i__carry__3_i_3__3_n_0;
  wire i__carry__3_i_4__0_n_0;
  wire i__carry__3_i_4__3_n_0;
  wire i__carry__4_i_1__0_n_0;
  wire i__carry__4_i_2__0_n_0;
  wire i__carry__4_i_3__0_n_0;
  wire i__carry__4_i_4__0_n_0;
  wire i__carry__5_i_1__0_n_0;
  wire i__carry__5_i_2__0_n_0;
  wire i__carry__5_i_3__0_n_0;
  wire i__carry__5_i_4__0_n_0;
  wire i__carry__6_i_1__0_n_0;
  wire i__carry__6_i_2__0_n_0;
  wire i__carry__6_i_3__0_n_0;
  wire i__carry__6_i_4__0_n_0;
  wire i__carry__7_i_1__0_n_0;
  wire i__carry__7_i_2__0_n_0;
  wire i__carry__7_i_3__0_n_0;
  wire i__carry__7_i_4__0_n_0;
  wire i__carry__8_i_1__0_n_0;
  wire i__carry__8_i_2__0_n_0;
  wire i__carry_i_1__2_n_0;
  wire i__carry_i_1__3_n_0;
  wire [3:0]i__carry_i_2__2_0;
  wire i__carry_i_2__2_n_0;
  wire i__carry_i_2__3_n_0;
  wire i__carry_i_3__3_n_0;
  wire i__carry_i_4__0_n_0;
  wire [0:0]mult_out_0;
  wire mult_out__0_n_100;
  wire mult_out__0_n_101;
  wire mult_out__0_n_102;
  wire mult_out__0_n_103;
  wire mult_out__0_n_104;
  wire mult_out__0_n_105;
  wire mult_out__0_n_106;
  wire mult_out__0_n_107;
  wire mult_out__0_n_108;
  wire mult_out__0_n_109;
  wire mult_out__0_n_110;
  wire mult_out__0_n_111;
  wire mult_out__0_n_112;
  wire mult_out__0_n_113;
  wire mult_out__0_n_114;
  wire mult_out__0_n_115;
  wire mult_out__0_n_116;
  wire mult_out__0_n_117;
  wire mult_out__0_n_118;
  wire mult_out__0_n_119;
  wire mult_out__0_n_120;
  wire mult_out__0_n_121;
  wire mult_out__0_n_122;
  wire mult_out__0_n_123;
  wire mult_out__0_n_124;
  wire mult_out__0_n_125;
  wire mult_out__0_n_126;
  wire mult_out__0_n_127;
  wire mult_out__0_n_128;
  wire mult_out__0_n_129;
  wire mult_out__0_n_130;
  wire mult_out__0_n_131;
  wire mult_out__0_n_132;
  wire mult_out__0_n_133;
  wire mult_out__0_n_134;
  wire mult_out__0_n_135;
  wire mult_out__0_n_136;
  wire mult_out__0_n_137;
  wire mult_out__0_n_138;
  wire mult_out__0_n_139;
  wire mult_out__0_n_140;
  wire mult_out__0_n_141;
  wire mult_out__0_n_142;
  wire mult_out__0_n_143;
  wire mult_out__0_n_144;
  wire mult_out__0_n_145;
  wire mult_out__0_n_146;
  wire mult_out__0_n_147;
  wire mult_out__0_n_148;
  wire mult_out__0_n_149;
  wire mult_out__0_n_150;
  wire mult_out__0_n_151;
  wire mult_out__0_n_152;
  wire mult_out__0_n_153;
  wire mult_out__0_n_58;
  wire mult_out__0_n_59;
  wire mult_out__0_n_60;
  wire mult_out__0_n_61;
  wire mult_out__0_n_62;
  wire mult_out__0_n_63;
  wire mult_out__0_n_64;
  wire mult_out__0_n_65;
  wire mult_out__0_n_66;
  wire mult_out__0_n_67;
  wire mult_out__0_n_68;
  wire mult_out__0_n_69;
  wire mult_out__0_n_70;
  wire mult_out__0_n_71;
  wire mult_out__0_n_72;
  wire mult_out__0_n_73;
  wire mult_out__0_n_74;
  wire mult_out__0_n_75;
  wire mult_out__0_n_76;
  wire mult_out__0_n_77;
  wire mult_out__0_n_78;
  wire mult_out__0_n_79;
  wire mult_out__0_n_80;
  wire mult_out__0_n_81;
  wire mult_out__0_n_82;
  wire mult_out__0_n_83;
  wire mult_out__0_n_84;
  wire mult_out__0_n_85;
  wire mult_out__0_n_86;
  wire mult_out__0_n_87;
  wire mult_out__0_n_88;
  wire mult_out__0_n_89;
  wire mult_out__0_n_90;
  wire mult_out__0_n_91;
  wire mult_out__0_n_92;
  wire mult_out__0_n_93;
  wire mult_out__0_n_94;
  wire mult_out__0_n_95;
  wire mult_out__0_n_96;
  wire mult_out__0_n_97;
  wire mult_out__0_n_98;
  wire mult_out__0_n_99;
  wire mult_out__11_carry__0_i_5;
  wire mult_out__11_carry__0_n_0;
  wire mult_out__11_carry__0_n_1;
  wire mult_out__11_carry__0_n_2;
  wire mult_out__11_carry__0_n_3;
  wire mult_out__11_carry__0_n_4;
  wire mult_out__11_carry__0_n_5;
  wire mult_out__11_carry__0_n_6;
  wire mult_out__11_carry__0_n_7;
  wire mult_out__11_carry__1_n_1;
  wire mult_out__11_carry__1_n_2;
  wire mult_out__11_carry__1_n_3;
  wire mult_out__11_carry__1_n_4;
  wire mult_out__11_carry__1_n_5;
  wire mult_out__11_carry__1_n_6;
  wire mult_out__11_carry__1_n_7;
  wire mult_out__11_carry_n_0;
  wire mult_out__11_carry_n_1;
  wire mult_out__11_carry_n_2;
  wire mult_out__11_carry_n_3;
  wire mult_out__11_carry_n_4;
  wire mult_out__11_carry_n_5;
  wire mult_out__11_carry_n_6;
  wire mult_out__11_carry_n_7;
  wire [24:0]mult_out__1_0;
  wire [2:0]mult_out__1_1;
  wire [2:0]mult_out__1_2;
  wire mult_out__1_n_100;
  wire mult_out__1_n_101;
  wire mult_out__1_n_102;
  wire mult_out__1_n_103;
  wire mult_out__1_n_104;
  wire mult_out__1_n_105;
  wire mult_out__1_n_69;
  wire mult_out__1_n_70;
  wire mult_out__1_n_71;
  wire mult_out__1_n_72;
  wire mult_out__1_n_73;
  wire mult_out__1_n_74;
  wire mult_out__1_n_75;
  wire mult_out__1_n_76;
  wire mult_out__1_n_77;
  wire mult_out__1_n_78;
  wire mult_out__1_n_79;
  wire mult_out__1_n_80;
  wire mult_out__1_n_81;
  wire mult_out__1_n_82;
  wire mult_out__1_n_83;
  wire mult_out__1_n_84;
  wire mult_out__1_n_85;
  wire mult_out__1_n_86;
  wire mult_out__1_n_87;
  wire mult_out__1_n_88;
  wire mult_out__1_n_89;
  wire mult_out__1_n_90;
  wire mult_out__1_n_91;
  wire mult_out__1_n_92;
  wire mult_out__1_n_93;
  wire mult_out__1_n_94;
  wire mult_out__1_n_95;
  wire mult_out__1_n_96;
  wire mult_out__1_n_97;
  wire mult_out__1_n_98;
  wire mult_out__1_n_99;
  wire mult_out__2_carry_n_2;
  wire mult_out__2_carry_n_3;
  wire [0:0]\mult_out_inferred__0/i__carry_0 ;
  wire \mult_out_inferred__0/i__carry__0_n_0 ;
  wire \mult_out_inferred__0/i__carry__0_n_1 ;
  wire \mult_out_inferred__0/i__carry__0_n_2 ;
  wire \mult_out_inferred__0/i__carry__0_n_3 ;
  wire \mult_out_inferred__0/i__carry__1_n_0 ;
  wire \mult_out_inferred__0/i__carry__1_n_1 ;
  wire \mult_out_inferred__0/i__carry__1_n_2 ;
  wire \mult_out_inferred__0/i__carry__1_n_3 ;
  wire \mult_out_inferred__0/i__carry__2_n_0 ;
  wire \mult_out_inferred__0/i__carry__2_n_1 ;
  wire \mult_out_inferred__0/i__carry__2_n_2 ;
  wire \mult_out_inferred__0/i__carry__2_n_3 ;
  wire [0:0]\mult_out_inferred__0/i__carry__3_0 ;
  wire \mult_out_inferred__0/i__carry__3_n_1 ;
  wire \mult_out_inferred__0/i__carry__3_n_2 ;
  wire \mult_out_inferred__0/i__carry__3_n_3 ;
  wire \mult_out_inferred__0/i__carry_n_0 ;
  wire \mult_out_inferred__0/i__carry_n_1 ;
  wire \mult_out_inferred__0/i__carry_n_2 ;
  wire \mult_out_inferred__0/i__carry_n_3 ;
  wire \mult_out_inferred__1/i__carry__0_n_0 ;
  wire \mult_out_inferred__1/i__carry__0_n_1 ;
  wire \mult_out_inferred__1/i__carry__0_n_2 ;
  wire \mult_out_inferred__1/i__carry__0_n_3 ;
  wire \mult_out_inferred__1/i__carry__1_n_0 ;
  wire \mult_out_inferred__1/i__carry__1_n_1 ;
  wire \mult_out_inferred__1/i__carry__1_n_2 ;
  wire \mult_out_inferred__1/i__carry__1_n_3 ;
  wire \mult_out_inferred__1/i__carry__2_n_0 ;
  wire \mult_out_inferred__1/i__carry__2_n_1 ;
  wire \mult_out_inferred__1/i__carry__2_n_2 ;
  wire \mult_out_inferred__1/i__carry__2_n_3 ;
  wire \mult_out_inferred__1/i__carry__3_n_0 ;
  wire \mult_out_inferred__1/i__carry__3_n_1 ;
  wire \mult_out_inferred__1/i__carry__3_n_2 ;
  wire \mult_out_inferred__1/i__carry__3_n_3 ;
  wire \mult_out_inferred__1/i__carry__4_n_0 ;
  wire \mult_out_inferred__1/i__carry__4_n_1 ;
  wire \mult_out_inferred__1/i__carry__4_n_2 ;
  wire \mult_out_inferred__1/i__carry__4_n_3 ;
  wire \mult_out_inferred__1/i__carry__5_n_0 ;
  wire \mult_out_inferred__1/i__carry__5_n_1 ;
  wire \mult_out_inferred__1/i__carry__5_n_2 ;
  wire \mult_out_inferred__1/i__carry__5_n_3 ;
  wire \mult_out_inferred__1/i__carry__6_n_0 ;
  wire \mult_out_inferred__1/i__carry__6_n_1 ;
  wire \mult_out_inferred__1/i__carry__6_n_2 ;
  wire \mult_out_inferred__1/i__carry__6_n_3 ;
  wire \mult_out_inferred__1/i__carry__7_n_0 ;
  wire \mult_out_inferred__1/i__carry__7_n_1 ;
  wire \mult_out_inferred__1/i__carry__7_n_2 ;
  wire \mult_out_inferred__1/i__carry__7_n_3 ;
  wire \mult_out_inferred__1/i__carry__8_n_3 ;
  wire \mult_out_inferred__1/i__carry_n_0 ;
  wire \mult_out_inferred__1/i__carry_n_1 ;
  wire \mult_out_inferred__1/i__carry_n_2 ;
  wire \mult_out_inferred__1/i__carry_n_3 ;
  wire mult_out_n_58;
  wire mult_out_n_59;
  wire mult_out_n_60;
  wire mult_out_n_61;
  wire mult_out_n_62;
  wire mult_out_n_63;
  wire mult_out_n_64;
  wire mult_out_n_65;
  wire mult_out_n_66;
  wire mult_out_n_67;
  wire mult_out_n_68;
  wire mult_out_n_69;
  wire mult_out_n_70;
  wire mult_out_n_71;
  wire mult_out_n_72;
  wire mult_out_n_73;
  wire mult_out_n_74;
  wire mult_out_n_75;
  wire mult_out_n_76;
  wire mult_out_n_77;
  wire mult_out_n_78;
  wire mult_out_n_79;
  wire mult_out_n_80;
  wire mult_out_n_81;
  wire mult_out_n_82;
  wire mult_out_n_83;
  wire mult_out_n_84;
  wire mult_out_n_85;
  wire mult_out_n_86;
  wire mult_out_n_88;
  wire [26:25]mult_xrhoz_out;
  wire [33:17]p_0_in;
  wire [53:34]p_0_in__0;
  wire s00_axi_aclk;
  wire \v1[24]_i_2_n_0 ;
  wire \v1[24]_i_3_n_0 ;
  wire \v1[24]_i_4__0_n_0 ;
  wire \v1[24]_i_5_n_0 ;
  wire \v1[24]_i_6_n_0 ;
  wire [0:0]v1_reg;
  wire [3:0]\v1_reg[11] ;
  wire [3:0]\v1_reg[15] ;
  wire [3:0]\v1_reg[19] ;
  wire [3:0]\v1_reg[23] ;
  wire \v1_reg[24]_i_1_n_2 ;
  wire \v1_reg[24]_i_1_n_3 ;
  wire [2:0]\v1_reg[26] ;
  wire [0:0]\v1_reg[26]_0 ;
  wire [2:0]\v1_reg[26]_1 ;
  wire [0:0]\v1_reg[26]_2 ;
  wire [1:0]\v1_reg[26]_3 ;
  wire [2:0]\v1_reg[26]_4 ;
  wire \v1_reg[26]_5 ;
  wire [0:0]\v1_reg[26]_6 ;
  wire [15:0]v1_reg_0;
  wire [18:0]v1new;
  wire NLW_mult_out_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_out_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_out_OVERFLOW_UNCONNECTED;
  wire NLW_mult_out_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_out_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_out_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_out_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_out_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_out_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mult_out_PCOUT_UNCONNECTED;
  wire NLW_mult_out__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_out__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_out__0_OVERFLOW_UNCONNECTED;
  wire NLW_mult_out__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_out__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_out__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_out__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_out__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_out__0_CARRYOUT_UNCONNECTED;
  wire NLW_mult_out__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_out__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_out__1_OVERFLOW_UNCONNECTED;
  wire NLW_mult_out__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_out__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_out__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_out__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_out__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_out__1_CARRYOUT_UNCONNECTED;
  wire [47:37]NLW_mult_out__1_P_UNCONNECTED;
  wire [47:0]NLW_mult_out__1_PCOUT_UNCONNECTED;
  wire [2:2]NLW_mult_out__2_carry_CO_UNCONNECTED;
  wire [3:3]NLW_mult_out__2_carry_O_UNCONNECTED;
  wire [3:3]\NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED ;
  wire [3:0]\NLW_mult_out_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_mult_out_inferred__1/i__carry__6_O_UNCONNECTED ;
  wire [3:0]\NLW_mult_out_inferred__1/i__carry__7_O_UNCONNECTED ;
  wire [3:1]\NLW_mult_out_inferred__1/i__carry__8_CO_UNCONNECTED ;
  wire [3:0]\NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED ;
  wire [3:2]\NLW_v1_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_v1_reg[24]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__0_i_1
       (.I0(mult_out__1_0[7]),
        .I1(v1_reg_0[7]),
        .O(\v1_reg[15] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__0_i_2
       (.I0(mult_out__1_0[6]),
        .I1(v1_reg_0[6]),
        .O(\v1_reg[15] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__0_i_3
       (.I0(mult_out__1_0[5]),
        .I1(v1_reg_0[5]),
        .O(\v1_reg[15] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__0_i_4
       (.I0(mult_out__1_0[4]),
        .I1(v1_reg_0[4]),
        .O(\v1_reg[15] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__1_i_1
       (.I0(mult_out__1_0[11]),
        .I1(v1_reg_0[11]),
        .O(\v1_reg[19] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__1_i_2
       (.I0(mult_out__1_0[10]),
        .I1(v1_reg_0[10]),
        .O(\v1_reg[19] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__1_i_3
       (.I0(mult_out__1_0[9]),
        .I1(v1_reg_0[9]),
        .O(\v1_reg[19] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__1_i_4
       (.I0(mult_out__1_0[8]),
        .I1(v1_reg_0[8]),
        .O(\v1_reg[19] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__2_i_1
       (.I0(mult_out__1_0[15]),
        .I1(v1_reg_0[15]),
        .O(\v1_reg[23] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__2_i_2
       (.I0(mult_out__1_0[14]),
        .I1(v1_reg_0[14]),
        .O(\v1_reg[23] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__2_i_3
       (.I0(mult_out__1_0[13]),
        .I1(v1_reg_0[13]),
        .O(\v1_reg[23] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__2_i_4
       (.I0(mult_out__1_0[12]),
        .I1(v1_reg_0[12]),
        .O(\v1_reg[23] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__3_i_2
       (.I0(mult_out__1_0[18]),
        .I1(\v1_reg[26]_2 ),
        .O(\v1_reg[26]_1 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__3_i_3
       (.I0(mult_out__1_0[17]),
        .I1(\v1_reg[26]_3 [1]),
        .O(\v1_reg[26]_1 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__3_i_4
       (.I0(mult_out__1_0[16]),
        .I1(\v1_reg[26]_3 [0]),
        .O(\v1_reg[26]_1 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__4_i_1
       (.I0(mult_out__1_0[22]),
        .I1(mult_out__1_0[23]),
        .O(mult_out__1_1[2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__4_i_2
       (.I0(mult_out__1_0[21]),
        .I1(mult_out__1_0[22]),
        .O(mult_out__1_1[1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__4_i_3
       (.I0(mult_out__1_0[20]),
        .I1(mult_out__1_0[21]),
        .O(mult_out__1_1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__5_i_1
       (.I0(mult_xrhoz_out[25]),
        .I1(mult_xrhoz_out[26]),
        .O(mult_out__1_2[2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__5_i_2
       (.I0(mult_out__1_0[24]),
        .I1(mult_xrhoz_out[25]),
        .O(mult_out__1_2[1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry__5_i_3
       (.I0(mult_out__1_0[23]),
        .I1(mult_out__1_0[24]),
        .O(mult_out__1_2[0]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry_i_1
       (.I0(mult_out__1_0[3]),
        .I1(v1_reg_0[3]),
        .O(\v1_reg[11] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry_i_2
       (.I0(mult_out__1_0[2]),
        .I1(v1_reg_0[2]),
        .O(\v1_reg[11] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry_i_3
       (.I0(mult_out__1_0[1]),
        .I1(v1_reg_0[1]),
        .O(\v1_reg[11] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_y_carry_i_4
       (.I0(mult_out__1_0[0]),
        .I1(v1_reg_0[0]),
        .O(\v1_reg[11] [0]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__2
       (.I0(mult_out_n_81),
        .I1(mult_out__11_carry__0_n_6),
        .O(i__carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__3
       (.I0(mult_out__1_n_99),
        .I1(p_0_in[23]),
        .O(i__carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__2
       (.I0(mult_out_n_82),
        .I1(mult_out__11_carry__0_n_7),
        .O(i__carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__3
       (.I0(mult_out__1_n_100),
        .I1(p_0_in[22]),
        .O(i__carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__2
       (.I0(mult_out_n_83),
        .I1(mult_out__11_carry_n_4),
        .O(i__carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__3
       (.I0(mult_out__1_n_101),
        .I1(p_0_in[21]),
        .O(i__carry__0_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__2
       (.I0(mult_out_n_84),
        .I1(mult_out__11_carry_n_5),
        .O(i__carry__0_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__3
       (.I0(mult_out__1_n_102),
        .I1(p_0_in[20]),
        .O(i__carry__0_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1__2
       (.I0(mult_out_n_77),
        .I1(mult_out__11_carry__1_n_6),
        .O(i__carry__1_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1__3
       (.I0(mult_out__1_n_95),
        .I1(p_0_in[27]),
        .O(i__carry__1_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2__2
       (.I0(mult_out_n_78),
        .I1(mult_out__11_carry__1_n_7),
        .O(i__carry__1_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2__3
       (.I0(mult_out__1_n_96),
        .I1(p_0_in[26]),
        .O(i__carry__1_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3__2
       (.I0(mult_out_n_79),
        .I1(mult_out__11_carry__0_n_4),
        .O(i__carry__1_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3__3
       (.I0(mult_out__1_n_97),
        .I1(p_0_in[25]),
        .O(i__carry__1_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4__2
       (.I0(mult_out_n_80),
        .I1(mult_out__11_carry__0_n_5),
        .O(i__carry__1_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4__3
       (.I0(mult_out__1_n_98),
        .I1(p_0_in[24]),
        .O(i__carry__1_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_1__2
       (.I0(mult_out__1_n_91),
        .I1(p_0_in[31]),
        .O(i__carry__2_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1__4
       (.I0(mult_out_n_73),
        .I1(\mult_out_inferred__0/i__carry__3_0 ),
        .O(i__carry__2_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_2__1
       (.I0(mult_out__1_n_92),
        .I1(p_0_in[30]),
        .O(i__carry__2_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2__3
       (.I0(mult_out_n_74),
        .I1(\mult_out_inferred__0/i__carry__3_0 ),
        .O(i__carry__2_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_3__2
       (.I0(mult_out_n_75),
        .I1(mult_out__11_carry__1_n_4),
        .O(i__carry__2_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_3__3
       (.I0(mult_out__1_n_93),
        .I1(p_0_in[29]),
        .O(i__carry__2_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_4__2
       (.I0(mult_out_n_76),
        .I1(mult_out__11_carry__1_n_5),
        .O(i__carry__2_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_4__3
       (.I0(mult_out__1_n_94),
        .I1(p_0_in[28]),
        .O(i__carry__2_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1__0
       (.I0(mult_out_n_69),
        .I1(\mult_out_inferred__0/i__carry__3_0 ),
        .O(i__carry__3_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_1__4
       (.I0(mult_out__1_n_87),
        .I1(p_0_in__0[35]),
        .O(i__carry__3_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_2__1
       (.I0(mult_out__1_n_88),
        .I1(p_0_in__0[34]),
        .O(i__carry__3_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2__3
       (.I0(mult_out_n_70),
        .I1(\mult_out_inferred__0/i__carry__3_0 ),
        .O(i__carry__3_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_3__0
       (.I0(mult_out__1_n_89),
        .I1(p_0_in[33]),
        .O(i__carry__3_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3__3
       (.I0(mult_out_n_71),
        .I1(\mult_out_inferred__0/i__carry__3_0 ),
        .O(i__carry__3_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_4__0
       (.I0(mult_out__1_n_90),
        .I1(p_0_in[32]),
        .O(i__carry__3_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4__3
       (.I0(mult_out_n_72),
        .I1(\mult_out_inferred__0/i__carry__3_0 ),
        .O(i__carry__3_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_1__0
       (.I0(mult_out__1_n_83),
        .I1(p_0_in__0[39]),
        .O(i__carry__4_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_2__0
       (.I0(mult_out__1_n_84),
        .I1(p_0_in__0[38]),
        .O(i__carry__4_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_3__0
       (.I0(mult_out__1_n_85),
        .I1(p_0_in__0[37]),
        .O(i__carry__4_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_4__0
       (.I0(mult_out__1_n_86),
        .I1(p_0_in__0[36]),
        .O(i__carry__4_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_1__0
       (.I0(mult_out__1_n_79),
        .I1(p_0_in__0[43]),
        .O(i__carry__5_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_2__0
       (.I0(mult_out__1_n_80),
        .I1(p_0_in__0[42]),
        .O(i__carry__5_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_3__0
       (.I0(mult_out__1_n_81),
        .I1(p_0_in__0[41]),
        .O(i__carry__5_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_4__0
       (.I0(mult_out__1_n_82),
        .I1(p_0_in__0[40]),
        .O(i__carry__5_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_1__0
       (.I0(mult_out__1_n_75),
        .I1(p_0_in__0[47]),
        .O(i__carry__6_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_2__0
       (.I0(mult_out__1_n_76),
        .I1(p_0_in__0[46]),
        .O(i__carry__6_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_3__0
       (.I0(mult_out__1_n_77),
        .I1(p_0_in__0[45]),
        .O(i__carry__6_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_4__0
       (.I0(mult_out__1_n_78),
        .I1(p_0_in__0[44]),
        .O(i__carry__6_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_1__0
       (.I0(mult_out__1_n_71),
        .I1(p_0_in__0[51]),
        .O(i__carry__7_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_2__0
       (.I0(mult_out__1_n_72),
        .I1(p_0_in__0[50]),
        .O(i__carry__7_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_3__0
       (.I0(mult_out__1_n_73),
        .I1(p_0_in__0[49]),
        .O(i__carry__7_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_4__0
       (.I0(mult_out__1_n_74),
        .I1(p_0_in__0[48]),
        .O(i__carry__7_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__8_i_1__0
       (.I0(mult_out__1_n_69),
        .I1(p_0_in__0[53]),
        .O(i__carry__8_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__8_i_2__0
       (.I0(mult_out__1_n_70),
        .I1(p_0_in__0[52]),
        .O(i__carry__8_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__2
       (.I0(mult_out_n_85),
        .I1(mult_out__11_carry_n_6),
        .O(i__carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__3
       (.I0(mult_out__1_n_103),
        .I1(p_0_in[19]),
        .O(i__carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__2
       (.I0(mult_out_n_86),
        .I1(mult_out__11_carry_n_7),
        .O(i__carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__3
       (.I0(mult_out__1_n_104),
        .I1(p_0_in[18]),
        .O(i__carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__3
       (.I0(mult_out__1_n_105),
        .I1(p_0_in[17]),
        .O(i__carry_i_3__3_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    i__carry_i_4__0
       (.I0(mult_out_n_88),
        .I1(diff_rho_z[16]),
        .I2(\mult_out_inferred__0/i__carry_0 ),
        .O(i__carry_i_4__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 10x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_out
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,diff_rho_z[15:0],v1_reg}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult_out_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_out_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_out_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_out_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_out_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_out_OVERFLOW_UNCONNECTED),
        .P({mult_out_n_58,mult_out_n_59,mult_out_n_60,mult_out_n_61,mult_out_n_62,mult_out_n_63,mult_out_n_64,mult_out_n_65,mult_out_n_66,mult_out_n_67,mult_out_n_68,mult_out_n_69,mult_out_n_70,mult_out_n_71,mult_out_n_72,mult_out_n_73,mult_out_n_74,mult_out_n_75,mult_out_n_76,mult_out_n_77,mult_out_n_78,mult_out_n_79,mult_out_n_80,mult_out_n_81,mult_out_n_82,mult_out_n_83,mult_out_n_84,mult_out_n_85,mult_out_n_86,mult_out_0,mult_out_n_88,p_0_in}),
        .PATTERNBDETECT(NLW_mult_out_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_out_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mult_out_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_out_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_out__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,v1new[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult_out__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,diff_rho_z[15:0],v1_reg}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_out__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_out__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_out__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_out__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_out__0_OVERFLOW_UNCONNECTED),
        .P({mult_out__0_n_58,mult_out__0_n_59,mult_out__0_n_60,mult_out__0_n_61,mult_out__0_n_62,mult_out__0_n_63,mult_out__0_n_64,mult_out__0_n_65,mult_out__0_n_66,mult_out__0_n_67,mult_out__0_n_68,mult_out__0_n_69,mult_out__0_n_70,mult_out__0_n_71,mult_out__0_n_72,mult_out__0_n_73,mult_out__0_n_74,mult_out__0_n_75,mult_out__0_n_76,mult_out__0_n_77,mult_out__0_n_78,mult_out__0_n_79,mult_out__0_n_80,mult_out__0_n_81,mult_out__0_n_82,mult_out__0_n_83,mult_out__0_n_84,mult_out__0_n_85,mult_out__0_n_86,mult_out__0_n_87,mult_out__0_n_88,mult_out__0_n_89,mult_out__0_n_90,mult_out__0_n_91,mult_out__0_n_92,mult_out__0_n_93,mult_out__0_n_94,mult_out__0_n_95,mult_out__0_n_96,mult_out__0_n_97,mult_out__0_n_98,mult_out__0_n_99,mult_out__0_n_100,mult_out__0_n_101,mult_out__0_n_102,mult_out__0_n_103,mult_out__0_n_104,mult_out__0_n_105}),
        .PATTERNBDETECT(NLW_mult_out__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_out__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({mult_out__0_n_106,mult_out__0_n_107,mult_out__0_n_108,mult_out__0_n_109,mult_out__0_n_110,mult_out__0_n_111,mult_out__0_n_112,mult_out__0_n_113,mult_out__0_n_114,mult_out__0_n_115,mult_out__0_n_116,mult_out__0_n_117,mult_out__0_n_118,mult_out__0_n_119,mult_out__0_n_120,mult_out__0_n_121,mult_out__0_n_122,mult_out__0_n_123,mult_out__0_n_124,mult_out__0_n_125,mult_out__0_n_126,mult_out__0_n_127,mult_out__0_n_128,mult_out__0_n_129,mult_out__0_n_130,mult_out__0_n_131,mult_out__0_n_132,mult_out__0_n_133,mult_out__0_n_134,mult_out__0_n_135,mult_out__0_n_136,mult_out__0_n_137,mult_out__0_n_138,mult_out__0_n_139,mult_out__0_n_140,mult_out__0_n_141,mult_out__0_n_142,mult_out__0_n_143,mult_out__0_n_144,mult_out__0_n_145,mult_out__0_n_146,mult_out__0_n_147,mult_out__0_n_148,mult_out__0_n_149,mult_out__0_n_150,mult_out__0_n_151,mult_out__0_n_152,mult_out__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_out__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x10 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_out__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,v1new[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult_out__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({diff_rho_z[25],diff_rho_z[25],diff_rho_z[25],diff_rho_z[25],diff_rho_z[25],diff_rho_z[25],diff_rho_z[25],diff_rho_z[25],diff_rho_z[25:16]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_out__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_out__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_out__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_out__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_out__1_OVERFLOW_UNCONNECTED),
        .P({NLW_mult_out__1_P_UNCONNECTED[47:37],mult_out__1_n_69,mult_out__1_n_70,mult_out__1_n_71,mult_out__1_n_72,mult_out__1_n_73,mult_out__1_n_74,mult_out__1_n_75,mult_out__1_n_76,mult_out__1_n_77,mult_out__1_n_78,mult_out__1_n_79,mult_out__1_n_80,mult_out__1_n_81,mult_out__1_n_82,mult_out__1_n_83,mult_out__1_n_84,mult_out__1_n_85,mult_out__1_n_86,mult_out__1_n_87,mult_out__1_n_88,mult_out__1_n_89,mult_out__1_n_90,mult_out__1_n_91,mult_out__1_n_92,mult_out__1_n_93,mult_out__1_n_94,mult_out__1_n_95,mult_out__1_n_96,mult_out__1_n_97,mult_out__1_n_98,mult_out__1_n_99,mult_out__1_n_100,mult_out__1_n_101,mult_out__1_n_102,mult_out__1_n_103,mult_out__1_n_104,mult_out__1_n_105}),
        .PATTERNBDETECT(NLW_mult_out__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_out__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({mult_out__0_n_106,mult_out__0_n_107,mult_out__0_n_108,mult_out__0_n_109,mult_out__0_n_110,mult_out__0_n_111,mult_out__0_n_112,mult_out__0_n_113,mult_out__0_n_114,mult_out__0_n_115,mult_out__0_n_116,mult_out__0_n_117,mult_out__0_n_118,mult_out__0_n_119,mult_out__0_n_120,mult_out__0_n_121,mult_out__0_n_122,mult_out__0_n_123,mult_out__0_n_124,mult_out__0_n_125,mult_out__0_n_126,mult_out__0_n_127,mult_out__0_n_128,mult_out__0_n_129,mult_out__0_n_130,mult_out__0_n_131,mult_out__0_n_132,mult_out__0_n_133,mult_out__0_n_134,mult_out__0_n_135,mult_out__0_n_136,mult_out__0_n_137,mult_out__0_n_138,mult_out__0_n_139,mult_out__0_n_140,mult_out__0_n_141,mult_out__0_n_142,mult_out__0_n_143,mult_out__0_n_144,mult_out__0_n_145,mult_out__0_n_146,mult_out__0_n_147,mult_out__0_n_148,mult_out__0_n_149,mult_out__0_n_150,mult_out__0_n_151,mult_out__0_n_152,mult_out__0_n_153}),
        .PCOUT(NLW_mult_out__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_out__1_UNDERFLOW_UNCONNECTED));
  CARRY4 mult_out__11_carry
       (.CI(1'b0),
        .CO({mult_out__11_carry_n_0,mult_out__11_carry_n_1,mult_out__11_carry_n_2,mult_out__11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O({mult_out__11_carry_n_4,mult_out__11_carry_n_5,mult_out__11_carry_n_6,mult_out__11_carry_n_7}),
        .S(i__carry_i_2__2_0));
  CARRY4 mult_out__11_carry__0
       (.CI(mult_out__11_carry_n_0),
        .CO({mult_out__11_carry__0_n_0,mult_out__11_carry__0_n_1,mult_out__11_carry__0_n_2,mult_out__11_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(i__carry__0_i_2__2_0),
        .O({mult_out__11_carry__0_n_4,mult_out__11_carry__0_n_5,mult_out__11_carry__0_n_6,mult_out__11_carry__0_n_7}),
        .S(i__carry__0_i_2__2_1));
  CARRY4 mult_out__11_carry__1
       (.CI(mult_out__11_carry__0_n_0),
        .CO({\v1_reg[26]_0 ,mult_out__11_carry__1_n_1,mult_out__11_carry__1_n_2,mult_out__11_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(i__carry__1_i_2__2_0),
        .O({mult_out__11_carry__1_n_4,mult_out__11_carry__1_n_5,mult_out__11_carry__1_n_6,mult_out__11_carry__1_n_7}),
        .S(i__carry__1_i_2__2_1));
  CARRY4 mult_out__2_carry
       (.CI(1'b0),
        .CO({CO,NLW_mult_out__2_carry_CO_UNCONNECTED[2],mult_out__2_carry_n_2,mult_out__2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,mult_out__11_carry__0_i_5,1'b0}),
        .O({NLW_mult_out__2_carry_O_UNCONNECTED[3],\v1_reg[26] }),
        .S({1'b1,S}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\mult_out_inferred__0/i__carry_n_0 ,\mult_out_inferred__0/i__carry_n_1 ,\mult_out_inferred__0/i__carry_n_2 ,\mult_out_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out_n_85,mult_out_n_86,mult_out_0,mult_out_n_88}),
        .O(p_0_in__0[37:34]),
        .S({i__carry_i_1__2_n_0,i__carry_i_2__2_n_0,i__carry__3_i_2__1_0,i__carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__0 
       (.CI(\mult_out_inferred__0/i__carry_n_0 ),
        .CO({\mult_out_inferred__0/i__carry__0_n_0 ,\mult_out_inferred__0/i__carry__0_n_1 ,\mult_out_inferred__0/i__carry__0_n_2 ,\mult_out_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out_n_81,mult_out_n_82,mult_out_n_83,mult_out_n_84}),
        .O(p_0_in__0[41:38]),
        .S({i__carry__0_i_1__2_n_0,i__carry__0_i_2__2_n_0,i__carry__0_i_3__2_n_0,i__carry__0_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__1 
       (.CI(\mult_out_inferred__0/i__carry__0_n_0 ),
        .CO({\mult_out_inferred__0/i__carry__1_n_0 ,\mult_out_inferred__0/i__carry__1_n_1 ,\mult_out_inferred__0/i__carry__1_n_2 ,\mult_out_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out_n_77,mult_out_n_78,mult_out_n_79,mult_out_n_80}),
        .O(p_0_in__0[45:42]),
        .S({i__carry__1_i_1__2_n_0,i__carry__1_i_2__2_n_0,i__carry__1_i_3__2_n_0,i__carry__1_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__2 
       (.CI(\mult_out_inferred__0/i__carry__1_n_0 ),
        .CO({\mult_out_inferred__0/i__carry__2_n_0 ,\mult_out_inferred__0/i__carry__2_n_1 ,\mult_out_inferred__0/i__carry__2_n_2 ,\mult_out_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out_n_73,mult_out_n_74,mult_out_n_75,mult_out_n_76}),
        .O(p_0_in__0[49:46]),
        .S({i__carry__2_i_1__4_n_0,i__carry__2_i_2__3_n_0,i__carry__2_i_3__2_n_0,i__carry__2_i_4__2_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__3 
       (.CI(\mult_out_inferred__0/i__carry__2_n_0 ),
        .CO({\NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED [3],\mult_out_inferred__0/i__carry__3_n_1 ,\mult_out_inferred__0/i__carry__3_n_2 ,\mult_out_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,mult_out_n_70,mult_out_n_71,mult_out_n_72}),
        .O(p_0_in__0[53:50]),
        .S({i__carry__3_i_1__0_n_0,i__carry__3_i_2__3_n_0,i__carry__3_i_3__3_n_0,i__carry__3_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\mult_out_inferred__1/i__carry_n_0 ,\mult_out_inferred__1/i__carry_n_1 ,\mult_out_inferred__1/i__carry_n_2 ,\mult_out_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_103,mult_out__1_n_104,mult_out__1_n_105,1'b0}),
        .O(\NLW_mult_out_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__3_n_0,i__carry_i_2__3_n_0,i__carry_i_3__3_n_0,mult_out__0_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__0 
       (.CI(\mult_out_inferred__1/i__carry_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__0_n_0 ,\mult_out_inferred__1/i__carry__0_n_1 ,\mult_out_inferred__1/i__carry__0_n_2 ,\mult_out_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_99,mult_out__1_n_100,mult_out__1_n_101,mult_out__1_n_102}),
        .O(mult_out__1_0[3:0]),
        .S({i__carry__0_i_1__3_n_0,i__carry__0_i_2__3_n_0,i__carry__0_i_3__3_n_0,i__carry__0_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__1 
       (.CI(\mult_out_inferred__1/i__carry__0_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__1_n_0 ,\mult_out_inferred__1/i__carry__1_n_1 ,\mult_out_inferred__1/i__carry__1_n_2 ,\mult_out_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_95,mult_out__1_n_96,mult_out__1_n_97,mult_out__1_n_98}),
        .O(mult_out__1_0[7:4]),
        .S({i__carry__1_i_1__3_n_0,i__carry__1_i_2__3_n_0,i__carry__1_i_3__3_n_0,i__carry__1_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__2 
       (.CI(\mult_out_inferred__1/i__carry__1_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__2_n_0 ,\mult_out_inferred__1/i__carry__2_n_1 ,\mult_out_inferred__1/i__carry__2_n_2 ,\mult_out_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_91,mult_out__1_n_92,mult_out__1_n_93,mult_out__1_n_94}),
        .O(mult_out__1_0[11:8]),
        .S({i__carry__2_i_1__2_n_0,i__carry__2_i_2__1_n_0,i__carry__2_i_3__3_n_0,i__carry__2_i_4__3_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__3 
       (.CI(\mult_out_inferred__1/i__carry__2_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__3_n_0 ,\mult_out_inferred__1/i__carry__3_n_1 ,\mult_out_inferred__1/i__carry__3_n_2 ,\mult_out_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_87,mult_out__1_n_88,mult_out__1_n_89,mult_out__1_n_90}),
        .O(mult_out__1_0[15:12]),
        .S({i__carry__3_i_1__4_n_0,i__carry__3_i_2__1_n_0,i__carry__3_i_3__0_n_0,i__carry__3_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__4 
       (.CI(\mult_out_inferred__1/i__carry__3_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__4_n_0 ,\mult_out_inferred__1/i__carry__4_n_1 ,\mult_out_inferred__1/i__carry__4_n_2 ,\mult_out_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_83,mult_out__1_n_84,mult_out__1_n_85,mult_out__1_n_86}),
        .O(mult_out__1_0[19:16]),
        .S({i__carry__4_i_1__0_n_0,i__carry__4_i_2__0_n_0,i__carry__4_i_3__0_n_0,i__carry__4_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__5 
       (.CI(\mult_out_inferred__1/i__carry__4_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__5_n_0 ,\mult_out_inferred__1/i__carry__5_n_1 ,\mult_out_inferred__1/i__carry__5_n_2 ,\mult_out_inferred__1/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_79,mult_out__1_n_80,mult_out__1_n_81,mult_out__1_n_82}),
        .O(mult_out__1_0[23:20]),
        .S({i__carry__5_i_1__0_n_0,i__carry__5_i_2__0_n_0,i__carry__5_i_3__0_n_0,i__carry__5_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__6 
       (.CI(\mult_out_inferred__1/i__carry__5_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__6_n_0 ,\mult_out_inferred__1/i__carry__6_n_1 ,\mult_out_inferred__1/i__carry__6_n_2 ,\mult_out_inferred__1/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_75,mult_out__1_n_76,mult_out__1_n_77,mult_out__1_n_78}),
        .O({\NLW_mult_out_inferred__1/i__carry__6_O_UNCONNECTED [3:2],mult_xrhoz_out[25],mult_out__1_0[24]}),
        .S({i__carry__6_i_1__0_n_0,i__carry__6_i_2__0_n_0,i__carry__6_i_3__0_n_0,i__carry__6_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__7 
       (.CI(\mult_out_inferred__1/i__carry__6_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__7_n_0 ,\mult_out_inferred__1/i__carry__7_n_1 ,\mult_out_inferred__1/i__carry__7_n_2 ,\mult_out_inferred__1/i__carry__7_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_71,mult_out__1_n_72,mult_out__1_n_73,mult_out__1_n_74}),
        .O(\NLW_mult_out_inferred__1/i__carry__7_O_UNCONNECTED [3:0]),
        .S({i__carry__7_i_1__0_n_0,i__carry__7_i_2__0_n_0,i__carry__7_i_3__0_n_0,i__carry__7_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__8 
       (.CI(\mult_out_inferred__1/i__carry__7_n_0 ),
        .CO({\NLW_mult_out_inferred__1/i__carry__8_CO_UNCONNECTED [3:1],\mult_out_inferred__1/i__carry__8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,mult_out__1_n_70}),
        .O({\NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED [3:2],mult_xrhoz_out[26],\NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,i__carry__8_i_1__0_n_0,i__carry__8_i_2__0_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[24]_i_2 
       (.I0(\v1_reg[26]_4 [1]),
        .I1(\v1_reg[26]_5 ),
        .O(\v1[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[24]_i_3 
       (.I0(\v1_reg[26]_4 [0]),
        .I1(\v1_reg[26]_5 ),
        .O(\v1[24]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \v1[24]_i_4__0 
       (.I0(\v1_reg[26]_4 [2]),
        .I1(\v1_reg[26]_2 ),
        .I2(\v1_reg[26]_5 ),
        .O(\v1[24]_i_4__0_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[24]_i_5 
       (.I0(\v1_reg[26]_4 [1]),
        .I1(\v1_reg[26]_5 ),
        .I2(\v1_reg[26]_3 [1]),
        .O(\v1[24]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[24]_i_6 
       (.I0(\v1_reg[26]_4 [0]),
        .I1(\v1_reg[26]_5 ),
        .I2(\v1_reg[26]_3 [0]),
        .O(\v1[24]_i_6_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[24]_i_1 
       (.CI(\v1_reg[26]_6 ),
        .CO({\NLW_v1_reg[24]_i_1_CO_UNCONNECTED [3:2],\v1_reg[24]_i_1_n_2 ,\v1_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\v1[24]_i_2_n_0 ,\v1[24]_i_3_n_0 }),
        .O({\NLW_v1_reg[24]_i_1_O_UNCONNECTED [3],O}),
        .S({1'b0,\v1[24]_i_4__0_n_0 ,\v1[24]_i_5_n_0 ,\v1[24]_i_6_n_0 }));
endmodule

(* ORIG_REF_NAME = "signed_mult" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signed_mult_3
   (mult_out_0,
    CO,
    \v1_reg[17] ,
    \v1_reg[25] ,
    mult_out__1_0,
    mult_out__1_1,
    mult_out__1_2,
    mult_out__1_3,
    mult_out__1_4,
    mult_out__1_5,
    mult_out__1_6,
    mult_out__1_7,
    \v1_reg[23] ,
    \v1_reg[26] ,
    s00_axi_aclk,
    v1new,
    mult_out_1,
    B,
    mult_out__11_carry__0_i_5__0,
    S,
    DI,
    i__carry_i_2__4_0,
    i__carry__0_i_2__4_0,
    i__carry__0_i_2__4_1,
    i__carry__1_i_2__4_0,
    i__carry__1_i_2__4_1,
    i__carry__3_i_2__2_0,
    \mult_out_inferred__0/i__carry__3_0 ,
    O,
    funct_z_carry__4,
    funct_z_carry__3,
    funct_z_carry__2,
    funct_z_carry__1,
    funct_z_carry__0,
    funct_z_carry,
    \v1_reg[26]_0 ,
    \v1_reg[26]_1 ,
    \v1_reg[26]_2 ,
    \v1_reg[23]_0 ,
    funct_z_carry__5,
    \v1_reg[23]_1 ,
    \mult_out_inferred__0/i__carry_0 ,
    \mult_out_inferred__0/i__carry_1 ,
    v1_reg);
  output [0:0]mult_out_0;
  output [0:0]CO;
  output [2:0]\v1_reg[17] ;
  output [0:0]\v1_reg[25] ;
  output [25:0]mult_out__1_0;
  output [2:0]mult_out__1_1;
  output [3:0]mult_out__1_2;
  output [3:0]mult_out__1_3;
  output [3:0]mult_out__1_4;
  output [3:0]mult_out__1_5;
  output [3:0]mult_out__1_6;
  output [3:0]mult_out__1_7;
  output [3:0]\v1_reg[23] ;
  output [2:0]\v1_reg[26] ;
  input s00_axi_aclk;
  input [18:0]v1new;
  input [16:0]mult_out_1;
  input [9:0]B;
  input mult_out__11_carry__0_i_5__0;
  input [2:0]S;
  input [2:0]DI;
  input [3:0]i__carry_i_2__4_0;
  input [3:0]i__carry__0_i_2__4_0;
  input [3:0]i__carry__0_i_2__4_1;
  input [3:0]i__carry__1_i_2__4_0;
  input [3:0]i__carry__1_i_2__4_1;
  input [0:0]i__carry__3_i_2__2_0;
  input [0:0]\mult_out_inferred__0/i__carry__3_0 ;
  input [1:0]O;
  input [3:0]funct_z_carry__4;
  input [3:0]funct_z_carry__3;
  input [3:0]funct_z_carry__2;
  input [3:0]funct_z_carry__1;
  input [3:0]funct_z_carry__0;
  input [3:0]funct_z_carry;
  input [2:0]\v1_reg[26]_0 ;
  input [0:0]\v1_reg[26]_1 ;
  input \v1_reg[26]_2 ;
  input [3:0]\v1_reg[23]_0 ;
  input [0:0]funct_z_carry__5;
  input [0:0]\v1_reg[23]_1 ;
  input [0:0]\mult_out_inferred__0/i__carry_0 ;
  input [0:0]\mult_out_inferred__0/i__carry_1 ;
  input [5:0]v1_reg;

  wire [9:0]B;
  wire [0:0]CO;
  wire [2:0]DI;
  wire [1:0]O;
  wire [2:0]S;
  wire [3:0]funct_z_carry;
  wire [3:0]funct_z_carry__0;
  wire [3:0]funct_z_carry__1;
  wire [3:0]funct_z_carry__2;
  wire [3:0]funct_z_carry__3;
  wire [3:0]funct_z_carry__4;
  wire [0:0]funct_z_carry__5;
  wire i__carry__0_i_1__4_n_0;
  wire i__carry__0_i_1__5_n_0;
  wire [3:0]i__carry__0_i_2__4_0;
  wire [3:0]i__carry__0_i_2__4_1;
  wire i__carry__0_i_2__4_n_0;
  wire i__carry__0_i_2__5_n_0;
  wire i__carry__0_i_3__4_n_0;
  wire i__carry__0_i_3__5_n_0;
  wire i__carry__0_i_4__4_n_0;
  wire i__carry__0_i_4__5_n_0;
  wire i__carry__1_i_1__4_n_0;
  wire i__carry__1_i_1__5_n_0;
  wire [3:0]i__carry__1_i_2__4_0;
  wire [3:0]i__carry__1_i_2__4_1;
  wire i__carry__1_i_2__4_n_0;
  wire i__carry__1_i_2__5_n_0;
  wire i__carry__1_i_3__4_n_0;
  wire i__carry__1_i_3__5_n_0;
  wire i__carry__1_i_4__4_n_0;
  wire i__carry__1_i_4__5_n_0;
  wire i__carry__2_i_1__3_n_0;
  wire i__carry__2_i_1__5_n_0;
  wire i__carry__2_i_2__2_n_0;
  wire i__carry__2_i_2__4_n_0;
  wire i__carry__2_i_3__4_n_0;
  wire i__carry__2_i_3__5_n_0;
  wire i__carry__2_i_4__4_n_0;
  wire i__carry__2_i_4__5_n_0;
  wire i__carry__3_i_1__1_n_0;
  wire i__carry__3_i_1__5_n_0;
  wire [0:0]i__carry__3_i_2__2_0;
  wire i__carry__3_i_2__2_n_0;
  wire i__carry__3_i_2__4_n_0;
  wire i__carry__3_i_3__1_n_0;
  wire i__carry__3_i_3__4_n_0;
  wire i__carry__3_i_4__1_n_0;
  wire i__carry__3_i_4__4_n_0;
  wire i__carry__4_i_1__1_n_0;
  wire i__carry__4_i_2__1_n_0;
  wire i__carry__4_i_3__1_n_0;
  wire i__carry__4_i_4__1_n_0;
  wire i__carry__5_i_1__1_n_0;
  wire i__carry__5_i_2__1_n_0;
  wire i__carry__5_i_3__1_n_0;
  wire i__carry__5_i_4__1_n_0;
  wire i__carry__6_i_1__1_n_0;
  wire i__carry__6_i_2__1_n_0;
  wire i__carry__6_i_3__1_n_0;
  wire i__carry__6_i_4__1_n_0;
  wire i__carry__7_i_1__1_n_0;
  wire i__carry__7_i_2__1_n_0;
  wire i__carry__7_i_3__1_n_0;
  wire i__carry__7_i_4__1_n_0;
  wire i__carry__8_i_1__1_n_0;
  wire i__carry__8_i_2__1_n_0;
  wire i__carry_i_1__4_n_0;
  wire i__carry_i_1__5_n_0;
  wire [3:0]i__carry_i_2__4_0;
  wire i__carry_i_2__4_n_0;
  wire i__carry_i_2__5_n_0;
  wire i__carry_i_3__5_n_0;
  wire i__carry_i_4__1_n_0;
  wire [0:0]mult_out_0;
  wire [16:0]mult_out_1;
  wire mult_out__0_n_100;
  wire mult_out__0_n_101;
  wire mult_out__0_n_102;
  wire mult_out__0_n_103;
  wire mult_out__0_n_104;
  wire mult_out__0_n_105;
  wire mult_out__0_n_106;
  wire mult_out__0_n_107;
  wire mult_out__0_n_108;
  wire mult_out__0_n_109;
  wire mult_out__0_n_110;
  wire mult_out__0_n_111;
  wire mult_out__0_n_112;
  wire mult_out__0_n_113;
  wire mult_out__0_n_114;
  wire mult_out__0_n_115;
  wire mult_out__0_n_116;
  wire mult_out__0_n_117;
  wire mult_out__0_n_118;
  wire mult_out__0_n_119;
  wire mult_out__0_n_120;
  wire mult_out__0_n_121;
  wire mult_out__0_n_122;
  wire mult_out__0_n_123;
  wire mult_out__0_n_124;
  wire mult_out__0_n_125;
  wire mult_out__0_n_126;
  wire mult_out__0_n_127;
  wire mult_out__0_n_128;
  wire mult_out__0_n_129;
  wire mult_out__0_n_130;
  wire mult_out__0_n_131;
  wire mult_out__0_n_132;
  wire mult_out__0_n_133;
  wire mult_out__0_n_134;
  wire mult_out__0_n_135;
  wire mult_out__0_n_136;
  wire mult_out__0_n_137;
  wire mult_out__0_n_138;
  wire mult_out__0_n_139;
  wire mult_out__0_n_140;
  wire mult_out__0_n_141;
  wire mult_out__0_n_142;
  wire mult_out__0_n_143;
  wire mult_out__0_n_144;
  wire mult_out__0_n_145;
  wire mult_out__0_n_146;
  wire mult_out__0_n_147;
  wire mult_out__0_n_148;
  wire mult_out__0_n_149;
  wire mult_out__0_n_150;
  wire mult_out__0_n_151;
  wire mult_out__0_n_152;
  wire mult_out__0_n_153;
  wire mult_out__0_n_58;
  wire mult_out__0_n_59;
  wire mult_out__0_n_60;
  wire mult_out__0_n_61;
  wire mult_out__0_n_62;
  wire mult_out__0_n_63;
  wire mult_out__0_n_64;
  wire mult_out__0_n_65;
  wire mult_out__0_n_66;
  wire mult_out__0_n_67;
  wire mult_out__0_n_68;
  wire mult_out__0_n_69;
  wire mult_out__0_n_70;
  wire mult_out__0_n_71;
  wire mult_out__0_n_72;
  wire mult_out__0_n_73;
  wire mult_out__0_n_74;
  wire mult_out__0_n_75;
  wire mult_out__0_n_76;
  wire mult_out__0_n_77;
  wire mult_out__0_n_78;
  wire mult_out__0_n_79;
  wire mult_out__0_n_80;
  wire mult_out__0_n_81;
  wire mult_out__0_n_82;
  wire mult_out__0_n_83;
  wire mult_out__0_n_84;
  wire mult_out__0_n_85;
  wire mult_out__0_n_86;
  wire mult_out__0_n_87;
  wire mult_out__0_n_88;
  wire mult_out__0_n_89;
  wire mult_out__0_n_90;
  wire mult_out__0_n_91;
  wire mult_out__0_n_92;
  wire mult_out__0_n_93;
  wire mult_out__0_n_94;
  wire mult_out__0_n_95;
  wire mult_out__0_n_96;
  wire mult_out__0_n_97;
  wire mult_out__0_n_98;
  wire mult_out__0_n_99;
  wire mult_out__11_carry__0_i_5__0;
  wire mult_out__11_carry__0_n_0;
  wire mult_out__11_carry__0_n_1;
  wire mult_out__11_carry__0_n_2;
  wire mult_out__11_carry__0_n_3;
  wire mult_out__11_carry__0_n_4;
  wire mult_out__11_carry__0_n_5;
  wire mult_out__11_carry__0_n_6;
  wire mult_out__11_carry__0_n_7;
  wire mult_out__11_carry__1_n_1;
  wire mult_out__11_carry__1_n_2;
  wire mult_out__11_carry__1_n_3;
  wire mult_out__11_carry__1_n_4;
  wire mult_out__11_carry__1_n_5;
  wire mult_out__11_carry__1_n_6;
  wire mult_out__11_carry__1_n_7;
  wire mult_out__11_carry_n_0;
  wire mult_out__11_carry_n_1;
  wire mult_out__11_carry_n_2;
  wire mult_out__11_carry_n_3;
  wire mult_out__11_carry_n_4;
  wire mult_out__11_carry_n_5;
  wire mult_out__11_carry_n_6;
  wire mult_out__11_carry_n_7;
  wire [25:0]mult_out__1_0;
  wire [2:0]mult_out__1_1;
  wire [3:0]mult_out__1_2;
  wire [3:0]mult_out__1_3;
  wire [3:0]mult_out__1_4;
  wire [3:0]mult_out__1_5;
  wire [3:0]mult_out__1_6;
  wire [3:0]mult_out__1_7;
  wire mult_out__1_n_100;
  wire mult_out__1_n_101;
  wire mult_out__1_n_102;
  wire mult_out__1_n_103;
  wire mult_out__1_n_104;
  wire mult_out__1_n_105;
  wire mult_out__1_n_69;
  wire mult_out__1_n_70;
  wire mult_out__1_n_71;
  wire mult_out__1_n_72;
  wire mult_out__1_n_73;
  wire mult_out__1_n_74;
  wire mult_out__1_n_75;
  wire mult_out__1_n_76;
  wire mult_out__1_n_77;
  wire mult_out__1_n_78;
  wire mult_out__1_n_79;
  wire mult_out__1_n_80;
  wire mult_out__1_n_81;
  wire mult_out__1_n_82;
  wire mult_out__1_n_83;
  wire mult_out__1_n_84;
  wire mult_out__1_n_85;
  wire mult_out__1_n_86;
  wire mult_out__1_n_87;
  wire mult_out__1_n_88;
  wire mult_out__1_n_89;
  wire mult_out__1_n_90;
  wire mult_out__1_n_91;
  wire mult_out__1_n_92;
  wire mult_out__1_n_93;
  wire mult_out__1_n_94;
  wire mult_out__1_n_95;
  wire mult_out__1_n_96;
  wire mult_out__1_n_97;
  wire mult_out__1_n_98;
  wire mult_out__1_n_99;
  wire [53:53]mult_out__2;
  wire mult_out__2_carry_n_2;
  wire mult_out__2_carry_n_3;
  wire [0:0]\mult_out_inferred__0/i__carry_0 ;
  wire [0:0]\mult_out_inferred__0/i__carry_1 ;
  wire \mult_out_inferred__0/i__carry__0_n_0 ;
  wire \mult_out_inferred__0/i__carry__0_n_1 ;
  wire \mult_out_inferred__0/i__carry__0_n_2 ;
  wire \mult_out_inferred__0/i__carry__0_n_3 ;
  wire \mult_out_inferred__0/i__carry__0_n_4 ;
  wire \mult_out_inferred__0/i__carry__0_n_5 ;
  wire \mult_out_inferred__0/i__carry__0_n_6 ;
  wire \mult_out_inferred__0/i__carry__0_n_7 ;
  wire \mult_out_inferred__0/i__carry__1_n_0 ;
  wire \mult_out_inferred__0/i__carry__1_n_1 ;
  wire \mult_out_inferred__0/i__carry__1_n_2 ;
  wire \mult_out_inferred__0/i__carry__1_n_3 ;
  wire \mult_out_inferred__0/i__carry__1_n_4 ;
  wire \mult_out_inferred__0/i__carry__1_n_5 ;
  wire \mult_out_inferred__0/i__carry__1_n_6 ;
  wire \mult_out_inferred__0/i__carry__1_n_7 ;
  wire \mult_out_inferred__0/i__carry__2_n_0 ;
  wire \mult_out_inferred__0/i__carry__2_n_1 ;
  wire \mult_out_inferred__0/i__carry__2_n_2 ;
  wire \mult_out_inferred__0/i__carry__2_n_3 ;
  wire \mult_out_inferred__0/i__carry__2_n_4 ;
  wire \mult_out_inferred__0/i__carry__2_n_5 ;
  wire \mult_out_inferred__0/i__carry__2_n_6 ;
  wire \mult_out_inferred__0/i__carry__2_n_7 ;
  wire [0:0]\mult_out_inferred__0/i__carry__3_0 ;
  wire \mult_out_inferred__0/i__carry__3_n_1 ;
  wire \mult_out_inferred__0/i__carry__3_n_2 ;
  wire \mult_out_inferred__0/i__carry__3_n_3 ;
  wire \mult_out_inferred__0/i__carry__3_n_4 ;
  wire \mult_out_inferred__0/i__carry__3_n_5 ;
  wire \mult_out_inferred__0/i__carry__3_n_6 ;
  wire \mult_out_inferred__0/i__carry__3_n_7 ;
  wire \mult_out_inferred__0/i__carry_n_0 ;
  wire \mult_out_inferred__0/i__carry_n_1 ;
  wire \mult_out_inferred__0/i__carry_n_2 ;
  wire \mult_out_inferred__0/i__carry_n_3 ;
  wire \mult_out_inferred__0/i__carry_n_4 ;
  wire \mult_out_inferred__0/i__carry_n_5 ;
  wire \mult_out_inferred__0/i__carry_n_6 ;
  wire \mult_out_inferred__0/i__carry_n_7 ;
  wire \mult_out_inferred__1/i__carry__0_n_0 ;
  wire \mult_out_inferred__1/i__carry__0_n_1 ;
  wire \mult_out_inferred__1/i__carry__0_n_2 ;
  wire \mult_out_inferred__1/i__carry__0_n_3 ;
  wire \mult_out_inferred__1/i__carry__1_n_0 ;
  wire \mult_out_inferred__1/i__carry__1_n_1 ;
  wire \mult_out_inferred__1/i__carry__1_n_2 ;
  wire \mult_out_inferred__1/i__carry__1_n_3 ;
  wire \mult_out_inferred__1/i__carry__2_n_0 ;
  wire \mult_out_inferred__1/i__carry__2_n_1 ;
  wire \mult_out_inferred__1/i__carry__2_n_2 ;
  wire \mult_out_inferred__1/i__carry__2_n_3 ;
  wire \mult_out_inferred__1/i__carry__3_n_0 ;
  wire \mult_out_inferred__1/i__carry__3_n_1 ;
  wire \mult_out_inferred__1/i__carry__3_n_2 ;
  wire \mult_out_inferred__1/i__carry__3_n_3 ;
  wire \mult_out_inferred__1/i__carry__4_n_0 ;
  wire \mult_out_inferred__1/i__carry__4_n_1 ;
  wire \mult_out_inferred__1/i__carry__4_n_2 ;
  wire \mult_out_inferred__1/i__carry__4_n_3 ;
  wire \mult_out_inferred__1/i__carry__5_n_0 ;
  wire \mult_out_inferred__1/i__carry__5_n_1 ;
  wire \mult_out_inferred__1/i__carry__5_n_2 ;
  wire \mult_out_inferred__1/i__carry__5_n_3 ;
  wire \mult_out_inferred__1/i__carry__6_n_0 ;
  wire \mult_out_inferred__1/i__carry__6_n_1 ;
  wire \mult_out_inferred__1/i__carry__6_n_2 ;
  wire \mult_out_inferred__1/i__carry__6_n_3 ;
  wire \mult_out_inferred__1/i__carry__7_n_0 ;
  wire \mult_out_inferred__1/i__carry__7_n_1 ;
  wire \mult_out_inferred__1/i__carry__7_n_2 ;
  wire \mult_out_inferred__1/i__carry__7_n_3 ;
  wire \mult_out_inferred__1/i__carry__8_n_3 ;
  wire \mult_out_inferred__1/i__carry_n_0 ;
  wire \mult_out_inferred__1/i__carry_n_1 ;
  wire \mult_out_inferred__1/i__carry_n_2 ;
  wire \mult_out_inferred__1/i__carry_n_3 ;
  wire mult_out_n_100;
  wire mult_out_n_101;
  wire mult_out_n_102;
  wire mult_out_n_103;
  wire mult_out_n_104;
  wire mult_out_n_105;
  wire mult_out_n_58;
  wire mult_out_n_59;
  wire mult_out_n_60;
  wire mult_out_n_61;
  wire mult_out_n_62;
  wire mult_out_n_63;
  wire mult_out_n_64;
  wire mult_out_n_65;
  wire mult_out_n_66;
  wire mult_out_n_67;
  wire mult_out_n_68;
  wire mult_out_n_69;
  wire mult_out_n_70;
  wire mult_out_n_71;
  wire mult_out_n_72;
  wire mult_out_n_73;
  wire mult_out_n_74;
  wire mult_out_n_75;
  wire mult_out_n_76;
  wire mult_out_n_77;
  wire mult_out_n_78;
  wire mult_out_n_79;
  wire mult_out_n_80;
  wire mult_out_n_81;
  wire mult_out_n_82;
  wire mult_out_n_83;
  wire mult_out_n_84;
  wire mult_out_n_85;
  wire mult_out_n_86;
  wire mult_out_n_88;
  wire mult_out_n_89;
  wire mult_out_n_90;
  wire mult_out_n_91;
  wire mult_out_n_92;
  wire mult_out_n_93;
  wire mult_out_n_94;
  wire mult_out_n_95;
  wire mult_out_n_96;
  wire mult_out_n_97;
  wire mult_out_n_98;
  wire mult_out_n_99;
  wire s00_axi_aclk;
  wire \v1[20]_i_2__1_n_0 ;
  wire \v1[20]_i_3__1_n_0 ;
  wire \v1[20]_i_4__1_n_0 ;
  wire \v1[20]_i_5__1_n_0 ;
  wire \v1[20]_i_6__1_n_0 ;
  wire \v1[20]_i_7__1_n_0 ;
  wire \v1[20]_i_8__1_n_0 ;
  wire \v1[20]_i_9__1_n_0 ;
  wire \v1[24]_i_2__1_n_0 ;
  wire \v1[24]_i_3__1_n_0 ;
  wire \v1[24]_i_4_n_0 ;
  wire \v1[24]_i_5__1_n_0 ;
  wire \v1[24]_i_6__1_n_0 ;
  wire [5:0]v1_reg;
  wire [2:0]\v1_reg[17] ;
  wire \v1_reg[20]_i_1__1_n_0 ;
  wire \v1_reg[20]_i_1__1_n_1 ;
  wire \v1_reg[20]_i_1__1_n_2 ;
  wire \v1_reg[20]_i_1__1_n_3 ;
  wire [3:0]\v1_reg[23] ;
  wire [3:0]\v1_reg[23]_0 ;
  wire [0:0]\v1_reg[23]_1 ;
  wire \v1_reg[24]_i_1__1_n_2 ;
  wire \v1_reg[24]_i_1__1_n_3 ;
  wire [0:0]\v1_reg[25] ;
  wire [2:0]\v1_reg[26] ;
  wire [2:0]\v1_reg[26]_0 ;
  wire [0:0]\v1_reg[26]_1 ;
  wire \v1_reg[26]_2 ;
  wire [18:0]v1new;
  wire NLW_mult_out_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_out_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_out_OVERFLOW_UNCONNECTED;
  wire NLW_mult_out_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_out_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_out_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_out_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_out_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_out_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mult_out_PCOUT_UNCONNECTED;
  wire NLW_mult_out__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_out__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_out__0_OVERFLOW_UNCONNECTED;
  wire NLW_mult_out__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_out__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_out__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_out__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_out__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_out__0_CARRYOUT_UNCONNECTED;
  wire NLW_mult_out__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_out__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_out__1_OVERFLOW_UNCONNECTED;
  wire NLW_mult_out__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_out__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_out__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_out__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_out__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_out__1_CARRYOUT_UNCONNECTED;
  wire [47:37]NLW_mult_out__1_P_UNCONNECTED;
  wire [47:0]NLW_mult_out__1_PCOUT_UNCONNECTED;
  wire [2:2]NLW_mult_out__2_carry_CO_UNCONNECTED;
  wire [3:3]NLW_mult_out__2_carry_O_UNCONNECTED;
  wire [3:3]\NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED ;
  wire [3:0]\NLW_mult_out_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_mult_out_inferred__1/i__carry__6_O_UNCONNECTED ;
  wire [3:0]\NLW_mult_out_inferred__1/i__carry__7_O_UNCONNECTED ;
  wire [3:1]\NLW_mult_out_inferred__1/i__carry__8_CO_UNCONNECTED ;
  wire [3:0]\NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED ;
  wire [3:2]\NLW_v1_reg[24]_i_1__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_v1_reg[24]_i_1__1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__0_i_1
       (.I0(mult_out__1_0[7]),
        .I1(funct_z_carry__0[3]),
        .O(mult_out__1_6[3]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__0_i_2
       (.I0(mult_out__1_0[6]),
        .I1(funct_z_carry__0[2]),
        .O(mult_out__1_6[2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__0_i_3
       (.I0(mult_out__1_0[5]),
        .I1(funct_z_carry__0[1]),
        .O(mult_out__1_6[1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__0_i_4
       (.I0(mult_out__1_0[4]),
        .I1(funct_z_carry__0[0]),
        .O(mult_out__1_6[0]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__1_i_1
       (.I0(mult_out__1_0[11]),
        .I1(funct_z_carry__1[3]),
        .O(mult_out__1_5[3]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__1_i_2
       (.I0(mult_out__1_0[10]),
        .I1(funct_z_carry__1[2]),
        .O(mult_out__1_5[2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__1_i_3
       (.I0(mult_out__1_0[9]),
        .I1(funct_z_carry__1[1]),
        .O(mult_out__1_5[1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__1_i_4
       (.I0(mult_out__1_0[8]),
        .I1(funct_z_carry__1[0]),
        .O(mult_out__1_5[0]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__2_i_1
       (.I0(mult_out__1_0[15]),
        .I1(funct_z_carry__2[3]),
        .O(mult_out__1_4[3]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__2_i_2
       (.I0(mult_out__1_0[14]),
        .I1(funct_z_carry__2[2]),
        .O(mult_out__1_4[2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__2_i_3
       (.I0(mult_out__1_0[13]),
        .I1(funct_z_carry__2[1]),
        .O(mult_out__1_4[1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__2_i_4
       (.I0(mult_out__1_0[12]),
        .I1(funct_z_carry__2[0]),
        .O(mult_out__1_4[0]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__3_i_1
       (.I0(mult_out__1_0[19]),
        .I1(funct_z_carry__3[3]),
        .O(mult_out__1_3[3]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__3_i_2
       (.I0(mult_out__1_0[18]),
        .I1(funct_z_carry__3[2]),
        .O(mult_out__1_3[2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__3_i_3
       (.I0(mult_out__1_0[17]),
        .I1(funct_z_carry__3[1]),
        .O(mult_out__1_3[1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__3_i_4
       (.I0(mult_out__1_0[16]),
        .I1(funct_z_carry__3[0]),
        .O(mult_out__1_3[0]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__4_i_1
       (.I0(mult_out__1_0[23]),
        .I1(funct_z_carry__4[3]),
        .O(mult_out__1_2[3]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__4_i_2
       (.I0(mult_out__1_0[22]),
        .I1(funct_z_carry__4[2]),
        .O(mult_out__1_2[2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__4_i_3
       (.I0(mult_out__1_0[21]),
        .I1(funct_z_carry__4[1]),
        .O(mult_out__1_2[1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__4_i_4
       (.I0(mult_out__1_0[20]),
        .I1(funct_z_carry__4[0]),
        .O(mult_out__1_2[0]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__5_i_1
       (.I0(mult_out__2),
        .I1(funct_z_carry__5),
        .O(mult_out__1_1[2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__5_i_2
       (.I0(mult_out__1_0[25]),
        .I1(O[1]),
        .O(mult_out__1_1[1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry__5_i_3
       (.I0(mult_out__1_0[24]),
        .I1(O[0]),
        .O(mult_out__1_1[0]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry_i_1
       (.I0(mult_out__1_0[3]),
        .I1(funct_z_carry[3]),
        .O(mult_out__1_7[3]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry_i_2
       (.I0(mult_out__1_0[2]),
        .I1(funct_z_carry[2]),
        .O(mult_out__1_7[2]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry_i_3
       (.I0(mult_out__1_0[1]),
        .I1(funct_z_carry[1]),
        .O(mult_out__1_7[1]));
  LUT2 #(
    .INIT(4'h9)) 
    funct_z_carry_i_4
       (.I0(mult_out__1_0[0]),
        .I1(funct_z_carry[0]),
        .O(mult_out__1_7[0]));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__4
       (.I0(mult_out_n_81),
        .I1(mult_out__11_carry__0_n_6),
        .O(i__carry__0_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__5
       (.I0(mult_out__1_n_99),
        .I1(mult_out_n_99),
        .O(i__carry__0_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__4
       (.I0(mult_out_n_82),
        .I1(mult_out__11_carry__0_n_7),
        .O(i__carry__0_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__5
       (.I0(mult_out__1_n_100),
        .I1(mult_out_n_100),
        .O(i__carry__0_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__4
       (.I0(mult_out_n_83),
        .I1(mult_out__11_carry_n_4),
        .O(i__carry__0_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__5
       (.I0(mult_out__1_n_101),
        .I1(mult_out_n_101),
        .O(i__carry__0_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__4
       (.I0(mult_out_n_84),
        .I1(mult_out__11_carry_n_5),
        .O(i__carry__0_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__5
       (.I0(mult_out__1_n_102),
        .I1(mult_out_n_102),
        .O(i__carry__0_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1__4
       (.I0(mult_out_n_77),
        .I1(mult_out__11_carry__1_n_6),
        .O(i__carry__1_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1__5
       (.I0(mult_out__1_n_95),
        .I1(mult_out_n_95),
        .O(i__carry__1_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2__4
       (.I0(mult_out_n_78),
        .I1(mult_out__11_carry__1_n_7),
        .O(i__carry__1_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2__5
       (.I0(mult_out__1_n_96),
        .I1(mult_out_n_96),
        .O(i__carry__1_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3__4
       (.I0(mult_out_n_79),
        .I1(mult_out__11_carry__0_n_4),
        .O(i__carry__1_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3__5
       (.I0(mult_out__1_n_97),
        .I1(mult_out_n_97),
        .O(i__carry__1_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4__4
       (.I0(mult_out_n_80),
        .I1(mult_out__11_carry__0_n_5),
        .O(i__carry__1_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4__5
       (.I0(mult_out__1_n_98),
        .I1(mult_out_n_98),
        .O(i__carry__1_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_1__3
       (.I0(mult_out__1_n_91),
        .I1(mult_out_n_91),
        .O(i__carry__2_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_1__5
       (.I0(mult_out_n_73),
        .I1(\mult_out_inferred__0/i__carry__3_0 ),
        .O(i__carry__2_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_2__2
       (.I0(mult_out__1_n_92),
        .I1(mult_out_n_92),
        .O(i__carry__2_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__2_i_2__4
       (.I0(mult_out_n_74),
        .I1(\mult_out_inferred__0/i__carry__3_0 ),
        .O(i__carry__2_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_3__4
       (.I0(mult_out_n_75),
        .I1(mult_out__11_carry__1_n_4),
        .O(i__carry__2_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_3__5
       (.I0(mult_out__1_n_93),
        .I1(mult_out_n_93),
        .O(i__carry__2_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_4__4
       (.I0(mult_out_n_76),
        .I1(mult_out__11_carry__1_n_5),
        .O(i__carry__2_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_4__5
       (.I0(mult_out__1_n_94),
        .I1(mult_out_n_94),
        .O(i__carry__2_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_1__1
       (.I0(mult_out_n_69),
        .I1(\mult_out_inferred__0/i__carry__3_0 ),
        .O(i__carry__3_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_1__5
       (.I0(mult_out__1_n_87),
        .I1(\mult_out_inferred__0/i__carry_n_6 ),
        .O(i__carry__3_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_2__2
       (.I0(mult_out__1_n_88),
        .I1(\mult_out_inferred__0/i__carry_n_7 ),
        .O(i__carry__3_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2__4
       (.I0(mult_out_n_70),
        .I1(\mult_out_inferred__0/i__carry__3_0 ),
        .O(i__carry__3_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_3__1
       (.I0(mult_out__1_n_89),
        .I1(mult_out_n_89),
        .O(i__carry__3_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3__4
       (.I0(mult_out_n_71),
        .I1(\mult_out_inferred__0/i__carry__3_0 ),
        .O(i__carry__3_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_4__1
       (.I0(mult_out__1_n_90),
        .I1(mult_out_n_90),
        .O(i__carry__3_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4__4
       (.I0(mult_out_n_72),
        .I1(\mult_out_inferred__0/i__carry__3_0 ),
        .O(i__carry__3_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_1__1
       (.I0(mult_out__1_n_83),
        .I1(\mult_out_inferred__0/i__carry__0_n_6 ),
        .O(i__carry__4_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_2__1
       (.I0(mult_out__1_n_84),
        .I1(\mult_out_inferred__0/i__carry__0_n_7 ),
        .O(i__carry__4_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_3__1
       (.I0(mult_out__1_n_85),
        .I1(\mult_out_inferred__0/i__carry_n_4 ),
        .O(i__carry__4_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_4__1
       (.I0(mult_out__1_n_86),
        .I1(\mult_out_inferred__0/i__carry_n_5 ),
        .O(i__carry__4_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_1__1
       (.I0(mult_out__1_n_79),
        .I1(\mult_out_inferred__0/i__carry__1_n_6 ),
        .O(i__carry__5_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_2__1
       (.I0(mult_out__1_n_80),
        .I1(\mult_out_inferred__0/i__carry__1_n_7 ),
        .O(i__carry__5_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_3__1
       (.I0(mult_out__1_n_81),
        .I1(\mult_out_inferred__0/i__carry__0_n_4 ),
        .O(i__carry__5_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_4__1
       (.I0(mult_out__1_n_82),
        .I1(\mult_out_inferred__0/i__carry__0_n_5 ),
        .O(i__carry__5_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_1__1
       (.I0(mult_out__1_n_75),
        .I1(\mult_out_inferred__0/i__carry__2_n_6 ),
        .O(i__carry__6_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_2__1
       (.I0(mult_out__1_n_76),
        .I1(\mult_out_inferred__0/i__carry__2_n_7 ),
        .O(i__carry__6_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_3__1
       (.I0(mult_out__1_n_77),
        .I1(\mult_out_inferred__0/i__carry__1_n_4 ),
        .O(i__carry__6_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_4__1
       (.I0(mult_out__1_n_78),
        .I1(\mult_out_inferred__0/i__carry__1_n_5 ),
        .O(i__carry__6_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_1__1
       (.I0(mult_out__1_n_71),
        .I1(\mult_out_inferred__0/i__carry__3_n_6 ),
        .O(i__carry__7_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_2__1
       (.I0(mult_out__1_n_72),
        .I1(\mult_out_inferred__0/i__carry__3_n_7 ),
        .O(i__carry__7_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_3__1
       (.I0(mult_out__1_n_73),
        .I1(\mult_out_inferred__0/i__carry__2_n_4 ),
        .O(i__carry__7_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_4__1
       (.I0(mult_out__1_n_74),
        .I1(\mult_out_inferred__0/i__carry__2_n_5 ),
        .O(i__carry__7_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__8_i_1__1
       (.I0(mult_out__1_n_69),
        .I1(\mult_out_inferred__0/i__carry__3_n_4 ),
        .O(i__carry__8_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__8_i_2__1
       (.I0(mult_out__1_n_70),
        .I1(\mult_out_inferred__0/i__carry__3_n_5 ),
        .O(i__carry__8_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__4
       (.I0(mult_out_n_85),
        .I1(mult_out__11_carry_n_6),
        .O(i__carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__5
       (.I0(mult_out__1_n_103),
        .I1(mult_out_n_103),
        .O(i__carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__4
       (.I0(mult_out_n_86),
        .I1(mult_out__11_carry_n_7),
        .O(i__carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__5
       (.I0(mult_out__1_n_104),
        .I1(mult_out_n_104),
        .O(i__carry_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__5
       (.I0(mult_out__1_n_105),
        .I1(mult_out_n_105),
        .O(i__carry_i_3__5_n_0));
  LUT3 #(
    .INIT(8'h6A)) 
    i__carry_i_4__1
       (.I0(mult_out_n_88),
        .I1(\mult_out_inferred__0/i__carry_0 ),
        .I2(\mult_out_inferred__0/i__carry_1 ),
        .O(i__carry_i_4__1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 10x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_out
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mult_out_1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult_out_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18],v1new[18:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_out_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_out_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_out_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_out_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_out_OVERFLOW_UNCONNECTED),
        .P({mult_out_n_58,mult_out_n_59,mult_out_n_60,mult_out_n_61,mult_out_n_62,mult_out_n_63,mult_out_n_64,mult_out_n_65,mult_out_n_66,mult_out_n_67,mult_out_n_68,mult_out_n_69,mult_out_n_70,mult_out_n_71,mult_out_n_72,mult_out_n_73,mult_out_n_74,mult_out_n_75,mult_out_n_76,mult_out_n_77,mult_out_n_78,mult_out_n_79,mult_out_n_80,mult_out_n_81,mult_out_n_82,mult_out_n_83,mult_out_n_84,mult_out_n_85,mult_out_n_86,mult_out_0,mult_out_n_88,mult_out_n_89,mult_out_n_90,mult_out_n_91,mult_out_n_92,mult_out_n_93,mult_out_n_94,mult_out_n_95,mult_out_n_96,mult_out_n_97,mult_out_n_98,mult_out_n_99,mult_out_n_100,mult_out_n_101,mult_out_n_102,mult_out_n_103,mult_out_n_104,mult_out_n_105}),
        .PATTERNBDETECT(NLW_mult_out_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_out_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mult_out_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_out_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_out__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,v1new[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult_out__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,mult_out_1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_out__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_out__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_out__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_out__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_out__0_OVERFLOW_UNCONNECTED),
        .P({mult_out__0_n_58,mult_out__0_n_59,mult_out__0_n_60,mult_out__0_n_61,mult_out__0_n_62,mult_out__0_n_63,mult_out__0_n_64,mult_out__0_n_65,mult_out__0_n_66,mult_out__0_n_67,mult_out__0_n_68,mult_out__0_n_69,mult_out__0_n_70,mult_out__0_n_71,mult_out__0_n_72,mult_out__0_n_73,mult_out__0_n_74,mult_out__0_n_75,mult_out__0_n_76,mult_out__0_n_77,mult_out__0_n_78,mult_out__0_n_79,mult_out__0_n_80,mult_out__0_n_81,mult_out__0_n_82,mult_out__0_n_83,mult_out__0_n_84,mult_out__0_n_85,mult_out__0_n_86,mult_out__0_n_87,mult_out__0_n_88,mult_out__0_n_89,mult_out__0_n_90,mult_out__0_n_91,mult_out__0_n_92,mult_out__0_n_93,mult_out__0_n_94,mult_out__0_n_95,mult_out__0_n_96,mult_out__0_n_97,mult_out__0_n_98,mult_out__0_n_99,mult_out__0_n_100,mult_out__0_n_101,mult_out__0_n_102,mult_out__0_n_103,mult_out__0_n_104,mult_out__0_n_105}),
        .PATTERNBDETECT(NLW_mult_out__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_out__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({mult_out__0_n_106,mult_out__0_n_107,mult_out__0_n_108,mult_out__0_n_109,mult_out__0_n_110,mult_out__0_n_111,mult_out__0_n_112,mult_out__0_n_113,mult_out__0_n_114,mult_out__0_n_115,mult_out__0_n_116,mult_out__0_n_117,mult_out__0_n_118,mult_out__0_n_119,mult_out__0_n_120,mult_out__0_n_121,mult_out__0_n_122,mult_out__0_n_123,mult_out__0_n_124,mult_out__0_n_125,mult_out__0_n_126,mult_out__0_n_127,mult_out__0_n_128,mult_out__0_n_129,mult_out__0_n_130,mult_out__0_n_131,mult_out__0_n_132,mult_out__0_n_133,mult_out__0_n_134,mult_out__0_n_135,mult_out__0_n_136,mult_out__0_n_137,mult_out__0_n_138,mult_out__0_n_139,mult_out__0_n_140,mult_out__0_n_141,mult_out__0_n_142,mult_out__0_n_143,mult_out__0_n_144,mult_out__0_n_145,mult_out__0_n_146,mult_out__0_n_147,mult_out__0_n_148,mult_out__0_n_149,mult_out__0_n_150,mult_out__0_n_151,mult_out__0_n_152,mult_out__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_out__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x10 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_out__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,v1new[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult_out__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[9],B[9],B[9],B[9],B[9],B[9],B[9],B[9],B}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_out__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_out__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_out__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b1),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_out__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_out__1_OVERFLOW_UNCONNECTED),
        .P({NLW_mult_out__1_P_UNCONNECTED[47:37],mult_out__1_n_69,mult_out__1_n_70,mult_out__1_n_71,mult_out__1_n_72,mult_out__1_n_73,mult_out__1_n_74,mult_out__1_n_75,mult_out__1_n_76,mult_out__1_n_77,mult_out__1_n_78,mult_out__1_n_79,mult_out__1_n_80,mult_out__1_n_81,mult_out__1_n_82,mult_out__1_n_83,mult_out__1_n_84,mult_out__1_n_85,mult_out__1_n_86,mult_out__1_n_87,mult_out__1_n_88,mult_out__1_n_89,mult_out__1_n_90,mult_out__1_n_91,mult_out__1_n_92,mult_out__1_n_93,mult_out__1_n_94,mult_out__1_n_95,mult_out__1_n_96,mult_out__1_n_97,mult_out__1_n_98,mult_out__1_n_99,mult_out__1_n_100,mult_out__1_n_101,mult_out__1_n_102,mult_out__1_n_103,mult_out__1_n_104,mult_out__1_n_105}),
        .PATTERNBDETECT(NLW_mult_out__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_out__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({mult_out__0_n_106,mult_out__0_n_107,mult_out__0_n_108,mult_out__0_n_109,mult_out__0_n_110,mult_out__0_n_111,mult_out__0_n_112,mult_out__0_n_113,mult_out__0_n_114,mult_out__0_n_115,mult_out__0_n_116,mult_out__0_n_117,mult_out__0_n_118,mult_out__0_n_119,mult_out__0_n_120,mult_out__0_n_121,mult_out__0_n_122,mult_out__0_n_123,mult_out__0_n_124,mult_out__0_n_125,mult_out__0_n_126,mult_out__0_n_127,mult_out__0_n_128,mult_out__0_n_129,mult_out__0_n_130,mult_out__0_n_131,mult_out__0_n_132,mult_out__0_n_133,mult_out__0_n_134,mult_out__0_n_135,mult_out__0_n_136,mult_out__0_n_137,mult_out__0_n_138,mult_out__0_n_139,mult_out__0_n_140,mult_out__0_n_141,mult_out__0_n_142,mult_out__0_n_143,mult_out__0_n_144,mult_out__0_n_145,mult_out__0_n_146,mult_out__0_n_147,mult_out__0_n_148,mult_out__0_n_149,mult_out__0_n_150,mult_out__0_n_151,mult_out__0_n_152,mult_out__0_n_153}),
        .PCOUT(NLW_mult_out__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_out__1_UNDERFLOW_UNCONNECTED));
  CARRY4 mult_out__11_carry
       (.CI(1'b0),
        .CO({mult_out__11_carry_n_0,mult_out__11_carry_n_1,mult_out__11_carry_n_2,mult_out__11_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O({mult_out__11_carry_n_4,mult_out__11_carry_n_5,mult_out__11_carry_n_6,mult_out__11_carry_n_7}),
        .S(i__carry_i_2__4_0));
  CARRY4 mult_out__11_carry__0
       (.CI(mult_out__11_carry_n_0),
        .CO({mult_out__11_carry__0_n_0,mult_out__11_carry__0_n_1,mult_out__11_carry__0_n_2,mult_out__11_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(i__carry__0_i_2__4_0),
        .O({mult_out__11_carry__0_n_4,mult_out__11_carry__0_n_5,mult_out__11_carry__0_n_6,mult_out__11_carry__0_n_7}),
        .S(i__carry__0_i_2__4_1));
  CARRY4 mult_out__11_carry__1
       (.CI(mult_out__11_carry__0_n_0),
        .CO({\v1_reg[25] ,mult_out__11_carry__1_n_1,mult_out__11_carry__1_n_2,mult_out__11_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(i__carry__1_i_2__4_0),
        .O({mult_out__11_carry__1_n_4,mult_out__11_carry__1_n_5,mult_out__11_carry__1_n_6,mult_out__11_carry__1_n_7}),
        .S(i__carry__1_i_2__4_1));
  CARRY4 mult_out__2_carry
       (.CI(1'b0),
        .CO({CO,NLW_mult_out__2_carry_CO_UNCONNECTED[2],mult_out__2_carry_n_2,mult_out__2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,mult_out__11_carry__0_i_5__0,1'b0}),
        .O({NLW_mult_out__2_carry_O_UNCONNECTED[3],\v1_reg[17] }),
        .S({1'b1,S}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\mult_out_inferred__0/i__carry_n_0 ,\mult_out_inferred__0/i__carry_n_1 ,\mult_out_inferred__0/i__carry_n_2 ,\mult_out_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out_n_85,mult_out_n_86,mult_out_0,mult_out_n_88}),
        .O({\mult_out_inferred__0/i__carry_n_4 ,\mult_out_inferred__0/i__carry_n_5 ,\mult_out_inferred__0/i__carry_n_6 ,\mult_out_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1__4_n_0,i__carry_i_2__4_n_0,i__carry__3_i_2__2_0,i__carry_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__0 
       (.CI(\mult_out_inferred__0/i__carry_n_0 ),
        .CO({\mult_out_inferred__0/i__carry__0_n_0 ,\mult_out_inferred__0/i__carry__0_n_1 ,\mult_out_inferred__0/i__carry__0_n_2 ,\mult_out_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out_n_81,mult_out_n_82,mult_out_n_83,mult_out_n_84}),
        .O({\mult_out_inferred__0/i__carry__0_n_4 ,\mult_out_inferred__0/i__carry__0_n_5 ,\mult_out_inferred__0/i__carry__0_n_6 ,\mult_out_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1__4_n_0,i__carry__0_i_2__4_n_0,i__carry__0_i_3__4_n_0,i__carry__0_i_4__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__1 
       (.CI(\mult_out_inferred__0/i__carry__0_n_0 ),
        .CO({\mult_out_inferred__0/i__carry__1_n_0 ,\mult_out_inferred__0/i__carry__1_n_1 ,\mult_out_inferred__0/i__carry__1_n_2 ,\mult_out_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out_n_77,mult_out_n_78,mult_out_n_79,mult_out_n_80}),
        .O({\mult_out_inferred__0/i__carry__1_n_4 ,\mult_out_inferred__0/i__carry__1_n_5 ,\mult_out_inferred__0/i__carry__1_n_6 ,\mult_out_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1__4_n_0,i__carry__1_i_2__4_n_0,i__carry__1_i_3__4_n_0,i__carry__1_i_4__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__2 
       (.CI(\mult_out_inferred__0/i__carry__1_n_0 ),
        .CO({\mult_out_inferred__0/i__carry__2_n_0 ,\mult_out_inferred__0/i__carry__2_n_1 ,\mult_out_inferred__0/i__carry__2_n_2 ,\mult_out_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out_n_73,mult_out_n_74,mult_out_n_75,mult_out_n_76}),
        .O({\mult_out_inferred__0/i__carry__2_n_4 ,\mult_out_inferred__0/i__carry__2_n_5 ,\mult_out_inferred__0/i__carry__2_n_6 ,\mult_out_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__2_i_1__5_n_0,i__carry__2_i_2__4_n_0,i__carry__2_i_3__4_n_0,i__carry__2_i_4__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__3 
       (.CI(\mult_out_inferred__0/i__carry__2_n_0 ),
        .CO({\NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED [3],\mult_out_inferred__0/i__carry__3_n_1 ,\mult_out_inferred__0/i__carry__3_n_2 ,\mult_out_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,mult_out_n_70,mult_out_n_71,mult_out_n_72}),
        .O({\mult_out_inferred__0/i__carry__3_n_4 ,\mult_out_inferred__0/i__carry__3_n_5 ,\mult_out_inferred__0/i__carry__3_n_6 ,\mult_out_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_1__1_n_0,i__carry__3_i_2__4_n_0,i__carry__3_i_3__4_n_0,i__carry__3_i_4__4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\mult_out_inferred__1/i__carry_n_0 ,\mult_out_inferred__1/i__carry_n_1 ,\mult_out_inferred__1/i__carry_n_2 ,\mult_out_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_103,mult_out__1_n_104,mult_out__1_n_105,1'b0}),
        .O(\NLW_mult_out_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__5_n_0,i__carry_i_2__5_n_0,i__carry_i_3__5_n_0,mult_out__0_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__0 
       (.CI(\mult_out_inferred__1/i__carry_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__0_n_0 ,\mult_out_inferred__1/i__carry__0_n_1 ,\mult_out_inferred__1/i__carry__0_n_2 ,\mult_out_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_99,mult_out__1_n_100,mult_out__1_n_101,mult_out__1_n_102}),
        .O(mult_out__1_0[3:0]),
        .S({i__carry__0_i_1__5_n_0,i__carry__0_i_2__5_n_0,i__carry__0_i_3__5_n_0,i__carry__0_i_4__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__1 
       (.CI(\mult_out_inferred__1/i__carry__0_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__1_n_0 ,\mult_out_inferred__1/i__carry__1_n_1 ,\mult_out_inferred__1/i__carry__1_n_2 ,\mult_out_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_95,mult_out__1_n_96,mult_out__1_n_97,mult_out__1_n_98}),
        .O(mult_out__1_0[7:4]),
        .S({i__carry__1_i_1__5_n_0,i__carry__1_i_2__5_n_0,i__carry__1_i_3__5_n_0,i__carry__1_i_4__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__2 
       (.CI(\mult_out_inferred__1/i__carry__1_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__2_n_0 ,\mult_out_inferred__1/i__carry__2_n_1 ,\mult_out_inferred__1/i__carry__2_n_2 ,\mult_out_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_91,mult_out__1_n_92,mult_out__1_n_93,mult_out__1_n_94}),
        .O(mult_out__1_0[11:8]),
        .S({i__carry__2_i_1__3_n_0,i__carry__2_i_2__2_n_0,i__carry__2_i_3__5_n_0,i__carry__2_i_4__5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__3 
       (.CI(\mult_out_inferred__1/i__carry__2_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__3_n_0 ,\mult_out_inferred__1/i__carry__3_n_1 ,\mult_out_inferred__1/i__carry__3_n_2 ,\mult_out_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_87,mult_out__1_n_88,mult_out__1_n_89,mult_out__1_n_90}),
        .O(mult_out__1_0[15:12]),
        .S({i__carry__3_i_1__5_n_0,i__carry__3_i_2__2_n_0,i__carry__3_i_3__1_n_0,i__carry__3_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__4 
       (.CI(\mult_out_inferred__1/i__carry__3_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__4_n_0 ,\mult_out_inferred__1/i__carry__4_n_1 ,\mult_out_inferred__1/i__carry__4_n_2 ,\mult_out_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_83,mult_out__1_n_84,mult_out__1_n_85,mult_out__1_n_86}),
        .O(mult_out__1_0[19:16]),
        .S({i__carry__4_i_1__1_n_0,i__carry__4_i_2__1_n_0,i__carry__4_i_3__1_n_0,i__carry__4_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__5 
       (.CI(\mult_out_inferred__1/i__carry__4_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__5_n_0 ,\mult_out_inferred__1/i__carry__5_n_1 ,\mult_out_inferred__1/i__carry__5_n_2 ,\mult_out_inferred__1/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_79,mult_out__1_n_80,mult_out__1_n_81,mult_out__1_n_82}),
        .O(mult_out__1_0[23:20]),
        .S({i__carry__5_i_1__1_n_0,i__carry__5_i_2__1_n_0,i__carry__5_i_3__1_n_0,i__carry__5_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__6 
       (.CI(\mult_out_inferred__1/i__carry__5_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__6_n_0 ,\mult_out_inferred__1/i__carry__6_n_1 ,\mult_out_inferred__1/i__carry__6_n_2 ,\mult_out_inferred__1/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_75,mult_out__1_n_76,mult_out__1_n_77,mult_out__1_n_78}),
        .O({\NLW_mult_out_inferred__1/i__carry__6_O_UNCONNECTED [3:2],mult_out__1_0[25:24]}),
        .S({i__carry__6_i_1__1_n_0,i__carry__6_i_2__1_n_0,i__carry__6_i_3__1_n_0,i__carry__6_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__7 
       (.CI(\mult_out_inferred__1/i__carry__6_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__7_n_0 ,\mult_out_inferred__1/i__carry__7_n_1 ,\mult_out_inferred__1/i__carry__7_n_2 ,\mult_out_inferred__1/i__carry__7_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_71,mult_out__1_n_72,mult_out__1_n_73,mult_out__1_n_74}),
        .O(\NLW_mult_out_inferred__1/i__carry__7_O_UNCONNECTED [3:0]),
        .S({i__carry__7_i_1__1_n_0,i__carry__7_i_2__1_n_0,i__carry__7_i_3__1_n_0,i__carry__7_i_4__1_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__8 
       (.CI(\mult_out_inferred__1/i__carry__7_n_0 ),
        .CO({\NLW_mult_out_inferred__1/i__carry__8_CO_UNCONNECTED [3:1],\mult_out_inferred__1/i__carry__8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,mult_out__1_n_70}),
        .O({\NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED [3:2],mult_out__2,\NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,i__carry__8_i_1__1_n_0,i__carry__8_i_2__1_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[20]_i_2__1 
       (.I0(\v1_reg[23]_0 [3]),
        .I1(\v1_reg[26]_2 ),
        .O(\v1[20]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[20]_i_3__1 
       (.I0(\v1_reg[23]_0 [2]),
        .I1(\v1_reg[26]_2 ),
        .O(\v1[20]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[20]_i_4__1 
       (.I0(\v1_reg[23]_0 [1]),
        .I1(\v1_reg[26]_2 ),
        .O(\v1[20]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[20]_i_5__1 
       (.I0(\v1_reg[23]_0 [0]),
        .I1(\v1_reg[26]_2 ),
        .O(\v1[20]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[20]_i_6__1 
       (.I0(\v1_reg[23]_0 [3]),
        .I1(v1_reg[3]),
        .I2(\v1_reg[26]_2 ),
        .O(\v1[20]_i_6__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[20]_i_7__1 
       (.I0(\v1_reg[23]_0 [2]),
        .I1(\v1_reg[26]_2 ),
        .I2(v1_reg[2]),
        .O(\v1[20]_i_7__1_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[20]_i_8__1 
       (.I0(\v1_reg[23]_0 [1]),
        .I1(\v1_reg[26]_2 ),
        .I2(v1_reg[1]),
        .O(\v1[20]_i_8__1_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[20]_i_9__1 
       (.I0(\v1_reg[23]_0 [0]),
        .I1(v1_reg[0]),
        .I2(\v1_reg[26]_2 ),
        .O(\v1[20]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[24]_i_2__1 
       (.I0(\v1_reg[26]_0 [1]),
        .I1(\v1_reg[26]_2 ),
        .O(\v1[24]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \v1[24]_i_3__1 
       (.I0(\v1_reg[26]_0 [0]),
        .I1(\v1_reg[26]_2 ),
        .O(\v1[24]_i_3__1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \v1[24]_i_4 
       (.I0(\v1_reg[26]_0 [2]),
        .I1(\v1_reg[26]_1 ),
        .I2(\v1_reg[26]_2 ),
        .O(\v1[24]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \v1[24]_i_5__1 
       (.I0(\v1_reg[26]_0 [1]),
        .I1(\v1_reg[26]_2 ),
        .I2(v1_reg[5]),
        .O(\v1[24]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'hF6)) 
    \v1[24]_i_6__1 
       (.I0(\v1_reg[26]_0 [0]),
        .I1(v1_reg[4]),
        .I2(\v1_reg[26]_2 ),
        .O(\v1[24]_i_6__1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[20]_i_1__1 
       (.CI(\v1_reg[23]_1 ),
        .CO({\v1_reg[20]_i_1__1_n_0 ,\v1_reg[20]_i_1__1_n_1 ,\v1_reg[20]_i_1__1_n_2 ,\v1_reg[20]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({\v1[20]_i_2__1_n_0 ,\v1[20]_i_3__1_n_0 ,\v1[20]_i_4__1_n_0 ,\v1[20]_i_5__1_n_0 }),
        .O(\v1_reg[23] ),
        .S({\v1[20]_i_6__1_n_0 ,\v1[20]_i_7__1_n_0 ,\v1[20]_i_8__1_n_0 ,\v1[20]_i_9__1_n_0 }));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \v1_reg[24]_i_1__1 
       (.CI(\v1_reg[20]_i_1__1_n_0 ),
        .CO({\NLW_v1_reg[24]_i_1__1_CO_UNCONNECTED [3:2],\v1_reg[24]_i_1__1_n_2 ,\v1_reg[24]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\v1[24]_i_2__1_n_0 ,\v1[24]_i_3__1_n_0 }),
        .O({\NLW_v1_reg[24]_i_1__1_O_UNCONNECTED [3],\v1_reg[26] }),
        .S({1'b0,\v1[24]_i_4_n_0 ,\v1[24]_i_5__1_n_0 ,\v1[24]_i_6__1_n_0 }));
endmodule

(* ORIG_REF_NAME = "signed_mult" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signed_mult_4
   (P,
    mult_out__1_0,
    mult_out__1_1,
    mult_out__1_2,
    mult_out__1_3,
    mult_out__1_4,
    mult_out__1_5,
    O,
    mult_out__1_6,
    s00_axi_aclk,
    mult_out_0,
    mult_out__0_0,
    i__carry__6_i_2_0,
    i__carry_i_1_0,
    i__carry__3_i_2__0_0,
    i__carry__6_i_2_1,
    i__carry__7_i_2_0,
    i__carry__7_i_2_1,
    v1_reg);
  output [2:0]P;
  output [3:0]mult_out__1_0;
  output [3:0]mult_out__1_1;
  output [3:0]mult_out__1_2;
  output [3:0]mult_out__1_3;
  output [3:0]mult_out__1_4;
  output [3:0]mult_out__1_5;
  output [1:0]O;
  output [0:0]mult_out__1_6;
  input s00_axi_aclk;
  input [1:0]mult_out_0;
  input [16:0]mult_out__0_0;
  input [0:0]i__carry__6_i_2_0;
  input [1:0]i__carry_i_1_0;
  input [0:0]i__carry__3_i_2__0_0;
  input [0:0]i__carry__6_i_2_1;
  input [0:0]i__carry__7_i_2_0;
  input [0:0]i__carry__7_i_2_1;
  input [0:0]v1_reg;

  wire [1:0]O;
  wire [2:0]P;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__1_i_1__0_n_0;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2__0_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3__0_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4__0_n_0;
  wire i__carry__1_i_4_n_0;
  wire i__carry__2_i_1__1_n_0;
  wire i__carry__2_i_2__0_n_0;
  wire i__carry__2_i_2_n_0;
  wire i__carry__2_i_3__0_n_0;
  wire i__carry__2_i_3_n_0;
  wire i__carry__2_i_4__0_n_0;
  wire i__carry__2_i_4_n_0;
  wire i__carry__3_i_1__3_n_0;
  wire [0:0]i__carry__3_i_2__0_0;
  wire i__carry__3_i_2__0_n_0;
  wire i__carry__3_i_2_n_0;
  wire i__carry__3_i_3__2_n_0;
  wire i__carry__3_i_3_n_0;
  wire i__carry__3_i_4__2_n_0;
  wire i__carry__3_i_4_n_0;
  wire i__carry__4_i_1_n_0;
  wire i__carry__4_i_2_n_0;
  wire i__carry__4_i_3_n_0;
  wire i__carry__4_i_4_n_0;
  wire i__carry__5_i_1_n_0;
  wire i__carry__5_i_2_n_0;
  wire i__carry__5_i_3_n_0;
  wire i__carry__5_i_4_n_0;
  wire i__carry__6_i_1_n_0;
  wire [0:0]i__carry__6_i_2_0;
  wire [0:0]i__carry__6_i_2_1;
  wire i__carry__6_i_2_n_0;
  wire i__carry__6_i_3_n_0;
  wire i__carry__6_i_4_n_0;
  wire i__carry__7_i_1_n_0;
  wire [0:0]i__carry__7_i_2_0;
  wire [0:0]i__carry__7_i_2_1;
  wire i__carry__7_i_2_n_0;
  wire i__carry__7_i_3_n_0;
  wire i__carry__7_i_4_n_0;
  wire i__carry__8_i_1_n_0;
  wire i__carry__8_i_2_n_0;
  wire [1:0]i__carry_i_1_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [1:0]mult_out_0;
  wire [16:0]mult_out__0_0;
  wire mult_out__0_n_100;
  wire mult_out__0_n_101;
  wire mult_out__0_n_102;
  wire mult_out__0_n_103;
  wire mult_out__0_n_104;
  wire mult_out__0_n_105;
  wire mult_out__0_n_106;
  wire mult_out__0_n_107;
  wire mult_out__0_n_108;
  wire mult_out__0_n_109;
  wire mult_out__0_n_110;
  wire mult_out__0_n_111;
  wire mult_out__0_n_112;
  wire mult_out__0_n_113;
  wire mult_out__0_n_114;
  wire mult_out__0_n_115;
  wire mult_out__0_n_116;
  wire mult_out__0_n_117;
  wire mult_out__0_n_118;
  wire mult_out__0_n_119;
  wire mult_out__0_n_120;
  wire mult_out__0_n_121;
  wire mult_out__0_n_122;
  wire mult_out__0_n_123;
  wire mult_out__0_n_124;
  wire mult_out__0_n_125;
  wire mult_out__0_n_126;
  wire mult_out__0_n_127;
  wire mult_out__0_n_128;
  wire mult_out__0_n_129;
  wire mult_out__0_n_130;
  wire mult_out__0_n_131;
  wire mult_out__0_n_132;
  wire mult_out__0_n_133;
  wire mult_out__0_n_134;
  wire mult_out__0_n_135;
  wire mult_out__0_n_136;
  wire mult_out__0_n_137;
  wire mult_out__0_n_138;
  wire mult_out__0_n_139;
  wire mult_out__0_n_140;
  wire mult_out__0_n_141;
  wire mult_out__0_n_142;
  wire mult_out__0_n_143;
  wire mult_out__0_n_144;
  wire mult_out__0_n_145;
  wire mult_out__0_n_146;
  wire mult_out__0_n_147;
  wire mult_out__0_n_148;
  wire mult_out__0_n_149;
  wire mult_out__0_n_150;
  wire mult_out__0_n_151;
  wire mult_out__0_n_152;
  wire mult_out__0_n_153;
  wire mult_out__0_n_24;
  wire mult_out__0_n_25;
  wire mult_out__0_n_26;
  wire mult_out__0_n_27;
  wire mult_out__0_n_28;
  wire mult_out__0_n_29;
  wire mult_out__0_n_30;
  wire mult_out__0_n_31;
  wire mult_out__0_n_32;
  wire mult_out__0_n_33;
  wire mult_out__0_n_34;
  wire mult_out__0_n_35;
  wire mult_out__0_n_36;
  wire mult_out__0_n_37;
  wire mult_out__0_n_38;
  wire mult_out__0_n_39;
  wire mult_out__0_n_40;
  wire mult_out__0_n_41;
  wire mult_out__0_n_42;
  wire mult_out__0_n_43;
  wire mult_out__0_n_44;
  wire mult_out__0_n_45;
  wire mult_out__0_n_46;
  wire mult_out__0_n_47;
  wire mult_out__0_n_48;
  wire mult_out__0_n_49;
  wire mult_out__0_n_50;
  wire mult_out__0_n_51;
  wire mult_out__0_n_52;
  wire mult_out__0_n_53;
  wire mult_out__0_n_58;
  wire mult_out__0_n_59;
  wire mult_out__0_n_60;
  wire mult_out__0_n_61;
  wire mult_out__0_n_62;
  wire mult_out__0_n_63;
  wire mult_out__0_n_64;
  wire mult_out__0_n_65;
  wire mult_out__0_n_66;
  wire mult_out__0_n_67;
  wire mult_out__0_n_68;
  wire mult_out__0_n_69;
  wire mult_out__0_n_70;
  wire mult_out__0_n_71;
  wire mult_out__0_n_72;
  wire mult_out__0_n_73;
  wire mult_out__0_n_74;
  wire mult_out__0_n_75;
  wire mult_out__0_n_76;
  wire mult_out__0_n_77;
  wire mult_out__0_n_78;
  wire mult_out__0_n_79;
  wire mult_out__0_n_80;
  wire mult_out__0_n_81;
  wire mult_out__0_n_82;
  wire mult_out__0_n_83;
  wire mult_out__0_n_84;
  wire mult_out__0_n_85;
  wire mult_out__0_n_86;
  wire mult_out__0_n_87;
  wire mult_out__0_n_88;
  wire mult_out__0_n_89;
  wire mult_out__0_n_90;
  wire mult_out__0_n_91;
  wire mult_out__0_n_92;
  wire mult_out__0_n_93;
  wire mult_out__0_n_94;
  wire mult_out__0_n_95;
  wire mult_out__0_n_96;
  wire mult_out__0_n_97;
  wire mult_out__0_n_98;
  wire mult_out__0_n_99;
  wire [3:0]mult_out__1_0;
  wire [3:0]mult_out__1_1;
  wire [3:0]mult_out__1_2;
  wire [3:0]mult_out__1_3;
  wire [3:0]mult_out__1_4;
  wire [3:0]mult_out__1_5;
  wire [0:0]mult_out__1_6;
  wire mult_out__1_n_100;
  wire mult_out__1_n_101;
  wire mult_out__1_n_102;
  wire mult_out__1_n_103;
  wire mult_out__1_n_104;
  wire mult_out__1_n_105;
  wire mult_out__1_n_69;
  wire mult_out__1_n_70;
  wire mult_out__1_n_71;
  wire mult_out__1_n_72;
  wire mult_out__1_n_73;
  wire mult_out__1_n_74;
  wire mult_out__1_n_75;
  wire mult_out__1_n_76;
  wire mult_out__1_n_77;
  wire mult_out__1_n_78;
  wire mult_out__1_n_79;
  wire mult_out__1_n_80;
  wire mult_out__1_n_81;
  wire mult_out__1_n_82;
  wire mult_out__1_n_83;
  wire mult_out__1_n_84;
  wire mult_out__1_n_85;
  wire mult_out__1_n_86;
  wire mult_out__1_n_87;
  wire mult_out__1_n_88;
  wire mult_out__1_n_89;
  wire mult_out__1_n_90;
  wire mult_out__1_n_91;
  wire mult_out__1_n_92;
  wire mult_out__1_n_93;
  wire mult_out__1_n_94;
  wire mult_out__1_n_95;
  wire mult_out__1_n_96;
  wire mult_out__1_n_97;
  wire mult_out__1_n_98;
  wire mult_out__1_n_99;
  wire mult_out_carry_n_0;
  wire mult_out_carry_n_2;
  wire mult_out_carry_n_3;
  wire mult_out_carry_n_5;
  wire mult_out_carry_n_6;
  wire mult_out_carry_n_7;
  wire \mult_out_inferred__0/i__carry__0_n_0 ;
  wire \mult_out_inferred__0/i__carry__0_n_1 ;
  wire \mult_out_inferred__0/i__carry__0_n_2 ;
  wire \mult_out_inferred__0/i__carry__0_n_3 ;
  wire \mult_out_inferred__0/i__carry__0_n_4 ;
  wire \mult_out_inferred__0/i__carry__0_n_5 ;
  wire \mult_out_inferred__0/i__carry__0_n_6 ;
  wire \mult_out_inferred__0/i__carry__0_n_7 ;
  wire \mult_out_inferred__0/i__carry__1_n_0 ;
  wire \mult_out_inferred__0/i__carry__1_n_1 ;
  wire \mult_out_inferred__0/i__carry__1_n_2 ;
  wire \mult_out_inferred__0/i__carry__1_n_3 ;
  wire \mult_out_inferred__0/i__carry__1_n_4 ;
  wire \mult_out_inferred__0/i__carry__1_n_5 ;
  wire \mult_out_inferred__0/i__carry__1_n_6 ;
  wire \mult_out_inferred__0/i__carry__1_n_7 ;
  wire \mult_out_inferred__0/i__carry__2_n_0 ;
  wire \mult_out_inferred__0/i__carry__2_n_1 ;
  wire \mult_out_inferred__0/i__carry__2_n_2 ;
  wire \mult_out_inferred__0/i__carry__2_n_3 ;
  wire \mult_out_inferred__0/i__carry__2_n_4 ;
  wire \mult_out_inferred__0/i__carry__2_n_5 ;
  wire \mult_out_inferred__0/i__carry__2_n_6 ;
  wire \mult_out_inferred__0/i__carry__2_n_7 ;
  wire \mult_out_inferred__0/i__carry__3_n_1 ;
  wire \mult_out_inferred__0/i__carry__3_n_2 ;
  wire \mult_out_inferred__0/i__carry__3_n_3 ;
  wire \mult_out_inferred__0/i__carry__3_n_4 ;
  wire \mult_out_inferred__0/i__carry__3_n_5 ;
  wire \mult_out_inferred__0/i__carry__3_n_6 ;
  wire \mult_out_inferred__0/i__carry__3_n_7 ;
  wire \mult_out_inferred__0/i__carry_n_0 ;
  wire \mult_out_inferred__0/i__carry_n_1 ;
  wire \mult_out_inferred__0/i__carry_n_2 ;
  wire \mult_out_inferred__0/i__carry_n_3 ;
  wire \mult_out_inferred__0/i__carry_n_4 ;
  wire \mult_out_inferred__0/i__carry_n_5 ;
  wire \mult_out_inferred__0/i__carry_n_6 ;
  wire \mult_out_inferred__0/i__carry_n_7 ;
  wire \mult_out_inferred__1/i__carry__0_n_0 ;
  wire \mult_out_inferred__1/i__carry__0_n_1 ;
  wire \mult_out_inferred__1/i__carry__0_n_2 ;
  wire \mult_out_inferred__1/i__carry__0_n_3 ;
  wire \mult_out_inferred__1/i__carry__1_n_0 ;
  wire \mult_out_inferred__1/i__carry__1_n_1 ;
  wire \mult_out_inferred__1/i__carry__1_n_2 ;
  wire \mult_out_inferred__1/i__carry__1_n_3 ;
  wire \mult_out_inferred__1/i__carry__2_n_0 ;
  wire \mult_out_inferred__1/i__carry__2_n_1 ;
  wire \mult_out_inferred__1/i__carry__2_n_2 ;
  wire \mult_out_inferred__1/i__carry__2_n_3 ;
  wire \mult_out_inferred__1/i__carry__3_n_0 ;
  wire \mult_out_inferred__1/i__carry__3_n_1 ;
  wire \mult_out_inferred__1/i__carry__3_n_2 ;
  wire \mult_out_inferred__1/i__carry__3_n_3 ;
  wire \mult_out_inferred__1/i__carry__4_n_0 ;
  wire \mult_out_inferred__1/i__carry__4_n_1 ;
  wire \mult_out_inferred__1/i__carry__4_n_2 ;
  wire \mult_out_inferred__1/i__carry__4_n_3 ;
  wire \mult_out_inferred__1/i__carry__5_n_0 ;
  wire \mult_out_inferred__1/i__carry__5_n_1 ;
  wire \mult_out_inferred__1/i__carry__5_n_2 ;
  wire \mult_out_inferred__1/i__carry__5_n_3 ;
  wire \mult_out_inferred__1/i__carry__6_n_0 ;
  wire \mult_out_inferred__1/i__carry__6_n_1 ;
  wire \mult_out_inferred__1/i__carry__6_n_2 ;
  wire \mult_out_inferred__1/i__carry__6_n_3 ;
  wire \mult_out_inferred__1/i__carry__7_n_0 ;
  wire \mult_out_inferred__1/i__carry__7_n_1 ;
  wire \mult_out_inferred__1/i__carry__7_n_2 ;
  wire \mult_out_inferred__1/i__carry__7_n_3 ;
  wire \mult_out_inferred__1/i__carry__8_n_3 ;
  wire \mult_out_inferred__1/i__carry_n_0 ;
  wire \mult_out_inferred__1/i__carry_n_1 ;
  wire \mult_out_inferred__1/i__carry_n_2 ;
  wire \mult_out_inferred__1/i__carry_n_3 ;
  wire mult_out_n_100;
  wire mult_out_n_101;
  wire mult_out_n_102;
  wire mult_out_n_103;
  wire mult_out_n_104;
  wire mult_out_n_105;
  wire mult_out_n_58;
  wire mult_out_n_59;
  wire mult_out_n_60;
  wire mult_out_n_61;
  wire mult_out_n_62;
  wire mult_out_n_63;
  wire mult_out_n_64;
  wire mult_out_n_65;
  wire mult_out_n_66;
  wire mult_out_n_67;
  wire mult_out_n_68;
  wire mult_out_n_69;
  wire mult_out_n_70;
  wire mult_out_n_71;
  wire mult_out_n_74;
  wire mult_out_n_75;
  wire mult_out_n_76;
  wire mult_out_n_77;
  wire mult_out_n_78;
  wire mult_out_n_79;
  wire mult_out_n_80;
  wire mult_out_n_81;
  wire mult_out_n_82;
  wire mult_out_n_83;
  wire mult_out_n_84;
  wire mult_out_n_85;
  wire mult_out_n_87;
  wire mult_out_n_88;
  wire mult_out_n_89;
  wire mult_out_n_90;
  wire mult_out_n_91;
  wire mult_out_n_92;
  wire mult_out_n_93;
  wire mult_out_n_94;
  wire mult_out_n_95;
  wire mult_out_n_96;
  wire mult_out_n_97;
  wire mult_out_n_98;
  wire mult_out_n_99;
  wire s00_axi_aclk;
  wire [0:0]v1_reg;
  wire NLW_mult_out_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_out_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_out_OVERFLOW_UNCONNECTED;
  wire NLW_mult_out_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_out_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_out_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_out_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_out_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_out_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mult_out_PCOUT_UNCONNECTED;
  wire NLW_mult_out__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_out__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_out__0_OVERFLOW_UNCONNECTED;
  wire NLW_mult_out__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_out__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_out__0_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_mult_out__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_out__0_CARRYOUT_UNCONNECTED;
  wire NLW_mult_out__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mult_out__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mult_out__1_OVERFLOW_UNCONNECTED;
  wire NLW_mult_out__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mult_out__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_mult_out__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mult_out__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mult_out__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mult_out__1_CARRYOUT_UNCONNECTED;
  wire [47:37]NLW_mult_out__1_P_UNCONNECTED;
  wire [47:0]NLW_mult_out__1_PCOUT_UNCONNECTED;
  wire [2:2]NLW_mult_out_carry_CO_UNCONNECTED;
  wire [3:3]NLW_mult_out_carry_O_UNCONNECTED;
  wire [3:3]\NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED ;
  wire [3:0]\NLW_mult_out_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_mult_out_inferred__1/i__carry__6_O_UNCONNECTED ;
  wire [3:0]\NLW_mult_out_inferred__1/i__carry__7_O_UNCONNECTED ;
  wire [3:1]\NLW_mult_out_inferred__1/i__carry__8_CO_UNCONNECTED ;
  wire [3:0]\NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1
       (.I0(mult_out_n_81),
        .I1(i__carry__6_i_2_0),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_1__0
       (.I0(mult_out__1_n_99),
        .I1(mult_out_n_99),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2
       (.I0(mult_out_n_82),
        .I1(mult_out_carry_n_0),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_2__0
       (.I0(mult_out__1_n_100),
        .I1(mult_out_n_100),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3
       (.I0(mult_out_n_83),
        .I1(mult_out_carry_n_5),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_3__0
       (.I0(mult_out__1_n_101),
        .I1(mult_out_n_101),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4
       (.I0(mult_out_n_84),
        .I1(mult_out_carry_n_6),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__0_i_4__0
       (.I0(mult_out__1_n_102),
        .I1(mult_out_n_102),
        .O(i__carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1
       (.I0(mult_out_n_77),
        .I1(i__carry__6_i_2_0),
        .O(i__carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_1__0
       (.I0(mult_out__1_n_95),
        .I1(mult_out_n_95),
        .O(i__carry__1_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2
       (.I0(mult_out_n_78),
        .I1(i__carry__6_i_2_0),
        .O(i__carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_2__0
       (.I0(mult_out__1_n_96),
        .I1(mult_out_n_96),
        .O(i__carry__1_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3
       (.I0(mult_out_n_79),
        .I1(i__carry__6_i_2_0),
        .O(i__carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_3__0
       (.I0(mult_out__1_n_97),
        .I1(mult_out_n_97),
        .O(i__carry__1_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4
       (.I0(mult_out_n_80),
        .I1(i__carry__6_i_2_0),
        .O(i__carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__1_i_4__0
       (.I0(mult_out__1_n_98),
        .I1(mult_out_n_98),
        .O(i__carry__1_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_1__1
       (.I0(mult_out__1_n_91),
        .I1(mult_out_n_91),
        .O(i__carry__2_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_2
       (.I0(mult_out_n_74),
        .I1(i__carry__6_i_2_0),
        .O(i__carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_2__0
       (.I0(mult_out__1_n_92),
        .I1(mult_out_n_92),
        .O(i__carry__2_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_3
       (.I0(mult_out_n_75),
        .I1(i__carry__6_i_2_0),
        .O(i__carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_3__0
       (.I0(mult_out__1_n_93),
        .I1(mult_out_n_93),
        .O(i__carry__2_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_4
       (.I0(mult_out_n_76),
        .I1(i__carry__6_i_2_0),
        .O(i__carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__2_i_4__0
       (.I0(mult_out__1_n_94),
        .I1(mult_out_n_94),
        .O(i__carry__2_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_1__3
       (.I0(mult_out__1_n_87),
        .I1(\mult_out_inferred__0/i__carry_n_6 ),
        .O(i__carry__3_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_2
       (.I0(mult_out_n_70),
        .I1(mult_out_n_69),
        .O(i__carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_2__0
       (.I0(mult_out__1_n_88),
        .I1(\mult_out_inferred__0/i__carry_n_7 ),
        .O(i__carry__3_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_3
       (.I0(mult_out__1_n_89),
        .I1(mult_out_n_89),
        .O(i__carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_3__2
       (.I0(mult_out_n_71),
        .I1(mult_out_n_70),
        .O(i__carry__3_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__3_i_4
       (.I0(mult_out__1_n_90),
        .I1(mult_out_n_90),
        .O(i__carry__3_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__3_i_4__2
       (.I0(P[2]),
        .I1(mult_out_n_71),
        .O(i__carry__3_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_1
       (.I0(mult_out__1_n_83),
        .I1(\mult_out_inferred__0/i__carry__0_n_6 ),
        .O(i__carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_2
       (.I0(mult_out__1_n_84),
        .I1(\mult_out_inferred__0/i__carry__0_n_7 ),
        .O(i__carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_3
       (.I0(mult_out__1_n_85),
        .I1(\mult_out_inferred__0/i__carry_n_4 ),
        .O(i__carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__4_i_4
       (.I0(mult_out__1_n_86),
        .I1(\mult_out_inferred__0/i__carry_n_5 ),
        .O(i__carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_1
       (.I0(mult_out__1_n_79),
        .I1(\mult_out_inferred__0/i__carry__1_n_6 ),
        .O(i__carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_2
       (.I0(mult_out__1_n_80),
        .I1(\mult_out_inferred__0/i__carry__1_n_7 ),
        .O(i__carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_3
       (.I0(mult_out__1_n_81),
        .I1(\mult_out_inferred__0/i__carry__0_n_4 ),
        .O(i__carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__5_i_4
       (.I0(mult_out__1_n_82),
        .I1(\mult_out_inferred__0/i__carry__0_n_5 ),
        .O(i__carry__5_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_1
       (.I0(mult_out__1_n_75),
        .I1(\mult_out_inferred__0/i__carry__2_n_6 ),
        .O(i__carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_2
       (.I0(mult_out__1_n_76),
        .I1(\mult_out_inferred__0/i__carry__2_n_7 ),
        .O(i__carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_3
       (.I0(mult_out__1_n_77),
        .I1(\mult_out_inferred__0/i__carry__1_n_4 ),
        .O(i__carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__6_i_4
       (.I0(mult_out__1_n_78),
        .I1(\mult_out_inferred__0/i__carry__1_n_5 ),
        .O(i__carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_1
       (.I0(mult_out__1_n_71),
        .I1(\mult_out_inferred__0/i__carry__3_n_6 ),
        .O(i__carry__7_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_2
       (.I0(mult_out__1_n_72),
        .I1(\mult_out_inferred__0/i__carry__3_n_7 ),
        .O(i__carry__7_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_3
       (.I0(mult_out__1_n_73),
        .I1(\mult_out_inferred__0/i__carry__2_n_4 ),
        .O(i__carry__7_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__7_i_4
       (.I0(mult_out__1_n_74),
        .I1(\mult_out_inferred__0/i__carry__2_n_5 ),
        .O(i__carry__7_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__8_i_1
       (.I0(mult_out__1_n_69),
        .I1(\mult_out_inferred__0/i__carry__3_n_4 ),
        .O(i__carry__8_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry__8_i_2
       (.I0(mult_out__1_n_70),
        .I1(\mult_out_inferred__0/i__carry__3_n_5 ),
        .O(i__carry__8_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1
       (.I0(mult_out_n_85),
        .I1(mult_out_carry_n_7),
        .O(i__carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_1__0
       (.I0(mult_out__1_n_103),
        .I1(mult_out_n_103),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_2__0
       (.I0(mult_out__1_n_104),
        .I1(mult_out_n_104),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3
       (.I0(mult_out_n_87),
        .I1(i__carry__6_i_2_0),
        .O(i__carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_3__0
       (.I0(mult_out__1_n_105),
        .I1(mult_out_n_105),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_4
       (.I0(mult_out_n_88),
        .I1(v1_reg),
        .O(i__carry_i_4_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 10x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_out
       (.A({mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0[1],mult_out_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mult_out_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_out_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_out_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_out_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_out_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_out_OVERFLOW_UNCONNECTED),
        .P({mult_out_n_58,mult_out_n_59,mult_out_n_60,mult_out_n_61,mult_out_n_62,mult_out_n_63,mult_out_n_64,mult_out_n_65,mult_out_n_66,mult_out_n_67,mult_out_n_68,mult_out_n_69,mult_out_n_70,mult_out_n_71,P[2:1],mult_out_n_74,mult_out_n_75,mult_out_n_76,mult_out_n_77,mult_out_n_78,mult_out_n_79,mult_out_n_80,mult_out_n_81,mult_out_n_82,mult_out_n_83,mult_out_n_84,mult_out_n_85,P[0],mult_out_n_87,mult_out_n_88,mult_out_n_89,mult_out_n_90,mult_out_n_91,mult_out_n_92,mult_out_n_93,mult_out_n_94,mult_out_n_95,mult_out_n_96,mult_out_n_97,mult_out_n_98,mult_out_n_99,mult_out_n_100,mult_out_n_101,mult_out_n_102,mult_out_n_103,mult_out_n_104,mult_out_n_105}),
        .PATTERNBDETECT(NLW_mult_out_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_out_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_mult_out_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_out_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_out__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mult_out__0_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({mult_out__0_n_24,mult_out__0_n_25,mult_out__0_n_26,mult_out__0_n_27,mult_out__0_n_28,mult_out__0_n_29,mult_out__0_n_30,mult_out__0_n_31,mult_out__0_n_32,mult_out__0_n_33,mult_out__0_n_34,mult_out__0_n_35,mult_out__0_n_36,mult_out__0_n_37,mult_out__0_n_38,mult_out__0_n_39,mult_out__0_n_40,mult_out__0_n_41,mult_out__0_n_42,mult_out__0_n_43,mult_out__0_n_44,mult_out__0_n_45,mult_out__0_n_46,mult_out__0_n_47,mult_out__0_n_48,mult_out__0_n_49,mult_out__0_n_50,mult_out__0_n_51,mult_out__0_n_52,mult_out__0_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_out__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_out__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_out__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b1),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_out__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_out__0_OVERFLOW_UNCONNECTED),
        .P({mult_out__0_n_58,mult_out__0_n_59,mult_out__0_n_60,mult_out__0_n_61,mult_out__0_n_62,mult_out__0_n_63,mult_out__0_n_64,mult_out__0_n_65,mult_out__0_n_66,mult_out__0_n_67,mult_out__0_n_68,mult_out__0_n_69,mult_out__0_n_70,mult_out__0_n_71,mult_out__0_n_72,mult_out__0_n_73,mult_out__0_n_74,mult_out__0_n_75,mult_out__0_n_76,mult_out__0_n_77,mult_out__0_n_78,mult_out__0_n_79,mult_out__0_n_80,mult_out__0_n_81,mult_out__0_n_82,mult_out__0_n_83,mult_out__0_n_84,mult_out__0_n_85,mult_out__0_n_86,mult_out__0_n_87,mult_out__0_n_88,mult_out__0_n_89,mult_out__0_n_90,mult_out__0_n_91,mult_out__0_n_92,mult_out__0_n_93,mult_out__0_n_94,mult_out__0_n_95,mult_out__0_n_96,mult_out__0_n_97,mult_out__0_n_98,mult_out__0_n_99,mult_out__0_n_100,mult_out__0_n_101,mult_out__0_n_102,mult_out__0_n_103,mult_out__0_n_104,mult_out__0_n_105}),
        .PATTERNBDETECT(NLW_mult_out__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_out__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({mult_out__0_n_106,mult_out__0_n_107,mult_out__0_n_108,mult_out__0_n_109,mult_out__0_n_110,mult_out__0_n_111,mult_out__0_n_112,mult_out__0_n_113,mult_out__0_n_114,mult_out__0_n_115,mult_out__0_n_116,mult_out__0_n_117,mult_out__0_n_118,mult_out__0_n_119,mult_out__0_n_120,mult_out__0_n_121,mult_out__0_n_122,mult_out__0_n_123,mult_out__0_n_124,mult_out__0_n_125,mult_out__0_n_126,mult_out__0_n_127,mult_out__0_n_128,mult_out__0_n_129,mult_out__0_n_130,mult_out__0_n_131,mult_out__0_n_132,mult_out__0_n_133,mult_out__0_n_134,mult_out__0_n_135,mult_out__0_n_136,mult_out__0_n_137,mult_out__0_n_138,mult_out__0_n_139,mult_out__0_n_140,mult_out__0_n_141,mult_out__0_n_142,mult_out__0_n_143,mult_out__0_n_144,mult_out__0_n_145,mult_out__0_n_146,mult_out__0_n_147,mult_out__0_n_148,mult_out__0_n_149,mult_out__0_n_150,mult_out__0_n_151,mult_out__0_n_152,mult_out__0_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_out__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x10 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    mult_out__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({mult_out__0_n_24,mult_out__0_n_25,mult_out__0_n_26,mult_out__0_n_27,mult_out__0_n_28,mult_out__0_n_29,mult_out__0_n_30,mult_out__0_n_31,mult_out__0_n_32,mult_out__0_n_33,mult_out__0_n_34,mult_out__0_n_35,mult_out__0_n_36,mult_out__0_n_37,mult_out__0_n_38,mult_out__0_n_39,mult_out__0_n_40,mult_out__0_n_41,mult_out__0_n_42,mult_out__0_n_43,mult_out__0_n_44,mult_out__0_n_45,mult_out__0_n_46,mult_out__0_n_47,mult_out__0_n_48,mult_out__0_n_49,mult_out__0_n_50,mult_out__0_n_51,mult_out__0_n_52,mult_out__0_n_53}),
        .ACOUT(NLW_mult_out__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mult_out__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mult_out__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mult_out__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(s00_axi_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mult_out__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mult_out__1_OVERFLOW_UNCONNECTED),
        .P({NLW_mult_out__1_P_UNCONNECTED[47:37],mult_out__1_n_69,mult_out__1_n_70,mult_out__1_n_71,mult_out__1_n_72,mult_out__1_n_73,mult_out__1_n_74,mult_out__1_n_75,mult_out__1_n_76,mult_out__1_n_77,mult_out__1_n_78,mult_out__1_n_79,mult_out__1_n_80,mult_out__1_n_81,mult_out__1_n_82,mult_out__1_n_83,mult_out__1_n_84,mult_out__1_n_85,mult_out__1_n_86,mult_out__1_n_87,mult_out__1_n_88,mult_out__1_n_89,mult_out__1_n_90,mult_out__1_n_91,mult_out__1_n_92,mult_out__1_n_93,mult_out__1_n_94,mult_out__1_n_95,mult_out__1_n_96,mult_out__1_n_97,mult_out__1_n_98,mult_out__1_n_99,mult_out__1_n_100,mult_out__1_n_101,mult_out__1_n_102,mult_out__1_n_103,mult_out__1_n_104,mult_out__1_n_105}),
        .PATTERNBDETECT(NLW_mult_out__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mult_out__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({mult_out__0_n_106,mult_out__0_n_107,mult_out__0_n_108,mult_out__0_n_109,mult_out__0_n_110,mult_out__0_n_111,mult_out__0_n_112,mult_out__0_n_113,mult_out__0_n_114,mult_out__0_n_115,mult_out__0_n_116,mult_out__0_n_117,mult_out__0_n_118,mult_out__0_n_119,mult_out__0_n_120,mult_out__0_n_121,mult_out__0_n_122,mult_out__0_n_123,mult_out__0_n_124,mult_out__0_n_125,mult_out__0_n_126,mult_out__0_n_127,mult_out__0_n_128,mult_out__0_n_129,mult_out__0_n_130,mult_out__0_n_131,mult_out__0_n_132,mult_out__0_n_133,mult_out__0_n_134,mult_out__0_n_135,mult_out__0_n_136,mult_out__0_n_137,mult_out__0_n_138,mult_out__0_n_139,mult_out__0_n_140,mult_out__0_n_141,mult_out__0_n_142,mult_out__0_n_143,mult_out__0_n_144,mult_out__0_n_145,mult_out__0_n_146,mult_out__0_n_147,mult_out__0_n_148,mult_out__0_n_149,mult_out__0_n_150,mult_out__0_n_151,mult_out__0_n_152,mult_out__0_n_153}),
        .PCOUT(NLW_mult_out__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mult_out__1_UNDERFLOW_UNCONNECTED));
  CARRY4 mult_out_carry
       (.CI(1'b0),
        .CO({mult_out_carry_n_0,NLW_mult_out_carry_CO_UNCONNECTED[2],mult_out_carry_n_2,mult_out_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__6_i_2_0,i__carry__6_i_2_0,1'b0}),
        .O({NLW_mult_out_carry_O_UNCONNECTED[3],mult_out_carry_n_5,mult_out_carry_n_6,mult_out_carry_n_7}),
        .S({1'b1,1'b0,i__carry_i_1_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\mult_out_inferred__0/i__carry_n_0 ,\mult_out_inferred__0/i__carry_n_1 ,\mult_out_inferred__0/i__carry_n_2 ,\mult_out_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out_n_85,P[0],mult_out_n_87,mult_out_n_88}),
        .O({\mult_out_inferred__0/i__carry_n_4 ,\mult_out_inferred__0/i__carry_n_5 ,\mult_out_inferred__0/i__carry_n_6 ,\mult_out_inferred__0/i__carry_n_7 }),
        .S({i__carry_i_1_n_0,i__carry__3_i_2__0_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__0 
       (.CI(\mult_out_inferred__0/i__carry_n_0 ),
        .CO({\mult_out_inferred__0/i__carry__0_n_0 ,\mult_out_inferred__0/i__carry__0_n_1 ,\mult_out_inferred__0/i__carry__0_n_2 ,\mult_out_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out_n_81,mult_out_n_82,mult_out_n_83,mult_out_n_84}),
        .O({\mult_out_inferred__0/i__carry__0_n_4 ,\mult_out_inferred__0/i__carry__0_n_5 ,\mult_out_inferred__0/i__carry__0_n_6 ,\mult_out_inferred__0/i__carry__0_n_7 }),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__1 
       (.CI(\mult_out_inferred__0/i__carry__0_n_0 ),
        .CO({\mult_out_inferred__0/i__carry__1_n_0 ,\mult_out_inferred__0/i__carry__1_n_1 ,\mult_out_inferred__0/i__carry__1_n_2 ,\mult_out_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out_n_77,mult_out_n_78,mult_out_n_79,mult_out_n_80}),
        .O({\mult_out_inferred__0/i__carry__1_n_4 ,\mult_out_inferred__0/i__carry__1_n_5 ,\mult_out_inferred__0/i__carry__1_n_6 ,\mult_out_inferred__0/i__carry__1_n_7 }),
        .S({i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0,i__carry__1_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__2 
       (.CI(\mult_out_inferred__0/i__carry__1_n_0 ),
        .CO({\mult_out_inferred__0/i__carry__2_n_0 ,\mult_out_inferred__0/i__carry__2_n_1 ,\mult_out_inferred__0/i__carry__2_n_2 ,\mult_out_inferred__0/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry__6_i_2_0,mult_out_n_74,mult_out_n_75,mult_out_n_76}),
        .O({\mult_out_inferred__0/i__carry__2_n_4 ,\mult_out_inferred__0/i__carry__2_n_5 ,\mult_out_inferred__0/i__carry__2_n_6 ,\mult_out_inferred__0/i__carry__2_n_7 }),
        .S({i__carry__6_i_2_1,i__carry__2_i_2_n_0,i__carry__2_i_3_n_0,i__carry__2_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__0/i__carry__3 
       (.CI(\mult_out_inferred__0/i__carry__2_n_0 ),
        .CO({\NLW_mult_out_inferred__0/i__carry__3_CO_UNCONNECTED [3],\mult_out_inferred__0/i__carry__3_n_1 ,\mult_out_inferred__0/i__carry__3_n_2 ,\mult_out_inferred__0/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,mult_out_n_71,P[2],i__carry__7_i_2_0}),
        .O({\mult_out_inferred__0/i__carry__3_n_4 ,\mult_out_inferred__0/i__carry__3_n_5 ,\mult_out_inferred__0/i__carry__3_n_6 ,\mult_out_inferred__0/i__carry__3_n_7 }),
        .S({i__carry__3_i_2_n_0,i__carry__3_i_3__2_n_0,i__carry__3_i_4__2_n_0,i__carry__7_i_2_1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\mult_out_inferred__1/i__carry_n_0 ,\mult_out_inferred__1/i__carry_n_1 ,\mult_out_inferred__1/i__carry_n_2 ,\mult_out_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_103,mult_out__1_n_104,mult_out__1_n_105,1'b0}),
        .O(\NLW_mult_out_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,mult_out__0_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__0 
       (.CI(\mult_out_inferred__1/i__carry_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__0_n_0 ,\mult_out_inferred__1/i__carry__0_n_1 ,\mult_out_inferred__1/i__carry__0_n_2 ,\mult_out_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_99,mult_out__1_n_100,mult_out__1_n_101,mult_out__1_n_102}),
        .O(mult_out__1_0),
        .S({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__1 
       (.CI(\mult_out_inferred__1/i__carry__0_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__1_n_0 ,\mult_out_inferred__1/i__carry__1_n_1 ,\mult_out_inferred__1/i__carry__1_n_2 ,\mult_out_inferred__1/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_95,mult_out__1_n_96,mult_out__1_n_97,mult_out__1_n_98}),
        .O(mult_out__1_1),
        .S({i__carry__1_i_1__0_n_0,i__carry__1_i_2__0_n_0,i__carry__1_i_3__0_n_0,i__carry__1_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__2 
       (.CI(\mult_out_inferred__1/i__carry__1_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__2_n_0 ,\mult_out_inferred__1/i__carry__2_n_1 ,\mult_out_inferred__1/i__carry__2_n_2 ,\mult_out_inferred__1/i__carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_91,mult_out__1_n_92,mult_out__1_n_93,mult_out__1_n_94}),
        .O(mult_out__1_2),
        .S({i__carry__2_i_1__1_n_0,i__carry__2_i_2__0_n_0,i__carry__2_i_3__0_n_0,i__carry__2_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__3 
       (.CI(\mult_out_inferred__1/i__carry__2_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__3_n_0 ,\mult_out_inferred__1/i__carry__3_n_1 ,\mult_out_inferred__1/i__carry__3_n_2 ,\mult_out_inferred__1/i__carry__3_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_87,mult_out__1_n_88,mult_out__1_n_89,mult_out__1_n_90}),
        .O(mult_out__1_3),
        .S({i__carry__3_i_1__3_n_0,i__carry__3_i_2__0_n_0,i__carry__3_i_3_n_0,i__carry__3_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__4 
       (.CI(\mult_out_inferred__1/i__carry__3_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__4_n_0 ,\mult_out_inferred__1/i__carry__4_n_1 ,\mult_out_inferred__1/i__carry__4_n_2 ,\mult_out_inferred__1/i__carry__4_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_83,mult_out__1_n_84,mult_out__1_n_85,mult_out__1_n_86}),
        .O(mult_out__1_4),
        .S({i__carry__4_i_1_n_0,i__carry__4_i_2_n_0,i__carry__4_i_3_n_0,i__carry__4_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__5 
       (.CI(\mult_out_inferred__1/i__carry__4_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__5_n_0 ,\mult_out_inferred__1/i__carry__5_n_1 ,\mult_out_inferred__1/i__carry__5_n_2 ,\mult_out_inferred__1/i__carry__5_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_79,mult_out__1_n_80,mult_out__1_n_81,mult_out__1_n_82}),
        .O(mult_out__1_5),
        .S({i__carry__5_i_1_n_0,i__carry__5_i_2_n_0,i__carry__5_i_3_n_0,i__carry__5_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__6 
       (.CI(\mult_out_inferred__1/i__carry__5_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__6_n_0 ,\mult_out_inferred__1/i__carry__6_n_1 ,\mult_out_inferred__1/i__carry__6_n_2 ,\mult_out_inferred__1/i__carry__6_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_75,mult_out__1_n_76,mult_out__1_n_77,mult_out__1_n_78}),
        .O({\NLW_mult_out_inferred__1/i__carry__6_O_UNCONNECTED [3:2],O}),
        .S({i__carry__6_i_1_n_0,i__carry__6_i_2_n_0,i__carry__6_i_3_n_0,i__carry__6_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__7 
       (.CI(\mult_out_inferred__1/i__carry__6_n_0 ),
        .CO({\mult_out_inferred__1/i__carry__7_n_0 ,\mult_out_inferred__1/i__carry__7_n_1 ,\mult_out_inferred__1/i__carry__7_n_2 ,\mult_out_inferred__1/i__carry__7_n_3 }),
        .CYINIT(1'b0),
        .DI({mult_out__1_n_71,mult_out__1_n_72,mult_out__1_n_73,mult_out__1_n_74}),
        .O(\NLW_mult_out_inferred__1/i__carry__7_O_UNCONNECTED [3:0]),
        .S({i__carry__7_i_1_n_0,i__carry__7_i_2_n_0,i__carry__7_i_3_n_0,i__carry__7_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \mult_out_inferred__1/i__carry__8 
       (.CI(\mult_out_inferred__1/i__carry__7_n_0 ),
        .CO({\NLW_mult_out_inferred__1/i__carry__8_CO_UNCONNECTED [3:1],\mult_out_inferred__1/i__carry__8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,mult_out__1_n_70}),
        .O({\NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED [3:2],mult_out__1_6,\NLW_mult_out_inferred__1/i__carry__8_O_UNCONNECTED [0]}),
        .S({1'b0,1'b0,i__carry__8_i_1_n_0,i__carry__8_i_2_n_0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_solver
   (v1_reg,
    v1_reg_0,
    v1_reg_1,
    solver_reset,
    s00_axi_aclk,
    restart_counter_reg,
    s00_axi_aresetn);
  output [26:0]v1_reg;
  output [26:0]v1_reg_0;
  output [26:0]v1_reg_1;
  output solver_reset;
  input s00_axi_aclk;
  input [10:0]restart_counter_reg;
  input s00_axi_aresetn;

  wire [26:1]diff_rho_z;
  wire [26:25]diff_y_x;
  wire [24:8]diff_y_x__0;
  wire diff_y_x_carry__0_n_0;
  wire diff_y_x_carry__0_n_1;
  wire diff_y_x_carry__0_n_2;
  wire diff_y_x_carry__0_n_3;
  wire diff_y_x_carry__1_n_0;
  wire diff_y_x_carry__1_n_1;
  wire diff_y_x_carry__1_n_2;
  wire diff_y_x_carry__1_n_3;
  wire diff_y_x_carry__2_n_0;
  wire diff_y_x_carry__2_n_1;
  wire diff_y_x_carry__2_n_2;
  wire diff_y_x_carry__2_n_3;
  wire diff_y_x_carry__3_n_0;
  wire diff_y_x_carry__3_n_1;
  wire diff_y_x_carry__3_n_2;
  wire diff_y_x_carry__3_n_3;
  wire diff_y_x_carry__4_n_0;
  wire diff_y_x_carry__4_n_1;
  wire diff_y_x_carry__4_n_2;
  wire diff_y_x_carry__4_n_3;
  wire diff_y_x_carry__5_n_2;
  wire diff_y_x_carry__5_n_3;
  wire diff_y_x_carry_n_0;
  wire diff_y_x_carry_n_1;
  wire diff_y_x_carry_n_2;
  wire diff_y_x_carry_n_3;
  wire funct_y_carry__0_n_0;
  wire funct_y_carry__0_n_1;
  wire funct_y_carry__0_n_2;
  wire funct_y_carry__0_n_3;
  wire funct_y_carry__0_n_4;
  wire funct_y_carry__0_n_5;
  wire funct_y_carry__0_n_6;
  wire funct_y_carry__0_n_7;
  wire funct_y_carry__1_n_0;
  wire funct_y_carry__1_n_1;
  wire funct_y_carry__1_n_2;
  wire funct_y_carry__1_n_3;
  wire funct_y_carry__1_n_4;
  wire funct_y_carry__1_n_5;
  wire funct_y_carry__1_n_6;
  wire funct_y_carry__1_n_7;
  wire funct_y_carry__2_n_0;
  wire funct_y_carry__2_n_1;
  wire funct_y_carry__2_n_2;
  wire funct_y_carry__2_n_3;
  wire funct_y_carry__2_n_4;
  wire funct_y_carry__2_n_5;
  wire funct_y_carry__2_n_6;
  wire funct_y_carry__2_n_7;
  wire funct_y_carry__3_n_0;
  wire funct_y_carry__3_n_1;
  wire funct_y_carry__3_n_2;
  wire funct_y_carry__3_n_3;
  wire funct_y_carry__3_n_4;
  wire funct_y_carry__3_n_5;
  wire funct_y_carry__3_n_6;
  wire funct_y_carry__3_n_7;
  wire funct_y_carry__4_n_0;
  wire funct_y_carry__4_n_1;
  wire funct_y_carry__4_n_2;
  wire funct_y_carry__4_n_3;
  wire funct_y_carry__4_n_4;
  wire funct_y_carry__4_n_5;
  wire funct_y_carry__4_n_6;
  wire funct_y_carry__4_n_7;
  wire funct_y_carry__5_n_2;
  wire funct_y_carry__5_n_3;
  wire funct_y_carry__5_n_5;
  wire funct_y_carry__5_n_6;
  wire funct_y_carry__5_n_7;
  wire funct_y_carry_n_0;
  wire funct_y_carry_n_1;
  wire funct_y_carry_n_2;
  wire funct_y_carry_n_3;
  wire funct_y_carry_n_4;
  wire funct_y_carry_n_5;
  wire funct_y_carry_n_6;
  wire funct_y_carry_n_7;
  wire funct_z_carry__0_n_0;
  wire funct_z_carry__0_n_1;
  wire funct_z_carry__0_n_2;
  wire funct_z_carry__0_n_3;
  wire funct_z_carry__0_n_4;
  wire funct_z_carry__0_n_5;
  wire funct_z_carry__0_n_6;
  wire funct_z_carry__0_n_7;
  wire funct_z_carry__1_n_0;
  wire funct_z_carry__1_n_1;
  wire funct_z_carry__1_n_2;
  wire funct_z_carry__1_n_3;
  wire funct_z_carry__1_n_4;
  wire funct_z_carry__1_n_5;
  wire funct_z_carry__1_n_6;
  wire funct_z_carry__1_n_7;
  wire funct_z_carry__2_n_0;
  wire funct_z_carry__2_n_1;
  wire funct_z_carry__2_n_2;
  wire funct_z_carry__2_n_3;
  wire funct_z_carry__2_n_4;
  wire funct_z_carry__2_n_5;
  wire funct_z_carry__2_n_6;
  wire funct_z_carry__2_n_7;
  wire funct_z_carry__3_n_0;
  wire funct_z_carry__3_n_1;
  wire funct_z_carry__3_n_2;
  wire funct_z_carry__3_n_3;
  wire funct_z_carry__3_n_4;
  wire funct_z_carry__3_n_5;
  wire funct_z_carry__3_n_6;
  wire funct_z_carry__3_n_7;
  wire funct_z_carry__4_n_0;
  wire funct_z_carry__4_n_1;
  wire funct_z_carry__4_n_2;
  wire funct_z_carry__4_n_3;
  wire funct_z_carry__4_n_4;
  wire funct_z_carry__4_n_5;
  wire funct_z_carry__4_n_6;
  wire funct_z_carry__4_n_7;
  wire funct_z_carry__5_n_2;
  wire funct_z_carry__5_n_3;
  wire funct_z_carry__5_n_5;
  wire funct_z_carry__5_n_6;
  wire funct_z_carry__5_n_7;
  wire funct_z_carry_n_0;
  wire funct_z_carry_n_1;
  wire funct_z_carry_n_2;
  wire funct_z_carry_n_3;
  wire funct_z_carry_n_4;
  wire funct_z_carry_n_5;
  wire funct_z_carry_n_6;
  wire funct_z_carry_n_7;
  wire integrator_x_n_46;
  wire integrator_x_n_47;
  wire integrator_x_n_48;
  wire integrator_x_n_49;
  wire integrator_x_n_50;
  wire integrator_x_n_51;
  wire integrator_y_n_100;
  wire integrator_y_n_101;
  wire integrator_y_n_102;
  wire integrator_y_n_103;
  wire integrator_y_n_104;
  wire integrator_y_n_105;
  wire integrator_y_n_106;
  wire integrator_y_n_107;
  wire integrator_y_n_108;
  wire integrator_y_n_109;
  wire integrator_y_n_110;
  wire integrator_y_n_111;
  wire integrator_y_n_112;
  wire integrator_y_n_113;
  wire integrator_y_n_114;
  wire integrator_y_n_27;
  wire integrator_y_n_28;
  wire integrator_y_n_29;
  wire integrator_y_n_30;
  wire integrator_y_n_31;
  wire integrator_y_n_32;
  wire integrator_y_n_33;
  wire integrator_y_n_34;
  wire integrator_y_n_35;
  wire integrator_y_n_36;
  wire integrator_y_n_37;
  wire integrator_y_n_38;
  wire integrator_y_n_39;
  wire integrator_y_n_40;
  wire integrator_y_n_41;
  wire integrator_y_n_42;
  wire integrator_y_n_43;
  wire integrator_y_n_44;
  wire integrator_y_n_45;
  wire integrator_y_n_46;
  wire integrator_y_n_47;
  wire integrator_y_n_48;
  wire integrator_y_n_49;
  wire integrator_y_n_50;
  wire integrator_y_n_51;
  wire integrator_y_n_52;
  wire integrator_y_n_53;
  wire integrator_y_n_54;
  wire integrator_y_n_55;
  wire integrator_y_n_56;
  wire integrator_y_n_57;
  wire integrator_y_n_58;
  wire integrator_y_n_59;
  wire integrator_y_n_60;
  wire integrator_y_n_61;
  wire integrator_y_n_62;
  wire integrator_y_n_63;
  wire integrator_y_n_64;
  wire integrator_y_n_65;
  wire integrator_y_n_66;
  wire integrator_y_n_67;
  wire integrator_y_n_68;
  wire integrator_y_n_69;
  wire integrator_y_n_70;
  wire integrator_y_n_71;
  wire integrator_y_n_72;
  wire integrator_y_n_73;
  wire integrator_y_n_74;
  wire integrator_y_n_75;
  wire integrator_y_n_76;
  wire integrator_y_n_77;
  wire integrator_y_n_78;
  wire integrator_y_n_79;
  wire integrator_y_n_80;
  wire integrator_y_n_81;
  wire integrator_y_n_82;
  wire integrator_y_n_83;
  wire integrator_y_n_84;
  wire integrator_y_n_85;
  wire integrator_y_n_86;
  wire integrator_y_n_87;
  wire integrator_y_n_88;
  wire integrator_y_n_89;
  wire integrator_y_n_90;
  wire integrator_y_n_91;
  wire integrator_y_n_92;
  wire integrator_y_n_93;
  wire integrator_y_n_94;
  wire integrator_y_n_95;
  wire integrator_y_n_96;
  wire integrator_y_n_97;
  wire integrator_y_n_98;
  wire integrator_y_n_99;
  wire integrator_z_n_100;
  wire integrator_z_n_101;
  wire integrator_z_n_102;
  wire integrator_z_n_103;
  wire integrator_z_n_104;
  wire integrator_z_n_105;
  wire integrator_z_n_43;
  wire integrator_z_n_44;
  wire integrator_z_n_45;
  wire integrator_z_n_46;
  wire integrator_z_n_57;
  wire integrator_z_n_58;
  wire integrator_z_n_59;
  wire integrator_z_n_60;
  wire integrator_z_n_61;
  wire integrator_z_n_62;
  wire integrator_z_n_63;
  wire integrator_z_n_64;
  wire integrator_z_n_66;
  wire integrator_z_n_67;
  wire integrator_z_n_68;
  wire integrator_z_n_69;
  wire integrator_z_n_70;
  wire integrator_z_n_71;
  wire integrator_z_n_72;
  wire integrator_z_n_73;
  wire integrator_z_n_74;
  wire integrator_z_n_75;
  wire integrator_z_n_76;
  wire integrator_z_n_77;
  wire integrator_z_n_78;
  wire integrator_z_n_79;
  wire integrator_z_n_80;
  wire integrator_z_n_81;
  wire integrator_z_n_82;
  wire integrator_z_n_83;
  wire integrator_z_n_84;
  wire integrator_z_n_85;
  wire integrator_z_n_86;
  wire integrator_z_n_87;
  wire integrator_z_n_88;
  wire integrator_z_n_89;
  wire integrator_z_n_90;
  wire integrator_z_n_91;
  wire integrator_z_n_92;
  wire integrator_z_n_93;
  wire integrator_z_n_94;
  wire integrator_z_n_95;
  wire integrator_z_n_96;
  wire integrator_z_n_97;
  wire integrator_z_n_98;
  wire integrator_z_n_99;
  wire mult_dx_n_0;
  wire mult_dx_n_1;
  wire mult_dx_n_10;
  wire mult_dx_n_11;
  wire mult_dx_n_12;
  wire mult_dx_n_13;
  wire mult_dx_n_14;
  wire mult_dx_n_15;
  wire mult_dx_n_16;
  wire mult_dx_n_17;
  wire mult_dx_n_18;
  wire mult_dx_n_19;
  wire mult_dx_n_2;
  wire mult_dx_n_20;
  wire mult_dx_n_21;
  wire mult_dx_n_22;
  wire mult_dx_n_23;
  wire mult_dx_n_24;
  wire mult_dx_n_25;
  wire mult_dx_n_26;
  wire mult_dx_n_27;
  wire mult_dx_n_28;
  wire mult_dx_n_29;
  wire mult_dx_n_3;
  wire mult_dx_n_30;
  wire mult_dx_n_31;
  wire mult_dx_n_32;
  wire mult_dx_n_33;
  wire mult_dx_n_34;
  wire mult_dx_n_35;
  wire mult_dx_n_36;
  wire mult_dx_n_37;
  wire mult_dx_n_38;
  wire mult_dx_n_39;
  wire mult_dx_n_4;
  wire mult_dx_n_40;
  wire mult_dx_n_41;
  wire mult_dx_n_42;
  wire mult_dx_n_43;
  wire mult_dx_n_44;
  wire mult_dx_n_45;
  wire mult_dx_n_46;
  wire mult_dx_n_47;
  wire mult_dx_n_48;
  wire mult_dx_n_49;
  wire mult_dx_n_5;
  wire mult_dx_n_50;
  wire mult_dx_n_51;
  wire mult_dx_n_52;
  wire mult_dx_n_53;
  wire mult_dx_n_54;
  wire mult_dx_n_55;
  wire mult_dx_n_56;
  wire mult_dx_n_57;
  wire mult_dx_n_6;
  wire mult_dx_n_7;
  wire mult_dx_n_8;
  wire mult_dx_n_9;
  wire [45:20]mult_out;
  wire [24:0]mult_xrhoz_out;
  wire multiplier_y_n_0;
  wire multiplier_y_n_1;
  wire multiplier_y_n_2;
  wire multiplier_y_n_3;
  wire multiplier_y_n_31;
  wire multiplier_y_n_32;
  wire multiplier_y_n_33;
  wire multiplier_y_n_34;
  wire multiplier_y_n_35;
  wire multiplier_y_n_36;
  wire multiplier_y_n_37;
  wire multiplier_y_n_38;
  wire multiplier_y_n_39;
  wire multiplier_y_n_4;
  wire multiplier_y_n_40;
  wire multiplier_y_n_41;
  wire multiplier_y_n_42;
  wire multiplier_y_n_43;
  wire multiplier_y_n_44;
  wire multiplier_y_n_45;
  wire multiplier_y_n_46;
  wire multiplier_y_n_47;
  wire multiplier_y_n_48;
  wire multiplier_y_n_49;
  wire multiplier_y_n_5;
  wire multiplier_y_n_50;
  wire multiplier_y_n_51;
  wire multiplier_y_n_52;
  wire multiplier_y_n_53;
  wire multiplier_y_n_54;
  wire multiplier_y_n_55;
  wire multiplier_y_n_56;
  wire multiplier_y_n_57;
  wire multiplier_y_n_58;
  wire multiplier_z1_n_0;
  wire multiplier_z1_n_1;
  wire multiplier_z1_n_2;
  wire multiplier_z1_n_3;
  wire multiplier_z1_n_32;
  wire multiplier_z1_n_33;
  wire multiplier_z1_n_34;
  wire multiplier_z1_n_35;
  wire multiplier_z1_n_36;
  wire multiplier_z1_n_37;
  wire multiplier_z1_n_38;
  wire multiplier_z1_n_39;
  wire multiplier_z1_n_4;
  wire multiplier_z1_n_40;
  wire multiplier_z1_n_41;
  wire multiplier_z1_n_42;
  wire multiplier_z1_n_43;
  wire multiplier_z1_n_44;
  wire multiplier_z1_n_45;
  wire multiplier_z1_n_46;
  wire multiplier_z1_n_47;
  wire multiplier_z1_n_48;
  wire multiplier_z1_n_49;
  wire multiplier_z1_n_5;
  wire multiplier_z1_n_50;
  wire multiplier_z1_n_51;
  wire multiplier_z1_n_52;
  wire multiplier_z1_n_53;
  wire multiplier_z1_n_54;
  wire multiplier_z1_n_55;
  wire multiplier_z1_n_56;
  wire multiplier_z1_n_57;
  wire multiplier_z1_n_58;
  wire multiplier_z1_n_59;
  wire multiplier_z1_n_60;
  wire multiplier_z1_n_61;
  wire multiplier_z1_n_62;
  wire multiplier_z1_n_63;
  wire multiplier_z1_n_64;
  wire multiplier_z1_n_65;
  wire multiplier_z2_n_0;
  wire multiplier_z2_n_1;
  wire multiplier_z2_n_10;
  wire multiplier_z2_n_11;
  wire multiplier_z2_n_12;
  wire multiplier_z2_n_13;
  wire multiplier_z2_n_14;
  wire multiplier_z2_n_15;
  wire multiplier_z2_n_16;
  wire multiplier_z2_n_17;
  wire multiplier_z2_n_18;
  wire multiplier_z2_n_19;
  wire multiplier_z2_n_2;
  wire multiplier_z2_n_20;
  wire multiplier_z2_n_21;
  wire multiplier_z2_n_22;
  wire multiplier_z2_n_23;
  wire multiplier_z2_n_24;
  wire multiplier_z2_n_25;
  wire multiplier_z2_n_26;
  wire multiplier_z2_n_27;
  wire multiplier_z2_n_28;
  wire multiplier_z2_n_29;
  wire multiplier_z2_n_3;
  wire multiplier_z2_n_4;
  wire multiplier_z2_n_5;
  wire multiplier_z2_n_6;
  wire multiplier_z2_n_7;
  wire multiplier_z2_n_8;
  wire multiplier_z2_n_9;
  wire [10:0]restart_counter_reg;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire solver_reset;
  wire [26:0]v1_reg;
  wire [26:0]v1_reg_0;
  wire [26:0]v1_reg_1;
  wire [26:8]v1new;
  wire [3:0]NLW_diff_y_x_carry_O_UNCONNECTED;
  wire [3:0]NLW_diff_y_x_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_diff_y_x_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_diff_y_x_carry__5_O_UNCONNECTED;
  wire [3:2]NLW_funct_y_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_funct_y_carry__5_O_UNCONNECTED;
  wire [3:2]NLW_funct_z_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_funct_z_carry__5_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 diff_y_x_carry
       (.CI(1'b0),
        .CO({diff_y_x_carry_n_0,diff_y_x_carry_n_1,diff_y_x_carry_n_2,diff_y_x_carry_n_3}),
        .CYINIT(1'b1),
        .DI(v1_reg_0[3:0]),
        .O(NLW_diff_y_x_carry_O_UNCONNECTED[3:0]),
        .S({integrator_y_n_61,integrator_y_n_62,integrator_y_n_63,integrator_y_n_64}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 diff_y_x_carry__0
       (.CI(diff_y_x_carry_n_0),
        .CO({diff_y_x_carry__0_n_0,diff_y_x_carry__0_n_1,diff_y_x_carry__0_n_2,diff_y_x_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg_0[7:4]),
        .O(NLW_diff_y_x_carry__0_O_UNCONNECTED[3:0]),
        .S({integrator_y_n_57,integrator_y_n_58,integrator_y_n_59,integrator_y_n_60}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 diff_y_x_carry__1
       (.CI(diff_y_x_carry__0_n_0),
        .CO({diff_y_x_carry__1_n_0,diff_y_x_carry__1_n_1,diff_y_x_carry__1_n_2,diff_y_x_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg_0[11:8]),
        .O(diff_y_x__0[11:8]),
        .S({integrator_y_n_53,integrator_y_n_54,integrator_y_n_55,integrator_y_n_56}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 diff_y_x_carry__2
       (.CI(diff_y_x_carry__1_n_0),
        .CO({diff_y_x_carry__2_n_0,diff_y_x_carry__2_n_1,diff_y_x_carry__2_n_2,diff_y_x_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg_0[15:12]),
        .O(diff_y_x__0[15:12]),
        .S({integrator_y_n_49,integrator_y_n_50,integrator_y_n_51,integrator_y_n_52}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 diff_y_x_carry__3
       (.CI(diff_y_x_carry__2_n_0),
        .CO({diff_y_x_carry__3_n_0,diff_y_x_carry__3_n_1,diff_y_x_carry__3_n_2,diff_y_x_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg_0[19:16]),
        .O(diff_y_x__0[19:16]),
        .S({integrator_y_n_45,integrator_y_n_46,integrator_y_n_47,integrator_y_n_48}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 diff_y_x_carry__4
       (.CI(diff_y_x_carry__3_n_0),
        .CO({diff_y_x_carry__4_n_0,diff_y_x_carry__4_n_1,diff_y_x_carry__4_n_2,diff_y_x_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(v1_reg_0[23:20]),
        .O(diff_y_x__0[23:20]),
        .S({integrator_y_n_41,integrator_y_n_42,integrator_y_n_43,integrator_y_n_44}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 diff_y_x_carry__5
       (.CI(diff_y_x_carry__4_n_0),
        .CO({NLW_diff_y_x_carry__5_CO_UNCONNECTED[3:2],diff_y_x_carry__5_n_2,diff_y_x_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,v1_reg_0[25:24]}),
        .O({NLW_diff_y_x_carry__5_O_UNCONNECTED[3],diff_y_x,diff_y_x__0[24]}),
        .S({1'b0,integrator_y_n_38,integrator_y_n_39,integrator_y_n_40}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_y_carry
       (.CI(1'b0),
        .CO({funct_y_carry_n_0,funct_y_carry_n_1,funct_y_carry_n_2,funct_y_carry_n_3}),
        .CYINIT(1'b1),
        .DI(mult_xrhoz_out[3:0]),
        .O({funct_y_carry_n_4,funct_y_carry_n_5,funct_y_carry_n_6,funct_y_carry_n_7}),
        .S({multiplier_y_n_52,multiplier_y_n_53,multiplier_y_n_54,multiplier_y_n_55}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_y_carry__0
       (.CI(funct_y_carry_n_0),
        .CO({funct_y_carry__0_n_0,funct_y_carry__0_n_1,funct_y_carry__0_n_2,funct_y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(mult_xrhoz_out[7:4]),
        .O({funct_y_carry__0_n_4,funct_y_carry__0_n_5,funct_y_carry__0_n_6,funct_y_carry__0_n_7}),
        .S({multiplier_y_n_48,multiplier_y_n_49,multiplier_y_n_50,multiplier_y_n_51}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_y_carry__1
       (.CI(funct_y_carry__0_n_0),
        .CO({funct_y_carry__1_n_0,funct_y_carry__1_n_1,funct_y_carry__1_n_2,funct_y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(mult_xrhoz_out[11:8]),
        .O({funct_y_carry__1_n_4,funct_y_carry__1_n_5,funct_y_carry__1_n_6,funct_y_carry__1_n_7}),
        .S({multiplier_y_n_44,multiplier_y_n_45,multiplier_y_n_46,multiplier_y_n_47}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_y_carry__2
       (.CI(funct_y_carry__1_n_0),
        .CO({funct_y_carry__2_n_0,funct_y_carry__2_n_1,funct_y_carry__2_n_2,funct_y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(mult_xrhoz_out[15:12]),
        .O({funct_y_carry__2_n_4,funct_y_carry__2_n_5,funct_y_carry__2_n_6,funct_y_carry__2_n_7}),
        .S({multiplier_y_n_40,multiplier_y_n_41,multiplier_y_n_42,multiplier_y_n_43}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_y_carry__3
       (.CI(funct_y_carry__2_n_0),
        .CO({funct_y_carry__3_n_0,funct_y_carry__3_n_1,funct_y_carry__3_n_2,funct_y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(mult_xrhoz_out[19:16]),
        .O({funct_y_carry__3_n_4,funct_y_carry__3_n_5,funct_y_carry__3_n_6,funct_y_carry__3_n_7}),
        .S({integrator_y_n_37,multiplier_y_n_37,multiplier_y_n_38,multiplier_y_n_39}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_y_carry__4
       (.CI(funct_y_carry__3_n_0),
        .CO({funct_y_carry__4_n_0,funct_y_carry__4_n_1,funct_y_carry__4_n_2,funct_y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({mult_xrhoz_out[22:20],v1_reg_0[26]}),
        .O({funct_y_carry__4_n_4,funct_y_carry__4_n_5,funct_y_carry__4_n_6,funct_y_carry__4_n_7}),
        .S({multiplier_y_n_31,multiplier_y_n_32,multiplier_y_n_33,integrator_y_n_36}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_y_carry__5
       (.CI(funct_y_carry__4_n_0),
        .CO({NLW_funct_y_carry__5_CO_UNCONNECTED[3:2],funct_y_carry__5_n_2,funct_y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,mult_xrhoz_out[24:23]}),
        .O({NLW_funct_y_carry__5_O_UNCONNECTED[3],funct_y_carry__5_n_5,funct_y_carry__5_n_6,funct_y_carry__5_n_7}),
        .S({1'b0,multiplier_y_n_34,multiplier_y_n_35,multiplier_y_n_36}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_z_carry
       (.CI(1'b0),
        .CO({funct_z_carry_n_0,funct_z_carry_n_1,funct_z_carry_n_2,funct_z_carry_n_3}),
        .CYINIT(1'b1),
        .DI(mult_out[23:20]),
        .O({funct_z_carry_n_4,funct_z_carry_n_5,funct_z_carry_n_6,funct_z_carry_n_7}),
        .S({multiplier_z1_n_55,multiplier_z1_n_56,multiplier_z1_n_57,multiplier_z1_n_58}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_z_carry__0
       (.CI(funct_z_carry_n_0),
        .CO({funct_z_carry__0_n_0,funct_z_carry__0_n_1,funct_z_carry__0_n_2,funct_z_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(mult_out[27:24]),
        .O({funct_z_carry__0_n_4,funct_z_carry__0_n_5,funct_z_carry__0_n_6,funct_z_carry__0_n_7}),
        .S({multiplier_z1_n_51,multiplier_z1_n_52,multiplier_z1_n_53,multiplier_z1_n_54}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_z_carry__1
       (.CI(funct_z_carry__0_n_0),
        .CO({funct_z_carry__1_n_0,funct_z_carry__1_n_1,funct_z_carry__1_n_2,funct_z_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(mult_out[31:28]),
        .O({funct_z_carry__1_n_4,funct_z_carry__1_n_5,funct_z_carry__1_n_6,funct_z_carry__1_n_7}),
        .S({multiplier_z1_n_47,multiplier_z1_n_48,multiplier_z1_n_49,multiplier_z1_n_50}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_z_carry__2
       (.CI(funct_z_carry__1_n_0),
        .CO({funct_z_carry__2_n_0,funct_z_carry__2_n_1,funct_z_carry__2_n_2,funct_z_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(mult_out[35:32]),
        .O({funct_z_carry__2_n_4,funct_z_carry__2_n_5,funct_z_carry__2_n_6,funct_z_carry__2_n_7}),
        .S({multiplier_z1_n_43,multiplier_z1_n_44,multiplier_z1_n_45,multiplier_z1_n_46}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_z_carry__3
       (.CI(funct_z_carry__2_n_0),
        .CO({funct_z_carry__3_n_0,funct_z_carry__3_n_1,funct_z_carry__3_n_2,funct_z_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(mult_out[39:36]),
        .O({funct_z_carry__3_n_4,funct_z_carry__3_n_5,funct_z_carry__3_n_6,funct_z_carry__3_n_7}),
        .S({multiplier_z1_n_39,multiplier_z1_n_40,multiplier_z1_n_41,multiplier_z1_n_42}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_z_carry__4
       (.CI(funct_z_carry__3_n_0),
        .CO({funct_z_carry__4_n_0,funct_z_carry__4_n_1,funct_z_carry__4_n_2,funct_z_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(mult_out[43:40]),
        .O({funct_z_carry__4_n_4,funct_z_carry__4_n_5,funct_z_carry__4_n_6,funct_z_carry__4_n_7}),
        .S({multiplier_z1_n_35,multiplier_z1_n_36,multiplier_z1_n_37,multiplier_z1_n_38}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 funct_z_carry__5
       (.CI(funct_z_carry__4_n_0),
        .CO({NLW_funct_z_carry__5_CO_UNCONNECTED[3:2],funct_z_carry__5_n_2,funct_z_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,mult_out[45:44]}),
        .O({NLW_funct_z_carry__5_O_UNCONNECTED[3],funct_z_carry__5_n_5,funct_z_carry__5_n_6,funct_z_carry__5_n_7}),
        .S({1'b0,multiplier_z1_n_32,multiplier_z1_n_33,multiplier_z1_n_34}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_integrator integrator_x
       (.B({diff_rho_z[26],diff_rho_z[20],diff_rho_z[18:17]}),
        .DI(v1_reg_1[3:0]),
        .O({mult_dx_n_31,mult_dx_n_32,mult_dx_n_33,mult_dx_n_34}),
        .P({mult_dx_n_4,mult_dx_n_5,mult_dx_n_6,mult_dx_n_7,mult_dx_n_8,mult_dx_n_9,mult_dx_n_10,mult_dx_n_11,mult_dx_n_12,mult_dx_n_13,mult_dx_n_14,mult_dx_n_15,mult_dx_n_16,mult_dx_n_17,mult_dx_n_18,mult_dx_n_19,mult_dx_n_20}),
        .S(integrator_x_n_46),
        .adder_out_carry__4_0({mult_dx_n_21,mult_dx_n_22,mult_dx_n_23,mult_dx_n_24}),
        .adder_out_carry__5_0(mult_dx_n_30),
        .adder_out_carry__5_1({mult_dx_n_25,mult_dx_n_26,mult_dx_n_27,mult_dx_n_28}),
        .adder_out_carry__5_2(mult_dx_n_29),
        .mult_out(integrator_x_n_50),
        .mult_out_0(integrator_x_n_51),
        .mult_out__0(solver_reset),
        .mult_out__11_carry(v1_reg_0[20]),
        .mult_out__2_carry(v1_reg_0[26]),
        .\mult_out_inferred__0/i__carry (multiplier_y_n_0),
        .\mult_out_inferred__0/i__carry_0 (multiplier_z1_n_0),
        .\mult_out_inferred__0/i__carry_1 (v1_reg_0[18:17]),
        .s00_axi_aclk(s00_axi_aclk),
        .\v1_reg[11]_0 (v1_reg_1[11:8]),
        .\v1_reg[11]_1 ({mult_dx_n_39,mult_dx_n_40,mult_dx_n_41,mult_dx_n_42}),
        .\v1_reg[15]_0 (v1_reg_1[15:12]),
        .\v1_reg[15]_1 ({mult_dx_n_43,mult_dx_n_44,mult_dx_n_45,mult_dx_n_46}),
        .\v1_reg[19]_0 (v1_reg_1[19:16]),
        .\v1_reg[19]_1 ({mult_dx_n_47,mult_dx_n_48,mult_dx_n_49,mult_dx_n_50}),
        .\v1_reg[23]_0 (v1_reg_1[23:20]),
        .\v1_reg[23]_1 ({mult_dx_n_51,mult_dx_n_52,mult_dx_n_53,mult_dx_n_54}),
        .\v1_reg[25]_0 (v1_reg_1[25:24]),
        .\v1_reg[25]_1 (integrator_x_n_47),
        .\v1_reg[25]_2 (integrator_x_n_49),
        .\v1_reg[26]_0 (v1_reg_1[26]),
        .\v1_reg[26]_1 (integrator_x_n_48),
        .\v1_reg[26]_2 ({mult_dx_n_55,mult_dx_n_56,mult_dx_n_57}),
        .\v1_reg[7]_0 (v1_reg_1[7:4]),
        .\v1_reg[7]_1 ({mult_dx_n_35,mult_dx_n_36,mult_dx_n_37,mult_dx_n_38}),
        .v1new(v1new));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_integrator_0 integrator_y
       (.B({integrator_y_n_67,integrator_y_n_68,integrator_y_n_69,integrator_y_n_70,integrator_y_n_71,integrator_y_n_72,integrator_y_n_73,integrator_y_n_74,integrator_y_n_75,integrator_y_n_76}),
        .CO(multiplier_z1_n_1),
        .DI(v1_reg_0[3:0]),
        .O({multiplier_y_n_56,multiplier_y_n_57,multiplier_y_n_58}),
        .P({mult_dx_n_0,mult_dx_n_1,mult_dx_n_2,mult_dx_n_3}),
        .S({integrator_y_n_27,integrator_y_n_28,integrator_y_n_29,integrator_y_n_30}),
        .adder_out_carry__5_0({funct_y_carry__5_n_5,funct_y_carry__5_n_6,funct_y_carry__5_n_7}),
        .i__carry__3_i_2__4(multiplier_z1_n_5),
        .mult_out({integrator_y_n_65,integrator_y_n_66}),
        .mult_out_0(integrator_y_n_103),
        .mult_out_1(integrator_y_n_104),
        .mult_out_2(v1_reg_1[25:24]),
        .mult_out_3(v1_reg_1[26]),
        .mult_out_4(solver_reset),
        .mult_out__11_carry__1(integrator_y_n_102),
        .mult_out__11_carry__1_0({multiplier_z1_n_2,multiplier_z1_n_3,multiplier_z1_n_4}),
        .\mult_out_inferred__0/i__carry__2 (diff_y_x),
        .mult_xrhoz_out(mult_xrhoz_out[20:19]),
        .s00_axi_aclk(s00_axi_aclk),
        .\v1_reg[11]_0 (v1_reg_0[11:8]),
        .\v1_reg[11]_1 ({integrator_y_n_53,integrator_y_n_54,integrator_y_n_55,integrator_y_n_56}),
        .\v1_reg[11]_2 ({funct_y_carry__1_n_4,funct_y_carry__1_n_5,funct_y_carry__1_n_6,funct_y_carry__1_n_7}),
        .\v1_reg[15]_0 (v1_reg_0[15:12]),
        .\v1_reg[15]_1 ({integrator_y_n_49,integrator_y_n_50,integrator_y_n_51,integrator_y_n_52}),
        .\v1_reg[15]_2 ({funct_y_carry__2_n_4,funct_y_carry__2_n_5,funct_y_carry__2_n_6,funct_y_carry__2_n_7}),
        .\v1_reg[17]_0 (integrator_y_n_31),
        .\v1_reg[19]_0 (v1_reg_0[19:16]),
        .\v1_reg[19]_1 ({integrator_y_n_45,integrator_y_n_46,integrator_y_n_47,integrator_y_n_48}),
        .\v1_reg[19]_2 ({integrator_y_n_77,integrator_y_n_78,integrator_y_n_79,integrator_y_n_80,integrator_y_n_81,integrator_y_n_82,integrator_y_n_83,integrator_y_n_84,integrator_y_n_85,integrator_y_n_86,integrator_y_n_87,integrator_y_n_88,integrator_y_n_89,integrator_y_n_90,integrator_y_n_91,integrator_y_n_92,integrator_y_n_93}),
        .\v1_reg[19]_3 ({funct_y_carry__3_n_4,funct_y_carry__3_n_5,funct_y_carry__3_n_6,funct_y_carry__3_n_7}),
        .\v1_reg[20]_0 ({integrator_y_n_105,integrator_y_n_106}),
        .\v1_reg[22]_0 ({integrator_y_n_32,integrator_y_n_33,integrator_y_n_34,integrator_y_n_35}),
        .\v1_reg[22]_1 ({integrator_y_n_107,integrator_y_n_108,integrator_y_n_109,integrator_y_n_110}),
        .\v1_reg[22]_2 ({integrator_y_n_111,integrator_y_n_112,integrator_y_n_113,integrator_y_n_114}),
        .\v1_reg[23]_0 (v1_reg_0[23:20]),
        .\v1_reg[23]_1 ({integrator_y_n_41,integrator_y_n_42,integrator_y_n_43,integrator_y_n_44}),
        .\v1_reg[23]_2 (integrator_y_n_101),
        .\v1_reg[23]_3 ({funct_y_carry__4_n_4,funct_y_carry__4_n_5,funct_y_carry__4_n_6,funct_y_carry__4_n_7}),
        .\v1_reg[25]_0 (v1_reg_0[25:24]),
        .\v1_reg[25]_1 ({integrator_y_n_94,integrator_y_n_95,integrator_y_n_96,integrator_y_n_97}),
        .\v1_reg[25]_2 (integrator_y_n_98),
        .\v1_reg[26]_0 (v1_reg_0[26]),
        .\v1_reg[26]_1 (integrator_y_n_36),
        .\v1_reg[26]_2 (integrator_y_n_37),
        .\v1_reg[26]_3 ({integrator_y_n_38,integrator_y_n_39,integrator_y_n_40}),
        .\v1_reg[26]_4 ({integrator_y_n_99,integrator_y_n_100}),
        .\v1_reg[3]_0 ({integrator_y_n_61,integrator_y_n_62,integrator_y_n_63,integrator_y_n_64}),
        .\v1_reg[3]_1 ({funct_y_carry_n_4,funct_y_carry_n_5,funct_y_carry_n_6,funct_y_carry_n_7}),
        .\v1_reg[7]_0 (v1_reg_0[7:4]),
        .\v1_reg[7]_1 ({integrator_y_n_57,integrator_y_n_58,integrator_y_n_59,integrator_y_n_60}),
        .\v1_reg[7]_2 ({funct_y_carry__0_n_4,funct_y_carry__0_n_5,funct_y_carry__0_n_6,funct_y_carry__0_n_7}),
        .v1_reg_1(v1_reg_1[23:0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_integrator_1 integrator_z
       (.A({diff_rho_z[16:1],v1_reg[0]}),
        .CO(multiplier_y_n_1),
        .DI(v1_reg[3:1]),
        .O({multiplier_z1_n_59,multiplier_z1_n_60,multiplier_z1_n_61,multiplier_z1_n_62}),
        .P({multiplier_z2_n_0,multiplier_z2_n_1,multiplier_z2_n_2}),
        .S({integrator_z_n_43,integrator_z_n_44,integrator_z_n_45,integrator_z_n_46}),
        .adder_out_carry__4_0({funct_z_carry__4_n_4,funct_z_carry__4_n_5,funct_z_carry__4_n_6,funct_z_carry__4_n_7}),
        .adder_out_carry__5_0({funct_z_carry__5_n_5,funct_z_carry__5_n_6,funct_z_carry__5_n_7}),
        .diff_rho_z(diff_rho_z[26:17]),
        .i__carry__3_i_2__3(multiplier_y_n_5),
        .mult_out(integrator_z_n_94),
        .mult_out__11_carry(v1_reg_1[25]),
        .mult_out__11_carry_0(v1_reg_1[26]),
        .mult_out__11_carry__1(integrator_z_n_92),
        .mult_out__11_carry__1_0({multiplier_y_n_2,multiplier_y_n_3,multiplier_y_n_4}),
        .restart_counter_reg(restart_counter_reg),
        .restart_counter_reg_2_sp_1(solver_reset),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn),
        .\v1_reg[11]_0 (v1_reg[11:8]),
        .\v1_reg[11]_1 ({funct_z_carry__1_n_4,funct_z_carry__1_n_5,funct_z_carry__1_n_6,funct_z_carry__1_n_7}),
        .\v1_reg[15]_0 (v1_reg[15:12]),
        .\v1_reg[15]_1 ({funct_z_carry__2_n_4,funct_z_carry__2_n_5,funct_z_carry__2_n_6,funct_z_carry__2_n_7}),
        .\v1_reg[19]_0 (v1_reg[19:16]),
        .\v1_reg[19]_1 (integrator_z_n_93),
        .\v1_reg[19]_2 ({funct_z_carry__3_n_4,funct_z_carry__3_n_5,funct_z_carry__3_n_6,funct_z_carry__3_n_7}),
        .\v1_reg[23]_0 (v1_reg[23:20]),
        .\v1_reg[25]_0 (v1_reg[25:24]),
        .\v1_reg[25]_1 ({integrator_z_n_66,integrator_z_n_67}),
        .\v1_reg[25]_2 ({integrator_z_n_68,integrator_z_n_69,integrator_z_n_70,integrator_z_n_71,integrator_z_n_72,integrator_z_n_73,integrator_z_n_74,integrator_z_n_75,integrator_z_n_76,integrator_z_n_77,integrator_z_n_78,integrator_z_n_79,integrator_z_n_80,integrator_z_n_81,integrator_z_n_82,integrator_z_n_83,integrator_z_n_84}),
        .\v1_reg[25]_3 ({integrator_z_n_89,integrator_z_n_90}),
        .\v1_reg[26]_0 (v1_reg[26]),
        .\v1_reg[26]_1 (integrator_z_n_57),
        .\v1_reg[26]_10 ({integrator_z_n_102,integrator_z_n_103,integrator_z_n_104,integrator_z_n_105}),
        .\v1_reg[26]_11 ({multiplier_z1_n_63,multiplier_z1_n_64,multiplier_z1_n_65}),
        .\v1_reg[26]_2 ({integrator_z_n_58,integrator_z_n_59,integrator_z_n_60,integrator_z_n_61}),
        .\v1_reg[26]_3 (integrator_z_n_62),
        .\v1_reg[26]_4 ({integrator_z_n_63,integrator_z_n_64}),
        .\v1_reg[26]_5 ({integrator_z_n_85,integrator_z_n_86,integrator_z_n_87,integrator_z_n_88}),
        .\v1_reg[26]_6 (integrator_z_n_91),
        .\v1_reg[26]_7 (integrator_z_n_95),
        .\v1_reg[26]_8 ({integrator_z_n_96,integrator_z_n_97}),
        .\v1_reg[26]_9 ({integrator_z_n_98,integrator_z_n_99,integrator_z_n_100,integrator_z_n_101}),
        .\v1_reg[3]_0 ({funct_z_carry_n_4,funct_z_carry_n_5,funct_z_carry_n_6,funct_z_carry_n_7}),
        .\v1_reg[7]_0 (v1_reg[7:4]),
        .\v1_reg[7]_1 ({funct_z_carry__0_n_4,funct_z_carry__0_n_5,funct_z_carry__0_n_6,funct_z_carry__0_n_7}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signed_mult mult_dx
       (.A(diff_y_x__0),
        .DI({integrator_y_n_98,diff_y_x[26]}),
        .O({mult_dx_n_31,mult_dx_n_32,mult_dx_n_33,mult_dx_n_34}),
        .P({mult_dx_n_0,mult_dx_n_1,mult_dx_n_2,mult_dx_n_3,mult_dx_n_4,mult_dx_n_5,mult_dx_n_6,mult_dx_n_7,mult_dx_n_8,mult_dx_n_9,mult_dx_n_10,mult_dx_n_11,mult_dx_n_12,mult_dx_n_13,mult_dx_n_14,mult_dx_n_15,mult_dx_n_16,mult_dx_n_17,mult_dx_n_18,mult_dx_n_19,mult_dx_n_20}),
        .adder_out_carry__3_i_3__0(integrator_y_n_103),
        .adder_out_carry__4_i_3__0(integrator_y_n_104),
        .mult_out_0({mult_dx_n_21,mult_dx_n_22,mult_dx_n_23,mult_dx_n_24}),
        .mult_out_1({mult_dx_n_25,mult_dx_n_26,mult_dx_n_27,mult_dx_n_28}),
        .mult_out_2(mult_dx_n_29),
        .mult_out_3(mult_dx_n_30),
        .mult_out_4({mult_dx_n_35,mult_dx_n_36,mult_dx_n_37,mult_dx_n_38}),
        .mult_out_5({mult_dx_n_39,mult_dx_n_40,mult_dx_n_41,mult_dx_n_42}),
        .mult_out_6({mult_dx_n_43,mult_dx_n_44,mult_dx_n_45,mult_dx_n_46}),
        .mult_out_7({mult_dx_n_47,mult_dx_n_48,mult_dx_n_49,mult_dx_n_50}),
        .\mult_out_inferred__0/i__carry_0 (diff_y_x[25]),
        .\mult_out_inferred__0/i__carry__3_0 ({integrator_y_n_65,integrator_y_n_66}),
        .\v1_reg[23] ({mult_dx_n_51,mult_dx_n_52,mult_dx_n_53,mult_dx_n_54}),
        .\v1_reg[26] ({mult_dx_n_55,mult_dx_n_56,mult_dx_n_57}),
        .\v1_reg[26]_0 (solver_reset),
        .\v1_reg[26]_1 (v1_reg_1[26]),
        .v1_reg_1(v1_reg_1[25:0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signed_mult_2 multiplier_y
       (.CO(multiplier_y_n_1),
        .DI({integrator_z_n_96,integrator_z_n_97,integrator_x_n_47}),
        .O({multiplier_y_n_56,multiplier_y_n_57,multiplier_y_n_58}),
        .S({integrator_x_n_46,integrator_z_n_89,integrator_z_n_90}),
        .diff_rho_z(diff_rho_z),
        .i__carry__0_i_2__2_0({integrator_z_n_58,integrator_z_n_59,integrator_z_n_60,integrator_z_n_61}),
        .i__carry__0_i_2__2_1({integrator_z_n_98,integrator_z_n_99,integrator_z_n_100,integrator_z_n_101}),
        .i__carry__1_i_2__2_0({integrator_z_n_85,integrator_z_n_86,integrator_z_n_87,integrator_z_n_88}),
        .i__carry__1_i_2__2_1({integrator_z_n_102,integrator_z_n_103,integrator_z_n_104,integrator_z_n_105}),
        .i__carry__3_i_2__1_0(integrator_x_n_50),
        .i__carry_i_2__2_0({integrator_z_n_43,integrator_z_n_44,integrator_z_n_45,integrator_z_n_46}),
        .mult_out_0(multiplier_y_n_0),
        .mult_out__11_carry__0_i_5(integrator_z_n_57),
        .mult_out__1_0(mult_xrhoz_out),
        .mult_out__1_1({multiplier_y_n_31,multiplier_y_n_32,multiplier_y_n_33}),
        .mult_out__1_2({multiplier_y_n_34,multiplier_y_n_35,multiplier_y_n_36}),
        .\mult_out_inferred__0/i__carry_0 (v1_reg_1[25]),
        .\mult_out_inferred__0/i__carry__3_0 (integrator_z_n_92),
        .s00_axi_aclk(s00_axi_aclk),
        .v1_reg(v1_reg[0]),
        .\v1_reg[11] ({multiplier_y_n_52,multiplier_y_n_53,multiplier_y_n_54,multiplier_y_n_55}),
        .\v1_reg[15] ({multiplier_y_n_48,multiplier_y_n_49,multiplier_y_n_50,multiplier_y_n_51}),
        .\v1_reg[19] ({multiplier_y_n_44,multiplier_y_n_45,multiplier_y_n_46,multiplier_y_n_47}),
        .\v1_reg[23] ({multiplier_y_n_40,multiplier_y_n_41,multiplier_y_n_42,multiplier_y_n_43}),
        .\v1_reg[26] ({multiplier_y_n_2,multiplier_y_n_3,multiplier_y_n_4}),
        .\v1_reg[26]_0 (multiplier_y_n_5),
        .\v1_reg[26]_1 ({multiplier_y_n_37,multiplier_y_n_38,multiplier_y_n_39}),
        .\v1_reg[26]_2 (v1_reg_0[26]),
        .\v1_reg[26]_3 (v1_reg_0[25:24]),
        .\v1_reg[26]_4 ({funct_y_carry__5_n_5,funct_y_carry__5_n_6,funct_y_carry__5_n_7}),
        .\v1_reg[26]_5 (solver_reset),
        .\v1_reg[26]_6 (integrator_y_n_101),
        .v1_reg_0(v1_reg_0[23:8]),
        .v1new(v1new));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signed_mult_3 multiplier_z1
       (.B({integrator_y_n_67,integrator_y_n_68,integrator_y_n_69,integrator_y_n_70,integrator_y_n_71,integrator_y_n_72,integrator_y_n_73,integrator_y_n_74,integrator_y_n_75,integrator_y_n_76}),
        .CO(multiplier_z1_n_1),
        .DI({integrator_y_n_105,integrator_y_n_106,integrator_x_n_49}),
        .O({multiplier_z2_n_27,multiplier_z2_n_28}),
        .S({integrator_x_n_48,integrator_y_n_99,integrator_y_n_100}),
        .funct_z_carry({multiplier_z2_n_3,multiplier_z2_n_4,multiplier_z2_n_5,multiplier_z2_n_6}),
        .funct_z_carry__0({multiplier_z2_n_7,multiplier_z2_n_8,multiplier_z2_n_9,multiplier_z2_n_10}),
        .funct_z_carry__1({multiplier_z2_n_11,multiplier_z2_n_12,multiplier_z2_n_13,multiplier_z2_n_14}),
        .funct_z_carry__2({multiplier_z2_n_15,multiplier_z2_n_16,multiplier_z2_n_17,multiplier_z2_n_18}),
        .funct_z_carry__3({multiplier_z2_n_19,multiplier_z2_n_20,multiplier_z2_n_21,multiplier_z2_n_22}),
        .funct_z_carry__4({multiplier_z2_n_23,multiplier_z2_n_24,multiplier_z2_n_25,multiplier_z2_n_26}),
        .funct_z_carry__5(multiplier_z2_n_29),
        .i__carry__0_i_2__4_0({integrator_y_n_32,integrator_y_n_33,integrator_y_n_34,integrator_y_n_35}),
        .i__carry__0_i_2__4_1({integrator_y_n_107,integrator_y_n_108,integrator_y_n_109,integrator_y_n_110}),
        .i__carry__1_i_2__4_0({integrator_y_n_94,integrator_y_n_95,integrator_y_n_96,integrator_y_n_97}),
        .i__carry__1_i_2__4_1({integrator_y_n_111,integrator_y_n_112,integrator_y_n_113,integrator_y_n_114}),
        .i__carry__3_i_2__2_0(integrator_x_n_51),
        .i__carry_i_2__4_0({integrator_y_n_27,integrator_y_n_28,integrator_y_n_29,integrator_y_n_30}),
        .mult_out_0(multiplier_z1_n_0),
        .mult_out_1({integrator_y_n_77,integrator_y_n_78,integrator_y_n_79,integrator_y_n_80,integrator_y_n_81,integrator_y_n_82,integrator_y_n_83,integrator_y_n_84,integrator_y_n_85,integrator_y_n_86,integrator_y_n_87,integrator_y_n_88,integrator_y_n_89,integrator_y_n_90,integrator_y_n_91,integrator_y_n_92,integrator_y_n_93}),
        .mult_out__11_carry__0_i_5__0(integrator_y_n_31),
        .mult_out__1_0(mult_out),
        .mult_out__1_1({multiplier_z1_n_32,multiplier_z1_n_33,multiplier_z1_n_34}),
        .mult_out__1_2({multiplier_z1_n_35,multiplier_z1_n_36,multiplier_z1_n_37,multiplier_z1_n_38}),
        .mult_out__1_3({multiplier_z1_n_39,multiplier_z1_n_40,multiplier_z1_n_41,multiplier_z1_n_42}),
        .mult_out__1_4({multiplier_z1_n_43,multiplier_z1_n_44,multiplier_z1_n_45,multiplier_z1_n_46}),
        .mult_out__1_5({multiplier_z1_n_47,multiplier_z1_n_48,multiplier_z1_n_49,multiplier_z1_n_50}),
        .mult_out__1_6({multiplier_z1_n_51,multiplier_z1_n_52,multiplier_z1_n_53,multiplier_z1_n_54}),
        .mult_out__1_7({multiplier_z1_n_55,multiplier_z1_n_56,multiplier_z1_n_57,multiplier_z1_n_58}),
        .\mult_out_inferred__0/i__carry_0 (v1_reg_0[17]),
        .\mult_out_inferred__0/i__carry_1 (v1_reg_1[25]),
        .\mult_out_inferred__0/i__carry__3_0 (integrator_y_n_102),
        .s00_axi_aclk(s00_axi_aclk),
        .v1_reg(v1_reg[25:20]),
        .\v1_reg[17] ({multiplier_z1_n_2,multiplier_z1_n_3,multiplier_z1_n_4}),
        .\v1_reg[23] ({multiplier_z1_n_59,multiplier_z1_n_60,multiplier_z1_n_61,multiplier_z1_n_62}),
        .\v1_reg[23]_0 ({funct_z_carry__4_n_4,funct_z_carry__4_n_5,funct_z_carry__4_n_6,funct_z_carry__4_n_7}),
        .\v1_reg[23]_1 (integrator_z_n_93),
        .\v1_reg[25] (multiplier_z1_n_5),
        .\v1_reg[26] ({multiplier_z1_n_63,multiplier_z1_n_64,multiplier_z1_n_65}),
        .\v1_reg[26]_0 ({funct_z_carry__5_n_5,funct_z_carry__5_n_6,funct_z_carry__5_n_7}),
        .\v1_reg[26]_1 (v1_reg[26]),
        .\v1_reg[26]_2 (solver_reset),
        .v1new(v1new));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_signed_mult_4 multiplier_z2
       (.O({multiplier_z2_n_27,multiplier_z2_n_28}),
        .P({multiplier_z2_n_0,multiplier_z2_n_1,multiplier_z2_n_2}),
        .i__carry__3_i_2__0_0(integrator_z_n_94),
        .i__carry__6_i_2_0(v1_reg[26]),
        .i__carry__6_i_2_1(integrator_z_n_95),
        .i__carry__7_i_2_0(integrator_z_n_91),
        .i__carry__7_i_2_1(integrator_z_n_62),
        .i__carry_i_1_0({integrator_z_n_63,integrator_z_n_64}),
        .mult_out_0({integrator_z_n_66,integrator_z_n_67}),
        .mult_out__0_0({integrator_z_n_68,integrator_z_n_69,integrator_z_n_70,integrator_z_n_71,integrator_z_n_72,integrator_z_n_73,integrator_z_n_74,integrator_z_n_75,integrator_z_n_76,integrator_z_n_77,integrator_z_n_78,integrator_z_n_79,integrator_z_n_80,integrator_z_n_81,integrator_z_n_82,integrator_z_n_83,integrator_z_n_84}),
        .mult_out__1_0({multiplier_z2_n_3,multiplier_z2_n_4,multiplier_z2_n_5,multiplier_z2_n_6}),
        .mult_out__1_1({multiplier_z2_n_7,multiplier_z2_n_8,multiplier_z2_n_9,multiplier_z2_n_10}),
        .mult_out__1_2({multiplier_z2_n_11,multiplier_z2_n_12,multiplier_z2_n_13,multiplier_z2_n_14}),
        .mult_out__1_3({multiplier_z2_n_15,multiplier_z2_n_16,multiplier_z2_n_17,multiplier_z2_n_18}),
        .mult_out__1_4({multiplier_z2_n_19,multiplier_z2_n_20,multiplier_z2_n_21,multiplier_z2_n_22}),
        .mult_out__1_5({multiplier_z2_n_23,multiplier_z2_n_24,multiplier_z2_n_25,multiplier_z2_n_26}),
        .mult_out__1_6(multiplier_z2_n_29),
        .s00_axi_aclk(s00_axi_aclk),
        .v1_reg(v1_reg[25]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
