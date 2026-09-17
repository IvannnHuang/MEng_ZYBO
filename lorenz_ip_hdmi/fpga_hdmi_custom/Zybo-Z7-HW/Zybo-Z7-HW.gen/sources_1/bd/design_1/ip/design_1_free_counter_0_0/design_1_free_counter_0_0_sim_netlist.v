// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Sep 16 22:50:03 2026
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/zkarim28/fpga_hdmi_custom/Zybo-Z7-HW/Zybo-Z7-HW.gen/sources_1/bd/design_1/ip/design_1_free_counter_0_0/design_1_free_counter_0_0_sim_netlist.v
// Design      : design_1_free_counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_free_counter_0_0,free_counter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "free_counter,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module design_1_free_counter_0_0
   (s00_axi_awaddr,
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
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

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
  design_1_free_counter_0_0_free_counter inst
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

(* ORIG_REF_NAME = "free_counter" *) 
module design_1_free_counter_0_0_free_counter
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
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
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
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
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

  design_1_free_counter_0_0_free_counter_slave_lite_v1_0_S00_AXI free_counter_slave_lite_v1_0_S00_AXI_inst
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
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "free_counter_slave_lite_v1_0_S00_AXI" *) 
module design_1_free_counter_0_0_free_counter_slave_lite_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_rvalid_reg_0,
    axi_arready_reg_0,
    s00_axi_rdata,
    s00_axi_bvalid,
    s00_axi_wready,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_rready,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_araddr,
    s00_axi_aresetn,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_bready);
  output axi_awready_reg_0;
  output axi_rvalid_reg_0;
  output axi_arready_reg_0;
  output [31:0]s00_axi_rdata;
  output s00_axi_bvalid;
  output s00_axi_wready;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input s00_axi_rready;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input [1:0]s00_axi_araddr;
  input s00_axi_aresetn;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;

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
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr_reg_n_0_[2] ;
  wire \axi_awaddr_reg_n_0_[3] ;
  wire axi_awready0__0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_i_2_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready_i_1_n_0;
  wire \clk_div_counter[0]_i_1_n_0 ;
  wire \clk_div_counter[0]_i_3_n_0 ;
  wire \clk_div_counter[0]_i_4_n_0 ;
  wire \clk_div_counter[0]_i_5_n_0 ;
  wire \clk_div_counter[0]_i_6_n_0 ;
  wire \clk_div_counter[0]_i_7_n_0 ;
  wire \clk_div_counter[0]_i_8_n_0 ;
  wire [26:0]clk_div_counter_reg;
  wire \clk_div_counter_reg[0]_i_2_n_0 ;
  wire \clk_div_counter_reg[0]_i_2_n_1 ;
  wire \clk_div_counter_reg[0]_i_2_n_2 ;
  wire \clk_div_counter_reg[0]_i_2_n_3 ;
  wire \clk_div_counter_reg[0]_i_2_n_4 ;
  wire \clk_div_counter_reg[0]_i_2_n_5 ;
  wire \clk_div_counter_reg[0]_i_2_n_6 ;
  wire \clk_div_counter_reg[0]_i_2_n_7 ;
  wire \clk_div_counter_reg[12]_i_1_n_0 ;
  wire \clk_div_counter_reg[12]_i_1_n_1 ;
  wire \clk_div_counter_reg[12]_i_1_n_2 ;
  wire \clk_div_counter_reg[12]_i_1_n_3 ;
  wire \clk_div_counter_reg[12]_i_1_n_4 ;
  wire \clk_div_counter_reg[12]_i_1_n_5 ;
  wire \clk_div_counter_reg[12]_i_1_n_6 ;
  wire \clk_div_counter_reg[12]_i_1_n_7 ;
  wire \clk_div_counter_reg[16]_i_1_n_0 ;
  wire \clk_div_counter_reg[16]_i_1_n_1 ;
  wire \clk_div_counter_reg[16]_i_1_n_2 ;
  wire \clk_div_counter_reg[16]_i_1_n_3 ;
  wire \clk_div_counter_reg[16]_i_1_n_4 ;
  wire \clk_div_counter_reg[16]_i_1_n_5 ;
  wire \clk_div_counter_reg[16]_i_1_n_6 ;
  wire \clk_div_counter_reg[16]_i_1_n_7 ;
  wire \clk_div_counter_reg[20]_i_1_n_0 ;
  wire \clk_div_counter_reg[20]_i_1_n_1 ;
  wire \clk_div_counter_reg[20]_i_1_n_2 ;
  wire \clk_div_counter_reg[20]_i_1_n_3 ;
  wire \clk_div_counter_reg[20]_i_1_n_4 ;
  wire \clk_div_counter_reg[20]_i_1_n_5 ;
  wire \clk_div_counter_reg[20]_i_1_n_6 ;
  wire \clk_div_counter_reg[20]_i_1_n_7 ;
  wire \clk_div_counter_reg[24]_i_1_n_2 ;
  wire \clk_div_counter_reg[24]_i_1_n_3 ;
  wire \clk_div_counter_reg[24]_i_1_n_5 ;
  wire \clk_div_counter_reg[24]_i_1_n_6 ;
  wire \clk_div_counter_reg[24]_i_1_n_7 ;
  wire \clk_div_counter_reg[4]_i_1_n_0 ;
  wire \clk_div_counter_reg[4]_i_1_n_1 ;
  wire \clk_div_counter_reg[4]_i_1_n_2 ;
  wire \clk_div_counter_reg[4]_i_1_n_3 ;
  wire \clk_div_counter_reg[4]_i_1_n_4 ;
  wire \clk_div_counter_reg[4]_i_1_n_5 ;
  wire \clk_div_counter_reg[4]_i_1_n_6 ;
  wire \clk_div_counter_reg[4]_i_1_n_7 ;
  wire \clk_div_counter_reg[8]_i_1_n_0 ;
  wire \clk_div_counter_reg[8]_i_1_n_1 ;
  wire \clk_div_counter_reg[8]_i_1_n_2 ;
  wire \clk_div_counter_reg[8]_i_1_n_3 ;
  wire \clk_div_counter_reg[8]_i_1_n_4 ;
  wire \clk_div_counter_reg[8]_i_1_n_5 ;
  wire \clk_div_counter_reg[8]_i_1_n_6 ;
  wire \clk_div_counter_reg[8]_i_1_n_7 ;
  wire display_counter;
  wire \display_counter[0]_i_3_n_0 ;
  wire [31:0]display_counter_reg;
  wire \display_counter_reg[0]_i_2_n_0 ;
  wire \display_counter_reg[0]_i_2_n_1 ;
  wire \display_counter_reg[0]_i_2_n_2 ;
  wire \display_counter_reg[0]_i_2_n_3 ;
  wire \display_counter_reg[0]_i_2_n_4 ;
  wire \display_counter_reg[0]_i_2_n_5 ;
  wire \display_counter_reg[0]_i_2_n_6 ;
  wire \display_counter_reg[0]_i_2_n_7 ;
  wire \display_counter_reg[12]_i_1_n_0 ;
  wire \display_counter_reg[12]_i_1_n_1 ;
  wire \display_counter_reg[12]_i_1_n_2 ;
  wire \display_counter_reg[12]_i_1_n_3 ;
  wire \display_counter_reg[12]_i_1_n_4 ;
  wire \display_counter_reg[12]_i_1_n_5 ;
  wire \display_counter_reg[12]_i_1_n_6 ;
  wire \display_counter_reg[12]_i_1_n_7 ;
  wire \display_counter_reg[16]_i_1_n_0 ;
  wire \display_counter_reg[16]_i_1_n_1 ;
  wire \display_counter_reg[16]_i_1_n_2 ;
  wire \display_counter_reg[16]_i_1_n_3 ;
  wire \display_counter_reg[16]_i_1_n_4 ;
  wire \display_counter_reg[16]_i_1_n_5 ;
  wire \display_counter_reg[16]_i_1_n_6 ;
  wire \display_counter_reg[16]_i_1_n_7 ;
  wire \display_counter_reg[20]_i_1_n_0 ;
  wire \display_counter_reg[20]_i_1_n_1 ;
  wire \display_counter_reg[20]_i_1_n_2 ;
  wire \display_counter_reg[20]_i_1_n_3 ;
  wire \display_counter_reg[20]_i_1_n_4 ;
  wire \display_counter_reg[20]_i_1_n_5 ;
  wire \display_counter_reg[20]_i_1_n_6 ;
  wire \display_counter_reg[20]_i_1_n_7 ;
  wire \display_counter_reg[24]_i_1_n_0 ;
  wire \display_counter_reg[24]_i_1_n_1 ;
  wire \display_counter_reg[24]_i_1_n_2 ;
  wire \display_counter_reg[24]_i_1_n_3 ;
  wire \display_counter_reg[24]_i_1_n_4 ;
  wire \display_counter_reg[24]_i_1_n_5 ;
  wire \display_counter_reg[24]_i_1_n_6 ;
  wire \display_counter_reg[24]_i_1_n_7 ;
  wire \display_counter_reg[28]_i_1_n_1 ;
  wire \display_counter_reg[28]_i_1_n_2 ;
  wire \display_counter_reg[28]_i_1_n_3 ;
  wire \display_counter_reg[28]_i_1_n_4 ;
  wire \display_counter_reg[28]_i_1_n_5 ;
  wire \display_counter_reg[28]_i_1_n_6 ;
  wire \display_counter_reg[28]_i_1_n_7 ;
  wire \display_counter_reg[4]_i_1_n_0 ;
  wire \display_counter_reg[4]_i_1_n_1 ;
  wire \display_counter_reg[4]_i_1_n_2 ;
  wire \display_counter_reg[4]_i_1_n_3 ;
  wire \display_counter_reg[4]_i_1_n_4 ;
  wire \display_counter_reg[4]_i_1_n_5 ;
  wire \display_counter_reg[4]_i_1_n_6 ;
  wire \display_counter_reg[4]_i_1_n_7 ;
  wire \display_counter_reg[8]_i_1_n_0 ;
  wire \display_counter_reg[8]_i_1_n_1 ;
  wire \display_counter_reg[8]_i_1_n_2 ;
  wire \display_counter_reg[8]_i_1_n_3 ;
  wire \display_counter_reg[8]_i_1_n_4 ;
  wire \display_counter_reg[8]_i_1_n_5 ;
  wire \display_counter_reg[8]_i_1_n_6 ;
  wire \display_counter_reg[8]_i_1_n_7 ;
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
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[31]_i_2_n_0 ;
  wire [1:0]state_read;
  wire [1:0]state_write;
  wire [3:2]\NLW_clk_div_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_clk_div_counter_reg[24]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_display_counter_reg[28]_i_1_CO_UNCONNECTED ;

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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(state_write[1]),
        .I2(state_write[0]),
        .I3(s00_axi_awvalid),
        .I4(axi_awready_reg_0),
        .I5(\axi_awaddr_reg_n_0_[3] ),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(\axi_awaddr_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
    .INIT(64'h80000000FFFFFFFF)) 
    \clk_div_counter[0]_i_1 
       (.I0(\clk_div_counter[0]_i_3_n_0 ),
        .I1(\clk_div_counter[0]_i_4_n_0 ),
        .I2(\clk_div_counter[0]_i_5_n_0 ),
        .I3(\clk_div_counter[0]_i_6_n_0 ),
        .I4(\clk_div_counter[0]_i_7_n_0 ),
        .I5(s00_axi_aresetn),
        .O(\clk_div_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \clk_div_counter[0]_i_3 
       (.I0(clk_div_counter_reg[23]),
        .I1(clk_div_counter_reg[24]),
        .I2(clk_div_counter_reg[21]),
        .I3(clk_div_counter_reg[22]),
        .I4(clk_div_counter_reg[25]),
        .I5(clk_div_counter_reg[26]),
        .O(\clk_div_counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \clk_div_counter[0]_i_4 
       (.I0(clk_div_counter_reg[11]),
        .I1(clk_div_counter_reg[12]),
        .I2(clk_div_counter_reg[9]),
        .I3(clk_div_counter_reg[10]),
        .I4(clk_div_counter_reg[14]),
        .I5(clk_div_counter_reg[13]),
        .O(\clk_div_counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \clk_div_counter[0]_i_5 
       (.I0(clk_div_counter_reg[18]),
        .I1(clk_div_counter_reg[17]),
        .I2(clk_div_counter_reg[15]),
        .I3(clk_div_counter_reg[16]),
        .I4(clk_div_counter_reg[19]),
        .I5(clk_div_counter_reg[20]),
        .O(\clk_div_counter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \clk_div_counter[0]_i_6 
       (.I0(clk_div_counter_reg[5]),
        .I1(clk_div_counter_reg[6]),
        .I2(clk_div_counter_reg[3]),
        .I3(clk_div_counter_reg[4]),
        .I4(clk_div_counter_reg[8]),
        .I5(clk_div_counter_reg[7]),
        .O(\clk_div_counter[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \clk_div_counter[0]_i_7 
       (.I0(clk_div_counter_reg[2]),
        .I1(clk_div_counter_reg[1]),
        .I2(clk_div_counter_reg[0]),
        .O(\clk_div_counter[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div_counter[0]_i_8 
       (.I0(clk_div_counter_reg[0]),
        .O(\clk_div_counter[0]_i_8_n_0 ));
  FDRE \clk_div_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[0]_i_2_n_7 ),
        .Q(clk_div_counter_reg[0]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  CARRY4 \clk_div_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\clk_div_counter_reg[0]_i_2_n_0 ,\clk_div_counter_reg[0]_i_2_n_1 ,\clk_div_counter_reg[0]_i_2_n_2 ,\clk_div_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_div_counter_reg[0]_i_2_n_4 ,\clk_div_counter_reg[0]_i_2_n_5 ,\clk_div_counter_reg[0]_i_2_n_6 ,\clk_div_counter_reg[0]_i_2_n_7 }),
        .S({clk_div_counter_reg[3:1],\clk_div_counter[0]_i_8_n_0 }));
  FDRE \clk_div_counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[8]_i_1_n_5 ),
        .Q(clk_div_counter_reg[10]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[8]_i_1_n_4 ),
        .Q(clk_div_counter_reg[11]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[12]_i_1_n_7 ),
        .Q(clk_div_counter_reg[12]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  CARRY4 \clk_div_counter_reg[12]_i_1 
       (.CI(\clk_div_counter_reg[8]_i_1_n_0 ),
        .CO({\clk_div_counter_reg[12]_i_1_n_0 ,\clk_div_counter_reg[12]_i_1_n_1 ,\clk_div_counter_reg[12]_i_1_n_2 ,\clk_div_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[12]_i_1_n_4 ,\clk_div_counter_reg[12]_i_1_n_5 ,\clk_div_counter_reg[12]_i_1_n_6 ,\clk_div_counter_reg[12]_i_1_n_7 }),
        .S(clk_div_counter_reg[15:12]));
  FDRE \clk_div_counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[12]_i_1_n_6 ),
        .Q(clk_div_counter_reg[13]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[12]_i_1_n_5 ),
        .Q(clk_div_counter_reg[14]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[12]_i_1_n_4 ),
        .Q(clk_div_counter_reg[15]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[16]_i_1_n_7 ),
        .Q(clk_div_counter_reg[16]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  CARRY4 \clk_div_counter_reg[16]_i_1 
       (.CI(\clk_div_counter_reg[12]_i_1_n_0 ),
        .CO({\clk_div_counter_reg[16]_i_1_n_0 ,\clk_div_counter_reg[16]_i_1_n_1 ,\clk_div_counter_reg[16]_i_1_n_2 ,\clk_div_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[16]_i_1_n_4 ,\clk_div_counter_reg[16]_i_1_n_5 ,\clk_div_counter_reg[16]_i_1_n_6 ,\clk_div_counter_reg[16]_i_1_n_7 }),
        .S(clk_div_counter_reg[19:16]));
  FDRE \clk_div_counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[16]_i_1_n_6 ),
        .Q(clk_div_counter_reg[17]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[16]_i_1_n_5 ),
        .Q(clk_div_counter_reg[18]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[16]_i_1_n_4 ),
        .Q(clk_div_counter_reg[19]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[0]_i_2_n_6 ),
        .Q(clk_div_counter_reg[1]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[20]_i_1_n_7 ),
        .Q(clk_div_counter_reg[20]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  CARRY4 \clk_div_counter_reg[20]_i_1 
       (.CI(\clk_div_counter_reg[16]_i_1_n_0 ),
        .CO({\clk_div_counter_reg[20]_i_1_n_0 ,\clk_div_counter_reg[20]_i_1_n_1 ,\clk_div_counter_reg[20]_i_1_n_2 ,\clk_div_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[20]_i_1_n_4 ,\clk_div_counter_reg[20]_i_1_n_5 ,\clk_div_counter_reg[20]_i_1_n_6 ,\clk_div_counter_reg[20]_i_1_n_7 }),
        .S(clk_div_counter_reg[23:20]));
  FDRE \clk_div_counter_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[20]_i_1_n_6 ),
        .Q(clk_div_counter_reg[21]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[20]_i_1_n_5 ),
        .Q(clk_div_counter_reg[22]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[20]_i_1_n_4 ),
        .Q(clk_div_counter_reg[23]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[24]_i_1_n_7 ),
        .Q(clk_div_counter_reg[24]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  CARRY4 \clk_div_counter_reg[24]_i_1 
       (.CI(\clk_div_counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_clk_div_counter_reg[24]_i_1_CO_UNCONNECTED [3:2],\clk_div_counter_reg[24]_i_1_n_2 ,\clk_div_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_div_counter_reg[24]_i_1_O_UNCONNECTED [3],\clk_div_counter_reg[24]_i_1_n_5 ,\clk_div_counter_reg[24]_i_1_n_6 ,\clk_div_counter_reg[24]_i_1_n_7 }),
        .S({1'b0,clk_div_counter_reg[26:24]}));
  FDRE \clk_div_counter_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[24]_i_1_n_6 ),
        .Q(clk_div_counter_reg[25]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[24]_i_1_n_5 ),
        .Q(clk_div_counter_reg[26]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[0]_i_2_n_5 ),
        .Q(clk_div_counter_reg[2]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[0]_i_2_n_4 ),
        .Q(clk_div_counter_reg[3]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[4]_i_1_n_7 ),
        .Q(clk_div_counter_reg[4]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  CARRY4 \clk_div_counter_reg[4]_i_1 
       (.CI(\clk_div_counter_reg[0]_i_2_n_0 ),
        .CO({\clk_div_counter_reg[4]_i_1_n_0 ,\clk_div_counter_reg[4]_i_1_n_1 ,\clk_div_counter_reg[4]_i_1_n_2 ,\clk_div_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[4]_i_1_n_4 ,\clk_div_counter_reg[4]_i_1_n_5 ,\clk_div_counter_reg[4]_i_1_n_6 ,\clk_div_counter_reg[4]_i_1_n_7 }),
        .S(clk_div_counter_reg[7:4]));
  FDRE \clk_div_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[4]_i_1_n_6 ),
        .Q(clk_div_counter_reg[5]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[4]_i_1_n_5 ),
        .Q(clk_div_counter_reg[6]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[4]_i_1_n_4 ),
        .Q(clk_div_counter_reg[7]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  FDRE \clk_div_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[8]_i_1_n_7 ),
        .Q(clk_div_counter_reg[8]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  CARRY4 \clk_div_counter_reg[8]_i_1 
       (.CI(\clk_div_counter_reg[4]_i_1_n_0 ),
        .CO({\clk_div_counter_reg[8]_i_1_n_0 ,\clk_div_counter_reg[8]_i_1_n_1 ,\clk_div_counter_reg[8]_i_1_n_2 ,\clk_div_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_div_counter_reg[8]_i_1_n_4 ,\clk_div_counter_reg[8]_i_1_n_5 ,\clk_div_counter_reg[8]_i_1_n_6 ,\clk_div_counter_reg[8]_i_1_n_7 }),
        .S(clk_div_counter_reg[11:8]));
  FDRE \clk_div_counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\clk_div_counter_reg[8]_i_1_n_6 ),
        .Q(clk_div_counter_reg[9]),
        .R(\clk_div_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \display_counter[0]_i_1 
       (.I0(\clk_div_counter[0]_i_7_n_0 ),
        .I1(\clk_div_counter[0]_i_6_n_0 ),
        .I2(\clk_div_counter[0]_i_5_n_0 ),
        .I3(\clk_div_counter[0]_i_4_n_0 ),
        .I4(\clk_div_counter[0]_i_3_n_0 ),
        .O(display_counter));
  LUT1 #(
    .INIT(2'h1)) 
    \display_counter[0]_i_3 
       (.I0(display_counter_reg[0]),
        .O(\display_counter[0]_i_3_n_0 ));
  FDRE \display_counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[0]_i_2_n_7 ),
        .Q(display_counter_reg[0]),
        .R(axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \display_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\display_counter_reg[0]_i_2_n_0 ,\display_counter_reg[0]_i_2_n_1 ,\display_counter_reg[0]_i_2_n_2 ,\display_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\display_counter_reg[0]_i_2_n_4 ,\display_counter_reg[0]_i_2_n_5 ,\display_counter_reg[0]_i_2_n_6 ,\display_counter_reg[0]_i_2_n_7 }),
        .S({display_counter_reg[3:1],\display_counter[0]_i_3_n_0 }));
  FDRE \display_counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[8]_i_1_n_5 ),
        .Q(display_counter_reg[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[8]_i_1_n_4 ),
        .Q(display_counter_reg[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[12]_i_1_n_7 ),
        .Q(display_counter_reg[12]),
        .R(axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \display_counter_reg[12]_i_1 
       (.CI(\display_counter_reg[8]_i_1_n_0 ),
        .CO({\display_counter_reg[12]_i_1_n_0 ,\display_counter_reg[12]_i_1_n_1 ,\display_counter_reg[12]_i_1_n_2 ,\display_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\display_counter_reg[12]_i_1_n_4 ,\display_counter_reg[12]_i_1_n_5 ,\display_counter_reg[12]_i_1_n_6 ,\display_counter_reg[12]_i_1_n_7 }),
        .S(display_counter_reg[15:12]));
  FDRE \display_counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[12]_i_1_n_6 ),
        .Q(display_counter_reg[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[12]_i_1_n_5 ),
        .Q(display_counter_reg[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[12]_i_1_n_4 ),
        .Q(display_counter_reg[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[16]_i_1_n_7 ),
        .Q(display_counter_reg[16]),
        .R(axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \display_counter_reg[16]_i_1 
       (.CI(\display_counter_reg[12]_i_1_n_0 ),
        .CO({\display_counter_reg[16]_i_1_n_0 ,\display_counter_reg[16]_i_1_n_1 ,\display_counter_reg[16]_i_1_n_2 ,\display_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\display_counter_reg[16]_i_1_n_4 ,\display_counter_reg[16]_i_1_n_5 ,\display_counter_reg[16]_i_1_n_6 ,\display_counter_reg[16]_i_1_n_7 }),
        .S(display_counter_reg[19:16]));
  FDRE \display_counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[16]_i_1_n_6 ),
        .Q(display_counter_reg[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[16]_i_1_n_5 ),
        .Q(display_counter_reg[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[16]_i_1_n_4 ),
        .Q(display_counter_reg[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[0]_i_2_n_6 ),
        .Q(display_counter_reg[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[20] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[20]_i_1_n_7 ),
        .Q(display_counter_reg[20]),
        .R(axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \display_counter_reg[20]_i_1 
       (.CI(\display_counter_reg[16]_i_1_n_0 ),
        .CO({\display_counter_reg[20]_i_1_n_0 ,\display_counter_reg[20]_i_1_n_1 ,\display_counter_reg[20]_i_1_n_2 ,\display_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\display_counter_reg[20]_i_1_n_4 ,\display_counter_reg[20]_i_1_n_5 ,\display_counter_reg[20]_i_1_n_6 ,\display_counter_reg[20]_i_1_n_7 }),
        .S(display_counter_reg[23:20]));
  FDRE \display_counter_reg[21] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[20]_i_1_n_6 ),
        .Q(display_counter_reg[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[22] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[20]_i_1_n_5 ),
        .Q(display_counter_reg[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[23] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[20]_i_1_n_4 ),
        .Q(display_counter_reg[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[24] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[24]_i_1_n_7 ),
        .Q(display_counter_reg[24]),
        .R(axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \display_counter_reg[24]_i_1 
       (.CI(\display_counter_reg[20]_i_1_n_0 ),
        .CO({\display_counter_reg[24]_i_1_n_0 ,\display_counter_reg[24]_i_1_n_1 ,\display_counter_reg[24]_i_1_n_2 ,\display_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\display_counter_reg[24]_i_1_n_4 ,\display_counter_reg[24]_i_1_n_5 ,\display_counter_reg[24]_i_1_n_6 ,\display_counter_reg[24]_i_1_n_7 }),
        .S(display_counter_reg[27:24]));
  FDRE \display_counter_reg[25] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[24]_i_1_n_6 ),
        .Q(display_counter_reg[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[26] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[24]_i_1_n_5 ),
        .Q(display_counter_reg[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[27] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[24]_i_1_n_4 ),
        .Q(display_counter_reg[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[28] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[28]_i_1_n_7 ),
        .Q(display_counter_reg[28]),
        .R(axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \display_counter_reg[28]_i_1 
       (.CI(\display_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_display_counter_reg[28]_i_1_CO_UNCONNECTED [3],\display_counter_reg[28]_i_1_n_1 ,\display_counter_reg[28]_i_1_n_2 ,\display_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\display_counter_reg[28]_i_1_n_4 ,\display_counter_reg[28]_i_1_n_5 ,\display_counter_reg[28]_i_1_n_6 ,\display_counter_reg[28]_i_1_n_7 }),
        .S(display_counter_reg[31:28]));
  FDRE \display_counter_reg[29] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[28]_i_1_n_6 ),
        .Q(display_counter_reg[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[0]_i_2_n_5 ),
        .Q(display_counter_reg[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[30] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[28]_i_1_n_5 ),
        .Q(display_counter_reg[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[31] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[28]_i_1_n_4 ),
        .Q(display_counter_reg[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[0]_i_2_n_4 ),
        .Q(display_counter_reg[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[4]_i_1_n_7 ),
        .Q(display_counter_reg[4]),
        .R(axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \display_counter_reg[4]_i_1 
       (.CI(\display_counter_reg[0]_i_2_n_0 ),
        .CO({\display_counter_reg[4]_i_1_n_0 ,\display_counter_reg[4]_i_1_n_1 ,\display_counter_reg[4]_i_1_n_2 ,\display_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\display_counter_reg[4]_i_1_n_4 ,\display_counter_reg[4]_i_1_n_5 ,\display_counter_reg[4]_i_1_n_6 ,\display_counter_reg[4]_i_1_n_7 }),
        .S(display_counter_reg[7:4]));
  FDRE \display_counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[4]_i_1_n_6 ),
        .Q(display_counter_reg[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[4]_i_1_n_5 ),
        .Q(display_counter_reg[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[4]_i_1_n_4 ),
        .Q(display_counter_reg[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \display_counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[8]_i_1_n_7 ),
        .Q(display_counter_reg[8]),
        .R(axi_awready_i_1_n_0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \display_counter_reg[8]_i_1 
       (.CI(\display_counter_reg[4]_i_1_n_0 ),
        .CO({\display_counter_reg[8]_i_1_n_0 ,\display_counter_reg[8]_i_1_n_1 ,\display_counter_reg[8]_i_1_n_2 ,\display_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\display_counter_reg[8]_i_1_n_4 ,\display_counter_reg[8]_i_1_n_5 ,\display_counter_reg[8]_i_1_n_6 ,\display_counter_reg[8]_i_1_n_7 }),
        .S(display_counter_reg[11:8]));
  FDRE \display_counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(display_counter),
        .D(\display_counter_reg[8]_i_1_n_6 ),
        .Q(display_counter_reg[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[0]_INST_0 
       (.I0(slv_reg3[0]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[0]),
        .I4(slv_reg1[0]),
        .I5(display_counter_reg[0]),
        .O(s00_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[10]_INST_0 
       (.I0(slv_reg3[10]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[10]),
        .I4(slv_reg1[10]),
        .I5(display_counter_reg[10]),
        .O(s00_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[11]_INST_0 
       (.I0(slv_reg3[11]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[11]),
        .I4(slv_reg1[11]),
        .I5(display_counter_reg[11]),
        .O(s00_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[12]_INST_0 
       (.I0(slv_reg3[12]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[12]),
        .I4(slv_reg1[12]),
        .I5(display_counter_reg[12]),
        .O(s00_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[13]_INST_0 
       (.I0(slv_reg3[13]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[13]),
        .I4(slv_reg1[13]),
        .I5(display_counter_reg[13]),
        .O(s00_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[14]_INST_0 
       (.I0(slv_reg3[14]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[14]),
        .I4(slv_reg1[14]),
        .I5(display_counter_reg[14]),
        .O(s00_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[15]_INST_0 
       (.I0(slv_reg3[15]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[15]),
        .I4(slv_reg1[15]),
        .I5(display_counter_reg[15]),
        .O(s00_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[16]_INST_0 
       (.I0(slv_reg3[16]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[16]),
        .I4(slv_reg1[16]),
        .I5(display_counter_reg[16]),
        .O(s00_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[17]_INST_0 
       (.I0(slv_reg3[17]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[17]),
        .I4(slv_reg1[17]),
        .I5(display_counter_reg[17]),
        .O(s00_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[18]_INST_0 
       (.I0(slv_reg3[18]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[18]),
        .I4(slv_reg1[18]),
        .I5(display_counter_reg[18]),
        .O(s00_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[19]_INST_0 
       (.I0(slv_reg3[19]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[19]),
        .I4(slv_reg1[19]),
        .I5(display_counter_reg[19]),
        .O(s00_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[1]_INST_0 
       (.I0(slv_reg3[1]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[1]),
        .I4(slv_reg1[1]),
        .I5(display_counter_reg[1]),
        .O(s00_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[20]_INST_0 
       (.I0(slv_reg3[20]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[20]),
        .I4(slv_reg1[20]),
        .I5(display_counter_reg[20]),
        .O(s00_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[21]_INST_0 
       (.I0(slv_reg3[21]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[21]),
        .I4(slv_reg1[21]),
        .I5(display_counter_reg[21]),
        .O(s00_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[22]_INST_0 
       (.I0(slv_reg3[22]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[22]),
        .I4(slv_reg1[22]),
        .I5(display_counter_reg[22]),
        .O(s00_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[23]_INST_0 
       (.I0(slv_reg3[23]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[23]),
        .I4(slv_reg1[23]),
        .I5(display_counter_reg[23]),
        .O(s00_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[24]_INST_0 
       (.I0(slv_reg3[24]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[24]),
        .I4(slv_reg1[24]),
        .I5(display_counter_reg[24]),
        .O(s00_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[25]_INST_0 
       (.I0(slv_reg3[25]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[25]),
        .I4(slv_reg1[25]),
        .I5(display_counter_reg[25]),
        .O(s00_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[26]_INST_0 
       (.I0(slv_reg3[26]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[26]),
        .I4(slv_reg1[26]),
        .I5(display_counter_reg[26]),
        .O(s00_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[27]_INST_0 
       (.I0(slv_reg3[27]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[27]),
        .I4(slv_reg1[27]),
        .I5(display_counter_reg[27]),
        .O(s00_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[28]_INST_0 
       (.I0(slv_reg3[28]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[28]),
        .I4(slv_reg1[28]),
        .I5(display_counter_reg[28]),
        .O(s00_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[29]_INST_0 
       (.I0(slv_reg3[29]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[29]),
        .I4(slv_reg1[29]),
        .I5(display_counter_reg[29]),
        .O(s00_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[2]_INST_0 
       (.I0(slv_reg3[2]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[2]),
        .I4(slv_reg1[2]),
        .I5(display_counter_reg[2]),
        .O(s00_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[30]_INST_0 
       (.I0(slv_reg3[30]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[30]),
        .I4(slv_reg1[30]),
        .I5(display_counter_reg[30]),
        .O(s00_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[31]_INST_0 
       (.I0(slv_reg3[31]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[31]),
        .I4(slv_reg1[31]),
        .I5(display_counter_reg[31]),
        .O(s00_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[3]_INST_0 
       (.I0(slv_reg3[3]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[3]),
        .I4(slv_reg1[3]),
        .I5(display_counter_reg[3]),
        .O(s00_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[4]_INST_0 
       (.I0(slv_reg3[4]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[4]),
        .I4(slv_reg1[4]),
        .I5(display_counter_reg[4]),
        .O(s00_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[5]_INST_0 
       (.I0(slv_reg3[5]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[5]),
        .I4(slv_reg1[5]),
        .I5(display_counter_reg[5]),
        .O(s00_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[6]_INST_0 
       (.I0(slv_reg3[6]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[6]),
        .I4(slv_reg1[6]),
        .I5(display_counter_reg[6]),
        .O(s00_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[7]_INST_0 
       (.I0(slv_reg3[7]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[7]),
        .I4(slv_reg1[7]),
        .I5(display_counter_reg[7]),
        .O(s00_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[8]_INST_0 
       (.I0(slv_reg3[8]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[8]),
        .I4(slv_reg1[8]),
        .I5(display_counter_reg[8]),
        .O(s00_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \s00_axi_rdata[9]_INST_0 
       (.I0(slv_reg3[9]),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg2[9]),
        .I4(slv_reg1[9]),
        .I5(display_counter_reg[9]),
        .O(s00_axi_rdata[9]));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg1[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[1]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg1[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg1[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020200000002000)) 
    \slv_reg1[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(\axi_awaddr_reg_n_0_[2] ),
        .I4(s00_axi_awvalid),
        .I5(s00_axi_awaddr[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[1]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[2]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[3]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000808080)) 
    \slv_reg2[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(\slv_reg3[31]_i_2_n_0 ),
        .I2(s00_axi_wstrb[0]),
        .I3(s00_axi_awaddr[0]),
        .I4(s00_axi_awvalid),
        .I5(\axi_awaddr_reg_n_0_[2] ),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h8880008000000000)) 
    \slv_reg3[15]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[1]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h8880008000000000)) 
    \slv_reg3[23]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[2]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h8880008000000000)) 
    \slv_reg3[31]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[3]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
        .O(p_1_in[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \slv_reg3[31]_i_2 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(\axi_awaddr_reg_n_0_[3] ),
        .O(\slv_reg3[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880008000000000)) 
    \slv_reg3[7]_i_1 
       (.I0(s00_axi_wvalid),
        .I1(s00_axi_wstrb[0]),
        .I2(\axi_awaddr_reg_n_0_[2] ),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_awaddr[0]),
        .I5(\slv_reg3[31]_i_2_n_0 ),
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
