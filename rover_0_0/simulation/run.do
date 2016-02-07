quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "C:/Users/vetal/Desktop/actel source2/rover_0_0"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap SmartFusion2 "C:/Microsemi/Libero_v11.5/Designer/lib/modelsim/precompiled/vhdl/SmartFusion2"
if {[file exists COREUART_LIB/_info]} {
   echo "INFO: Simulation library COREUART_LIB already exists"
} else {
   file delete -force COREUART_LIB 
   vlib COREUART_LIB
}
vmap COREUART_LIB "COREUART_LIB"

vcom -93 -explicit  -work presynth "${PROJECT_DIR}/hdl/BT_resiver.vhd"
vcom -93 -explicit  -work presynth "${PROJECT_DIR}/component/work/TOP/FCCC_0/TOP_FCCC_0_FCCC.vhd"
vcom -93 -explicit  -work presynth "${PROJECT_DIR}/component/work/TOP/OSC_0/TOP_OSC_0_OSC.vhd"
vcom -93 -explicit  -work presynth "${PROJECT_DIR}/hdl/pulse_w.vhdl"
vcom -93 -explicit  -work presynth "${PROJECT_DIR}/hdl/servo.vhdl"
vcom -93 -explicit  -work presynth "${PROJECT_DIR}/hdl/sonar_driver.vhd"
vcom -93 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/TOP/COREUART_0/rtl/vhdl/core/Clock_gen.vhd"
vcom -93 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/TOP/COREUART_0/rtl/vhdl/core/Tx_async.vhd"
vcom -93 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/TOP/COREUART_0/rtl/vhdl/core/Rx_async.vhd"
vcom -93 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/TOP/COREUART_0/rtl/vhdl/core/fifo_256x8_g4.vhd"
vcom -93 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/TOP/COREUART_0/rtl/vhdl/core/coreuart_pkg.vhd"
vcom -93 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/TOP/COREUART_0/rtl/vhdl/core/CoreUART.vhd"
vcom -93 -explicit  -work presynth "${PROJECT_DIR}/hdl/time_send.vhd"
vcom -93 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/TOP/COREUART_0/rtl/vhdl/core/components.vhd"
vcom -93 -explicit  -work presynth "${PROJECT_DIR}/component/work/TOP/TOP.vhd"

vsim -L SmartFusion2 -L presynth -L COREUART_LIB  -t 1fs presynth.TOP
# The following lines are commented because no testbench is associated with the project
# add wave /testbench/*
# run 1000ns
