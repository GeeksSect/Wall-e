//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Feb 26 22:10:23 2016
// Version: v11.6 SP1 11.6.1.6
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// mss
module mss(
    // Inputs
    BT_TX,
    DEVRST_N,
    ECHO,
    GPS_TX,
    // Outputs
    BT_RX,
    GPS_RX,
    LED_1,
    LED_2,
    LED_3,
    PWM,
    SERVO_PWM,
    TRIG,
    // Inouts
    COREI2C_0_0_SCL_IO,
    COREI2C_0_0_SDA_IO
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        BT_TX;
input        DEVRST_N;
input        ECHO;
input        GPS_TX;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       BT_RX;
output       GPS_RX;
output       LED_1;
output       LED_2;
output       LED_3;
output [8:1] PWM;
output       SERVO_PWM;
output       TRIG;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout        COREI2C_0_0_SCL_IO;
inout        COREI2C_0_0_SDA_IO;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire         BT_RX_net_0;
wire         BT_TX;
wire         COREI2C_0_0_SCL_IO;
wire         COREI2C_0_0_SDA_IO;
wire         DEVRST_N;
wire         ECHO;
wire         Echo_control_0_TX;
wire         GPS_RX_net_0;
wire         GPS_TX;
wire         LED_1_net_0;
wire         LED_2_net_0;
wire         LED_3_net_0;
wire         mss_sb_0_TX;
wire   [8:1] PWM_net_0;
wire         SERVO_PWM_net_0;
wire         TRIG_net_0;
wire         SERVO_PWM_net_1;
wire         TRIG_net_1;
wire         LED_1_net_1;
wire         LED_2_net_1;
wire         LED_3_net_1;
wire         GPS_RX_net_1;
wire         BT_RX_net_1;
wire   [8:1] PWM_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire         VCC_net;
wire         GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net    = 1'b1;
assign GND_net    = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign SERVO_PWM_net_1 = SERVO_PWM_net_0;
assign SERVO_PWM       = SERVO_PWM_net_1;
assign TRIG_net_1      = TRIG_net_0;
assign TRIG            = TRIG_net_1;
assign LED_1_net_1     = LED_1_net_0;
assign LED_1           = LED_1_net_1;
assign LED_2_net_1     = LED_2_net_0;
assign LED_2           = LED_2_net_1;
assign LED_3_net_1     = LED_3_net_0;
assign LED_3           = LED_3_net_1;
assign GPS_RX_net_1    = GPS_RX_net_0;
assign GPS_RX          = GPS_RX_net_1;
assign BT_RX_net_1     = BT_RX_net_0;
assign BT_RX           = BT_RX_net_1;
assign PWM_net_1       = PWM_net_0;
assign PWM[8:1]        = PWM_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------Echo_control
Echo_control Echo_control_0(
        // Inputs
        .RX        ( mss_sb_0_TX ),
        .ECHO      ( ECHO ),
        // Outputs
        .SERVO_PWM ( SERVO_PWM_net_0 ),
        .TRIG      ( TRIG_net_0 ),
        .TX        ( Echo_control_0_TX ),
        .LED_1     ( LED_1_net_0 ),
        .LED_2     ( LED_2_net_0 ),
        .LED_3     ( LED_3_net_0 ) 
        );

//--------mss_sb
mss_sb mss_sb_0(
        // Inputs
        .FAB_RESET_N        ( VCC_net ),
        .DEVRST_N           ( DEVRST_N ),
        .RX                 ( Echo_control_0_TX ),
        .RX_0               ( GPS_TX ),
        .RX_1               ( BT_TX ),
        .TACHIN             ( GND_net ),
        // Outputs
        .POWER_ON_RESET_N   (  ),
        .INIT_DONE          (  ),
        .FAB_CCC_GL0        (  ),
        .FAB_CCC_LOCK       (  ),
        .MSS_READY          (  ),
        .TX                 ( mss_sb_0_TX ),
        .TX_0               ( GPS_RX_net_0 ),
        .TX_1               ( BT_RX_net_0 ),
        .PWM                ( PWM_net_0 ),
        // Inouts
        .COREI2C_0_0_SDA_IO ( COREI2C_0_0_SDA_IO ),
        .COREI2C_0_0_SCL_IO ( COREI2C_0_0_SCL_IO ) 
        );


endmodule
