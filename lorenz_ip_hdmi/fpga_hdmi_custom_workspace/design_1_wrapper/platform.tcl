platform generate -domains 
platform generate
platform active {design_1_wrapper}
platform config -updatehw {/home/zkarim28/fpga_hdmi_custom/Zybo-Z7-HW/hdmi_with_hw_counter.xsa}
platform generate
platform config -updatehw {/home/zkarim28/fpga_hdmi_custom/Zybo-Z7-HW/lorenz_as_ip_hdmi.xsa}
platform generate -domains 
