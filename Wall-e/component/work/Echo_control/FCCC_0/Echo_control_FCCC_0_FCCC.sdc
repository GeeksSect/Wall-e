set_component Echo_control_FCCC_0_FCCC
create_clock -period 1000 [ get_pins {CCC_INST/RCOSC_1MHZ} ]
create_generated_clock -multiply_by 50 -source [ get_pins {CCC_INST/RCOSC_1MHZ} ] [ get_pins {CCC_INST/GL0} ]
