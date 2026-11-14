# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\zk67\MEng_ZYBO\Lab2_Workstation\Mandelbrot_workspace_workstation\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\zk67\MEng_ZYBO\Lab2_Workstation\Mandelbrot_workspace_workstation\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {C:\Users\zk67\MEng_ZYBO\Lab2_Workstation\Mandelbrot_hdmi\Zybo-Z7-HW\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/zk67/MEng_ZYBO/Lab2_Workstation/Mandelbrot_workspace_workstation}

platform write
platform generate -domains 
platform active {design_1_wrapper}
platform generate
domain active {zynq_fsbl}
bsp reload
domain remove standalone_domain
platform generate -domains 
platform write
domain create -name {domain_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -arch {32-bit} -display-name {domain_ps7_cortexa9_0} -desc {} -runtime {cpp}
platform generate -domains 
platform write
domain -report -json
platform clean
platform generate
platform generate
