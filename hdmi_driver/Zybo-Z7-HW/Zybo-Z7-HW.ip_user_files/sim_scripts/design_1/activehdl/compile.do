transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_15
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_17
vlib activehdl/processing_system7_vip_v1_0_19
vlib activehdl/generic_baseblocks_v2_1_2
vlib activehdl/axi_register_slice_v2_1_31
vlib activehdl/fifo_generator_v13_2_10
vlib activehdl/axi_data_fifo_v2_1_30
vlib activehdl/axi_crossbar_v2_1_32
vlib activehdl/lib_pkg_v1_0_4
vlib activehdl/lib_fifo_v1_0_19
vlib activehdl/blk_mem_gen_v8_4_8
vlib activehdl/lib_bmg_v1_0_17
vlib activehdl/lib_srl_fifo_v1_0_4
vlib activehdl/axi_datamover_v5_1_33
vlib activehdl/axi_vdma_v6_3_19
vlib activehdl/axis_infrastructure_v1_1_1
vlib activehdl/axis_register_slice_v1_1_31
vlib activehdl/axis_subset_converter_v1_1_31
vlib activehdl/xlconstant_v1_1_9
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/v_tc_v6_1_14
vlib activehdl/v_vid_in_axi4s_v4_0_11
vlib activehdl/v_axi4s_vid_out_v4_0_18
vlib activehdl/v_tc_v6_2_8
vlib activehdl/axi_protocol_converter_v2_1_31

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 activehdl/proc_sys_reset_v5_0_15
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 activehdl/axi_vip_v1_1_17
vmap processing_system7_vip_v1_0_19 activehdl/processing_system7_vip_v1_0_19
vmap generic_baseblocks_v2_1_2 activehdl/generic_baseblocks_v2_1_2
vmap axi_register_slice_v2_1_31 activehdl/axi_register_slice_v2_1_31
vmap fifo_generator_v13_2_10 activehdl/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 activehdl/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 activehdl/axi_crossbar_v2_1_32
vmap lib_pkg_v1_0_4 activehdl/lib_pkg_v1_0_4
vmap lib_fifo_v1_0_19 activehdl/lib_fifo_v1_0_19
vmap blk_mem_gen_v8_4_8 activehdl/blk_mem_gen_v8_4_8
vmap lib_bmg_v1_0_17 activehdl/lib_bmg_v1_0_17
vmap lib_srl_fifo_v1_0_4 activehdl/lib_srl_fifo_v1_0_4
vmap axi_datamover_v5_1_33 activehdl/axi_datamover_v5_1_33
vmap axi_vdma_v6_3_19 activehdl/axi_vdma_v6_3_19
vmap axis_infrastructure_v1_1_1 activehdl/axis_infrastructure_v1_1_1
vmap axis_register_slice_v1_1_31 activehdl/axis_register_slice_v1_1_31
vmap axis_subset_converter_v1_1_31 activehdl/axis_subset_converter_v1_1_31
vmap xlconstant_v1_1_9 activehdl/xlconstant_v1_1_9
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap v_tc_v6_1_14 activehdl/v_tc_v6_1_14
vmap v_vid_in_axi4s_v4_0_11 activehdl/v_vid_in_axi4s_v4_0_11
vmap v_axi4s_vid_out_v4_0_18 activehdl/v_axi4s_vid_out_v4_0_18
vmap v_tc_v6_2_8 activehdl/v_tc_v6_2_8
vmap axi_protocol_converter_v2_1_31 activehdl/axi_protocol_converter_v2_1_31

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"D:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"D:/xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"D:/xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/2a7c/src/mmcme2_drp.v" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ipshared/2a7c/src/SyncAsync.vhd" \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/2a7c/src/axi_dynclk_S00_AXI.vhd" \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/2a7c/src/axi_dynclk.vhd" \
"../../../bd/design_1/ip/design_1_axi_dynclk_0_0/sim/design_1_axi_dynclk_0_0.vhd" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_proc_sys_reset_fclk0_0/sim/design_1_proc_sys_reset_fclk0_0.vhd" \
"../../../bd/design_1/ip/design_1_proc_sys_reset_fclk1_0/sim/design_1_proc_sys_reset_fclk1_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -sv2k12 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_19  -sv2k12 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93  \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/d57c/src/ClockGen.vhd" \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/d57c/src/SyncAsyncReset.vhd" \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/d57c/src/DVI_Constants.vhd" \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/d57c/src/OutputSERDES.vhd" \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/d57c/src/TMDS_Encoder.vhd" \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/d57c/src/rgb2dvi.vhd" \
"../../../bd/design_1/ip/design_1_rgb2dvi_1_0/sim/design_1_rgb2dvi_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_2  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_xbar_2/sim/design_1_xbar_2.v" \
"../../../bd/design_1/ip/design_1_xbar_3/sim/design_1_xbar_3.v" \

vcom -work lib_pkg_v1_0_4 -93  \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_19 -93  \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_8  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_17 -93  \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/3f29/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_33 -93  \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_19  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_19 -93  \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \

vlog -work axis_infrastructure_v1_1_1  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_31  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ca8d/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tdata_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tuser_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tstrb_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tkeep_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tid_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tdest_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/tlast_design_1_axis_subset_converter_out_0.v" \

vlog -work axis_subset_converter_v1_1_31  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/4bab/hdl/axis_subset_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/hdl/top_design_1_axis_subset_converter_out_0.v" \
"../../../bd/design_1/ip/design_1_axis_subset_converter_out_0/sim/design_1_axis_subset_converter_out_0.v" \

vlog -work xlconstant_v1_1_9  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_subset_converter_reset_0/sim/design_1_subset_converter_reset_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work v_tc_v6_1_14 -93  \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/fd54/hdl/v_tc_v6_1_vh_rfs.vhd" \

vlog -work v_vid_in_axi4s_v4_0_11  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/4705/hdl/v_vid_in_axi4s_v4_0_vl_rfs.v" \

vlog -work v_axi4s_vid_out_v4_0_18  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/52cd/hdl/v_axi4s_vid_out_v4_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_v_axi4s_vid_out_0_0/sim/design_1_v_axi4s_vid_out_0_0.v" \

vcom -work v_tc_v6_2_8 -93  \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/5959/hdl/v_tc_v6_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_v_tc_out_0/sim/design_1_v_tc_out_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ipshared/3969/hdl/lorenz_dda_driver_slave_lite_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/3969/hdl/lorenz_dda_driver.v" \
"../../../bd/design_1/ip/design_1_lorenz_dda_driver_0_0/sim/design_1_lorenz_dda_driver_0_0.v" \

vlog -work axi_protocol_converter_v2_1_31  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/b28c/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/a4a8/hdl" "+incdir+../../../../Zybo-Z7-HW.gen/sources_1/bd/design_1/ipshared/434f/hdl" "+incdir+D:/xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l processing_system7_vip_v1_0_19 -l generic_baseblocks_v2_1_2 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l lib_pkg_v1_0_4 -l lib_fifo_v1_0_19 -l blk_mem_gen_v8_4_8 -l lib_bmg_v1_0_17 -l lib_srl_fifo_v1_0_4 -l axi_datamover_v5_1_33 -l axi_vdma_v6_3_19 -l axis_infrastructure_v1_1_1 -l axis_register_slice_v1_1_31 -l axis_subset_converter_v1_1_31 -l xlconstant_v1_1_9 -l axi_lite_ipif_v3_0_4 -l v_tc_v6_1_14 -l v_vid_in_axi4s_v4_0_11 -l v_axi4s_vid_out_v4_0_18 -l v_tc_v6_2_8 -l axi_protocol_converter_v2_1_31 \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_s00_regslice_0/sim/design_1_s00_regslice_0.v" \
"../../../bd/design_1/ip/design_1_s01_regslice_0/sim/design_1_s01_regslice_0.v" \
"../../../bd/design_1/ip/design_1_m00_regslice_0/sim/design_1_m00_regslice_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

