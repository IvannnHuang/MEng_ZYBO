################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/switch_reader/switch_reader.c 

OBJS += \
./src/switch_reader/switch_reader.o 

C_DEPS += \
./src/switch_reader/switch_reader.d 


# Each subdirectory must supply rules for building sources it contributes
src/switch_reader/%.o: ../src/switch_reader/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -DDEBUG -Wall -O0 -g3 -ID:/Zybo-Z7-SW/src/Zybo-Z7-10-HDMI/src -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I/home/zkarim28/fpga_hdmi_custom_workspace/design_1_wrapper/export/design_1_wrapper/sw/design_1_wrapper/domain_ps7_cortexa9_0/bspinclude/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


