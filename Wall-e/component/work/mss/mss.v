//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Feb 16 22:58:59 2016
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
    PWM,
    TRIG,
    // Inouts
    COREI2C_0_0_SCL_IO,
    COREI2C_0_0_SDA_IO
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         BT_TX;
input         DEVRST_N;
input  [1:0]  ECHO;
input         GPS_TX;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        BT_RX;
output        GPS_RX;
output [10:1] PWM;
output [1:0]  TRIG;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout         COREI2C_0_0_SCL_IO;
inout         COREI2C_0_0_SDA_IO;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          BT_RX_net_0;
wire          BT_TX;
wire          COREI2C_0_0_SCL_IO;
wire          COREI2C_0_0_SDA_IO;
wire          DEVRST_N;
wire   [1:0]  ECHO;
wire          GPS_RX_net_0;
wire          GPS_TX;
wire   [10:1] PWM_0;
wire   [1:0]  TRIG_net_0;
wire          GPS_RX_net_1;
wire          BT_RX_net_1;
wire   [10:1] PWM_0_net_0;
wire   [1:0]  TRIG_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
wire          GND_net;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net    = 1'b1;
assign GND_net    = 1'b0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign GPS_RX_net_1 = GPS_RX_net_0;
assign GPS_RX       = GPS_RX_net_1;
assign BT_RX_net_1  = BT_RX_net_0;
assign BT_RX        = BT_RX_net_1;
assign PWM_0_net_0  = PWM_0;
assign PWM[10:1]    = PWM_0_net_0;
assign TRIG_net_1   = TRIG_net_0;
assign TRIG[1:0]    = TRIG_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------mss_sb
mss_sb mss_sb_0(
        // Inputs
        .FAB_RESET_N        ( VCC_net ),
        .DEVRST_N           ( DEVRST_N ),
        .GPIO_IN            ( ECHO ),
        .TACHIN             ( GND_net ),
        .RX                 ( BT_TX ),
        .RX_0               ( GPS_TX ),
        // Outputs
        .POWER_ON_RESET_N   (  ),
        .INIT_DONE          (  ),
        .FAB_CCC_GL0        (  ),
        .FAB_CCC_LOCK       (  ),
        .MSS_READY          (  ),
        .INT                (  ),
        .GPIO_OUT           ( TRIG_net_0 ),
        .PWM                ( PWM_0 ),
        .TX                 ( BT_RX_net_0 ),
        .TX_0               ( GPS_RX_net_0 ),
        // Inouts
        .COREI2C_0_0_SDA_IO ( COREI2C_0_0_SDA_IO ),
        .COREI2C_0_0_SCL_IO ( COREI2C_0_0_SCL_IO ) 
        );


endmodule
