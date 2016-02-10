//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Thu Feb 11 00:24:13 2016
// Version: v11.6 SP1 11.6.1.6
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// Echo_control
module Echo_control(
    // Inputs
    ECHO,
    RX,
    // Outputs
    LED_1,
    LED_2,
    LED_3,
    SERVO_PWM,
    TRIG,
    TX
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  ECHO;
input  RX;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output LED_1;
output LED_2;
output LED_3;
output SERVO_PWM;
output TRIG;
output TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [7:0]  BT_module_0_data_buf;
wire          BT_module_0_oen;
wire   [7:0]  COREUART_0_DATA_OUT;
wire          COREUART_0_RXRDY;
wire          COREUART_0_TXRDY;
wire          ECHO;
wire          FCCC_0_GL0;
wire          FCCC_0_LOCK;
wire          LED_2_net_0;
wire          LED_3_net_0;
wire   [3:0]  locator_control_0_angle;
wire   [3:0]  locator_control_0_angle1;
wire          locator_control_0_en_timer;
wire          OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC;
wire          pulse_meash_0_new_ready;
wire   [15:0] pulse_meash_0_tim;
wire          RX;
wire          SERVO_PWM_net_0;
wire   [7:0]  time_sender_0_data_out;
wire          TRIG_net_0;
wire          TX_net_0;
wire          SERVO_PWM_net_1;
wire          TRIG_net_1;
wire          TX_net_1;
wire          ECHO_net_0;
wire          LED_2_net_1;
wire          LED_3_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire   [12:0] BAUD_VAL_const_net_0;
wire          VCC_net;
wire          GND_net;
wire   [2:0]  BAUD_VAL_FRACTION_const_net_0;
wire   [7:2]  PADDR_const_net_0;
wire   [7:0]  PWDATA_const_net_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign BAUD_VAL_const_net_0          = 13'h001A;
assign VCC_net                       = 1'b1;
assign GND_net                       = 1'b0;
assign BAUD_VAL_FRACTION_const_net_0 = 3'h0;
assign PADDR_const_net_0             = 6'h00;
assign PWDATA_const_net_0            = 8'h00;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign SERVO_PWM_net_1 = SERVO_PWM_net_0;
assign SERVO_PWM       = SERVO_PWM_net_1;
assign TRIG_net_1      = TRIG_net_0;
assign TRIG            = TRIG_net_1;
assign TX_net_1        = TX_net_0;
assign TX              = TX_net_1;
assign ECHO_net_0      = ECHO;
assign LED_1           = ECHO_net_0;
assign LED_2_net_1     = LED_2_net_0;
assign LED_2           = LED_2_net_1;
assign LED_3_net_1     = LED_3_net_0;
assign LED_3           = LED_3_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------BT_module
BT_module BT_module_0(
        // Inputs
        .clk      ( FCCC_0_GL0 ),
        .rstn     ( FCCC_0_LOCK ),
        .rxrdy    ( COREUART_0_RXRDY ),
        .data_rx  ( COREUART_0_DATA_OUT ),
        // Outputs
        .data_buf ( BT_module_0_data_buf ),
        .oen      ( BT_module_0_oen ) 
        );

//--------Echo_control_COREUART_0_COREUART   -   Actel:DirectCore:COREUART:5.5.101
Echo_control_COREUART_0_COREUART #( 
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .FAMILY            ( 19 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
COREUART_0(
        // Inputs
        .BAUD_VAL          ( BAUD_VAL_const_net_0 ),
        .BIT8              ( VCC_net ),
        .CLK               ( FCCC_0_GL0 ),
        .CSN               ( GND_net ),
        .DATA_IN           ( time_sender_0_data_out ),
        .ODD_N_EVEN        ( GND_net ),
        .OEN               ( BT_module_0_oen ),
        .PARITY_EN         ( GND_net ),
        .RESET_N           ( FCCC_0_LOCK ),
        .RX                ( RX ),
        .WEN               ( LED_3_net_0 ),
        .BAUD_VAL_FRACTION ( BAUD_VAL_FRACTION_const_net_0 ), // tied to 3'h0 from definition
        // Outputs
        .DATA_OUT          ( COREUART_0_DATA_OUT ),
        .OVERFLOW          (  ),
        .PARITY_ERR        (  ),
        .RXRDY             ( COREUART_0_RXRDY ),
        .TX                ( TX_net_0 ),
        .TXRDY             ( COREUART_0_TXRDY ),
        .FRAMING_ERR       (  ) 
        );

//--------delayer
delayer delayer_0(
        // Inputs
        .clk        ( FCCC_0_GL0 ),
        .rst_n      ( FCCC_0_LOCK ),
        .input_port ( pulse_meash_0_new_ready ),
        // Outputs
        .led        ( LED_2_net_0 ) 
        );

//--------Echo_control_FCCC_0_FCCC   -   Actel:SgCore:FCCC:2.0.200
Echo_control_FCCC_0_FCCC FCCC_0(
        // Inputs
        .RCOSC_1MHZ ( OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC ),
        // Outputs
        .GL0        ( FCCC_0_GL0 ),
        .LOCK       ( FCCC_0_LOCK ) 
        );

//--------locator_control
locator_control locator_control_0(
        // Inputs
        .clk        ( FCCC_0_GL0 ),
        .rst_n      ( FCCC_0_LOCK ),
        .new_ready  ( pulse_meash_0_new_ready ),
        .open_angle ( BT_module_0_data_buf ),
        // Outputs
        .en_sonar   ( TRIG_net_0 ),
        .en_timer   ( locator_control_0_en_timer ),
        .angle      ( locator_control_0_angle ),
        .angle1     ( locator_control_0_angle1 ) 
        );

//--------Echo_control_OSC_0_OSC   -   Actel:SgCore:OSC:1.0.105
Echo_control_OSC_0_OSC OSC_0(
        // Inputs
        .XTL                ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .RCOSC_25_50MHZ_CCC (  ),
        .RCOSC_25_50MHZ_O2F (  ),
        .RCOSC_1MHZ_CCC     ( OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC ),
        .RCOSC_1MHZ_O2F     (  ),
        .XTLOSC_CCC         (  ),
        .XTLOSC_O2F         (  ) 
        );

//--------pulse_meash
pulse_meash pulse_meash_0(
        // Inputs
        .clk       ( FCCC_0_GL0 ),
        .rst_n     ( FCCC_0_LOCK ),
        .en        ( locator_control_0_en_timer ),
        .signal0   ( ECHO ),
        // Outputs
        .new_ready ( pulse_meash_0_new_ready ),
        .tim       ( pulse_meash_0_tim ) 
        );

//--------servo_driver
servo_driver servo_driver_0(
        // Inputs
        .clk       ( FCCC_0_GL0 ),
        .rst_n     ( FCCC_0_LOCK ),
        .angle     ( locator_control_0_angle ),
        // Outputs
        .servo_pwm ( SERVO_PWM_net_0 ) 
        );

//--------time_sender
time_sender time_sender_0(
        // Inputs
        .clk       ( FCCC_0_GL0 ),
        .rst_n     ( FCCC_0_LOCK ),
        .new_ready ( pulse_meash_0_new_ready ),
        .time1     ( pulse_meash_0_tim ),
        .angle     ( locator_control_0_angle1 ),
        .txrdy     ( COREUART_0_TXRDY ),
        // Outputs
        .wen       ( LED_3_net_0 ),
        .data_out  ( time_sender_0_data_out ) 
        );


endmodule
