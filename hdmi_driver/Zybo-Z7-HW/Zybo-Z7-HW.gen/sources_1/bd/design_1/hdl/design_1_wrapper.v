//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Sun Sep 13 19:05:05 2026
//Host        : EN-EC-LPH238-59 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FCLK_CLK0,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    hdmi_out_clk_n,
    hdmi_out_clk_p,
    hdmi_out_data_n,
    hdmi_out_data_p,
    hdmi_out_ddc_scl_io,
    hdmi_out_ddc_sda_io,
    peripheral_aresetn,
    x_out_tri_io);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  output FCLK_CLK0;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output hdmi_out_clk_n;
  output hdmi_out_clk_p;
  output [2:0]hdmi_out_data_n;
  output [2:0]hdmi_out_data_p;
  inout hdmi_out_ddc_scl_io;
  inout hdmi_out_ddc_sda_io;
  output [0:0]peripheral_aresetn;
  inout [31:0]x_out_tri_io;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FCLK_CLK0;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire hdmi_out_clk_n;
  wire hdmi_out_clk_p;
  wire [2:0]hdmi_out_data_n;
  wire [2:0]hdmi_out_data_p;
  wire hdmi_out_ddc_scl_i;
  wire hdmi_out_ddc_scl_io;
  wire hdmi_out_ddc_scl_o;
  wire hdmi_out_ddc_scl_t;
  wire hdmi_out_ddc_sda_i;
  wire hdmi_out_ddc_sda_io;
  wire hdmi_out_ddc_sda_o;
  wire hdmi_out_ddc_sda_t;
  wire [0:0]peripheral_aresetn;
  wire [0:0]x_out_tri_i_0;
  wire [1:1]x_out_tri_i_1;
  wire [10:10]x_out_tri_i_10;
  wire [11:11]x_out_tri_i_11;
  wire [12:12]x_out_tri_i_12;
  wire [13:13]x_out_tri_i_13;
  wire [14:14]x_out_tri_i_14;
  wire [15:15]x_out_tri_i_15;
  wire [16:16]x_out_tri_i_16;
  wire [17:17]x_out_tri_i_17;
  wire [18:18]x_out_tri_i_18;
  wire [19:19]x_out_tri_i_19;
  wire [2:2]x_out_tri_i_2;
  wire [20:20]x_out_tri_i_20;
  wire [21:21]x_out_tri_i_21;
  wire [22:22]x_out_tri_i_22;
  wire [23:23]x_out_tri_i_23;
  wire [24:24]x_out_tri_i_24;
  wire [25:25]x_out_tri_i_25;
  wire [26:26]x_out_tri_i_26;
  wire [27:27]x_out_tri_i_27;
  wire [28:28]x_out_tri_i_28;
  wire [29:29]x_out_tri_i_29;
  wire [3:3]x_out_tri_i_3;
  wire [30:30]x_out_tri_i_30;
  wire [31:31]x_out_tri_i_31;
  wire [4:4]x_out_tri_i_4;
  wire [5:5]x_out_tri_i_5;
  wire [6:6]x_out_tri_i_6;
  wire [7:7]x_out_tri_i_7;
  wire [8:8]x_out_tri_i_8;
  wire [9:9]x_out_tri_i_9;
  wire [0:0]x_out_tri_io_0;
  wire [1:1]x_out_tri_io_1;
  wire [10:10]x_out_tri_io_10;
  wire [11:11]x_out_tri_io_11;
  wire [12:12]x_out_tri_io_12;
  wire [13:13]x_out_tri_io_13;
  wire [14:14]x_out_tri_io_14;
  wire [15:15]x_out_tri_io_15;
  wire [16:16]x_out_tri_io_16;
  wire [17:17]x_out_tri_io_17;
  wire [18:18]x_out_tri_io_18;
  wire [19:19]x_out_tri_io_19;
  wire [2:2]x_out_tri_io_2;
  wire [20:20]x_out_tri_io_20;
  wire [21:21]x_out_tri_io_21;
  wire [22:22]x_out_tri_io_22;
  wire [23:23]x_out_tri_io_23;
  wire [24:24]x_out_tri_io_24;
  wire [25:25]x_out_tri_io_25;
  wire [26:26]x_out_tri_io_26;
  wire [27:27]x_out_tri_io_27;
  wire [28:28]x_out_tri_io_28;
  wire [29:29]x_out_tri_io_29;
  wire [3:3]x_out_tri_io_3;
  wire [30:30]x_out_tri_io_30;
  wire [31:31]x_out_tri_io_31;
  wire [4:4]x_out_tri_io_4;
  wire [5:5]x_out_tri_io_5;
  wire [6:6]x_out_tri_io_6;
  wire [7:7]x_out_tri_io_7;
  wire [8:8]x_out_tri_io_8;
  wire [9:9]x_out_tri_io_9;
  wire [0:0]x_out_tri_o_0;
  wire [1:1]x_out_tri_o_1;
  wire [10:10]x_out_tri_o_10;
  wire [11:11]x_out_tri_o_11;
  wire [12:12]x_out_tri_o_12;
  wire [13:13]x_out_tri_o_13;
  wire [14:14]x_out_tri_o_14;
  wire [15:15]x_out_tri_o_15;
  wire [16:16]x_out_tri_o_16;
  wire [17:17]x_out_tri_o_17;
  wire [18:18]x_out_tri_o_18;
  wire [19:19]x_out_tri_o_19;
  wire [2:2]x_out_tri_o_2;
  wire [20:20]x_out_tri_o_20;
  wire [21:21]x_out_tri_o_21;
  wire [22:22]x_out_tri_o_22;
  wire [23:23]x_out_tri_o_23;
  wire [24:24]x_out_tri_o_24;
  wire [25:25]x_out_tri_o_25;
  wire [26:26]x_out_tri_o_26;
  wire [27:27]x_out_tri_o_27;
  wire [28:28]x_out_tri_o_28;
  wire [29:29]x_out_tri_o_29;
  wire [3:3]x_out_tri_o_3;
  wire [30:30]x_out_tri_o_30;
  wire [31:31]x_out_tri_o_31;
  wire [4:4]x_out_tri_o_4;
  wire [5:5]x_out_tri_o_5;
  wire [6:6]x_out_tri_o_6;
  wire [7:7]x_out_tri_o_7;
  wire [8:8]x_out_tri_o_8;
  wire [9:9]x_out_tri_o_9;
  wire [0:0]x_out_tri_t_0;
  wire [1:1]x_out_tri_t_1;
  wire [10:10]x_out_tri_t_10;
  wire [11:11]x_out_tri_t_11;
  wire [12:12]x_out_tri_t_12;
  wire [13:13]x_out_tri_t_13;
  wire [14:14]x_out_tri_t_14;
  wire [15:15]x_out_tri_t_15;
  wire [16:16]x_out_tri_t_16;
  wire [17:17]x_out_tri_t_17;
  wire [18:18]x_out_tri_t_18;
  wire [19:19]x_out_tri_t_19;
  wire [2:2]x_out_tri_t_2;
  wire [20:20]x_out_tri_t_20;
  wire [21:21]x_out_tri_t_21;
  wire [22:22]x_out_tri_t_22;
  wire [23:23]x_out_tri_t_23;
  wire [24:24]x_out_tri_t_24;
  wire [25:25]x_out_tri_t_25;
  wire [26:26]x_out_tri_t_26;
  wire [27:27]x_out_tri_t_27;
  wire [28:28]x_out_tri_t_28;
  wire [29:29]x_out_tri_t_29;
  wire [3:3]x_out_tri_t_3;
  wire [30:30]x_out_tri_t_30;
  wire [31:31]x_out_tri_t_31;
  wire [4:4]x_out_tri_t_4;
  wire [5:5]x_out_tri_t_5;
  wire [6:6]x_out_tri_t_6;
  wire [7:7]x_out_tri_t_7;
  wire [8:8]x_out_tri_t_8;
  wire [9:9]x_out_tri_t_9;

  design_1 design_1_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FCLK_CLK0(FCLK_CLK0),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .hdmi_out_clk_n(hdmi_out_clk_n),
        .hdmi_out_clk_p(hdmi_out_clk_p),
        .hdmi_out_data_n(hdmi_out_data_n),
        .hdmi_out_data_p(hdmi_out_data_p),
        .hdmi_out_ddc_scl_i(hdmi_out_ddc_scl_i),
        .hdmi_out_ddc_scl_o(hdmi_out_ddc_scl_o),
        .hdmi_out_ddc_scl_t(hdmi_out_ddc_scl_t),
        .hdmi_out_ddc_sda_i(hdmi_out_ddc_sda_i),
        .hdmi_out_ddc_sda_o(hdmi_out_ddc_sda_o),
        .hdmi_out_ddc_sda_t(hdmi_out_ddc_sda_t),
        .peripheral_aresetn(peripheral_aresetn),
        .x_out_tri_i({x_out_tri_i_31,x_out_tri_i_30,x_out_tri_i_29,x_out_tri_i_28,x_out_tri_i_27,x_out_tri_i_26,x_out_tri_i_25,x_out_tri_i_24,x_out_tri_i_23,x_out_tri_i_22,x_out_tri_i_21,x_out_tri_i_20,x_out_tri_i_19,x_out_tri_i_18,x_out_tri_i_17,x_out_tri_i_16,x_out_tri_i_15,x_out_tri_i_14,x_out_tri_i_13,x_out_tri_i_12,x_out_tri_i_11,x_out_tri_i_10,x_out_tri_i_9,x_out_tri_i_8,x_out_tri_i_7,x_out_tri_i_6,x_out_tri_i_5,x_out_tri_i_4,x_out_tri_i_3,x_out_tri_i_2,x_out_tri_i_1,x_out_tri_i_0}),
        .x_out_tri_o({x_out_tri_o_31,x_out_tri_o_30,x_out_tri_o_29,x_out_tri_o_28,x_out_tri_o_27,x_out_tri_o_26,x_out_tri_o_25,x_out_tri_o_24,x_out_tri_o_23,x_out_tri_o_22,x_out_tri_o_21,x_out_tri_o_20,x_out_tri_o_19,x_out_tri_o_18,x_out_tri_o_17,x_out_tri_o_16,x_out_tri_o_15,x_out_tri_o_14,x_out_tri_o_13,x_out_tri_o_12,x_out_tri_o_11,x_out_tri_o_10,x_out_tri_o_9,x_out_tri_o_8,x_out_tri_o_7,x_out_tri_o_6,x_out_tri_o_5,x_out_tri_o_4,x_out_tri_o_3,x_out_tri_o_2,x_out_tri_o_1,x_out_tri_o_0}),
        .x_out_tri_t({x_out_tri_t_31,x_out_tri_t_30,x_out_tri_t_29,x_out_tri_t_28,x_out_tri_t_27,x_out_tri_t_26,x_out_tri_t_25,x_out_tri_t_24,x_out_tri_t_23,x_out_tri_t_22,x_out_tri_t_21,x_out_tri_t_20,x_out_tri_t_19,x_out_tri_t_18,x_out_tri_t_17,x_out_tri_t_16,x_out_tri_t_15,x_out_tri_t_14,x_out_tri_t_13,x_out_tri_t_12,x_out_tri_t_11,x_out_tri_t_10,x_out_tri_t_9,x_out_tri_t_8,x_out_tri_t_7,x_out_tri_t_6,x_out_tri_t_5,x_out_tri_t_4,x_out_tri_t_3,x_out_tri_t_2,x_out_tri_t_1,x_out_tri_t_0}));
  IOBUF hdmi_out_ddc_scl_iobuf
       (.I(hdmi_out_ddc_scl_o),
        .IO(hdmi_out_ddc_scl_io),
        .O(hdmi_out_ddc_scl_i),
        .T(hdmi_out_ddc_scl_t));
  IOBUF hdmi_out_ddc_sda_iobuf
       (.I(hdmi_out_ddc_sda_o),
        .IO(hdmi_out_ddc_sda_io),
        .O(hdmi_out_ddc_sda_i),
        .T(hdmi_out_ddc_sda_t));
  IOBUF x_out_tri_iobuf_0
       (.I(x_out_tri_o_0),
        .IO(x_out_tri_io[0]),
        .O(x_out_tri_i_0),
        .T(x_out_tri_t_0));
  IOBUF x_out_tri_iobuf_1
       (.I(x_out_tri_o_1),
        .IO(x_out_tri_io[1]),
        .O(x_out_tri_i_1),
        .T(x_out_tri_t_1));
  IOBUF x_out_tri_iobuf_10
       (.I(x_out_tri_o_10),
        .IO(x_out_tri_io[10]),
        .O(x_out_tri_i_10),
        .T(x_out_tri_t_10));
  IOBUF x_out_tri_iobuf_11
       (.I(x_out_tri_o_11),
        .IO(x_out_tri_io[11]),
        .O(x_out_tri_i_11),
        .T(x_out_tri_t_11));
  IOBUF x_out_tri_iobuf_12
       (.I(x_out_tri_o_12),
        .IO(x_out_tri_io[12]),
        .O(x_out_tri_i_12),
        .T(x_out_tri_t_12));
  IOBUF x_out_tri_iobuf_13
       (.I(x_out_tri_o_13),
        .IO(x_out_tri_io[13]),
        .O(x_out_tri_i_13),
        .T(x_out_tri_t_13));
  IOBUF x_out_tri_iobuf_14
       (.I(x_out_tri_o_14),
        .IO(x_out_tri_io[14]),
        .O(x_out_tri_i_14),
        .T(x_out_tri_t_14));
  IOBUF x_out_tri_iobuf_15
       (.I(x_out_tri_o_15),
        .IO(x_out_tri_io[15]),
        .O(x_out_tri_i_15),
        .T(x_out_tri_t_15));
  IOBUF x_out_tri_iobuf_16
       (.I(x_out_tri_o_16),
        .IO(x_out_tri_io[16]),
        .O(x_out_tri_i_16),
        .T(x_out_tri_t_16));
  IOBUF x_out_tri_iobuf_17
       (.I(x_out_tri_o_17),
        .IO(x_out_tri_io[17]),
        .O(x_out_tri_i_17),
        .T(x_out_tri_t_17));
  IOBUF x_out_tri_iobuf_18
       (.I(x_out_tri_o_18),
        .IO(x_out_tri_io[18]),
        .O(x_out_tri_i_18),
        .T(x_out_tri_t_18));
  IOBUF x_out_tri_iobuf_19
       (.I(x_out_tri_o_19),
        .IO(x_out_tri_io[19]),
        .O(x_out_tri_i_19),
        .T(x_out_tri_t_19));
  IOBUF x_out_tri_iobuf_2
       (.I(x_out_tri_o_2),
        .IO(x_out_tri_io[2]),
        .O(x_out_tri_i_2),
        .T(x_out_tri_t_2));
  IOBUF x_out_tri_iobuf_20
       (.I(x_out_tri_o_20),
        .IO(x_out_tri_io[20]),
        .O(x_out_tri_i_20),
        .T(x_out_tri_t_20));
  IOBUF x_out_tri_iobuf_21
       (.I(x_out_tri_o_21),
        .IO(x_out_tri_io[21]),
        .O(x_out_tri_i_21),
        .T(x_out_tri_t_21));
  IOBUF x_out_tri_iobuf_22
       (.I(x_out_tri_o_22),
        .IO(x_out_tri_io[22]),
        .O(x_out_tri_i_22),
        .T(x_out_tri_t_22));
  IOBUF x_out_tri_iobuf_23
       (.I(x_out_tri_o_23),
        .IO(x_out_tri_io[23]),
        .O(x_out_tri_i_23),
        .T(x_out_tri_t_23));
  IOBUF x_out_tri_iobuf_24
       (.I(x_out_tri_o_24),
        .IO(x_out_tri_io[24]),
        .O(x_out_tri_i_24),
        .T(x_out_tri_t_24));
  IOBUF x_out_tri_iobuf_25
       (.I(x_out_tri_o_25),
        .IO(x_out_tri_io[25]),
        .O(x_out_tri_i_25),
        .T(x_out_tri_t_25));
  IOBUF x_out_tri_iobuf_26
       (.I(x_out_tri_o_26),
        .IO(x_out_tri_io[26]),
        .O(x_out_tri_i_26),
        .T(x_out_tri_t_26));
  IOBUF x_out_tri_iobuf_27
       (.I(x_out_tri_o_27),
        .IO(x_out_tri_io[27]),
        .O(x_out_tri_i_27),
        .T(x_out_tri_t_27));
  IOBUF x_out_tri_iobuf_28
       (.I(x_out_tri_o_28),
        .IO(x_out_tri_io[28]),
        .O(x_out_tri_i_28),
        .T(x_out_tri_t_28));
  IOBUF x_out_tri_iobuf_29
       (.I(x_out_tri_o_29),
        .IO(x_out_tri_io[29]),
        .O(x_out_tri_i_29),
        .T(x_out_tri_t_29));
  IOBUF x_out_tri_iobuf_3
       (.I(x_out_tri_o_3),
        .IO(x_out_tri_io[3]),
        .O(x_out_tri_i_3),
        .T(x_out_tri_t_3));
  IOBUF x_out_tri_iobuf_30
       (.I(x_out_tri_o_30),
        .IO(x_out_tri_io[30]),
        .O(x_out_tri_i_30),
        .T(x_out_tri_t_30));
  IOBUF x_out_tri_iobuf_31
       (.I(x_out_tri_o_31),
        .IO(x_out_tri_io[31]),
        .O(x_out_tri_i_31),
        .T(x_out_tri_t_31));
  IOBUF x_out_tri_iobuf_4
       (.I(x_out_tri_o_4),
        .IO(x_out_tri_io[4]),
        .O(x_out_tri_i_4),
        .T(x_out_tri_t_4));
  IOBUF x_out_tri_iobuf_5
       (.I(x_out_tri_o_5),
        .IO(x_out_tri_io[5]),
        .O(x_out_tri_i_5),
        .T(x_out_tri_t_5));
  IOBUF x_out_tri_iobuf_6
       (.I(x_out_tri_o_6),
        .IO(x_out_tri_io[6]),
        .O(x_out_tri_i_6),
        .T(x_out_tri_t_6));
  IOBUF x_out_tri_iobuf_7
       (.I(x_out_tri_o_7),
        .IO(x_out_tri_io[7]),
        .O(x_out_tri_i_7),
        .T(x_out_tri_t_7));
  IOBUF x_out_tri_iobuf_8
       (.I(x_out_tri_o_8),
        .IO(x_out_tri_io[8]),
        .O(x_out_tri_i_8),
        .T(x_out_tri_t_8));
  IOBUF x_out_tri_iobuf_9
       (.I(x_out_tri_o_9),
        .IO(x_out_tri_io[9]),
        .O(x_out_tri_i_9),
        .T(x_out_tri_t_9));
endmodule
