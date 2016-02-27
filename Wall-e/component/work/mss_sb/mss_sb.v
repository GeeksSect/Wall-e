//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Feb 10 00:20:20 2016
// Version: v11.6 SP1 11.6.1.6
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// mss_sb
module mss_sb(
    // Inputs
    DEVRST_N,
    FAB_RESET_N,
    RX,
    RX_0,
    RX_1,
    TACHIN,
    // Outputs
    FAB_CCC_GL0,
    FAB_CCC_LOCK,
    INIT_DONE,
    MSS_READY,
    POWER_ON_RESET_N,
    PWM,
    TX,
    TX_0,
    TX_1,
    // Inouts
    COREI2C_0_0_SCL_IO,
    COREI2C_0_0_SDA_IO
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input        DEVRST_N;
input        FAB_RESET_N;
input        RX;
input        RX_0;
input        RX_1;
input  [1:1] TACHIN;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output       FAB_CCC_GL0;
output       FAB_CCC_LOCK;
output       INIT_DONE;
output       MSS_READY;
output       POWER_ON_RESET_N;
output [8:1] PWM;
output       TX;
output       TX_0;
output       TX_1;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout        COREI2C_0_0_SCL_IO;
inout        COREI2C_0_0_SDA_IO;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          BIBUF_COREI2C_0_0_SCL_IO_Y;
wire          BIBUF_COREI2C_0_0_SDA_IO_Y;
wire          CoreAPB3_0_APBmslave0_PENABLE;
wire          CoreAPB3_0_APBmslave0_PREADY;
wire          CoreAPB3_0_APBmslave0_PSELx;
wire          CoreAPB3_0_APBmslave0_PSLVERR;
wire          CoreAPB3_0_APBmslave0_PWRITE;
wire          CoreAPB3_0_APBmslave1_PSELx;
wire          CoreAPB3_0_APBmslave2_PREADY;
wire          CoreAPB3_0_APBmslave2_PSELx;
wire          CoreAPB3_0_APBmslave2_PSLVERR;
wire          CoreAPB3_0_APBmslave3_PREADY;
wire          CoreAPB3_0_APBmslave3_PSELx;
wire          CoreAPB3_0_APBmslave3_PSLVERR;
wire          CoreAPB3_0_APBmslave4_PREADY;
wire          CoreAPB3_0_APBmslave4_PSELx;
wire          CoreAPB3_0_APBmslave4_PSLVERR;
wire   [0:0]  COREI2C_0_0_INT;
wire          COREI2C_0_0_SCL_IO;
wire   [0:0]  COREI2C_0_0_SCLO;
wire          COREI2C_0_0_SDA_IO;
wire   [0:0]  COREI2C_0_0_SDAO;
wire          corepwm_0_0_TACHINT;
wire          CORERESETP_0_RESET_N_F2M;
wire          CoreUARTapb_2_0_FRAMING_ERR;
wire          CoreUARTapb_2_0_intr_or_0_Y;
wire          CoreUARTapb_2_0_intr_or_1_Y;
wire          CoreUARTapb_2_0_intr_or_2_Y;
wire          CoreUARTapb_2_0_OVERFLOW;
wire          CoreUARTapb_2_0_PARITY_ERR;
wire          CoreUARTapb_2_0_RXRDY;
wire          CoreUARTapb_2_0_TXRDY;
wire          CoreUARTapb_2_1_FRAMING_ERR;
wire          CoreUARTapb_2_1_intr_or_0_Y;
wire          CoreUARTapb_2_1_intr_or_1_Y;
wire          CoreUARTapb_2_1_intr_or_2_Y;
wire          CoreUARTapb_2_1_OVERFLOW;
wire          CoreUARTapb_2_1_PARITY_ERR;
wire          CoreUARTapb_2_1_RXRDY;
wire          CoreUARTapb_2_1_TXRDY;
wire          CoreUARTapb_2_2_FRAMING_ERR;
wire          CoreUARTapb_2_2_intr_or_0_Y;
wire          CoreUARTapb_2_2_intr_or_1_Y;
wire          CoreUARTapb_2_2_intr_or_2_Y;
wire          CoreUARTapb_2_2_OVERFLOW;
wire          CoreUARTapb_2_2_PARITY_ERR;
wire          CoreUARTapb_2_2_RXRDY;
wire          CoreUARTapb_2_2_TXRDY;
wire          DEVRST_N;
wire          FAB_CCC_GL0_net_0;
wire          FAB_CCC_LOCK_net_0;
wire          FAB_RESET_N;
wire          FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC;
wire          FABOSC_0_RCOSC_25_50MHZ_O2F;
wire          INIT_DONE_net_0;
wire          MSS_READY_net_0;
wire   [31:0] mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR;
wire          mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PENABLE;
wire   [31:0] mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA;
wire          mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PREADY;
wire          mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx;
wire          mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSLVERR;
wire   [31:0] mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWDATA;
wire          mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWRITE;
wire          mss_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N;
wire          mss_sb_MSS_TMP_0_MSS_RESET_N_M2F;
wire          POWER_ON_RESET_N_net_0;
wire   [8:1]  PWM_net_0;
wire          RX;
wire          RX_0;
wire          RX_1;
wire   [1:1]  TACHIN;
wire          TX_net_0;
wire          TX_0_net_0;
wire          TX_1_net_0;
wire          POWER_ON_RESET_N_net_1;
wire          INIT_DONE_net_1;
wire          FAB_CCC_GL0_net_1;
wire          FAB_CCC_LOCK_net_1;
wire          MSS_READY_net_1;
wire   [8:1]  PWM_net_1;
wire          TX_net_1;
wire          TX_0_net_1;
wire          TX_1_net_1;
wire   [15:0] MSS_INT_F2M_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [7:2]  PADDR_const_net_0;
wire   [7:0]  PWDATA_const_net_0;
wire   [31:0] IADDR_const_net_0;
wire   [31:0] SDIF0_PRDATA_const_net_0;
wire   [31:0] SDIF1_PRDATA_const_net_0;
wire   [31:0] SDIF2_PRDATA_const_net_0;
wire   [31:0] SDIF3_PRDATA_const_net_0;
wire   [31:0] PRDATAS5_const_net_0;
wire   [31:0] PRDATAS6_const_net_0;
wire   [31:0] PRDATAS7_const_net_0;
wire   [31:0] PRDATAS8_const_net_0;
wire   [31:0] PRDATAS9_const_net_0;
wire   [31:0] PRDATAS10_const_net_0;
wire   [31:0] PRDATAS11_const_net_0;
wire   [31:0] PRDATAS12_const_net_0;
wire   [31:0] PRDATAS13_const_net_0;
wire   [31:0] PRDATAS14_const_net_0;
wire   [31:0] PRDATAS15_const_net_0;
wire   [31:0] PRDATAS16_const_net_0;
wire   [31:0] FIC_2_APB_M_PRDATA_const_net_0;
//--------------------------------------------------------------------
// Inverted Nets
//--------------------------------------------------------------------
wire          E_IN_POST_INV0_0;
wire          E_IN_POST_INV1_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [8:0]  CoreAPB3_0_APBmslave0_PADDR_1_8to0;
wire   [8:0]  CoreAPB3_0_APBmslave0_PADDR_1;
wire   [4:0]  CoreAPB3_0_APBmslave0_PADDR_3_4to0;
wire   [4:0]  CoreAPB3_0_APBmslave0_PADDR_3;
wire   [4:0]  CoreAPB3_0_APBmslave0_PADDR_4_4to0;
wire   [4:0]  CoreAPB3_0_APBmslave0_PADDR_4;
wire   [7:0]  CoreAPB3_0_APBmslave0_PADDR_0_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PADDR_0;
wire   [4:0]  CoreAPB3_0_APBmslave0_PADDR_2_4to0;
wire   [4:0]  CoreAPB3_0_APBmslave0_PADDR_2;
wire   [31:0] CoreAPB3_0_APBmslave0_PADDR;
wire   [31:16]CoreAPB3_0_APBmslave0_PRDATA_0_31to16;
wire   [15:0] CoreAPB3_0_APBmslave0_PRDATA_0_15to0;
wire   [31:0] CoreAPB3_0_APBmslave0_PRDATA_0;
wire   [15:0] CoreAPB3_0_APBmslave0_PRDATA;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_4_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_4;
wire   [31:0] CoreAPB3_0_APBmslave0_PWDATA;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_1_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_1;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_3_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_3;
wire   [15:0] CoreAPB3_0_APBmslave0_PWDATA_0_15to0;
wire   [15:0] CoreAPB3_0_APBmslave0_PWDATA_0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_2_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave0_PWDATA_2;
wire   [31:8] CoreAPB3_0_APBmslave1_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave1_PRDATA_0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA;
wire   [31:8] CoreAPB3_0_APBmslave2_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave2_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave2_PRDATA_0;
wire   [7:0]  CoreAPB3_0_APBmslave2_PRDATA;
wire   [31:8] CoreAPB3_0_APBmslave3_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave3_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave3_PRDATA_0;
wire   [7:0]  CoreAPB3_0_APBmslave3_PRDATA;
wire   [7:0]  CoreAPB3_0_APBmslave4_PRDATA;
wire   [31:8] CoreAPB3_0_APBmslave4_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave4_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave4_PRDATA_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net                        = 1'b0;
assign VCC_net                        = 1'b1;
assign PADDR_const_net_0              = 6'h00;
assign PWDATA_const_net_0             = 8'h00;
assign IADDR_const_net_0              = 32'h00000000;
assign SDIF0_PRDATA_const_net_0       = 32'h00000000;
assign SDIF1_PRDATA_const_net_0       = 32'h00000000;
assign SDIF2_PRDATA_const_net_0       = 32'h00000000;
assign SDIF3_PRDATA_const_net_0       = 32'h00000000;
assign PRDATAS5_const_net_0           = 32'h00000000;
assign PRDATAS6_const_net_0           = 32'h00000000;
assign PRDATAS7_const_net_0           = 32'h00000000;
assign PRDATAS8_const_net_0           = 32'h00000000;
assign PRDATAS9_const_net_0           = 32'h00000000;
assign PRDATAS10_const_net_0          = 32'h00000000;
assign PRDATAS11_const_net_0          = 32'h00000000;
assign PRDATAS12_const_net_0          = 32'h00000000;
assign PRDATAS13_const_net_0          = 32'h00000000;
assign PRDATAS14_const_net_0          = 32'h00000000;
assign PRDATAS15_const_net_0          = 32'h00000000;
assign PRDATAS16_const_net_0          = 32'h00000000;
assign FIC_2_APB_M_PRDATA_const_net_0 = 32'h00000000;
//--------------------------------------------------------------------
// Inversions
//--------------------------------------------------------------------
assign E_IN_POST_INV0_0 = ~ COREI2C_0_0_SCLO[0];
assign E_IN_POST_INV1_0 = ~ COREI2C_0_0_SDAO[0];
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign POWER_ON_RESET_N_net_1 = POWER_ON_RESET_N_net_0;
assign POWER_ON_RESET_N       = POWER_ON_RESET_N_net_1;
assign INIT_DONE_net_1        = INIT_DONE_net_0;
assign INIT_DONE              = INIT_DONE_net_1;
assign FAB_CCC_GL0_net_1      = FAB_CCC_GL0_net_0;
assign FAB_CCC_GL0            = FAB_CCC_GL0_net_1;
assign FAB_CCC_LOCK_net_1     = FAB_CCC_LOCK_net_0;
assign FAB_CCC_LOCK           = FAB_CCC_LOCK_net_1;
assign MSS_READY_net_1        = MSS_READY_net_0;
assign MSS_READY              = MSS_READY_net_1;
assign PWM_net_1              = PWM_net_0;
assign PWM[8:1]               = PWM_net_1;
assign TX_net_1               = TX_net_0;
assign TX                     = TX_net_1;
assign TX_0_net_1             = TX_0_net_0;
assign TX_0                   = TX_0_net_1;
assign TX_1_net_1             = TX_1_net_0;
assign TX_1                   = TX_1_net_1;
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign MSS_INT_F2M_net_0 = { 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , 1'b0 , corepwm_0_0_TACHINT , CoreUARTapb_2_2_intr_or_2_Y , CoreUARTapb_2_1_intr_or_2_Y , CoreUARTapb_2_0_intr_or_2_Y , COREI2C_0_0_INT[0] };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_0_APBmslave0_PADDR_1_8to0 = CoreAPB3_0_APBmslave0_PADDR[8:0];
assign CoreAPB3_0_APBmslave0_PADDR_1 = { CoreAPB3_0_APBmslave0_PADDR_1_8to0 };
assign CoreAPB3_0_APBmslave0_PADDR_3_4to0 = CoreAPB3_0_APBmslave0_PADDR[4:0];
assign CoreAPB3_0_APBmslave0_PADDR_3 = { CoreAPB3_0_APBmslave0_PADDR_3_4to0 };
assign CoreAPB3_0_APBmslave0_PADDR_4_4to0 = CoreAPB3_0_APBmslave0_PADDR[4:0];
assign CoreAPB3_0_APBmslave0_PADDR_4 = { CoreAPB3_0_APBmslave0_PADDR_4_4to0 };
assign CoreAPB3_0_APBmslave0_PADDR_0_7to0 = CoreAPB3_0_APBmslave0_PADDR[7:0];
assign CoreAPB3_0_APBmslave0_PADDR_0 = { CoreAPB3_0_APBmslave0_PADDR_0_7to0 };
assign CoreAPB3_0_APBmslave0_PADDR_2_4to0 = CoreAPB3_0_APBmslave0_PADDR[4:0];
assign CoreAPB3_0_APBmslave0_PADDR_2 = { CoreAPB3_0_APBmslave0_PADDR_2_4to0 };

assign CoreAPB3_0_APBmslave0_PRDATA_0_31to16 = 16'h0;
assign CoreAPB3_0_APBmslave0_PRDATA_0_15to0 = CoreAPB3_0_APBmslave0_PRDATA[15:0];
assign CoreAPB3_0_APBmslave0_PRDATA_0 = { CoreAPB3_0_APBmslave0_PRDATA_0_31to16, CoreAPB3_0_APBmslave0_PRDATA_0_15to0 };

assign CoreAPB3_0_APBmslave0_PWDATA_4_7to0 = CoreAPB3_0_APBmslave0_PWDATA[7:0];
assign CoreAPB3_0_APBmslave0_PWDATA_4 = { CoreAPB3_0_APBmslave0_PWDATA_4_7to0 };
assign CoreAPB3_0_APBmslave0_PWDATA_1_7to0 = CoreAPB3_0_APBmslave0_PWDATA[7:0];
assign CoreAPB3_0_APBmslave0_PWDATA_1 = { CoreAPB3_0_APBmslave0_PWDATA_1_7to0 };
assign CoreAPB3_0_APBmslave0_PWDATA_3_7to0 = CoreAPB3_0_APBmslave0_PWDATA[7:0];
assign CoreAPB3_0_APBmslave0_PWDATA_3 = { CoreAPB3_0_APBmslave0_PWDATA_3_7to0 };
assign CoreAPB3_0_APBmslave0_PWDATA_0_15to0 = CoreAPB3_0_APBmslave0_PWDATA[15:0];
assign CoreAPB3_0_APBmslave0_PWDATA_0 = { CoreAPB3_0_APBmslave0_PWDATA_0_15to0 };
assign CoreAPB3_0_APBmslave0_PWDATA_2_7to0 = CoreAPB3_0_APBmslave0_PWDATA[7:0];
assign CoreAPB3_0_APBmslave0_PWDATA_2 = { CoreAPB3_0_APBmslave0_PWDATA_2_7to0 };

assign CoreAPB3_0_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave1_PRDATA_0_7to0 = CoreAPB3_0_APBmslave1_PRDATA[7:0];
assign CoreAPB3_0_APBmslave1_PRDATA_0 = { CoreAPB3_0_APBmslave1_PRDATA_0_31to8, CoreAPB3_0_APBmslave1_PRDATA_0_7to0 };

assign CoreAPB3_0_APBmslave2_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave2_PRDATA_0_7to0 = CoreAPB3_0_APBmslave2_PRDATA[7:0];
assign CoreAPB3_0_APBmslave2_PRDATA_0 = { CoreAPB3_0_APBmslave2_PRDATA_0_31to8, CoreAPB3_0_APBmslave2_PRDATA_0_7to0 };

assign CoreAPB3_0_APBmslave3_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave3_PRDATA_0_7to0 = CoreAPB3_0_APBmslave3_PRDATA[7:0];
assign CoreAPB3_0_APBmslave3_PRDATA_0 = { CoreAPB3_0_APBmslave3_PRDATA_0_31to8, CoreAPB3_0_APBmslave3_PRDATA_0_7to0 };

assign CoreAPB3_0_APBmslave4_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave4_PRDATA_0_7to0 = CoreAPB3_0_APBmslave4_PRDATA[7:0];
assign CoreAPB3_0_APBmslave4_PRDATA_0 = { CoreAPB3_0_APBmslave4_PRDATA_0_31to8, CoreAPB3_0_APBmslave4_PRDATA_0_7to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------BIBUF
BIBUF BIBUF_COREI2C_0_0_SCL_IO(
        // Inputs
        .D   ( GND_net ),
        .E   ( E_IN_POST_INV0_0 ),
        // Outputs
        .Y   ( BIBUF_COREI2C_0_0_SCL_IO_Y ),
        // Inouts
        .PAD ( COREI2C_0_0_SCL_IO ) 
        );

//--------BIBUF
BIBUF BIBUF_COREI2C_0_0_SDA_IO(
        // Inputs
        .D   ( GND_net ),
        .E   ( E_IN_POST_INV1_0 ),
        // Outputs
        .Y   ( BIBUF_COREI2C_0_0_SDA_IO_Y ),
        // Inouts
        .PAD ( COREI2C_0_0_SDA_IO ) 
        );

//--------mss_sb_CCC_0_FCCC   -   Actel:SgCore:FCCC:2.0.200
mss_sb_CCC_0_FCCC CCC_0(
        // Inputs
        .RCOSC_25_50MHZ ( FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC ),
        // Outputs
        .GL0            ( FAB_CCC_GL0_net_0 ),
        .LOCK           ( FAB_CCC_LOCK_net_0 ) 
        );

//--------CoreAPB3   -   Actel:DirectCore:CoreAPB3:4.1.100
CoreAPB3 #( 
        .APB_DWIDTH      ( 32 ),
        .APBSLOT0ENABLE  ( 1 ),
        .APBSLOT1ENABLE  ( 1 ),
        .APBSLOT2ENABLE  ( 1 ),
        .APBSLOT3ENABLE  ( 1 ),
        .APBSLOT4ENABLE  ( 1 ),
        .APBSLOT5ENABLE  ( 0 ),
        .APBSLOT6ENABLE  ( 0 ),
        .APBSLOT7ENABLE  ( 0 ),
        .APBSLOT8ENABLE  ( 0 ),
        .APBSLOT9ENABLE  ( 0 ),
        .APBSLOT10ENABLE ( 0 ),
        .APBSLOT11ENABLE ( 0 ),
        .APBSLOT12ENABLE ( 0 ),
        .APBSLOT13ENABLE ( 0 ),
        .APBSLOT14ENABLE ( 0 ),
        .APBSLOT15ENABLE ( 0 ),
        .FAMILY          ( 19 ),
        .IADDR_OPTION    ( 0 ),
        .MADDR_BITS      ( 16 ),
        .SC_0            ( 0 ),
        .SC_1            ( 0 ),
        .SC_2            ( 0 ),
        .SC_3            ( 0 ),
        .SC_4            ( 0 ),
        .SC_5            ( 0 ),
        .SC_6            ( 0 ),
        .SC_7            ( 0 ),
        .SC_8            ( 0 ),
        .SC_9            ( 0 ),
        .SC_10           ( 0 ),
        .SC_11           ( 0 ),
        .SC_12           ( 0 ),
        .SC_13           ( 0 ),
        .SC_14           ( 0 ),
        .SC_15           ( 0 ),
        .UPR_NIBBLE_POSN ( 3 ) )
CoreAPB3_0(
        // Inputs
        .PRESETN    ( GND_net ), // tied to 1'b0 from definition
        .PCLK       ( GND_net ), // tied to 1'b0 from definition
        .PADDR      ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR ),
        .PWRITE     ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWRITE ),
        .PENABLE    ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PENABLE ),
        .PWDATA     ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWDATA ),
        .PSEL       ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx ),
        .PRDATAS0   ( CoreAPB3_0_APBmslave0_PRDATA_0 ),
        .PREADYS0   ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERRS0  ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .PRDATAS1   ( CoreAPB3_0_APBmslave1_PRDATA_0 ),
        .PREADYS1   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS1  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS2   ( CoreAPB3_0_APBmslave2_PRDATA_0 ),
        .PREADYS2   ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERRS2  ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PRDATAS3   ( CoreAPB3_0_APBmslave3_PRDATA_0 ),
        .PREADYS3   ( CoreAPB3_0_APBmslave3_PREADY ),
        .PSLVERRS3  ( CoreAPB3_0_APBmslave3_PSLVERR ),
        .PRDATAS4   ( CoreAPB3_0_APBmslave4_PRDATA_0 ),
        .PREADYS4   ( CoreAPB3_0_APBmslave4_PREADY ),
        .PSLVERRS4  ( CoreAPB3_0_APBmslave4_PSLVERR ),
        .PRDATAS5   ( PRDATAS5_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS5   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS5  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS6   ( PRDATAS6_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS6   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS6  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS7   ( PRDATAS7_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS7   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS7  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS8   ( PRDATAS8_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS8   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS8  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS9   ( PRDATAS9_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS9   ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS9  ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS10  ( PRDATAS10_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS10  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS10 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS11  ( PRDATAS11_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS11  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS11 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS12  ( PRDATAS12_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS12  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS12 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS13  ( PRDATAS13_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS13  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS13 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS14  ( PRDATAS14_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS14  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS14 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS15  ( PRDATAS15_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS15  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS15 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS16  ( PRDATAS16_const_net_0 ), // tied to 32'h00000000 from definition
        .PREADYS16  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS16 ( GND_net ), // tied to 1'b0 from definition
        .IADDR      ( IADDR_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .PRDATA     ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA ),
        .PREADY     ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PREADY ),
        .PSLVERR    ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSLVERR ),
        .PADDRS     ( CoreAPB3_0_APBmslave0_PADDR ),
        .PWRITES    ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PENABLES   ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWDATAS    ( CoreAPB3_0_APBmslave0_PWDATA ),
        .PSELS0     ( CoreAPB3_0_APBmslave0_PSELx ),
        .PSELS1     ( CoreAPB3_0_APBmslave1_PSELx ),
        .PSELS2     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PSELS3     ( CoreAPB3_0_APBmslave3_PSELx ),
        .PSELS4     ( CoreAPB3_0_APBmslave4_PSELx ),
        .PSELS5     (  ),
        .PSELS6     (  ),
        .PSELS7     (  ),
        .PSELS8     (  ),
        .PSELS9     (  ),
        .PSELS10    (  ),
        .PSELS11    (  ),
        .PSELS12    (  ),
        .PSELS13    (  ),
        .PSELS14    (  ),
        .PSELS15    (  ),
        .PSELS16    (  ) 
        );

//--------COREI2C   -   Actel:DirectCore:COREI2C:7.0.102
COREI2C #( 
        .ADD_SLAVE1_ADDRESS_EN   ( 0 ),
        .BAUD_RATE_FIXED         ( 1 ),
        .BAUD_RATE_VALUE         ( 3 ),
        .BCLK_ENABLED            ( 0 ),
        .FIXED_SLAVE0_ADDR_EN    ( 1 ),
        .FIXED_SLAVE0_ADDR_VALUE ( 'h42 ),
        .FIXED_SLAVE1_ADDR_EN    ( 0 ),
        .FIXED_SLAVE1_ADDR_VALUE ( 'h0 ),
        .FREQUENCY               ( 30 ),
        .GLITCHREG_NUM           ( 4 ),
        .I2C_NUM                 ( 1 ),
        .IPMI_EN                 ( 0 ),
        .OPERATING_MODE          ( 0 ),
        .SMB_EN                  ( 0 ) )
COREI2C_0_0(
        // Inputs
        .BCLK        ( GND_net ), // tied to 1'b0 from definition
        .PADDR       ( CoreAPB3_0_APBmslave0_PADDR_1 ),
        .PCLK        ( FAB_CCC_GL0_net_0 ),
        .PENABLE     ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PRESETN     ( MSS_READY_net_0 ),
        .PSEL        ( CoreAPB3_0_APBmslave1_PSELx ),
        .PWDATA      ( CoreAPB3_0_APBmslave0_PWDATA_1 ),
        .PWRITE      ( CoreAPB3_0_APBmslave0_PWRITE ),
        .SCLI        ( BIBUF_COREI2C_0_0_SCL_IO_Y ),
        .SDAI        ( BIBUF_COREI2C_0_0_SDA_IO_Y ),
        .SMBALERT_NI ( GND_net ), // tied to 1'b0 from definition
        .SMBSUS_NI   ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .INT         ( COREI2C_0_0_INT ),
        .PRDATA      ( CoreAPB3_0_APBmslave1_PRDATA ),
        .SCLO        ( COREI2C_0_0_SCLO ),
        .SDAO        ( COREI2C_0_0_SDAO ),
        .SMBALERT_NO (  ),
        .SMBA_INT    (  ),
        .SMBSUS_NO   (  ),
        .SMBS_INT    (  ) 
        );

//--------corepwm   -   Actel:DirectCore:corepwm:4.1.106
corepwm #( 
        .APB_DWIDTH          ( 16 ),
        .CONFIG_MODE         ( 0 ),
        .DAC_MODE1           ( 0 ),
        .DAC_MODE2           ( 0 ),
        .DAC_MODE3           ( 0 ),
        .DAC_MODE4           ( 0 ),
        .DAC_MODE5           ( 0 ),
        .DAC_MODE6           ( 0 ),
        .DAC_MODE7           ( 0 ),
        .DAC_MODE8           ( 0 ),
        .DAC_MODE9           ( 0 ),
        .DAC_MODE10          ( 0 ),
        .DAC_MODE11          ( 0 ),
        .DAC_MODE12          ( 0 ),
        .DAC_MODE13          ( 0 ),
        .DAC_MODE14          ( 0 ),
        .DAC_MODE15          ( 0 ),
        .DAC_MODE16          ( 0 ),
        .FAMILY              ( 15 ),
        .FIXED_PERIOD        ( 1 ),
        .FIXED_PERIOD_EN     ( 0 ),
        .FIXED_PRESCALE      ( 0 ),
        .FIXED_PRESCALE_EN   ( 1 ),
        .FIXED_PWM_NEG_EN1   ( 0 ),
        .FIXED_PWM_NEG_EN2   ( 0 ),
        .FIXED_PWM_NEG_EN3   ( 0 ),
        .FIXED_PWM_NEG_EN4   ( 0 ),
        .FIXED_PWM_NEG_EN5   ( 0 ),
        .FIXED_PWM_NEG_EN6   ( 0 ),
        .FIXED_PWM_NEG_EN7   ( 0 ),
        .FIXED_PWM_NEG_EN8   ( 0 ),
        .FIXED_PWM_NEG_EN9   ( 0 ),
        .FIXED_PWM_NEG_EN10  ( 0 ),
        .FIXED_PWM_NEG_EN11  ( 0 ),
        .FIXED_PWM_NEG_EN12  ( 0 ),
        .FIXED_PWM_NEG_EN13  ( 0 ),
        .FIXED_PWM_NEG_EN14  ( 0 ),
        .FIXED_PWM_NEG_EN15  ( 0 ),
        .FIXED_PWM_NEG_EN16  ( 0 ),
        .FIXED_PWM_NEGEDGE1  ( 0 ),
        .FIXED_PWM_NEGEDGE2  ( 0 ),
        .FIXED_PWM_NEGEDGE3  ( 0 ),
        .FIXED_PWM_NEGEDGE4  ( 0 ),
        .FIXED_PWM_NEGEDGE5  ( 0 ),
        .FIXED_PWM_NEGEDGE6  ( 0 ),
        .FIXED_PWM_NEGEDGE7  ( 0 ),
        .FIXED_PWM_NEGEDGE8  ( 0 ),
        .FIXED_PWM_NEGEDGE9  ( 0 ),
        .FIXED_PWM_NEGEDGE10 ( 0 ),
        .FIXED_PWM_NEGEDGE11 ( 0 ),
        .FIXED_PWM_NEGEDGE12 ( 0 ),
        .FIXED_PWM_NEGEDGE13 ( 0 ),
        .FIXED_PWM_NEGEDGE14 ( 0 ),
        .FIXED_PWM_NEGEDGE15 ( 0 ),
        .FIXED_PWM_NEGEDGE16 ( 0 ),
        .FIXED_PWM_POS_EN1   ( 1 ),
        .FIXED_PWM_POS_EN2   ( 1 ),
        .FIXED_PWM_POS_EN3   ( 1 ),
        .FIXED_PWM_POS_EN4   ( 1 ),
        .FIXED_PWM_POS_EN5   ( 1 ),
        .FIXED_PWM_POS_EN6   ( 1 ),
        .FIXED_PWM_POS_EN7   ( 1 ),
        .FIXED_PWM_POS_EN8   ( 1 ),
        .FIXED_PWM_POS_EN9   ( 1 ),
        .FIXED_PWM_POS_EN10  ( 1 ),
        .FIXED_PWM_POS_EN11  ( 1 ),
        .FIXED_PWM_POS_EN12  ( 1 ),
        .FIXED_PWM_POS_EN13  ( 1 ),
        .FIXED_PWM_POS_EN14  ( 1 ),
        .FIXED_PWM_POS_EN15  ( 1 ),
        .FIXED_PWM_POS_EN16  ( 1 ),
        .FIXED_PWM_POSEDGE1  ( 0 ),
        .FIXED_PWM_POSEDGE2  ( 0 ),
        .FIXED_PWM_POSEDGE3  ( 0 ),
        .FIXED_PWM_POSEDGE4  ( 0 ),
        .FIXED_PWM_POSEDGE5  ( 0 ),
        .FIXED_PWM_POSEDGE6  ( 0 ),
        .FIXED_PWM_POSEDGE7  ( 0 ),
        .FIXED_PWM_POSEDGE8  ( 0 ),
        .FIXED_PWM_POSEDGE9  ( 0 ),
        .FIXED_PWM_POSEDGE10 ( 0 ),
        .FIXED_PWM_POSEDGE11 ( 0 ),
        .FIXED_PWM_POSEDGE12 ( 0 ),
        .FIXED_PWM_POSEDGE13 ( 0 ),
        .FIXED_PWM_POSEDGE14 ( 0 ),
        .FIXED_PWM_POSEDGE15 ( 0 ),
        .FIXED_PWM_POSEDGE16 ( 0 ),
        .PWM_NUM             ( 8 ),
        .PWM_STRETCH_VALUE1  ( 0 ),
        .PWM_STRETCH_VALUE2  ( 0 ),
        .PWM_STRETCH_VALUE3  ( 0 ),
        .PWM_STRETCH_VALUE4  ( 0 ),
        .PWM_STRETCH_VALUE5  ( 0 ),
        .PWM_STRETCH_VALUE6  ( 0 ),
        .PWM_STRETCH_VALUE7  ( 0 ),
        .PWM_STRETCH_VALUE8  ( 0 ),
        .PWM_STRETCH_VALUE9  ( 0 ),
        .PWM_STRETCH_VALUE10 ( 0 ),
        .PWM_STRETCH_VALUE11 ( 0 ),
        .PWM_STRETCH_VALUE12 ( 0 ),
        .PWM_STRETCH_VALUE13 ( 0 ),
        .PWM_STRETCH_VALUE14 ( 0 ),
        .PWM_STRETCH_VALUE15 ( 0 ),
        .PWM_STRETCH_VALUE16 ( 0 ),
        .SHADOW_REG_EN1      ( 0 ),
        .SHADOW_REG_EN2      ( 0 ),
        .SHADOW_REG_EN3      ( 0 ),
        .SHADOW_REG_EN4      ( 0 ),
        .SHADOW_REG_EN5      ( 0 ),
        .SHADOW_REG_EN6      ( 0 ),
        .SHADOW_REG_EN7      ( 0 ),
        .SHADOW_REG_EN8      ( 0 ),
        .SHADOW_REG_EN9      ( 0 ),
        .SHADOW_REG_EN10     ( 0 ),
        .SHADOW_REG_EN11     ( 0 ),
        .SHADOW_REG_EN12     ( 0 ),
        .SHADOW_REG_EN13     ( 0 ),
        .SHADOW_REG_EN14     ( 0 ),
        .SHADOW_REG_EN15     ( 0 ),
        .SHADOW_REG_EN16     ( 0 ),
        .TACH_EDGE1          ( 0 ),
        .TACH_EDGE2          ( 0 ),
        .TACH_EDGE3          ( 0 ),
        .TACH_EDGE4          ( 0 ),
        .TACH_EDGE5          ( 0 ),
        .TACH_EDGE6          ( 0 ),
        .TACH_EDGE7          ( 0 ),
        .TACH_EDGE8          ( 0 ),
        .TACH_EDGE9          ( 0 ),
        .TACH_EDGE10         ( 0 ),
        .TACH_EDGE11         ( 0 ),
        .TACH_EDGE12         ( 0 ),
        .TACH_EDGE13         ( 0 ),
        .TACH_EDGE14         ( 0 ),
        .TACH_EDGE15         ( 0 ),
        .TACH_EDGE16         ( 0 ),
        .TACH_NUM            ( 1 ),
        .TACHINT_ACT_LEVEL   ( 0 ) )
corepwm_0_0(
        // Inputs
        .PADDR   ( CoreAPB3_0_APBmslave0_PADDR_0 ),
        .PCLK    ( FAB_CCC_GL0_net_0 ),
        .PENABLE ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PRESETN ( MSS_READY_net_0 ),
        .PSEL    ( CoreAPB3_0_APBmslave0_PSELx ),
        .PWDATA  ( CoreAPB3_0_APBmslave0_PWDATA_0 ),
        .TACHIN  ( TACHIN ),
        .PWRITE  ( CoreAPB3_0_APBmslave0_PWRITE ),
        // Outputs
        .PRDATA  ( CoreAPB3_0_APBmslave0_PRDATA ),
        .PREADY  ( CoreAPB3_0_APBmslave0_PREADY ),
        .PSLVERR ( CoreAPB3_0_APBmslave0_PSLVERR ),
        .TACHINT ( corepwm_0_0_TACHINT ),
        .PWM     ( PWM_net_0 ) 
        );

//--------CoreResetP   -   Actel:DirectCore:CoreResetP:7.0.104
CoreResetP #( 
        .DDR_WAIT            ( 200 ),
        .DEVICE_090          ( 0 ),
        .DEVICE_VOLTAGE      ( 2 ),
        .ENABLE_SOFT_RESETS  ( 0 ),
        .EXT_RESET_CFG       ( 0 ),
        .FDDR_IN_USE         ( 0 ),
        .MDDR_IN_USE         ( 0 ),
        .SDIF0_IN_USE        ( 0 ),
        .SDIF0_PCIE          ( 0 ),
        .SDIF0_PCIE_HOTRESET ( 1 ),
        .SDIF0_PCIE_L2P2     ( 1 ),
        .SDIF1_IN_USE        ( 0 ),
        .SDIF1_PCIE          ( 0 ),
        .SDIF1_PCIE_HOTRESET ( 1 ),
        .SDIF1_PCIE_L2P2     ( 1 ),
        .SDIF2_IN_USE        ( 0 ),
        .SDIF2_PCIE          ( 0 ),
        .SDIF2_PCIE_HOTRESET ( 1 ),
        .SDIF2_PCIE_L2P2     ( 1 ),
        .SDIF3_IN_USE        ( 0 ),
        .SDIF3_PCIE          ( 0 ),
        .SDIF3_PCIE_HOTRESET ( 1 ),
        .SDIF3_PCIE_L2P2     ( 1 ) )
CORERESETP_0(
        // Inputs
        .RESET_N_M2F                    ( mss_sb_MSS_TMP_0_MSS_RESET_N_M2F ),
        .FIC_2_APB_M_PRESET_N           ( mss_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N ),
        .POWER_ON_RESET_N               ( POWER_ON_RESET_N_net_0 ),
        .FAB_RESET_N                    ( FAB_RESET_N ),
        .RCOSC_25_50MHZ                 ( FABOSC_0_RCOSC_25_50MHZ_O2F ),
        .CLK_BASE                       ( FAB_CCC_GL0_net_0 ),
        .CLK_LTSSM                      ( GND_net ), // tied to 1'b0 from definition
        .FPLL_LOCK                      ( VCC_net ), // tied to 1'b1 from definition
        .SDIF0_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .SDIF1_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .SDIF2_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .SDIF3_SPLL_LOCK                ( VCC_net ), // tied to 1'b1 from definition
        .CONFIG1_DONE                   ( VCC_net ),
        .CONFIG2_DONE                   ( VCC_net ),
        .SDIF0_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF1_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF2_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF3_PERST_N                  ( VCC_net ), // tied to 1'b1 from definition
        .SDIF0_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF0_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF0_PRDATA                   ( SDIF0_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SDIF1_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF1_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF1_PRDATA                   ( SDIF1_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SDIF2_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF2_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF2_PRDATA                   ( SDIF2_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SDIF3_PSEL                     ( GND_net ), // tied to 1'b0 from definition
        .SDIF3_PWRITE                   ( VCC_net ), // tied to 1'b1 from definition
        .SDIF3_PRDATA                   ( SDIF3_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        .SOFT_EXT_RESET_OUT             ( GND_net ), // tied to 1'b0 from definition
        .SOFT_RESET_F2M                 ( GND_net ), // tied to 1'b0 from definition
        .SOFT_M3_RESET                  ( GND_net ), // tied to 1'b0 from definition
        .SOFT_MDDR_DDR_AXI_S_CORE_RESET ( GND_net ), // tied to 1'b0 from definition
        .SOFT_FDDR_CORE_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_0_CORE_RESET        ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF0_1_CORE_RESET        ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF1_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF1_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF2_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF2_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF3_PHY_RESET           ( GND_net ), // tied to 1'b0 from definition
        .SOFT_SDIF3_CORE_RESET          ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .MSS_HPMS_READY                 ( MSS_READY_net_0 ),
        .DDR_READY                      (  ),
        .SDIF_READY                     (  ),
        .RESET_N_F2M                    ( CORERESETP_0_RESET_N_F2M ),
        .M3_RESET_N                     (  ),
        .EXT_RESET_OUT                  (  ),
        .MDDR_DDR_AXI_S_CORE_RESET_N    (  ),
        .FDDR_CORE_RESET_N              (  ),
        .SDIF0_CORE_RESET_N             (  ),
        .SDIF0_0_CORE_RESET_N           (  ),
        .SDIF0_1_CORE_RESET_N           (  ),
        .SDIF0_PHY_RESET_N              (  ),
        .SDIF1_CORE_RESET_N             (  ),
        .SDIF1_PHY_RESET_N              (  ),
        .SDIF2_CORE_RESET_N             (  ),
        .SDIF2_PHY_RESET_N              (  ),
        .SDIF3_CORE_RESET_N             (  ),
        .SDIF3_PHY_RESET_N              (  ),
        .SDIF_RELEASED                  (  ),
        .INIT_DONE                      ( INIT_DONE_net_0 ) 
        );

//--------mss_sb_CoreUARTapb_2_0_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.2.2
mss_sb_CoreUARTapb_2_0_CoreUARTapb #( 
        .BAUD_VAL_FRCTN    ( 0 ),
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .BAUD_VALUE        ( 1 ),
        .FAMILY            ( 19 ),
        .FIXEDMODE         ( 0 ),
        .PRG_BIT8          ( 0 ),
        .PRG_PARITY        ( 0 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
CoreUARTapb_2_0(
        // Inputs
        .PCLK        ( FAB_CCC_GL0_net_0 ),
        .PRESETN     ( MSS_READY_net_0 ),
        .PADDR       ( CoreAPB3_0_APBmslave0_PADDR_2 ),
        .PSEL        ( CoreAPB3_0_APBmslave2_PSELx ),
        .PENABLE     ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE      ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PWDATA      ( CoreAPB3_0_APBmslave0_PWDATA_2 ),
        .RX          ( RX ),
        // Outputs
        .PRDATA      ( CoreAPB3_0_APBmslave2_PRDATA ),
        .TXRDY       ( CoreUARTapb_2_0_TXRDY ),
        .RXRDY       ( CoreUARTapb_2_0_RXRDY ),
        .PARITY_ERR  ( CoreUARTapb_2_0_PARITY_ERR ),
        .OVERFLOW    ( CoreUARTapb_2_0_OVERFLOW ),
        .TX          ( TX_net_0 ),
        .PREADY      ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERR     ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .FRAMING_ERR ( CoreUARTapb_2_0_FRAMING_ERR ) 
        );

//--------OR3
OR3 CoreUARTapb_2_0_intr_or_0(
        // Inputs
        .A ( CoreUARTapb_2_0_FRAMING_ERR ),
        .B ( CoreUARTapb_2_0_OVERFLOW ),
        .C ( CoreUARTapb_2_0_PARITY_ERR ),
        // Outputs
        .Y ( CoreUARTapb_2_0_intr_or_0_Y ) 
        );

//--------OR3
OR3 CoreUARTapb_2_0_intr_or_1(
        // Inputs
        .A ( CoreUARTapb_2_0_RXRDY ),
        .B ( CoreUARTapb_2_0_TXRDY ),
        .C ( GND_net ),
        // Outputs
        .Y ( CoreUARTapb_2_0_intr_or_1_Y ) 
        );

//--------OR3
OR3 CoreUARTapb_2_0_intr_or_2(
        // Inputs
        .A ( CoreUARTapb_2_0_intr_or_1_Y ),
        .B ( CoreUARTapb_2_0_intr_or_0_Y ),
        .C ( GND_net ),
        // Outputs
        .Y ( CoreUARTapb_2_0_intr_or_2_Y ) 
        );

//--------mss_sb_CoreUARTapb_2_1_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.2.2
mss_sb_CoreUARTapb_2_1_CoreUARTapb #( 
        .BAUD_VAL_FRCTN    ( 0 ),
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .BAUD_VALUE        ( 1 ),
        .FAMILY            ( 19 ),
        .FIXEDMODE         ( 0 ),
        .PRG_BIT8          ( 0 ),
        .PRG_PARITY        ( 0 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
CoreUARTapb_2_1(
        // Inputs
        .PCLK        ( FAB_CCC_GL0_net_0 ),
        .PRESETN     ( MSS_READY_net_0 ),
        .PADDR       ( CoreAPB3_0_APBmslave0_PADDR_3 ),
        .PSEL        ( CoreAPB3_0_APBmslave3_PSELx ),
        .PENABLE     ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE      ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PWDATA      ( CoreAPB3_0_APBmslave0_PWDATA_3 ),
        .RX          ( RX_0 ),
        // Outputs
        .PRDATA      ( CoreAPB3_0_APBmslave3_PRDATA ),
        .TXRDY       ( CoreUARTapb_2_1_TXRDY ),
        .RXRDY       ( CoreUARTapb_2_1_RXRDY ),
        .PARITY_ERR  ( CoreUARTapb_2_1_PARITY_ERR ),
        .OVERFLOW    ( CoreUARTapb_2_1_OVERFLOW ),
        .TX          ( TX_0_net_0 ),
        .PREADY      ( CoreAPB3_0_APBmslave3_PREADY ),
        .PSLVERR     ( CoreAPB3_0_APBmslave3_PSLVERR ),
        .FRAMING_ERR ( CoreUARTapb_2_1_FRAMING_ERR ) 
        );

//--------OR3
OR3 CoreUARTapb_2_1_intr_or_0(
        // Inputs
        .A ( CoreUARTapb_2_1_FRAMING_ERR ),
        .B ( CoreUARTapb_2_1_OVERFLOW ),
        .C ( CoreUARTapb_2_1_PARITY_ERR ),
        // Outputs
        .Y ( CoreUARTapb_2_1_intr_or_0_Y ) 
        );

//--------OR3
OR3 CoreUARTapb_2_1_intr_or_1(
        // Inputs
        .A ( CoreUARTapb_2_1_RXRDY ),
        .B ( CoreUARTapb_2_1_TXRDY ),
        .C ( GND_net ),
        // Outputs
        .Y ( CoreUARTapb_2_1_intr_or_1_Y ) 
        );

//--------OR3
OR3 CoreUARTapb_2_1_intr_or_2(
        // Inputs
        .A ( CoreUARTapb_2_1_intr_or_1_Y ),
        .B ( CoreUARTapb_2_1_intr_or_0_Y ),
        .C ( GND_net ),
        // Outputs
        .Y ( CoreUARTapb_2_1_intr_or_2_Y ) 
        );

//--------mss_sb_CoreUARTapb_2_2_CoreUARTapb   -   Actel:DirectCore:CoreUARTapb:5.2.2
mss_sb_CoreUARTapb_2_2_CoreUARTapb #( 
        .BAUD_VAL_FRCTN    ( 0 ),
        .BAUD_VAL_FRCTN_EN ( 0 ),
        .BAUD_VALUE        ( 1 ),
        .FAMILY            ( 19 ),
        .FIXEDMODE         ( 0 ),
        .PRG_BIT8          ( 0 ),
        .PRG_PARITY        ( 0 ),
        .RX_FIFO           ( 1 ),
        .RX_LEGACY_MODE    ( 0 ),
        .TX_FIFO           ( 1 ) )
CoreUARTapb_2_2(
        // Inputs
        .PCLK        ( FAB_CCC_GL0_net_0 ),
        .PRESETN     ( MSS_READY_net_0 ),
        .PADDR       ( CoreAPB3_0_APBmslave0_PADDR_4 ),
        .PSEL        ( CoreAPB3_0_APBmslave4_PSELx ),
        .PENABLE     ( CoreAPB3_0_APBmslave0_PENABLE ),
        .PWRITE      ( CoreAPB3_0_APBmslave0_PWRITE ),
        .PWDATA      ( CoreAPB3_0_APBmslave0_PWDATA_4 ),
        .RX          ( RX_1 ),
        // Outputs
        .PRDATA      ( CoreAPB3_0_APBmslave4_PRDATA ),
        .TXRDY       ( CoreUARTapb_2_2_TXRDY ),
        .RXRDY       ( CoreUARTapb_2_2_RXRDY ),
        .PARITY_ERR  ( CoreUARTapb_2_2_PARITY_ERR ),
        .OVERFLOW    ( CoreUARTapb_2_2_OVERFLOW ),
        .TX          ( TX_1_net_0 ),
        .PREADY      ( CoreAPB3_0_APBmslave4_PREADY ),
        .PSLVERR     ( CoreAPB3_0_APBmslave4_PSLVERR ),
        .FRAMING_ERR ( CoreUARTapb_2_2_FRAMING_ERR ) 
        );

//--------OR3
OR3 CoreUARTapb_2_2_intr_or_0(
        // Inputs
        .A ( CoreUARTapb_2_2_FRAMING_ERR ),
        .B ( CoreUARTapb_2_2_OVERFLOW ),
        .C ( CoreUARTapb_2_2_PARITY_ERR ),
        // Outputs
        .Y ( CoreUARTapb_2_2_intr_or_0_Y ) 
        );

//--------OR3
OR3 CoreUARTapb_2_2_intr_or_1(
        // Inputs
        .A ( CoreUARTapb_2_2_RXRDY ),
        .B ( CoreUARTapb_2_2_TXRDY ),
        .C ( GND_net ),
        // Outputs
        .Y ( CoreUARTapb_2_2_intr_or_1_Y ) 
        );

//--------OR3
OR3 CoreUARTapb_2_2_intr_or_2(
        // Inputs
        .A ( CoreUARTapb_2_2_intr_or_1_Y ),
        .B ( CoreUARTapb_2_2_intr_or_0_Y ),
        .C ( GND_net ),
        // Outputs
        .Y ( CoreUARTapb_2_2_intr_or_2_Y ) 
        );

//--------mss_sb_FABOSC_0_OSC   -   Actel:SgCore:OSC:1.0.105
mss_sb_FABOSC_0_OSC FABOSC_0(
        // Inputs
        .XTL                ( GND_net ), // tied to 1'b0 from definition
        // Outputs
        .RCOSC_25_50MHZ_CCC ( FABOSC_0_RCOSC_25_50MHZ_CCC_OUT_RCOSC_25_50MHZ_CCC ),
        .RCOSC_25_50MHZ_O2F ( FABOSC_0_RCOSC_25_50MHZ_O2F ),
        .RCOSC_1MHZ_CCC     (  ),
        .RCOSC_1MHZ_O2F     (  ),
        .XTLOSC_CCC         (  ),
        .XTLOSC_O2F         (  ) 
        );

//--------mss_sb_MSS
mss_sb_MSS mss_sb_MSS_0(
        // Inputs
        .MCCC_CLK_BASE          ( FAB_CCC_GL0_net_0 ),
        .MCCC_CLK_BASE_PLL_LOCK ( FAB_CCC_LOCK_net_0 ),
        .MSS_RESET_N_F2M        ( CORERESETP_0_RESET_N_F2M ),
        .FIC_0_APB_M_PREADY     ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PREADY ),
        .FIC_0_APB_M_PSLVERR    ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSLVERR ),
        .FIC_2_APB_M_PREADY     ( VCC_net ), // tied to 1'b1 from definition
        .FIC_2_APB_M_PSLVERR    ( GND_net ), // tied to 1'b0 from definition
        .MSS_INT_F2M            ( MSS_INT_F2M_net_0 ),
        .FIC_0_APB_M_PRDATA     ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PRDATA ),
        .FIC_2_APB_M_PRDATA     ( FIC_2_APB_M_PRDATA_const_net_0 ), // tied to 32'h00000000 from definition
        // Outputs
        .MSS_RESET_N_M2F        ( mss_sb_MSS_TMP_0_MSS_RESET_N_M2F ),
        .FIC_0_APB_M_PSEL       ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PSELx ),
        .FIC_0_APB_M_PWRITE     ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWRITE ),
        .FIC_0_APB_M_PENABLE    ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PENABLE ),
        .FIC_2_APB_M_PRESET_N   ( mss_sb_MSS_TMP_0_FIC_2_APB_M_PRESET_N ),
        .FIC_2_APB_M_PCLK       (  ),
        .FIC_2_APB_M_PWRITE     (  ),
        .FIC_2_APB_M_PENABLE    (  ),
        .FIC_2_APB_M_PSEL       (  ),
        .FIC_0_APB_M_PADDR      ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PADDR ),
        .FIC_0_APB_M_PWDATA     ( mss_sb_MSS_TMP_0_FIC_0_APB_MASTER_PWDATA ),
        .FIC_2_APB_M_PADDR      (  ),
        .FIC_2_APB_M_PWDATA     (  ) 
        );

//--------SYSRESET
SYSRESET SYSRESET_POR(
        // Inputs
        .DEVRST_N         ( DEVRST_N ),
        // Outputs
        .POWER_ON_RESET_N ( POWER_ON_RESET_N_net_0 ) 
        );


endmodule
