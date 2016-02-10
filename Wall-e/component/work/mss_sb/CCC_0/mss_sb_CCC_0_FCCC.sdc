set_component mss_sb_CCC_0_FCCC
create_clock -period 20 [ get_pins {CCC_INST/RCOSC_25_50MHZ} ]
create_generated_clock -multiply_by 2 -divide_by 2 -source [ get_pins {CCC_INST/RCOSC_25_50MHZ} ] [ get_pins {CCC_INST/GL0} ]
