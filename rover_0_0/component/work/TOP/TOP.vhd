----------------------------------------------------------------------
-- Created by SmartDesign Sun Feb 07 15:04:34 2016
-- Version: v11.5 SP3 11.5.3.10
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library smartfusion2;
use smartfusion2.all;
library COREUART_LIB;
use COREUART_LIB.all;
use COREUART_LIB.TOP_COREUART_0_components.all;
----------------------------------------------------------------------
-- TOP entity declaration
----------------------------------------------------------------------
entity TOP is
    -- Port list
    port(
        -- Inputs
        echo      : in  std_logic;
        rx        : in  std_logic;
        -- Outputs
        servo_pwm : out std_logic;
        trig      : out std_logic;
        tx        : out std_logic
        );
end TOP;
----------------------------------------------------------------------
-- TOP architecture body
----------------------------------------------------------------------
architecture RTL of TOP is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- BT_module
component BT_module
    -- Port list
    port(
        -- Inputs
        clk      : in  std_logic;
        data_rx  : in  std_logic_vector(7 downto 0);
        rstn     : in  std_logic;
        rxrdy    : in  std_logic;
        -- Outputs
        data_buf : out std_logic_vector(7 downto 0);
        oen      : out std_logic
        );
end component;
-- TOP_COREUART_0_COREUART   -   Actel:DirectCore:COREUART:5.5.101
component TOP_COREUART_0_COREUART
    generic( 
        BAUD_VAL_FRCTN_EN : integer := 0 ;
        FAMILY            : integer := 19 ;
        RX_FIFO           : integer := 0 ;
        RX_LEGACY_MODE    : integer := 0 ;
        TX_FIFO           : integer := 0 
        );
    -- Port list
    port(
        -- Inputs
        BAUD_VAL          : in  std_logic_vector(12 downto 0);
        BAUD_VAL_FRACTION : in  std_logic_vector(2 downto 0);
        BIT8              : in  std_logic;
        CLK               : in  std_logic;
        CSN               : in  std_logic;
        DATA_IN           : in  std_logic_vector(7 downto 0);
        ODD_N_EVEN        : in  std_logic;
        OEN               : in  std_logic;
        PARITY_EN         : in  std_logic;
        RESET_N           : in  std_logic;
        RX                : in  std_logic;
        WEN               : in  std_logic;
        -- Outputs
        DATA_OUT          : out std_logic_vector(7 downto 0);
        FRAMING_ERR       : out std_logic;
        OVERFLOW          : out std_logic;
        PARITY_ERR        : out std_logic;
        RXRDY             : out std_logic;
        TX                : out std_logic;
        TXRDY             : out std_logic
        );
end component;
-- TOP_FCCC_0_FCCC   -   Actel:SgCore:FCCC:2.0.200
component TOP_FCCC_0_FCCC
    -- Port list
    port(
        -- Inputs
        RCOSC_1MHZ : in  std_logic;
        -- Outputs
        GL0        : out std_logic;
        LOCK       : out std_logic
        );
end component;
-- locator_control
component locator_control
    -- Port list
    port(
        -- Inputs
        clk        : in  std_logic;
        new_ready  : in  std_logic;
        open_angle : in  std_logic_vector(7 downto 0);
        rst_n      : in  std_logic;
        -- Outputs
        angle      : out std_logic_vector(3 downto 0);
        angle1     : out std_logic_vector(3 downto 0);
        en_sonar   : out std_logic;
        en_timer   : out std_logic
        );
end component;
-- TOP_OSC_0_OSC   -   Actel:SgCore:OSC:1.0.103
component TOP_OSC_0_OSC
    -- Port list
    port(
        -- Inputs
        XTL                : in  std_logic;
        -- Outputs
        RCOSC_1MHZ_CCC     : out std_logic;
        RCOSC_1MHZ_O2F     : out std_logic;
        RCOSC_25_50MHZ_CCC : out std_logic;
        RCOSC_25_50MHZ_O2F : out std_logic;
        XTLOSC_CCC         : out std_logic;
        XTLOSC_O2F         : out std_logic
        );
end component;
-- pulse_meash
component pulse_meash
    -- Port list
    port(
        -- Inputs
        clk       : in  std_logic;
        en        : in  std_logic;
        rst_n     : in  std_logic;
        signal0   : in  std_logic;
        -- Outputs
        new_ready : out std_logic;
        time      : out std_logic_vector(15 downto 0)
        );
end component;
-- servo_driver
component servo_driver
    -- Port list
    port(
        -- Inputs
        angle     : in  std_logic_vector(3 downto 0);
        clk       : in  std_logic;
        rst_n     : in  std_logic;
        -- Outputs
        servo_pwm : out std_logic
        );
end component;
-- time_sender
component time_sender
    -- Port list
    port(
        -- Inputs
        angle     : in  std_logic_vector(3 downto 0);
        clk       : in  std_logic;
        new_ready : in  std_logic;
        rst_n     : in  std_logic;
        time1     : in  std_logic_vector(15 downto 0);
        txrdy     : in  std_logic;
        -- Outputs
        data_out  : out std_logic_vector(7 downto 0);
        wen       : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal BT_module_0_data_buf                    : std_logic_vector(7 downto 0);
signal BT_module_0_oen                         : std_logic;
signal COREUART_0_DATA_OUT                     : std_logic_vector(7 downto 0);
signal COREUART_0_RXRDY                        : std_logic;
signal COREUART_0_TXRDY                        : std_logic;
signal FCCC_0_GL0                              : std_logic;
signal FCCC_0_LOCK                             : std_logic;
signal locator_control_0_angle                 : std_logic_vector(3 downto 0);
signal locator_control_0_angle1                : std_logic_vector(3 downto 0);
signal locator_control_0_en_timer              : std_logic;
signal OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC : std_logic;
signal pulse_meash_0_new_ready                 : std_logic;
signal pulse_meash_0_time                      : std_logic_vector(15 downto 0);
signal servo_pwm_net_0                         : std_logic;
signal time_sender_0_data_out                  : std_logic_vector(7 downto 0);
signal time_sender_0_wen                       : std_logic;
signal trig_net_0                              : std_logic;
signal tx_net_0                                : std_logic;
signal tx_net_1                                : std_logic;
signal servo_pwm_net_1                         : std_logic;
signal trig_net_1                              : std_logic;
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal VCC_net                                 : std_logic;
signal GND_net                                 : std_logic;
signal BAUD_VAL_const_net_0                    : std_logic_vector(12 downto 0);
signal BAUD_VAL_FRACTION_const_net_0           : std_logic_vector(2 downto 0);
signal PADDR_const_net_0                       : std_logic_vector(7 downto 2);
signal PWDATA_const_net_0                      : std_logic_vector(7 downto 0);

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 VCC_net                       <= '1';
 GND_net                       <= '0';
 BAUD_VAL_const_net_0          <= B"0000000011010";
 BAUD_VAL_FRACTION_const_net_0 <= B"000";
 PADDR_const_net_0             <= B"000000";
 PWDATA_const_net_0            <= B"00000000";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 tx_net_1        <= tx_net_0;
 tx              <= tx_net_1;
 servo_pwm_net_1 <= servo_pwm_net_0;
 servo_pwm       <= servo_pwm_net_1;
 trig_net_1      <= trig_net_0;
 trig            <= trig_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- BT_module_0
BT_module_0 : BT_module
    port map( 
        -- Inputs
        clk      => FCCC_0_GL0,
        rstn     => FCCC_0_LOCK,
        rxrdy    => COREUART_0_RXRDY,
        data_rx  => COREUART_0_DATA_OUT,
        -- Outputs
        data_buf => BT_module_0_data_buf,
        oen      => BT_module_0_oen 
        );
-- COREUART_0   -   Actel:DirectCore:COREUART:5.5.101
COREUART_0 : TOP_COREUART_0_COREUART
    generic map( 
        BAUD_VAL_FRCTN_EN => ( 0 ),
        FAMILY            => ( 19 ),
        RX_FIFO           => ( 0 ),
        RX_LEGACY_MODE    => ( 0 ),
        TX_FIFO           => ( 0 )
        )
    port map( 
        -- Inputs
        BIT8              => VCC_net,
        CLK               => FCCC_0_GL0,
        CSN               => GND_net,
        ODD_N_EVEN        => GND_net,
        OEN               => BT_module_0_oen,
        PARITY_EN         => GND_net,
        RESET_N           => FCCC_0_LOCK,
        RX                => rx,
        WEN               => time_sender_0_wen,
        BAUD_VAL          => BAUD_VAL_const_net_0,
        DATA_IN           => time_sender_0_data_out,
        BAUD_VAL_FRACTION => BAUD_VAL_FRACTION_const_net_0, -- tied to X"0" from definition
        -- Outputs
        OVERFLOW          => OPEN,
        PARITY_ERR        => OPEN,
        RXRDY             => COREUART_0_RXRDY,
        TX                => tx_net_0,
        TXRDY             => COREUART_0_TXRDY,
        FRAMING_ERR       => OPEN,
        DATA_OUT          => COREUART_0_DATA_OUT 
        );
-- FCCC_0   -   Actel:SgCore:FCCC:2.0.200
FCCC_0 : TOP_FCCC_0_FCCC
    port map( 
        -- Inputs
        RCOSC_1MHZ => OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC,
        -- Outputs
        GL0        => FCCC_0_GL0,
        LOCK       => FCCC_0_LOCK 
        );
-- locator_control_0
locator_control_0 : locator_control
    port map( 
        -- Inputs
        clk        => FCCC_0_GL0,
        rst_n      => FCCC_0_LOCK,
        new_ready  => pulse_meash_0_new_ready,
        open_angle => BT_module_0_data_buf,
        -- Outputs
        en_sonar   => trig_net_0,
        en_timer   => locator_control_0_en_timer,
        angle      => locator_control_0_angle,
        angle1     => locator_control_0_angle1 
        );
-- OSC_0   -   Actel:SgCore:OSC:1.0.103
OSC_0 : TOP_OSC_0_OSC
    port map( 
        -- Inputs
        XTL                => GND_net, -- tied to '0' from definition
        -- Outputs
        RCOSC_25_50MHZ_CCC => OPEN,
        RCOSC_25_50MHZ_O2F => OPEN,
        RCOSC_1MHZ_CCC     => OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC,
        RCOSC_1MHZ_O2F     => OPEN,
        XTLOSC_CCC         => OPEN,
        XTLOSC_O2F         => OPEN 
        );
-- pulse_meash_0
pulse_meash_0 : pulse_meash
    port map( 
        -- Inputs
        clk       => FCCC_0_GL0,
        rst_n     => FCCC_0_LOCK,
        en        => locator_control_0_en_timer,
        signal0   => echo,
        -- Outputs
        new_ready => pulse_meash_0_new_ready,
        time      => pulse_meash_0_time 
        );
-- servo_driver_0
servo_driver_0 : servo_driver
    port map( 
        -- Inputs
        clk       => FCCC_0_GL0,
        rst_n     => FCCC_0_LOCK,
        angle     => locator_control_0_angle,
        -- Outputs
        servo_pwm => servo_pwm_net_0 
        );
-- time_sender_0
time_sender_0 : time_sender
    port map( 
        -- Inputs
        clk       => FCCC_0_GL0,
        rst_n     => FCCC_0_LOCK,
        new_ready => pulse_meash_0_new_ready,
        time1     => pulse_meash_0_time,
        angle     => locator_control_0_angle1,
        txrdy     => COREUART_0_TXRDY,
        -- Outputs
        wen       => time_sender_0_wen,
        data_out  => time_sender_0_data_out 
        );

end RTL;
