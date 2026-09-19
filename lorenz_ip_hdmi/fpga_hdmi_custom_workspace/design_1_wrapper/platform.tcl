platform generate -domains 
platform generate
platform active {design_1_wrapper}
platform config -updatehw {/home/zkarim28/fpga_hdmi_custom/Zybo-Z7-HW/hdmi_with_hw_counter.xsa}
platform generate
platform config -updatehw {/home/zkarim28/fpga_hdmi_custom/Zybo-Z7-HW/lorenz_as_ip_hdmi.xsa}
platform generate -domains 
platform active {design_1_wrapper}
platform config -updatehw {/home/zkarim28/Meng/MEng_ZYBO/lorenz_ip_hdmi/fpga_hdmi_custom/Zybo-Z7-HW/lorenz_ip_hdmi_9_17.xsa}
platform generate -domains 
platform active {design_1_wrapper}
platform config -updatehw {/home/zkarim28/Meng/MEng_ZYBO/lorenz_ip_hdmi/fpga_hdmi_custom/Zybo-Z7-HW/down_counter_to_hdmi.xsa}
bsp reload
domain active {domain_ps7_cortexa9_0}
bsp reload
platform generate -domains domain_ps7_cortexa9_0,zynq_fsbl 
platform active {design_1_wrapper}
platform generate
platform config -updatehw {/home/zkarim28/Meng/MEng_ZYBO/lorenz_ip_hdmi/fpga_hdmi_custom/Zybo-Z7-HW/lorenz_ip_hdmi_9_17.xsa}
platform generate -domains 
platform config -updatehw {/home/zkarim28/Meng/MEng_ZYBO/lorenz_ip_hdmi/fpga_hdmi_custom/Zybo-Z7-HW/lorenz_only_hdmi_9_19.xsa}
platform generate -domains 
