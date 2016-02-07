-- Version: v11.5 SP3 11.5.3.10

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity TOP_OSC_0_OSC is

    port( XTL                : in    std_logic;
          RCOSC_25_50MHZ_CCC : out   std_logic;
          RCOSC_25_50MHZ_O2F : out   std_logic;
          RCOSC_1MHZ_CCC     : out   std_logic;
          RCOSC_1MHZ_O2F     : out   std_logic;
          XTLOSC_CCC         : out   std_logic;
          XTLOSC_O2F         : out   std_logic
        );

end TOP_OSC_0_OSC;

architecture DEF_ARCH of TOP_OSC_0_OSC is 

  component RCOSC_1MHZ
    port( CLKOUT : out   std_logic
        );
  end component;


begin 


    I_RCOSC_1MHZ : RCOSC_1MHZ
      port map(CLKOUT => RCOSC_1MHZ_CCC);
    

end DEF_ARCH; 
