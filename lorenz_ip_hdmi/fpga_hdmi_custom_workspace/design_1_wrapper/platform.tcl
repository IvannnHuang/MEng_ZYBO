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
