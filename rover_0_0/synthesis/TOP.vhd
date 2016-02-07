-- Version: v11.5 SP3 11.5.3.10

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity pulse_meash is

    port( pulse_meash_0_time         : out   std_logic_vector(15 downto 0);
          pulse_meash_0_new_ready    : out   std_logic;
          FCCC_0_LOCK                : in    std_logic;
          FCCC_0_GL0                 : in    std_logic;
          echo_c                     : in    std_logic;
          locator_control_0_en_timer : in    std_logic
        );

end pulse_meash;

architecture DEF_ARCH of pulse_meash is 

  component ARI1
    generic (INIT:std_logic_vector(19 downto 0) := x"00000");

    port( A   : in    std_logic := 'U';
          B   : in    std_logic := 'U';
          C   : in    std_logic := 'U';
          D   : in    std_logic := 'U';
          FCI : in    std_logic := 'U';
          S   : out   std_logic;
          Y   : out   std_logic;
          FCO : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

    signal \i[9]_net_1\, \i_i[9]\, \i[8]_net_1\, \i_i[8]\, 
        \i[7]_net_1\, \i_i[7]\, \i[6]_net_1\, \i_i[6]\, 
        \i[5]_net_1\, \i_i[5]\, \i[4]_net_1\, \i_i[4]\, 
        \i[3]_net_1\, \i_i[3]\, \i[16]_net_1\, \i_i[16]\, 
        \i[15]_net_1\, \i_i[15]\, \i[14]_net_1\, \i_i[14]\, 
        \i[13]_net_1\, \i_i[13]\, \i[12]_net_1\, \i_i[12]\, 
        \i[11]_net_1\, \i_i[11]\, \i[24]_net_1\, \i_i[24]\, 
        \i[23]_net_1\, \i_i[23]\, \i[22]_net_1\, \i_i[22]\, 
        \i[21]_net_1\, \i_i[21]\, \i[20]_net_1\, \i_i[20]\, 
        \i[19]_net_1\, \i_i[19]\, \i[18]_net_1\, \i_i[18]\, 
        mult1_un222_sum_s_9_S, \mult1_un222_sum_i_0[10]\, 
        mult1_un166_sum_s_9_S, \mult1_un166_sum_i_0[10]\, 
        mult1_un173_sum_s_9_S, \mult1_un173_sum_i_0[10]\, 
        mult1_un180_sum_s_9_S, \mult1_un180_sum_i_0[10]\, 
        mult1_un187_sum_s_9_S, \mult1_un187_sum_i_0[10]\, 
        mult1_un194_sum_s_9_S, \mult1_un194_sum_i_0[10]\, 
        mult1_un201_sum_s_9_S, \mult1_un201_sum_i_0[10]\, 
        mult1_un208_sum_s_9_S, \mult1_un208_sum_i_0[10]\, 
        mult1_un215_sum_s_9_S, \mult1_un215_sum_i_0[10]\, 
        mult1_un124_sum_s_9_S, \mult1_un124_sum_i_0[10]\, 
        mult1_un131_sum_s_9_S, \mult1_un131_sum_i_0[10]\, 
        mult1_un138_sum_s_9_S, \mult1_un138_sum_i_0[10]\, 
        mult1_un145_sum_s_9_S, \mult1_un145_sum_i_0[10]\, 
        mult1_un152_sum_s_9_S, \mult1_un152_sum_i_0[10]\, 
        mult1_un159_sum_s_9_S, \mult1_un159_sum_i_0[10]\, 
        mult1_un229_sum_s_9_S, \mult1_un229_sum_i_0[10]\, 
        VCC_net_1, \state[1]_net_1\, \state[0]_net_1\, GND_net_1, 
        \state_s3_i_i_a2\, \i[26]_net_1\, \i_4_262_i_i_a2\, 
        un1_state_2_i_0, \i[27]_net_1\, \i_4_0_255_i_i_a2\, 
        \i[28]_net_1\, \i_4_1_248_i_i_a2\, \i[29]_net_1\, 
        \i_4_2_241_i_i_a2\, \i[30]_net_1\, \i_4_3_234_i_i_a2\, 
        \i_4_4_227_i_i_a2\, \i_4_5_220_i_i_a2\, 
        \i_4_6_213_i_i_a2\, N_440_i_0, N_434_i_0, N_428_i_0, 
        \i[17]_net_1\, \i_4_10_185_i_i_a2\, N_416_i_0, N_410_i_0, 
        \i_4_13_164_i_i_a2\, N_398_i_0, \i_4_15_150_i_i_a2\, 
        \i_4_16_143_i_i_a2\, \i_4_17_136_i_i_a2\, \i[25]_net_1\, 
        \i_4_18_129_i_i_a2\, \i[0]_net_1\, \i_4_19_122_i_i_a2\, 
        \i[1]_net_1\, \i_4_20_115_i_i_a2\, \i[2]_net_1\, 
        \i_4_21_108_i_i_a2\, \i_4_22_101_i_i_a2\, 
        \i_4_23_94_i_i_a2\, \i_4_24_87_i_i_a2\, N_332_i_0, 
        N_326_i_0, \i_4_27_66_i_i_a2\, N_314_i_0, \i[10]_net_1\, 
        N_308_i_0, N_226_i_0, mult1_un229_sum_cry_0, 
        mult1_un229_sum_cry_1, mult1_un222_sum_cry_0_Y, 
        mult1_un229_sum_cry_2, mult1_un222_sum_cry_1_S, 
        mult1_un229_sum_cry_3, mult1_un222_sum_cry_2_S, 
        mult1_un229_sum_cry_4, mult1_un222_sum_cry_3_S, 
        mult1_un229_sum_cry_5, mult1_un222_sum_cry_4_S, 
        mult1_un229_sum_cry_6, mult1_un222_sum_cry_5_S, 
        mult1_un229_sum_cry_7, mult1_un222_sum_cry_6_S, 
        mult1_un222_sum_cry_8_S, mult1_un229_sum_cry_8, 
        mult1_un222_sum_cry_7_S, mult1_un173_sum_cry_0, 
        mult1_un173_sum_cry_1, mult1_un173_sum_cry_1_S, 
        mult1_un166_sum_cry_0_Y, mult1_un173_sum_cry_2, 
        mult1_un173_sum_cry_2_S, mult1_un166_sum_cry_1_S, 
        mult1_un173_sum_cry_3, mult1_un173_sum_cry_3_S, 
        mult1_un166_sum_cry_2_S, mult1_un173_sum_cry_4, 
        mult1_un173_sum_cry_4_S, mult1_un166_sum_cry_3_S, 
        mult1_un173_sum_cry_5, mult1_un173_sum_cry_5_S, 
        mult1_un166_sum_cry_4_S, mult1_un173_sum_cry_6, 
        mult1_un173_sum_cry_6_S, mult1_un166_sum_cry_5_S, 
        mult1_un173_sum_cry_7, mult1_un173_sum_cry_7_S, 
        mult1_un166_sum_cry_6_S, mult1_un166_sum_cry_8_S, 
        mult1_un173_sum_cry_8, mult1_un173_sum_cry_8_S, 
        mult1_un166_sum_cry_7_S, mult1_un180_sum_cry_0, 
        mult1_un180_sum_cry_1, mult1_un180_sum_cry_1_S, 
        mult1_un180_sum_cry_2, mult1_un180_sum_cry_2_S, 
        mult1_un180_sum_cry_3, mult1_un180_sum_cry_3_S, 
        mult1_un180_sum_cry_4, mult1_un180_sum_cry_4_S, 
        mult1_un180_sum_cry_5, mult1_un180_sum_cry_5_S, 
        mult1_un180_sum_cry_6, mult1_un180_sum_cry_6_S, 
        mult1_un180_sum_cry_7, mult1_un180_sum_cry_7_S, 
        mult1_un180_sum_cry_8, mult1_un180_sum_cry_8_S, 
        mult1_un187_sum_cry_0, mult1_un187_sum_cry_1, 
        mult1_un187_sum_cry_1_S, mult1_un187_sum_cry_2, 
        mult1_un187_sum_cry_2_S, mult1_un187_sum_cry_3, 
        mult1_un187_sum_cry_3_S, mult1_un187_sum_cry_4, 
        mult1_un187_sum_cry_4_S, mult1_un187_sum_cry_5, 
        mult1_un187_sum_cry_5_S, mult1_un187_sum_cry_6, 
        mult1_un187_sum_cry_6_S, mult1_un187_sum_cry_7, 
        mult1_un187_sum_cry_7_S, mult1_un187_sum_cry_8, 
        mult1_un187_sum_cry_8_S, mult1_un194_sum_cry_0, 
        mult1_un194_sum_cry_1, mult1_un194_sum_cry_1_S, 
        mult1_un194_sum_cry_2, mult1_un194_sum_cry_2_S, 
        mult1_un194_sum_cry_3, mult1_un194_sum_cry_3_S, 
        mult1_un194_sum_cry_4, mult1_un194_sum_cry_4_S, 
        mult1_un194_sum_cry_5, mult1_un194_sum_cry_5_S, 
        mult1_un194_sum_cry_6, mult1_un194_sum_cry_6_S, 
        mult1_un194_sum_cry_7, mult1_un194_sum_cry_7_S, 
        mult1_un194_sum_cry_8, mult1_un194_sum_cry_8_S, 
        mult1_un201_sum_cry_0, mult1_un201_sum_cry_1, 
        mult1_un201_sum_cry_1_S, mult1_un201_sum_cry_2, 
        mult1_un201_sum_cry_2_S, mult1_un201_sum_cry_3, 
        mult1_un201_sum_cry_3_S, mult1_un201_sum_cry_4, 
        mult1_un201_sum_cry_4_S, mult1_un201_sum_cry_5, 
        mult1_un201_sum_cry_5_S, mult1_un201_sum_cry_6, 
        mult1_un201_sum_cry_6_S, mult1_un201_sum_cry_7, 
        mult1_un201_sum_cry_7_S, mult1_un201_sum_cry_8, 
        mult1_un201_sum_cry_8_S, mult1_un208_sum_cry_0, 
        mult1_un208_sum_cry_1, mult1_un208_sum_cry_1_S, 
        mult1_un208_sum_cry_2, mult1_un208_sum_cry_2_S, 
        mult1_un208_sum_cry_3, mult1_un208_sum_cry_3_S, 
        mult1_un208_sum_cry_4, mult1_un208_sum_cry_4_S, 
        mult1_un208_sum_cry_5, mult1_un208_sum_cry_5_S, 
        mult1_un208_sum_cry_6, mult1_un208_sum_cry_6_S, 
        mult1_un208_sum_cry_7, mult1_un208_sum_cry_7_S, 
        mult1_un208_sum_cry_8, mult1_un208_sum_cry_8_S, 
        mult1_un215_sum_cry_0, mult1_un215_sum_cry_1, 
        mult1_un215_sum_cry_1_S, mult1_un215_sum_cry_2, 
        mult1_un215_sum_cry_2_S, mult1_un215_sum_cry_3, 
        mult1_un215_sum_cry_3_S, mult1_un215_sum_cry_4, 
        mult1_un215_sum_cry_4_S, mult1_un215_sum_cry_5, 
        mult1_un215_sum_cry_5_S, mult1_un215_sum_cry_6, 
        mult1_un215_sum_cry_6_S, mult1_un215_sum_cry_7, 
        mult1_un215_sum_cry_7_S, mult1_un215_sum_cry_8, 
        mult1_un215_sum_cry_8_S, mult1_un222_sum_cry_0, 
        mult1_un222_sum_cry_1, mult1_un222_sum_cry_2, 
        mult1_un222_sum_cry_3, mult1_un222_sum_cry_4, 
        mult1_un222_sum_cry_5, mult1_un222_sum_cry_6, 
        mult1_un222_sum_cry_7, mult1_un222_sum_cry_8, 
        mult1_un124_sum_cry_0, mult1_un124_sum_cry_1, 
        mult1_un124_sum_cry_1_S, mult1_un117_sum_cry_0_Y, 
        mult1_un117_sum_s_9_S, mult1_un124_sum_cry_2, 
        mult1_un124_sum_cry_2_S, mult1_un117_sum_cry_1_S, 
        mult1_un124_sum_cry_3, mult1_un124_sum_cry_3_S, 
        mult1_un117_sum_cry_2_S, mult1_un124_sum_cry_4, 
        mult1_un124_sum_cry_4_S, mult1_un117_sum_cry_3_S, 
        mult1_un124_sum_cry_5, mult1_un124_sum_cry_5_S, 
        mult1_un117_sum_cry_4_S, mult1_un124_sum_cry_6, 
        mult1_un124_sum_cry_6_S, mult1_un117_sum_cry_5_S, 
        mult1_un124_sum_cry_7, mult1_un124_sum_cry_7_S, 
        mult1_un117_sum_cry_6_S, mult1_un117_sum_cry_8_S, 
        mult1_un124_sum_cry_8, mult1_un124_sum_cry_8_S, 
        mult1_un117_sum_cry_7_S, mult1_un131_sum_cry_0, 
        mult1_un131_sum_cry_1, mult1_un131_sum_cry_1_S, 
        mult1_un131_sum_cry_2, mult1_un131_sum_cry_2_S, 
        mult1_un131_sum_cry_3, mult1_un131_sum_cry_3_S, 
        mult1_un131_sum_cry_4, mult1_un131_sum_cry_4_S, 
        mult1_un131_sum_cry_5, mult1_un131_sum_cry_5_S, 
        mult1_un131_sum_cry_6, mult1_un131_sum_cry_6_S, 
        mult1_un131_sum_cry_7, mult1_un131_sum_cry_7_S, 
        mult1_un131_sum_cry_8, mult1_un131_sum_cry_8_S, 
        mult1_un138_sum_cry_0, mult1_un138_sum_cry_1, 
        mult1_un138_sum_cry_1_S, mult1_un138_sum_cry_2, 
        mult1_un138_sum_cry_2_S, mult1_un138_sum_cry_3, 
        mult1_un138_sum_cry_3_S, mult1_un138_sum_cry_4, 
        mult1_un138_sum_cry_4_S, mult1_un138_sum_cry_5, 
        mult1_un138_sum_cry_5_S, mult1_un138_sum_cry_6, 
        mult1_un138_sum_cry_6_S, mult1_un138_sum_cry_7, 
        mult1_un138_sum_cry_7_S, mult1_un138_sum_cry_8, 
        mult1_un138_sum_cry_8_S, mult1_un145_sum_cry_0, 
        mult1_un145_sum_cry_1, mult1_un145_sum_cry_1_S, 
        mult1_un145_sum_cry_2, mult1_un145_sum_cry_2_S, 
        mult1_un145_sum_cry_3, mult1_un145_sum_cry_3_S, 
        mult1_un145_sum_cry_4, mult1_un145_sum_cry_4_S, 
        mult1_un145_sum_cry_5, mult1_un145_sum_cry_5_S, 
        mult1_un145_sum_cry_6, mult1_un145_sum_cry_6_S, 
        mult1_un145_sum_cry_7, mult1_un145_sum_cry_7_S, 
        mult1_un145_sum_cry_8, mult1_un145_sum_cry_8_S, 
        mult1_un152_sum_cry_0, mult1_un152_sum_cry_1, 
        mult1_un152_sum_cry_1_S, mult1_un152_sum_cry_2, 
        mult1_un152_sum_cry_2_S, mult1_un152_sum_cry_3, 
        mult1_un152_sum_cry_3_S, mult1_un152_sum_cry_4, 
        mult1_un152_sum_cry_4_S, mult1_un152_sum_cry_5, 
        mult1_un152_sum_cry_5_S, mult1_un152_sum_cry_6, 
        mult1_un152_sum_cry_6_S, mult1_un152_sum_cry_7, 
        mult1_un152_sum_cry_7_S, mult1_un152_sum_cry_8, 
        mult1_un152_sum_cry_8_S, mult1_un159_sum_cry_0, 
        mult1_un159_sum_cry_1, mult1_un159_sum_cry_1_S, 
        mult1_un159_sum_cry_2, mult1_un159_sum_cry_2_S, 
        mult1_un159_sum_cry_3, mult1_un159_sum_cry_3_S, 
        mult1_un159_sum_cry_4, mult1_un159_sum_cry_4_S, 
        mult1_un159_sum_cry_5, mult1_un159_sum_cry_5_S, 
        mult1_un159_sum_cry_6, mult1_un159_sum_cry_6_S, 
        mult1_un159_sum_cry_7, mult1_un159_sum_cry_7_S, 
        mult1_un159_sum_cry_8, mult1_un159_sum_cry_8_S, 
        mult1_un166_sum_cry_0, mult1_un166_sum_cry_1, 
        mult1_un166_sum_cry_2, mult1_un166_sum_cry_3, 
        mult1_un166_sum_cry_4, mult1_un166_sum_cry_5, 
        mult1_un166_sum_cry_6, mult1_un166_sum_cry_7, 
        mult1_un166_sum_cry_8, mult1_un68_sum_cry_0, 
        mult1_un68_sum_cry_1, mult1_un68_sum_cry_1_S, 
        mult1_un61_sum_cry_0_Y, g0, mult1_un68_sum_cry_2, 
        mult1_un68_sum_cry_2_S, mult1_un61_sum_cry_1_S, 
        mult1_un61_sum_cry_5, mult1_un54_sum_cry_6, 
        mult1_un61_sum_axb_6, mult1_un68_sum_cry_3, 
        mult1_un68_sum_cry_3_S, mult1_un61_sum_cry_2_S, 
        mult1_un68_sum_cry_4, mult1_un68_sum_cry_4_S, 
        mult1_un61_sum_cry_3_S, mult1_un68_sum_cry_5, 
        mult1_un68_sum_cry_5_S, mult1_un61_sum_cry_4_S, 
        mult1_un68_sum_cry_6, mult1_un68_sum_cry_6_S, 
        mult1_un61_sum_cry_5_S, mult1_un68_sum_cry_7, 
        mult1_un68_sum_cry_7_S, mult1_un61_sum_cry_6_S, 
        mult1_un68_sum_s_9_S, mult1_un61_sum_s_8_S, 
        mult1_un68_sum_cry_8, mult1_un68_sum_cry_8_S, 
        mult1_un61_sum_cry_7_S, mult1_un75_sum_cry_0, 
        mult1_un75_sum_cry_1, mult1_un75_sum_cry_1_S, 
        mult1_un75_sum_cry_2, mult1_un75_sum_cry_2_S, 
        mult1_un75_sum_cry_3, mult1_un75_sum_cry_3_S, 
        mult1_un75_sum_cry_4, mult1_un75_sum_cry_4_S, 
        mult1_un75_sum_cry_5, mult1_un75_sum_cry_5_S, 
        mult1_un75_sum_cry_6, mult1_un75_sum_cry_6_S, 
        mult1_un75_sum_cry_7, mult1_un75_sum_cry_7_S, 
        mult1_un75_sum_s_9_S, mult1_un75_sum_cry_8, 
        mult1_un75_sum_cry_8_S, mult1_un82_sum_cry_0, 
        mult1_un82_sum_cry_1, mult1_un82_sum_cry_1_S, 
        mult1_un82_sum_cry_2, mult1_un82_sum_cry_2_S, 
        mult1_un82_sum_cry_3, mult1_un82_sum_cry_3_S, 
        mult1_un82_sum_cry_4, mult1_un82_sum_cry_4_S, 
        mult1_un82_sum_cry_5, mult1_un82_sum_cry_5_S, 
        mult1_un82_sum_cry_6, mult1_un82_sum_cry_6_S, 
        mult1_un82_sum_cry_7, mult1_un82_sum_cry_7_S, 
        mult1_un82_sum_s_9_S, mult1_un82_sum_cry_8, 
        mult1_un82_sum_cry_8_S, mult1_un89_sum_cry_0, 
        mult1_un89_sum_cry_1, mult1_un89_sum_cry_1_S, 
        mult1_un89_sum_cry_2, mult1_un89_sum_cry_2_S, 
        mult1_un89_sum_cry_3, mult1_un89_sum_cry_3_S, 
        mult1_un89_sum_cry_4, mult1_un89_sum_cry_4_S, 
        mult1_un89_sum_cry_5, mult1_un89_sum_cry_5_S, 
        mult1_un89_sum_cry_6, mult1_un89_sum_cry_6_S, 
        mult1_un89_sum_cry_7, mult1_un89_sum_cry_7_S, 
        mult1_un89_sum_s_9_S, mult1_un89_sum_cry_8, 
        mult1_un89_sum_cry_8_S, mult1_un96_sum_cry_0, 
        mult1_un96_sum_cry_1, mult1_un96_sum_cry_1_S, 
        mult1_un96_sum_cry_2, mult1_un96_sum_cry_2_S, 
        mult1_un96_sum_cry_3, mult1_un96_sum_cry_3_S, 
        mult1_un96_sum_cry_4, mult1_un96_sum_cry_4_S, 
        mult1_un96_sum_cry_5, mult1_un96_sum_cry_5_S, 
        mult1_un96_sum_cry_6, mult1_un96_sum_cry_6_S, 
        mult1_un96_sum_cry_7, mult1_un96_sum_cry_7_S, 
        mult1_un96_sum_s_9_S, mult1_un96_sum_cry_8, 
        mult1_un96_sum_cry_8_S, mult1_un103_sum_cry_0, 
        mult1_un103_sum_cry_1, mult1_un103_sum_cry_1_S, 
        mult1_un103_sum_cry_2, mult1_un103_sum_cry_2_S, 
        mult1_un103_sum_cry_3, mult1_un103_sum_cry_3_S, 
        mult1_un103_sum_cry_4, mult1_un103_sum_cry_4_S, 
        mult1_un103_sum_cry_5, mult1_un103_sum_cry_5_S, 
        mult1_un103_sum_cry_6, mult1_un103_sum_cry_6_S, 
        mult1_un103_sum_cry_7, mult1_un103_sum_cry_7_S, 
        mult1_un103_sum_s_9_S, mult1_un103_sum_cry_8, 
        mult1_un103_sum_cry_8_S, mult1_un110_sum_cry_0, 
        mult1_un110_sum_cry_1, mult1_un110_sum_cry_1_S, 
        mult1_un110_sum_cry_2, mult1_un110_sum_cry_2_S, 
        mult1_un110_sum_cry_3, mult1_un110_sum_cry_3_S, 
        mult1_un110_sum_cry_4, mult1_un110_sum_cry_4_S, 
        mult1_un110_sum_cry_5, mult1_un110_sum_cry_5_S, 
        mult1_un110_sum_cry_6, mult1_un110_sum_cry_6_S, 
        mult1_un110_sum_cry_7, mult1_un110_sum_cry_7_S, 
        mult1_un110_sum_s_9_S, mult1_un110_sum_cry_8, 
        mult1_un110_sum_cry_8_S, mult1_un117_sum_cry_0, 
        mult1_un117_sum_cry_1, mult1_un117_sum_cry_2, 
        mult1_un117_sum_cry_3, mult1_un117_sum_cry_4, 
        mult1_un117_sum_cry_5, mult1_un117_sum_cry_6, 
        mult1_un117_sum_cry_7, mult1_un117_sum_cry_8, 
        mult1_un54_sum_cry_0, mult1_un54_sum_cry_1, 
        mult1_un61_sum_axb_2, mult1_un54_sum_cry_2, 
        mult1_un61_sum_axb_3, mult1_un54_sum_cry_3, 
        mult1_un54_sum_cry_3_S, mult1_un54_sum_cry_4, 
        mult1_un61_sum_axb_5, mult1_un61_sum_cry_0, 
        mult1_un61_sum_cry_1, mult1_un61_sum_cry_2, 
        mult1_un61_sum_cry_3, mult1_un61_sum_cry_4, 
        i_3_s_0_104_FCO, \i_3_cry_0\, \i_3[0]\, \i_3_cry_1\, 
        \i_3[1]\, \i_3_cry_2\, \i_3[2]\, \i_3_cry_3\, \i_3[3]\, 
        \i_3_cry_4\, \i_3[4]\, \i_3_cry_5\, \i_3[5]\, \i_3_cry_6\, 
        \i_3[6]\, \i_3_cry_7\, \i_3[7]\, \i_3_cry_8\, \i_3[8]\, 
        \i_3_cry_9\, \i_3[9]\, \i_3_cry_10\, \i_3[10]\, 
        \i_3_cry_11\, \i_3[11]\, \i_3_cry_12\, \i_3[12]\, 
        \i_3_cry_13\, \i_3[13]\, \i_3_cry_14\, \i_3[14]\, 
        \i_3_cry_15\, \i_3[15]\, \i_3_cry_16\, \i_3[16]\, 
        \i_3_cry_17\, \i_3[17]\, \i_3_cry_18\, \i_3[18]\, 
        \i_3_cry_19\, \i_3[19]\, \i_3_cry_20\, \i_3[20]\, 
        \i_3_cry_21\, \i_3[21]\, \i_3_cry_22\, \i_3[22]\, 
        \i_3_cry_23\, \i_3[23]\, \i_3_cry_24\, \i_3[24]\, 
        \i_3_cry_25\, \i_3[25]\, \i_3_cry_26\, \i_3[26]\, 
        \i_3_cry_27\, \i_3[27]\, \i_3_cry_28\, \i_3[28]\, 
        \i_3[30]\, \i_3_cry_29\, \i_3[29]\, 
        mult1_un61_sum_s_6_105_FCO, mult1_un61_sum_cry_6, 
        mult1_un61_sum_cry_7, g0_1, m36_i_a2_2_10_0, m36_i_o2_6, 
        m36_i_a2_2_7, m36_i_a2_2_6, m36_i_a2_2_5, N_270_8, 
        m36_i_0, m36_i_o2_3, m36_i_a2_0_2, m36_i_a2_0_1, 
        m36_i_a2_2_10, m36_i_a2_6, m36_i_a2_2, m36_i_o2_1, 
        m36_i_o2, m36_i_o3 : std_logic;

begin 


    \un5_time.if_generate_plus.mult1_un173_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un166_sum_cry_4_S, B => 
        mult1_un166_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un173_sum_cry_4, S => 
        mult1_un173_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un173_sum_cry_5);
    
    \i_RNO[6]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[6]\, B => \state[1]_net_1\, Y => 
        N_332_i_0);
    
    \un5_time.if_generate_plus.mult1_un180_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un173_sum_cry_1_S, B => 
        mult1_un173_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un180_sum_cry_1, S => 
        mult1_un180_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un180_sum_cry_2);
    
    \state[0]\ : SLE
      port map(D => N_226_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \state[0]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un82_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un75_sum_cry_8_S, C => 
        mult1_un75_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un82_sum_cry_8, S => mult1_un82_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un208_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un201_sum_cry_5_S, B => 
        mult1_un201_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un208_sum_cry_5, S => 
        mult1_un208_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un208_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un61_sum_s_8\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => mult1_un54_sum_cry_6, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un61_sum_cry_7, S
         => mult1_un61_sum_s_8_S, Y => OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un54_sum_cry_2\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => \i[27]_net_1\, C => 
        \i[28]_net_1\, D => GND_net_1, FCI => 
        mult1_un54_sum_cry_1, S => mult1_un61_sum_axb_3, Y => 
        OPEN, FCO => mult1_un54_sum_cry_2);
    
    i_4_6_213_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[13]\, B => \state[1]_net_1\, Y => 
        \i_4_6_213_i_i_a2\);
    
    \un5_time.if_generate_plus.mult1_un89_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un82_sum_cry_5_S, B => 
        mult1_un82_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un89_sum_cry_5, S => mult1_un89_sum_cry_6_S, Y
         => OPEN, FCO => mult1_un89_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un89_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un82_sum_cry_3_S, B => 
        mult1_un82_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un89_sum_cry_3, S => mult1_un89_sum_cry_4_S, Y
         => OPEN, FCO => mult1_un89_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un124_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un117_sum_cry_5_S, B => 
        mult1_un117_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un124_sum_cry_5, S => 
        mult1_un124_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un124_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un131_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un124_sum_cry_2_S, B => 
        mult1_un124_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un131_sum_cry_2, S => 
        mult1_un131_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un131_sum_cry_3);
    
    \time[2]\ : SLE
      port map(D => \mult1_un215_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(2));
    
    \i[7]\ : SLE
      port map(D => N_326_i_0, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[7]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un180_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un173_sum_cry_3_S, B => 
        mult1_un173_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un180_sum_cry_3, S => 
        mult1_un180_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un180_sum_cry_4);
    
    \i[16]\ : SLE
      port map(D => N_428_i_0, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[16]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un194_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[6]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un194_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un152_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un145_sum_cry_1_S, B => 
        mult1_un145_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un152_sum_cry_1, S => 
        mult1_un152_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un152_sum_cry_2);
    
    \time[13]\ : SLE
      port map(D => \mult1_un138_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(13));
    
    \un5_time.if_generate_plus.mult1_un138_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un131_sum_cry_3_S, B => 
        mult1_un131_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un138_sum_cry_3, S => 
        mult1_un138_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un138_sum_cry_4);
    
    i_3_cry_19 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[19]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_18\, S => \i_3[19]\, Y
         => OPEN, FCO => \i_3_cry_19\);
    
    \un5_time.if_generate_plus.mult1_un54_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[26]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un54_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un145_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[14]\, B => mult1_un138_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un145_sum_cry_0, 
        S => mult1_un145_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un145_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un180_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un173_sum_cry_2_S, B => 
        mult1_un173_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un180_sum_cry_2, S => 
        mult1_un180_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un180_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un131_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un124_sum_cry_8_S, C
         => mult1_un124_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un131_sum_cry_8, S => mult1_un131_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un131_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[16]\, B => mult1_un124_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un131_sum_cry_0, 
        S => mult1_un131_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un131_sum_cry_1);
    
    \i_RNIT72F[18]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[18]_net_1\, Y => \i_i[18]\);
    
    \un5_time.if_generate_plus.mult1_un152_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[12]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un152_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un110_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[18]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un110_sum_cry_0);
    
    \i[21]\ : SLE
      port map(D => N_398_i_0, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[21]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un166_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un159_sum_cry_4_S, B => 
        mult1_un159_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un166_sum_cry_4, S => 
        mult1_un166_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un166_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un110_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[19]\, B => mult1_un103_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un110_sum_cry_0, 
        S => mult1_un110_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un110_sum_cry_1);
    
    i_4_20_115_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[1]\, B => \state[1]_net_1\, Y => 
        \i_4_20_115_i_i_a2\);
    
    \un5_time.if_generate_plus.mult1_un159_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[11]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un159_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un194_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un187_sum_cry_5_S, B => 
        mult1_un187_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un194_sum_cry_5, S => 
        mult1_un194_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un194_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un89_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[22]\, B => mult1_un82_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un89_sum_cry_0, S
         => mult1_un89_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un89_sum_cry_1);
    
    \un5_time.g0_1\ : CFG2
      generic map(INIT => x"6")

      port map(A => mult1_un61_sum_axb_6, B => 
        mult1_un54_sum_cry_6, Y => g0_1);
    
    \i_RNO[14]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[14]\, B => \state[1]_net_1\, Y => 
        N_440_i_0);
    
    \i_RNIO22F[13]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[13]_net_1\, Y => \i_i[13]\);
    
    \i_RNO[21]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[21]\, B => \state[1]_net_1\, Y => 
        N_398_i_0);
    
    \state_ns_1_0_.m36_i_a2_2_7\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \i_3[11]\, B => \i_3[13]\, C => \i_3[17]\, D
         => \i_3[20]\, Y => m36_i_a2_2_7);
    
    \un5_time.if_generate_plus.mult1_un61_sum_s_6_105\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => mult1_un61_sum_cry_5, C => 
        GND_net_1, D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y
         => OPEN, FCO => mult1_un61_sum_s_6_105_FCO);
    
    \un5_time.if_generate_plus.mult1_un229_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un222_sum_cry_5_S, B => 
        mult1_un222_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un229_sum_cry_5, S => OPEN, Y => OPEN, FCO
         => mult1_un229_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un201_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[5]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un201_sum_cry_0);
    
    \i[0]\ : SLE
      port map(D => \i_4_19_122_i_i_a2\, CLK => FCCC_0_GL0, EN
         => un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[0]_net_1\);
    
    \i[11]\ : SLE
      port map(D => \i_4_4_227_i_i_a2\, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[11]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un201_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un194_sum_cry_3_S, B => 
        mult1_un194_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un201_sum_cry_3, S => 
        mult1_un201_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un201_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un131_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un124_sum_cry_5_S, B => 
        mult1_un124_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un131_sum_cry_5, S => 
        mult1_un131_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un131_sum_cry_6);
    
    \state_ns_1_0_.N_226_i\ : CFG4
      generic map(INIT => x"0013")

      port map(A => m36_i_a2_0_1, B => m36_i_0, C => m36_i_o3, D
         => m36_i_a2_2, Y => N_226_i_0);
    
    i_3_cry_27 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[27]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_26\, S => \i_3[27]\, Y
         => OPEN, FCO => \i_3_cry_27\);
    
    \un5_time.if_generate_plus.mult1_un215_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un215_sum_s_9_S, Y => 
        \mult1_un215_sum_i_0[10]\);
    
    \un5_time.if_generate_plus.mult1_un124_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un117_sum_cry_6_S, B => 
        mult1_un117_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un124_sum_cry_6, S => 
        mult1_un124_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un124_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un208_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un201_sum_cry_7_S, B => 
        mult1_un201_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un208_sum_cry_7, S => 
        mult1_un208_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un208_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un159_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un152_sum_cry_3_S, B => 
        mult1_un152_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un159_sum_cry_3, S => 
        mult1_un159_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un159_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un159_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un159_sum_s_9_S, Y => 
        \mult1_un159_sum_i_0[10]\);
    
    \un5_time.if_generate_plus.mult1_un75_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un68_sum_cry_6_S, B => 
        mult1_un68_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un75_sum_cry_6, S => mult1_un75_sum_cry_7_S, Y
         => OPEN, FCO => mult1_un75_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un208_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un201_sum_cry_1_S, B => 
        mult1_un201_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un208_sum_cry_1, S => 
        mult1_un208_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un208_sum_cry_2);
    
    i_4_262_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[26]\, B => \state[1]_net_1\, Y => 
        \i_4_262_i_i_a2\);
    
    \un5_time.if_generate_plus.mult1_un75_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[24]\, B => mult1_un68_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un75_sum_cry_0, S
         => mult1_un75_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un75_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un124_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un117_sum_cry_1_S, B => 
        mult1_un117_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un124_sum_cry_1, S => 
        mult1_un124_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un124_sum_cry_2);
    
    i_3_cry_18 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[18]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_17\, S => \i_3[18]\, Y
         => OPEN, FCO => \i_3_cry_18\);
    
    i_3_cry_16 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[16]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_15\, S => \i_3[16]\, Y
         => OPEN, FCO => \i_3_cry_16\);
    
    \un5_time.if_generate_plus.mult1_un82_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un75_sum_cry_1_S, B => 
        mult1_un75_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un82_sum_cry_1, S => mult1_un82_sum_cry_2_S, Y
         => OPEN, FCO => mult1_un82_sum_cry_2);
    
    \un5_time.if_generate_plus.mult1_un229_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un222_sum_cry_6_S, B => 
        mult1_un222_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un229_sum_cry_6, S => OPEN, Y => OPEN, FCO
         => mult1_un229_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un110_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un103_sum_cry_5_S, B => 
        mult1_un103_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un110_sum_cry_5, S => 
        mult1_un110_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un110_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un61_sum_cry_4\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => mult1_un54_sum_cry_3_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un61_sum_cry_3, S
         => mult1_un61_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un61_sum_cry_4);
    
    i_4_22_101_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[3]\, B => \state[1]_net_1\, Y => 
        \i_4_22_101_i_i_a2\);
    
    \un5_time.if_generate_plus.mult1_un215_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un208_sum_cry_1_S, B => 
        mult1_un208_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un215_sum_cry_1, S => 
        mult1_un215_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un215_sum_cry_2);
    
    \un5_time.if_generate_plus.mult1_un208_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un201_sum_cry_4_S, B => 
        mult1_un201_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un208_sum_cry_4, S => 
        mult1_un208_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un208_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un194_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un187_sum_cry_6_S, B => 
        mult1_un187_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un194_sum_cry_6, S => 
        mult1_un194_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un194_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un117_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un110_sum_cry_7_S, B => 
        mult1_un110_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un117_sum_cry_7, S => 
        mult1_un117_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un117_sum_cry_8);
    
    i_4_15_150_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[22]\, B => \state[1]_net_1\, Y => 
        \i_4_15_150_i_i_a2\);
    
    \un5_time.if_generate_plus.mult1_un187_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un180_sum_cry_2_S, B => 
        mult1_un180_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un187_sum_cry_2, S => 
        mult1_un187_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un187_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un124_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un117_sum_cry_3_S, B => 
        mult1_un117_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un124_sum_cry_3, S => 
        mult1_un124_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un124_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un222_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un215_sum_cry_7_S, B => 
        mult1_un215_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un222_sum_cry_7, S => 
        mult1_un222_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un222_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un187_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un180_sum_cry_8_S, C
         => mult1_un180_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un187_sum_cry_8, S => mult1_un187_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un82_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un75_sum_cry_4_S, B => 
        mult1_un75_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un82_sum_cry_4, S => mult1_un82_sum_cry_5_S, Y
         => OPEN, FCO => mult1_un82_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un159_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un152_sum_cry_4_S, B => 
        mult1_un152_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un159_sum_cry_4, S => 
        mult1_un159_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un159_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un131_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un124_sum_cry_6_S, B => 
        mult1_un124_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un131_sum_cry_6, S => 
        mult1_un131_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un131_sum_cry_7);
    
    i_4_1_248_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[28]\, B => \state[1]_net_1\, Y => 
        \i_4_1_248_i_i_a2\);
    
    \un5_time.if_generate_plus.mult1_un152_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un145_sum_cry_2_S, B => 
        mult1_un145_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un152_sum_cry_2, S => 
        mult1_un152_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un152_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un82_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[23]\, B => mult1_un75_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un82_sum_cry_0, S
         => mult1_un82_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un82_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un194_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un187_sum_cry_1_S, B => 
        mult1_un187_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un194_sum_cry_1, S => 
        mult1_un194_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un194_sum_cry_2);
    
    i_3_cry_2 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[2]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_1\, S => \i_3[2]\, Y => 
        OPEN, FCO => \i_3_cry_2\);
    
    i_3_cry_12 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[12]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_11\, S => \i_3[12]\, Y
         => OPEN, FCO => \i_3_cry_12\);
    
    \i_RNIN23F[21]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[21]_net_1\, Y => \i_i[21]\);
    
    \un5_time.if_generate_plus.mult1_un75_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[23]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un75_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un68_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[24]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un68_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un215_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un208_sum_cry_8_S, C
         => mult1_un208_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un215_sum_cry_8, S => mult1_un215_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un166_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un159_sum_cry_5_S, B => 
        mult1_un159_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un166_sum_cry_5, S => 
        mult1_un166_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un166_sum_cry_6);
    
    \i_RNIQ42F[15]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[15]_net_1\, Y => \i_i[15]\);
    
    \un5_time.if_generate_plus.mult1_un194_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un187_sum_cry_3_S, B => 
        mult1_un187_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un194_sum_cry_3, S => 
        mult1_un194_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un194_sum_cry_4);
    
    \time[4]\ : SLE
      port map(D => \mult1_un201_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(4));
    
    \state_ns_1_0_.m36_i_o3\ : CFG3
      generic map(INIT => x"5D")

      port map(A => \i_3[21]\, B => m36_i_o2, C => \i_3[20]\, Y
         => m36_i_o3);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \un5_time.if_generate_plus.mult1_un180_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un173_sum_cry_4_S, B => 
        mult1_un173_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un180_sum_cry_4, S => 
        mult1_un180_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un180_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un187_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[7]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un187_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un187_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un180_sum_cry_4_S, B => 
        mult1_un180_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un187_sum_cry_4, S => 
        mult1_un187_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un187_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un103_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[19]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un103_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un138_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un131_sum_cry_8_S, C
         => mult1_un131_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un138_sum_cry_8, S => mult1_un138_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un215_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un208_sum_cry_3_S, B => 
        mult1_un208_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un215_sum_cry_3, S => 
        mult1_un215_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un215_sum_cry_4);
    
    \i[23]\ : SLE
      port map(D => \i_4_16_143_i_i_a2\, CLK => FCCC_0_GL0, EN
         => un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[23]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un222_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un215_sum_cry_5_S, B => 
        mult1_un215_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un222_sum_cry_5, S => 
        mult1_un222_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un222_sum_cry_6);
    
    \time[1]\ : SLE
      port map(D => \mult1_un222_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(1));
    
    \un5_time.if_generate_plus.mult1_un152_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un152_sum_s_9_S, Y => 
        \mult1_un152_sum_i_0[10]\);
    
    \un5_time.if_generate_plus.mult1_un138_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un131_sum_cry_5_S, B => 
        mult1_un131_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un138_sum_cry_5, S => 
        mult1_un138_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un138_sum_cry_6);
    
    \i_RNIM02F[11]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[11]_net_1\, Y => \i_i[11]\);
    
    \un5_time.if_generate_plus.mult1_un201_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un194_sum_cry_6_S, B => 
        mult1_un194_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un201_sum_cry_6, S => 
        mult1_un201_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un201_sum_cry_7);
    
    \state_ns_1_0_.m36_i_a2_2_6\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \i_3[1]\, B => \i_3[5]\, C => \i_3[8]\, D => 
        \i_3[12]\, Y => m36_i_a2_2_6);
    
    \un5_time.if_generate_plus.mult1_un82_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un75_sum_cry_6_S, B => 
        mult1_un75_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un82_sum_cry_6, S => mult1_un82_sum_cry_7_S, Y
         => OPEN, FCO => mult1_un82_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un54_sum_cry_5\ : ARI1
      generic map(INIT => x"4FFFE")

      port map(A => \i[30]_net_1\, B => \i[27]_net_1\, C => 
        \i[28]_net_1\, D => \i[29]_net_1\, FCI => 
        mult1_un54_sum_cry_4, S => mult1_un61_sum_axb_6, Y => 
        OPEN, FCO => mult1_un54_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un96_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un89_sum_cry_8_S, C => 
        mult1_un89_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un96_sum_cry_8, S => mult1_un96_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un75_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un68_sum_cry_1_S, B => 
        mult1_un68_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un75_sum_cry_1, S => mult1_un75_sum_cry_2_S, Y
         => OPEN, FCO => mult1_un75_sum_cry_2);
    
    \time[11]\ : SLE
      port map(D => \mult1_un152_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(11));
    
    \i[13]\ : SLE
      port map(D => \i_4_6_213_i_i_a2\, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[13]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un68_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un61_sum_s_8_S, C => g0, 
        D => GND_net_1, FCI => mult1_un68_sum_cry_8, S => 
        mult1_un68_sum_s_9_S, Y => OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un166_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un159_sum_cry_6_S, B => 
        mult1_un159_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un166_sum_cry_6, S => 
        mult1_un166_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un166_sum_cry_7);
    
    i_3_cry_23 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[23]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_22\, S => \i_3[23]\, Y
         => OPEN, FCO => \i_3_cry_23\);
    
    \un5_time.if_generate_plus.mult1_un166_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[10]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => 
        mult1_un166_sum_cry_0_Y, FCO => mult1_un166_sum_cry_0);
    
    \time[8]\ : SLE
      port map(D => \mult1_un173_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(8));
    
    \un5_time.if_generate_plus.mult1_un54_sum_cry_1\ : ARI1
      generic map(INIT => x"55555")

      port map(A => VCC_net_1, B => \i[27]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => mult1_un54_sum_cry_0, S => 
        mult1_un61_sum_axb_2, Y => OPEN, FCO => 
        mult1_un54_sum_cry_1);
    
    \i[27]\ : SLE
      port map(D => \i_4_0_255_i_i_a2\, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[27]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un166_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un159_sum_cry_2_S, B => 
        mult1_un159_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un166_sum_cry_2, S => 
        mult1_un166_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un166_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un124_sum_cry_1\ : ARI1
      generic map(INIT => x"53CAA")

      port map(A => VCC_net_1, B => mult1_un117_sum_cry_0_Y, C
         => \i[17]_net_1\, D => mult1_un117_sum_s_9_S, FCI => 
        mult1_un124_sum_cry_0, S => mult1_un124_sum_cry_1_S, Y
         => OPEN, FCO => mult1_un124_sum_cry_1);
    
    i_4_21_108_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[2]\, B => \state[1]_net_1\, Y => 
        \i_4_21_108_i_i_a2\);
    
    \un5_time.if_generate_plus.mult1_un96_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[20]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un96_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un138_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un131_sum_cry_4_S, B => 
        mult1_un131_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un138_sum_cry_4, S => 
        mult1_un138_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un138_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un229_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un229_sum_s_9_S, Y => 
        \mult1_un229_sum_i_0[10]\);
    
    \un5_time.if_generate_plus.mult1_un61_sum_cry_1\ : ARI1
      generic map(INIT => x"55555")

      port map(A => VCC_net_1, B => \i[26]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => mult1_un61_sum_cry_0, S => 
        mult1_un61_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un61_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un166_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un159_sum_cry_7_S, B => 
        mult1_un159_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un166_sum_cry_7, S => 
        mult1_un166_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un166_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un96_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un89_sum_cry_3_S, B => 
        mult1_un89_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un96_sum_cry_3, S => mult1_un96_sum_cry_4_S, Y
         => OPEN, FCO => mult1_un96_sum_cry_4);
    
    \time[9]\ : SLE
      port map(D => \mult1_un166_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(9));
    
    \state_ns_1_0_.m36_i_a2_2_10\ : CFG4
      generic map(INIT => x"0010")

      port map(A => \i_3[23]\, B => \i_3[30]\, C => 
        m36_i_a2_2_10_0, D => \i_3[22]\, Y => m36_i_a2_0_2);
    
    \i_RNIN12F[12]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[12]_net_1\, Y => \i_i[12]\);
    
    \i[17]\ : SLE
      port map(D => \i_4_10_185_i_i_a2\, CLK => FCCC_0_GL0, EN
         => un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[17]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un96_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un89_sum_cry_1_S, B => 
        mult1_un89_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un96_sum_cry_1, S => mult1_un96_sum_cry_2_S, Y
         => OPEN, FCO => mult1_un96_sum_cry_2);
    
    \un5_time.if_generate_plus.mult1_un187_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un180_sum_cry_6_S, B => 
        mult1_un180_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un187_sum_cry_6, S => 
        mult1_un187_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un187_sum_cry_7);
    
    \state_ns_1_0_.m36_i_a2_0_1\ : CFG4
      generic map(INIT => x"0008")

      port map(A => m36_i_a2_0_2, B => N_270_8, C => \i_3[28]\, D
         => \i_3[29]\, Y => m36_i_a2_0_1);
    
    \time[3]\ : SLE
      port map(D => \mult1_un208_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(3));
    
    i_3_cry_8 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[8]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_7\, S => \i_3[8]\, Y => 
        OPEN, FCO => \i_3_cry_8\);
    
    i_4_5_220_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[12]\, B => \state[1]_net_1\, Y => 
        \i_4_5_220_i_i_a2\);
    
    i_4_2_241_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[29]\, B => \state[1]_net_1\, Y => 
        \i_4_2_241_i_i_a2\);
    
    i_3_cry_7 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[7]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_6\, S => \i_3[7]\, Y => 
        OPEN, FCO => \i_3_cry_7\);
    
    \un5_time.if_generate_plus.mult1_un194_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[7]\, B => mult1_un187_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un194_sum_cry_0, 
        S => mult1_un194_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un194_sum_cry_1);
    
    \i_RNIP32F[14]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[14]_net_1\, Y => \i_i[14]\);
    
    \un5_time.if_generate_plus.mult1_un166_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un159_sum_cry_1_S, B => 
        mult1_un159_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un166_sum_cry_1, S => 
        mult1_un166_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un166_sum_cry_2);
    
    \un5_time.if_generate_plus.mult1_un68_sum_cry_6\ : ARI1
      generic map(INIT => x"57F80")

      port map(A => mult1_un61_sum_cry_5_S, B => 
        mult1_un61_sum_cry_5, C => mult1_un54_sum_cry_6, D => 
        mult1_un61_sum_axb_6, FCI => mult1_un68_sum_cry_5, S => 
        mult1_un68_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un68_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un124_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un117_sum_cry_2_S, B => 
        mult1_un117_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un124_sum_cry_2, S => 
        mult1_un124_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un124_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un103_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[20]\, B => mult1_un96_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un103_sum_cry_0, 
        S => mult1_un103_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un103_sum_cry_1);
    
    i_3_cry_29 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[29]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_28\, S => \i_3[29]\, Y
         => OPEN, FCO => \i_3_cry_29\);
    
    \un5_time.if_generate_plus.mult1_un110_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un103_sum_cry_8_S, C
         => mult1_un103_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un110_sum_cry_8, S => mult1_un110_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    i_3_cry_10 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[10]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_9\, S => \i_3[10]\, Y => 
        OPEN, FCO => \i_3_cry_10\);
    
    \time[15]\ : SLE
      port map(D => \mult1_un124_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(15));
    
    \un5_time.if_generate_plus.mult1_un124_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un124_sum_s_9_S, Y => 
        \mult1_un124_sum_i_0[10]\);
    
    \i[9]\ : SLE
      port map(D => N_314_i_0, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[9]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un173_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[9]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un173_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un215_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un208_sum_cry_6_S, B => 
        mult1_un208_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un215_sum_cry_6, S => 
        mult1_un215_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un215_sum_cry_7);
    
    \time[5]\ : SLE
      port map(D => \mult1_un194_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(5));
    
    \un5_time.if_generate_plus.mult1_un75_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un68_sum_cry_3_S, B => 
        mult1_un68_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un75_sum_cry_3, S => mult1_un75_sum_cry_4_S, Y
         => OPEN, FCO => mult1_un75_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un201_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un194_sum_cry_5_S, B => 
        mult1_un194_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un201_sum_cry_5, S => 
        mult1_un201_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un201_sum_cry_6);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \i_RNIP43F[23]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[23]_net_1\, Y => \i_i[23]\);
    
    \un5_time.if_generate_plus.mult1_un68_sum_cry_1\ : ARI1
      generic map(INIT => x"53CAA")

      port map(A => VCC_net_1, B => mult1_un61_sum_cry_0_Y, C => 
        \i[25]_net_1\, D => g0, FCI => mult1_un68_sum_cry_0, S
         => mult1_un68_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un68_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un117_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un110_sum_cry_5_S, B => 
        mult1_un110_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un117_sum_cry_5, S => 
        mult1_un117_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un117_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un117_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[18]\, B => mult1_un110_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un117_sum_cry_0, 
        S => mult1_un117_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un117_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un152_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un145_sum_cry_6_S, B => 
        mult1_un145_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un152_sum_cry_6, S => 
        mult1_un152_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un152_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un145_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un138_sum_cry_7_S, B => 
        mult1_un138_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un145_sum_cry_7, S => 
        mult1_un145_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un145_sum_cry_8);
    
    \time[10]\ : SLE
      port map(D => \mult1_un159_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(10));
    
    \un5_time.if_generate_plus.mult1_un194_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un187_sum_cry_2_S, B => 
        mult1_un187_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un194_sum_cry_2, S => 
        mult1_un194_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un194_sum_cry_3);
    
    \state_ns_1_0_.m36_i_o2_6\ : CFG2
      generic map(INIT => x"7")

      port map(A => \i_3[7]\, B => \i_3[6]\, Y => m36_i_o2_6);
    
    i_4_13_164_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[20]\, B => \state[1]_net_1\, Y => 
        \i_4_13_164_i_i_a2\);
    
    \un5_time.g0\ : CFG4
      generic map(INIT => x"773B")

      port map(A => mult1_un61_sum_axb_6, B => 
        mult1_un54_sum_cry_6, C => mult1_un61_sum_cry_5, D => 
        g0_1, Y => g0);
    
    \un5_time.if_generate_plus.mult1_un131_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un131_sum_s_9_S, Y => 
        \mult1_un131_sum_i_0[10]\);
    
    \state_ns_1_0_.m36_i_a2_2_10_0\ : CFG2
      generic map(INIT => x"8")

      port map(A => \state[1]_net_1\, B => echo_c, Y => 
        m36_i_a2_2_10_0);
    
    \un5_time.if_generate_plus.mult1_un89_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un82_sum_cry_6_S, B => 
        mult1_un82_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un89_sum_cry_6, S => mult1_un89_sum_cry_7_S, Y
         => OPEN, FCO => mult1_un89_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un124_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un117_sum_cry_8_S, C
         => mult1_un117_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un124_sum_cry_8, S => mult1_un124_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un159_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un152_sum_cry_1_S, B => 
        mult1_un152_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un159_sum_cry_1, S => 
        mult1_un159_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un159_sum_cry_2);
    
    i_4_10_185_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[17]\, B => \state[1]_net_1\, Y => 
        \i_4_10_185_i_i_a2\);
    
    \un5_time.if_generate_plus.mult1_un145_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un138_sum_cry_6_S, B => 
        mult1_un138_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un145_sum_cry_6, S => 
        mult1_un145_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un145_sum_cry_7);
    
    \state_ns_1_0_.m36_i_a2_0_8\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \i_3[24]\, B => \i_3[25]\, C => \i_3[26]\, D
         => \i_3[27]\, Y => N_270_8);
    
    \i_RNIR52F[16]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[16]_net_1\, Y => \i_i[16]\);
    
    \state_ns_1_0_.un1_state_2_i\ : CFG3
      generic map(INIT => x"38")

      port map(A => echo_c, B => \state[0]_net_1\, C => 
        \state[1]_net_1\, Y => un1_state_2_i_0);
    
    i_3_cry_28 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[28]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_27\, S => \i_3[28]\, Y
         => OPEN, FCO => \i_3_cry_28\);
    
    i_3_cry_26 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[26]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_25\, S => \i_3[26]\, Y
         => OPEN, FCO => \i_3_cry_26\);
    
    \i_RNO[16]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[16]\, B => \state[1]_net_1\, Y => 
        N_428_i_0);
    
    \un5_time.if_generate_plus.mult1_un145_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un138_sum_cry_2_S, B => 
        mult1_un138_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un145_sum_cry_2, S => 
        mult1_un145_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un145_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un61_sum_cry_3\ : ARI1
      generic map(INIT => x"5AAAA")

      port map(A => VCC_net_1, B => mult1_un61_sum_axb_3, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un61_sum_cry_2, S
         => mult1_un61_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un61_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un222_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[2]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => 
        mult1_un222_sum_cry_0_Y, FCO => mult1_un222_sum_cry_0);
    
    \i_RNO[19]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[19]\, B => \state[1]_net_1\, Y => 
        N_410_i_0);
    
    \un5_time.if_generate_plus.mult1_un194_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un194_sum_s_9_S, Y => 
        \mult1_un194_sum_i_0[10]\);
    
    \un5_time.if_generate_plus.mult1_un117_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un110_sum_cry_3_S, B => 
        mult1_un110_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un117_sum_cry_3, S => 
        mult1_un117_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un117_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un75_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un68_sum_cry_4_S, B => 
        mult1_un68_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un75_sum_cry_4, S => mult1_un75_sum_cry_5_S, Y
         => OPEN, FCO => mult1_un75_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un208_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un201_sum_cry_2_S, B => 
        mult1_un201_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un208_sum_cry_2, S => 
        mult1_un208_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un208_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un145_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un145_sum_s_9_S, Y => 
        \mult1_un145_sum_i_0[10]\);
    
    \i[25]\ : SLE
      port map(D => \i_4_18_129_i_i_a2\, CLK => FCCC_0_GL0, EN
         => un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[25]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un75_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un68_sum_cry_5_S, B => 
        mult1_un68_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un75_sum_cry_5, S => mult1_un75_sum_cry_6_S, Y
         => OPEN, FCO => mult1_un75_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un215_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[3]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un215_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un152_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un145_sum_cry_8_S, C
         => mult1_un145_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un152_sum_cry_8, S => mult1_un152_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \time[12]\ : SLE
      port map(D => \mult1_un145_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(12));
    
    \un5_time.if_generate_plus.mult1_un82_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un75_sum_cry_7_S, B => 
        mult1_un75_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un82_sum_cry_7, S => mult1_un82_sum_cry_8_S, Y
         => OPEN, FCO => mult1_un82_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un103_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un96_sum_cry_7_S, B => 
        mult1_un96_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un103_sum_cry_7, S => mult1_un103_sum_cry_8_S, 
        Y => OPEN, FCO => mult1_un103_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un173_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un166_sum_cry_8_S, C
         => mult1_un166_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un173_sum_cry_8, S => mult1_un173_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \i_RNO[9]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[9]\, B => \state[1]_net_1\, Y => 
        N_314_i_0);
    
    \un5_time.if_generate_plus.mult1_un173_sum_cry_1\ : ARI1
      generic map(INIT => x"53CAA")

      port map(A => VCC_net_1, B => mult1_un166_sum_cry_0_Y, C
         => \i[10]_net_1\, D => mult1_un166_sum_s_9_S, FCI => 
        mult1_un173_sum_cry_0, S => mult1_un173_sum_cry_1_S, Y
         => OPEN, FCO => mult1_un173_sum_cry_1);
    
    i_3_cry_22 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[22]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_21\, S => \i_3[22]\, Y
         => OPEN, FCO => \i_3_cry_22\);
    
    \un5_time.if_generate_plus.mult1_un187_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un180_sum_cry_1_S, B => 
        mult1_un180_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un187_sum_cry_1, S => 
        mult1_un187_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un187_sum_cry_2);
    
    \un5_time.if_generate_plus.mult1_un61_sum_cry_5\ : ARI1
      generic map(INIT => x"5AAAA")

      port map(A => VCC_net_1, B => mult1_un61_sum_axb_5, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un61_sum_cry_4, S
         => mult1_un61_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un61_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un222_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un215_sum_cry_2_S, B => 
        mult1_un215_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un222_sum_cry_2, S => 
        mult1_un222_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un222_sum_cry_3);
    
    \i[15]\ : SLE
      port map(D => N_434_i_0, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[15]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un89_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un82_sum_cry_8_S, C => 
        mult1_un82_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un89_sum_cry_8, S => mult1_un89_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un180_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un173_sum_cry_6_S, B => 
        mult1_un173_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un180_sum_cry_6, S => 
        mult1_un180_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un180_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un215_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un208_sum_cry_5_S, B => 
        mult1_un208_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un215_sum_cry_5, S => 
        mult1_un215_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un215_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un208_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[4]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un208_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un110_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un103_sum_cry_7_S, B => 
        mult1_un103_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un110_sum_cry_7, S => 
        mult1_un110_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un110_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un68_sum_cry_2\ : ARI1
      generic map(INIT => x"57F80")

      port map(A => mult1_un61_sum_cry_1_S, B => 
        mult1_un61_sum_cry_5, C => mult1_un54_sum_cry_6, D => 
        mult1_un61_sum_axb_6, FCI => mult1_un68_sum_cry_1, S => 
        mult1_un68_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un68_sum_cry_2);
    
    \un5_time.if_generate_plus.mult1_un110_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un103_sum_cry_1_S, B => 
        mult1_un103_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un110_sum_cry_1, S => 
        mult1_un110_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un110_sum_cry_2);
    
    \un5_time.if_generate_plus.mult1_un152_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[13]\, B => mult1_un145_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un152_sum_cry_0, 
        S => mult1_un152_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un152_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un145_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[13]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un145_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un89_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un82_sum_cry_7_S, B => 
        mult1_un82_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un89_sum_cry_7, S => mult1_un89_sum_cry_8_S, Y
         => OPEN, FCO => mult1_un89_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un103_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un96_sum_cry_1_S, B => 
        mult1_un96_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un103_sum_cry_1, S => mult1_un103_sum_cry_2_S, 
        Y => OPEN, FCO => mult1_un103_sum_cry_2);
    
    i_4_17_136_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[24]\, B => \state[1]_net_1\, Y => 
        \i_4_17_136_i_i_a2\);
    
    \un5_time.if_generate_plus.mult1_un222_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un215_sum_cry_6_S, B => 
        mult1_un215_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un222_sum_cry_6, S => 
        mult1_un222_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un222_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un166_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un159_sum_cry_3_S, B => 
        mult1_un159_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un166_sum_cry_3, S => 
        mult1_un166_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un166_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un145_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un138_sum_cry_1_S, B => 
        mult1_un138_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un145_sum_cry_1, S => 
        mult1_un145_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un145_sum_cry_2);
    
    \i[22]\ : SLE
      port map(D => \i_4_15_150_i_i_a2\, CLK => FCCC_0_GL0, EN
         => un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[22]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un110_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un103_sum_cry_3_S, B => 
        mult1_un103_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un110_sum_cry_3, S => 
        mult1_un110_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un110_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un229_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[1]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un229_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un103_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un96_sum_cry_2_S, B => 
        mult1_un96_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un103_sum_cry_2, S => mult1_un103_sum_cry_3_S, 
        Y => OPEN, FCO => mult1_un103_sum_cry_3);
    
    \i_RNI78T1[3]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[3]_net_1\, Y => \i_i[3]\);
    
    \un5_time.if_generate_plus.mult1_un110_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un103_sum_cry_2_S, B => 
        mult1_un103_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un110_sum_cry_2, S => 
        mult1_un110_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un110_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un138_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[14]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un138_sum_cry_0);
    
    \i_RNO[18]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[18]\, B => \state[1]_net_1\, Y => 
        N_416_i_0);
    
    \un5_time.if_generate_plus.mult1_un68_sum_cry_7\ : ARI1
      generic map(INIT => x"5807F")

      port map(A => mult1_un61_sum_cry_6_S, B => 
        mult1_un61_sum_cry_5, C => mult1_un54_sum_cry_6, D => 
        mult1_un61_sum_axb_6, FCI => mult1_un68_sum_cry_6, S => 
        mult1_un68_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un68_sum_cry_7);
    
    \i[2]\ : SLE
      port map(D => \i_4_21_108_i_i_a2\, CLK => FCCC_0_GL0, EN
         => un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[2]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un82_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un75_sum_cry_2_S, B => 
        mult1_un75_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un82_sum_cry_2, S => mult1_un82_sum_cry_3_S, Y
         => OPEN, FCO => mult1_un82_sum_cry_3);
    
    \i[12]\ : SLE
      port map(D => \i_4_5_220_i_i_a2\, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[12]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un124_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un117_sum_cry_4_S, B => 
        mult1_un117_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un124_sum_cry_4, S => 
        mult1_un124_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un124_sum_cry_5);
    
    i_3_cry_15 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[15]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_14\, S => \i_3[15]\, Y
         => OPEN, FCO => \i_3_cry_15\);
    
    \un5_time.if_generate_plus.mult1_un96_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un89_sum_cry_2_S, B => 
        mult1_un89_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un96_sum_cry_2, S => mult1_un96_sum_cry_3_S, Y
         => OPEN, FCO => mult1_un96_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un82_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un75_sum_cry_5_S, B => 
        mult1_un75_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un82_sum_cry_5, S => mult1_un82_sum_cry_6_S, Y
         => OPEN, FCO => mult1_un82_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un159_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un152_sum_cry_2_S, B => 
        mult1_un152_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un159_sum_cry_2, S => 
        mult1_un159_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un159_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un180_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[8]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un180_sum_cry_0);
    
    state_s3_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \state[1]_net_1\, B => \state[0]_net_1\, Y
         => \state_s3_i_i_a2\);
    
    \i_RNIABT1[6]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[6]_net_1\, Y => \i_i[6]\);
    
    \un5_time.if_generate_plus.mult1_un180_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[9]\, B => mult1_un173_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un180_sum_cry_0, 
        S => mult1_un180_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un180_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un229_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un222_sum_cry_7_S, B => 
        mult1_un222_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un229_sum_cry_7, S => OPEN, Y => OPEN, FCO
         => mult1_un229_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un124_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un117_sum_cry_7_S, B => 
        mult1_un117_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un124_sum_cry_7, S => 
        mult1_un124_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un124_sum_cry_8);
    
    \i[20]\ : SLE
      port map(D => \i_4_13_164_i_i_a2\, CLK => FCCC_0_GL0, EN
         => un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[20]_net_1\);
    
    \i[30]\ : SLE
      port map(D => \i_4_3_234_i_i_a2\, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[30]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un103_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un96_sum_cry_5_S, B => 
        mult1_un96_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un103_sum_cry_5, S => mult1_un103_sum_cry_6_S, 
        Y => OPEN, FCO => mult1_un103_sum_cry_6);
    
    \state_ns_1_0_.m36_i_a2_2\ : CFG4
      generic map(INIT => x"8000")

      port map(A => m36_i_a2_0_2, B => m36_i_a2_2_10, C => 
        m36_i_a2_2_6, D => m36_i_a2_2_7, Y => m36_i_a2_2);
    
    \un5_time.if_generate_plus.mult1_un215_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[4]\, B => mult1_un208_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un215_sum_cry_0, 
        S => mult1_un215_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un215_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un145_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un138_sum_cry_3_S, B => 
        mult1_un138_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un145_sum_cry_3, S => 
        mult1_un145_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un145_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un68_sum_cry_3\ : ARI1
      generic map(INIT => x"57F80")

      port map(A => mult1_un61_sum_cry_2_S, B => 
        mult1_un61_sum_cry_5, C => mult1_un54_sum_cry_6, D => 
        mult1_un61_sum_axb_6, FCI => mult1_un68_sum_cry_2, S => 
        mult1_un68_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un68_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un222_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un215_sum_cry_4_S, B => 
        mult1_un215_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un222_sum_cry_4, S => 
        mult1_un222_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un222_sum_cry_5);
    
    i_3_cry_5 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[5]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_4\, S => \i_3[5]\, Y => 
        OPEN, FCO => \i_3_cry_5\);
    
    \un5_time.if_generate_plus.mult1_un229_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un222_sum_cry_8_S, C
         => mult1_un222_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un229_sum_cry_8, S => mult1_un229_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un229_sum_cry_1\ : ARI1
      generic map(INIT => x"53CAA")

      port map(A => VCC_net_1, B => mult1_un222_sum_cry_0_Y, C
         => \i[2]_net_1\, D => mult1_un222_sum_s_9_S, FCI => 
        mult1_un229_sum_cry_0, S => OPEN, Y => OPEN, FCO => 
        mult1_un229_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un194_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un187_sum_cry_4_S, B => 
        mult1_un187_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un194_sum_cry_4, S => 
        mult1_un194_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un194_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un173_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un166_sum_cry_7_S, B => 
        mult1_un166_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un173_sum_cry_7, S => 
        mult1_un173_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un173_sum_cry_8);
    
    \state_ns_1_0_.m36_i_0\ : CFG4
      generic map(INIT => x"F0A3")

      port map(A => echo_c, B => locator_control_0_en_timer, C
         => \state[0]_net_1\, D => \state[1]_net_1\, Y => m36_i_0);
    
    i_3_cry_14 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[14]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_13\, S => \i_3[14]\, Y
         => OPEN, FCO => \i_3_cry_14\);
    
    \un5_time.if_generate_plus.mult1_un89_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un82_sum_cry_2_S, B => 
        mult1_un82_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un89_sum_cry_2, S => mult1_un89_sum_cry_3_S, Y
         => OPEN, FCO => mult1_un89_sum_cry_3);
    
    \i[10]\ : SLE
      port map(D => N_308_i_0, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[10]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un222_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un215_sum_cry_3_S, B => 
        mult1_un215_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un222_sum_cry_3, S => 
        mult1_un222_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un222_sum_cry_4);
    
    i_3_s_30 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[30]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_29\, S => \i_3[30]\, Y
         => OPEN, FCO => OPEN);
    
    i_3_cry_11 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[11]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_10\, S => \i_3[11]\, Y
         => OPEN, FCO => \i_3_cry_11\);
    
    \un5_time.if_generate_plus.mult1_un96_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un89_sum_cry_5_S, B => 
        mult1_un89_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un96_sum_cry_5, S => mult1_un96_sum_cry_6_S, Y
         => OPEN, FCO => mult1_un96_sum_cry_6);
    
    i_3_cry_20 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[20]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_19\, S => \i_3[20]\, Y
         => OPEN, FCO => \i_3_cry_20\);
    
    \i[6]\ : SLE
      port map(D => N_332_i_0, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[6]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un194_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un187_sum_cry_7_S, B => 
        mult1_un187_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un194_sum_cry_7, S => 
        mult1_un194_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un194_sum_cry_8);
    
    \i[29]\ : SLE
      port map(D => \i_4_2_241_i_i_a2\, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[29]_net_1\);
    
    \i[4]\ : SLE
      port map(D => \i_4_23_94_i_i_a2\, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[4]_net_1\);
    
    i_3_cry_6 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[6]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_5\, S => \i_3[6]\, Y => 
        OPEN, FCO => \i_3_cry_6\);
    
    \un5_time.if_generate_plus.mult1_un152_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un145_sum_cry_5_S, B => 
        mult1_un145_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un152_sum_cry_5, S => 
        mult1_un152_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un152_sum_cry_6);
    
    i_4_24_87_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[5]\, B => \state[1]_net_1\, Y => 
        \i_4_24_87_i_i_a2\);
    
    \un5_time.if_generate_plus.mult1_un187_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un187_sum_s_9_S, Y => 
        \mult1_un187_sum_i_0[10]\);
    
    \i_RNIU82F[19]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[19]_net_1\, Y => \i_i[19]\);
    
    \i_RNIO33F[22]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[22]_net_1\, Y => \i_i[22]\);
    
    \un5_time.if_generate_plus.mult1_un117_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un110_sum_cry_2_S, B => 
        mult1_un110_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un117_sum_cry_2, S => 
        mult1_un117_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un117_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un180_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un173_sum_cry_5_S, B => 
        mult1_un173_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un180_sum_cry_5, S => 
        mult1_un180_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un180_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un173_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un166_sum_cry_1_S, B => 
        mult1_un166_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un173_sum_cry_1, S => 
        mult1_un173_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un173_sum_cry_2);
    
    \un5_time.if_generate_plus.mult1_un103_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un96_sum_cry_6_S, B => 
        mult1_un96_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un103_sum_cry_6, S => mult1_un103_sum_cry_7_S, 
        Y => OPEN, FCO => mult1_un103_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un159_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un152_sum_cry_5_S, B => 
        mult1_un152_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un159_sum_cry_5, S => 
        mult1_un159_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un159_sum_cry_6);
    
    \state_ns_1_0_.m36_i_o2\ : CFG4
      generic map(INIT => x"5DFF")

      port map(A => \i_3[19]\, B => m36_i_o2_1, C => \i_3[17]\, D
         => \i_3[18]\, Y => m36_i_o2);
    
    \i[19]\ : SLE
      port map(D => N_410_i_0, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[19]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un222_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un215_sum_cry_8_S, C
         => mult1_un215_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un222_sum_cry_8, S => mult1_un222_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un187_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un180_sum_cry_7_S, B => 
        mult1_un180_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un187_sum_cry_7, S => 
        mult1_un187_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un187_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un180_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un180_sum_s_9_S, Y => 
        \mult1_un180_sum_i_0[10]\);
    
    \i_RNIM13F[20]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[20]_net_1\, Y => \i_i[20]\);
    
    \un5_time.if_generate_plus.mult1_un173_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un166_sum_cry_2_S, B => 
        mult1_un166_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un173_sum_cry_2, S => 
        mult1_un173_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un173_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un208_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un201_sum_cry_3_S, B => 
        mult1_un201_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un208_sum_cry_3, S => 
        mult1_un208_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un208_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un117_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un110_sum_cry_8_S, C
         => mult1_un110_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un117_sum_cry_8, S => mult1_un117_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un194_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un187_sum_cry_8_S, C
         => mult1_un187_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un194_sum_cry_8, S => mult1_un194_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    i_4_0_255_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[27]\, B => \state[1]_net_1\, Y => 
        \i_4_0_255_i_i_a2\);
    
    i_3_cry_3 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[3]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_2\, S => \i_3[3]\, Y => 
        OPEN, FCO => \i_3_cry_3\);
    
    \un5_time.if_generate_plus.mult1_un208_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un201_sum_cry_8_S, C
         => mult1_un201_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un208_sum_cry_8, S => mult1_un208_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un201_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un194_sum_cry_1_S, B => 
        mult1_un194_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un201_sum_cry_1, S => 
        mult1_un201_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un201_sum_cry_2);
    
    \state_ns_1_0_.m36_i_a2_2_5_0\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \i_3[3]\, B => \i_3[2]\, C => \i_3[0]\, D => 
        \i_3[4]\, Y => m36_i_a2_2_5);
    
    \state_ns_1_0_.m36_i_a2_2_10_3\ : CFG4
      generic map(INIT => x"0008")

      port map(A => m36_i_a2_2_5, B => N_270_8, C => \i_3[28]\, D
         => \i_3[29]\, Y => m36_i_a2_2_10);
    
    \un5_time.if_generate_plus.mult1_un229_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un222_sum_cry_3_S, B => 
        mult1_un222_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un229_sum_cry_3, S => OPEN, Y => OPEN, FCO
         => mult1_un229_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un110_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un103_sum_cry_4_S, B => 
        mult1_un103_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un110_sum_cry_4, S => 
        mult1_un110_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un110_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un96_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[21]\, B => mult1_un89_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un96_sum_cry_0, S
         => mult1_un96_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un96_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un61_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[25]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => 
        mult1_un61_sum_cry_0_Y, FCO => mult1_un61_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un117_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[17]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => 
        mult1_un117_sum_cry_0_Y, FCO => mult1_un117_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un117_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un110_sum_cry_4_S, B => 
        mult1_un110_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un117_sum_cry_4, S => 
        mult1_un117_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un117_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un131_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un124_sum_cry_4_S, B => 
        mult1_un124_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un131_sum_cry_4, S => 
        mult1_un131_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un131_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un222_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un222_sum_s_9_S, Y => 
        \mult1_un222_sum_i_0[10]\);
    
    \i_RNO[10]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[10]\, B => \state[1]_net_1\, Y => 
        N_308_i_0);
    
    \un5_time.if_generate_plus.mult1_un138_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[15]\, B => mult1_un131_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un138_sum_cry_0, 
        S => mult1_un138_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un138_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un131_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un124_sum_cry_7_S, B => 
        mult1_un124_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un131_sum_cry_7, S => 
        mult1_un131_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un131_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un54_sum_cry_4\ : ARI1
      generic map(INIT => x"601FE")

      port map(A => \i[30]_net_1\, B => \i[27]_net_1\, C => 
        \i[28]_net_1\, D => \i[29]_net_1\, FCI => 
        mult1_un54_sum_cry_3, S => mult1_un61_sum_axb_5, Y => 
        OPEN, FCO => mult1_un54_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un201_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un194_sum_cry_8_S, C
         => mult1_un194_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un201_sum_cry_8, S => mult1_un201_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \i[24]\ : SLE
      port map(D => \i_4_17_136_i_i_a2\, CLK => FCCC_0_GL0, EN
         => un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[24]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un173_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un166_sum_cry_5_S, B => 
        mult1_un166_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un173_sum_cry_5, S => 
        mult1_un173_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un173_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un61_sum_cry_6\ : ARI1
      generic map(INIT => x"5AAAA")

      port map(A => VCC_net_1, B => mult1_un61_sum_axb_6, C => 
        GND_net_1, D => GND_net_1, FCI => 
        mult1_un61_sum_s_6_105_FCO, S => mult1_un61_sum_cry_6_S, 
        Y => OPEN, FCO => mult1_un61_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un166_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un159_sum_cry_8_S, C
         => mult1_un159_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un166_sum_cry_8, S => mult1_un166_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \time[0]\ : SLE
      port map(D => \mult1_un229_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(0));
    
    \un5_time.if_generate_plus.mult1_un61_sum_cry_2\ : ARI1
      generic map(INIT => x"5AAAA")

      port map(A => VCC_net_1, B => mult1_un61_sum_axb_2, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un61_sum_cry_1, S
         => mult1_un61_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un61_sum_cry_2);
    
    \un5_time.if_generate_plus.mult1_un75_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un68_sum_cry_8_S, C => 
        mult1_un68_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un75_sum_cry_8, S => mult1_un75_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    new_ready : SLE
      port map(D => \state[1]_net_1\, CLK => FCCC_0_GL0, EN => 
        \state[0]_net_1\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => pulse_meash_0_new_ready);
    
    \un5_time.if_generate_plus.mult1_un215_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un208_sum_cry_2_S, B => 
        mult1_un208_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un215_sum_cry_2, S => 
        mult1_un215_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un215_sum_cry_3);
    
    \state_ns_1_0_.m36_i_a2_6\ : CFG4
      generic map(INIT => x"0004")

      port map(A => \i_3[13]\, B => m36_i_o2_3, C => \i_3[11]\, D
         => \i_3[12]\, Y => m36_i_a2_6);
    
    \un5_time.if_generate_plus.mult1_un75_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un68_sum_cry_7_S, B => 
        mult1_un68_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un75_sum_cry_7, S => mult1_un75_sum_cry_8_S, Y
         => OPEN, FCO => mult1_un75_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un166_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un166_sum_s_9_S, Y => 
        \mult1_un166_sum_i_0[10]\);
    
    \un5_time.if_generate_plus.mult1_un159_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[12]\, B => mult1_un152_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un159_sum_cry_0, 
        S => mult1_un159_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un159_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un145_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un138_sum_cry_5_S, B => 
        mult1_un138_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un145_sum_cry_5, S => 
        mult1_un145_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un145_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un208_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un208_sum_s_9_S, Y => 
        \mult1_un208_sum_i_0[10]\);
    
    \un5_time.if_generate_plus.mult1_un152_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un145_sum_cry_3_S, B => 
        mult1_un145_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un152_sum_cry_3, S => 
        mult1_un152_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un152_sum_cry_4);
    
    \i[14]\ : SLE
      port map(D => N_440_i_0, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[14]_net_1\);
    
    \i_RNIBCT1[7]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[7]_net_1\, Y => \i_i[7]\);
    
    \un5_time.if_generate_plus.mult1_un138_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un131_sum_cry_7_S, B => 
        mult1_un131_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un138_sum_cry_7, S => 
        mult1_un138_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un138_sum_cry_8);
    
    \time[7]\ : SLE
      port map(D => \mult1_un180_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(7));
    
    \un5_time.if_generate_plus.mult1_un103_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un96_sum_cry_3_S, B => 
        mult1_un96_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un103_sum_cry_3, S => mult1_un103_sum_cry_4_S, 
        Y => OPEN, FCO => mult1_un103_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un103_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un96_sum_cry_8_S, C => 
        mult1_un96_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un103_sum_cry_8, S => mult1_un103_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un201_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un194_sum_cry_4_S, B => 
        mult1_un194_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un201_sum_cry_4, S => 
        mult1_un201_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un201_sum_cry_5);
    
    i_4_16_143_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[23]\, B => \state[1]_net_1\, Y => 
        \i_4_16_143_i_i_a2\);
    
    \un5_time.if_generate_plus.mult1_un201_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un194_sum_cry_7_S, B => 
        mult1_un194_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un201_sum_cry_7, S => 
        mult1_un201_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un201_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un75_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un68_sum_cry_2_S, B => 
        mult1_un68_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un75_sum_cry_2, S => mult1_un75_sum_cry_3_S, Y
         => OPEN, FCO => mult1_un75_sum_cry_3);
    
    \state[1]\ : SLE
      port map(D => un1_state_2_i_0, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \state[1]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un145_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un138_sum_cry_8_S, C
         => mult1_un138_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un145_sum_cry_8, S => mult1_un145_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un117_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un110_sum_cry_6_S, B => 
        mult1_un110_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un117_sum_cry_6, S => 
        mult1_un117_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un117_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un173_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un166_sum_cry_6_S, B => 
        mult1_un166_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un173_sum_cry_6, S => 
        mult1_un173_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un173_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un166_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[11]\, B => mult1_un159_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un166_sum_cry_0, 
        S => mult1_un166_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un166_sum_cry_1);
    
    i_4_3_234_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[30]\, B => \state[1]_net_1\, Y => 
        \i_4_3_234_i_i_a2\);
    
    \i_RNIQ53F[24]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[24]_net_1\, Y => \i_i[24]\);
    
    \i[5]\ : SLE
      port map(D => \i_4_24_87_i_i_a2\, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[5]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un89_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un82_sum_cry_1_S, B => 
        mult1_un82_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un89_sum_cry_1, S => mult1_un89_sum_cry_2_S, Y
         => OPEN, FCO => mult1_un89_sum_cry_2);
    
    i_4_23_94_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[4]\, B => \state[1]_net_1\, Y => 
        \i_4_23_94_i_i_a2\);
    
    \i[8]\ : SLE
      port map(D => \i_4_27_66_i_i_a2\, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[8]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un68_sum_cry_8\ : ARI1
      generic map(INIT => x"57F80")

      port map(A => mult1_un61_sum_cry_7_S, B => 
        mult1_un61_sum_cry_5, C => mult1_un54_sum_cry_6, D => 
        mult1_un61_sum_axb_6, FCI => mult1_un68_sum_cry_7, S => 
        mult1_un68_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un68_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un138_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un138_sum_s_9_S, Y => 
        \mult1_un138_sum_i_0[10]\);
    
    i_4_18_129_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[25]\, B => \state[1]_net_1\, Y => 
        \i_4_18_129_i_i_a2\);
    
    \un5_time.if_generate_plus.mult1_un215_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un208_sum_cry_4_S, B => 
        mult1_un208_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un215_sum_cry_4, S => 
        mult1_un215_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un215_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un201_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un194_sum_cry_2_S, B => 
        mult1_un194_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un201_sum_cry_2, S => 
        mult1_un201_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un201_sum_cry_3);
    
    i_3_cry_17 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[17]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_16\, S => \i_3[17]\, Y
         => OPEN, FCO => \i_3_cry_17\);
    
    \un5_time.if_generate_plus.mult1_un82_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un75_sum_cry_3_S, B => 
        mult1_un75_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un82_sum_cry_3, S => mult1_un82_sum_cry_4_S, Y
         => OPEN, FCO => mult1_un82_sum_cry_4);
    
    i_3_cry_4 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[4]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_3\, S => \i_3[4]\, Y => 
        OPEN, FCO => \i_3_cry_4\);
    
    \un5_time.if_generate_plus.mult1_un131_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[15]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un131_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un152_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un145_sum_cry_4_S, B => 
        mult1_un145_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un152_sum_cry_4, S => 
        mult1_un152_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un152_sum_cry_5);
    
    \state_ns_1_0_.m36_i_o2_3\ : CFG4
      generic map(INIT => x"5DFF")

      port map(A => \i_3[10]\, B => m36_i_o2_6, C => \i_3[8]\, D
         => \i_3[9]\, Y => m36_i_o2_3);
    
    \un5_time.if_generate_plus.mult1_un68_sum_cry_4\ : ARI1
      generic map(INIT => x"5807F")

      port map(A => mult1_un61_sum_cry_3_S, B => 
        mult1_un61_sum_cry_5, C => mult1_un54_sum_cry_6, D => 
        mult1_un61_sum_axb_6, FCI => mult1_un68_sum_cry_3, S => 
        mult1_un68_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un68_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un229_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un222_sum_cry_1_S, B => 
        mult1_un222_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un229_sum_cry_1, S => OPEN, Y => OPEN, FCO
         => mult1_un229_sum_cry_2);
    
    \un5_time.if_generate_plus.mult1_un222_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un215_sum_cry_1_S, B => 
        mult1_un215_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un222_sum_cry_1, S => 
        mult1_un222_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un222_sum_cry_2);
    
    \un5_time.if_generate_plus.mult1_un180_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un173_sum_cry_8_S, C
         => mult1_un173_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un180_sum_cry_8, S => mult1_un180_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    \un5_time.if_generate_plus.mult1_un173_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un173_sum_s_9_S, Y => 
        \mult1_un173_sum_i_0[10]\);
    
    \un5_time.if_generate_plus.mult1_un131_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un124_sum_cry_3_S, B => 
        mult1_un124_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un131_sum_cry_3, S => 
        mult1_un131_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un131_sum_cry_4);
    
    \state_ns_1_0_.m36_i_o2_1\ : CFG4
      generic map(INIT => x"DFFF")

      port map(A => \i_3[16]\, B => m36_i_a2_6, C => \i_3[14]\, D
         => \i_3[15]\, Y => m36_i_o2_1);
    
    \un5_time.if_generate_plus.mult1_un229_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un222_sum_cry_4_S, B => 
        mult1_un222_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un229_sum_cry_4, S => OPEN, Y => OPEN, FCO
         => mult1_un229_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un201_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[6]\, B => mult1_un194_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un201_sum_cry_0, 
        S => mult1_un201_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un201_sum_cry_1);
    
    i_4_4_227_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[11]\, B => \state[1]_net_1\, Y => 
        \i_4_4_227_i_i_a2\);
    
    i_3_cry_25 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[25]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_24\, S => \i_3[25]\, Y
         => OPEN, FCO => \i_3_cry_25\);
    
    \un5_time.if_generate_plus.mult1_un201_sum_i_0[10]\ : CFG1
      generic map(INIT => "01")

      port map(A => mult1_un201_sum_s_9_S, Y => 
        \mult1_un201_sum_i_0[10]\);
    
    \un5_time.if_generate_plus.mult1_un89_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un82_sum_cry_4_S, B => 
        mult1_un82_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un89_sum_cry_4, S => mult1_un89_sum_cry_5_S, Y
         => OPEN, FCO => mult1_un89_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un152_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un145_sum_cry_7_S, B => 
        mult1_un145_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un152_sum_cry_7, S => 
        mult1_un152_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un152_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un96_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un89_sum_cry_4_S, B => 
        mult1_un89_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un96_sum_cry_4, S => mult1_un96_sum_cry_5_S, Y
         => OPEN, FCO => mult1_un96_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un208_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[5]\, B => mult1_un201_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un208_sum_cry_0, 
        S => mult1_un208_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un208_sum_cry_1);
    
    \un5_time.if_generate_plus.mult1_un82_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[22]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un82_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un229_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un222_sum_cry_2_S, B => 
        mult1_un222_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un229_sum_cry_2, S => OPEN, Y => OPEN, FCO
         => mult1_un229_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un138_sum_cry_3\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un131_sum_cry_2_S, B => 
        mult1_un131_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un138_sum_cry_2, S => 
        mult1_un138_sum_cry_3_S, Y => OPEN, FCO => 
        mult1_un138_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un103_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un96_sum_cry_4_S, B => 
        mult1_un96_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un103_sum_cry_4, S => mult1_un103_sum_cry_5_S, 
        Y => OPEN, FCO => mult1_un103_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un68_sum_cry_5\ : ARI1
      generic map(INIT => x"57F80")

      port map(A => mult1_un61_sum_cry_4_S, B => 
        mult1_un61_sum_cry_5, C => mult1_un54_sum_cry_6, D => 
        mult1_un61_sum_axb_6, FCI => mult1_un68_sum_cry_4, S => 
        mult1_un68_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un68_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un96_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un89_sum_cry_7_S, B => 
        mult1_un89_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un96_sum_cry_7, S => mult1_un96_sum_cry_8_S, Y
         => OPEN, FCO => mult1_un96_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un187_sum_cry_6\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un180_sum_cry_5_S, B => 
        mult1_un180_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un187_sum_cry_5, S => 
        mult1_un187_sum_cry_6_S, Y => OPEN, FCO => 
        mult1_un187_sum_cry_6);
    
    \un5_time.if_generate_plus.mult1_un159_sum_s_9\ : ARI1
      generic map(INIT => x"49900")

      port map(A => VCC_net_1, B => mult1_un152_sum_cry_8_S, C
         => mult1_un152_sum_s_9_S, D => GND_net_1, FCI => 
        mult1_un159_sum_cry_8, S => mult1_un159_sum_s_9_S, Y => 
        OPEN, FCO => OPEN);
    
    i_4_19_122_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[0]\, B => \state[1]_net_1\, Y => 
        \i_4_19_122_i_i_a2\);
    
    \un5_time.if_generate_plus.mult1_un187_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[8]\, B => mult1_un180_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un187_sum_cry_0, 
        S => mult1_un187_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un187_sum_cry_1);
    
    \i[3]\ : SLE
      port map(D => \i_4_22_101_i_i_a2\, CLK => FCCC_0_GL0, EN
         => un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[3]_net_1\);
    
    \i_RNICDT1[8]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[8]_net_1\, Y => \i_i[8]\);
    
    i_3_cry_24 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[24]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_23\, S => \i_3[24]\, Y
         => OPEN, FCO => \i_3_cry_24\);
    
    i_3_cry_1 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[1]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_0\, S => \i_3[1]\, Y => 
        OPEN, FCO => \i_3_cry_1\);
    
    i_3_s_0_104 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => echo_c, C => GND_net_1, D => 
        GND_net_1, FCI => VCC_net_1, S => OPEN, Y => OPEN, FCO
         => i_3_s_0_104_FCO);
    
    i_3_cry_21 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[21]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_20\, S => \i_3[21]\, Y
         => OPEN, FCO => \i_3_cry_21\);
    
    \un5_time.if_generate_plus.mult1_un173_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un166_sum_cry_3_S, B => 
        mult1_un166_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un173_sum_cry_3, S => 
        mult1_un173_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un173_sum_cry_4);
    
    \un5_time.if_generate_plus.mult1_un145_sum_cry_5\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un138_sum_cry_4_S, B => 
        mult1_un138_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un145_sum_cry_4, S => 
        mult1_un145_sum_cry_5_S, Y => OPEN, FCO => 
        mult1_un145_sum_cry_5);
    
    \un5_time.if_generate_plus.mult1_un208_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un201_sum_cry_6_S, B => 
        mult1_un201_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un208_sum_cry_6, S => 
        mult1_un208_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un208_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un159_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un152_sum_cry_7_S, B => 
        mult1_un152_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un159_sum_cry_7, S => 
        mult1_un159_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un159_sum_cry_8);
    
    i_3_cry_9 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[9]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_8\, S => \i_3[9]\, Y => 
        OPEN, FCO => \i_3_cry_9\);
    
    \un5_time.if_generate_plus.mult1_un54_sum_cry_3\ : ARI1
      generic map(INIT => x"4E100")

      port map(A => VCC_net_1, B => \i[27]_net_1\, C => 
        \i[28]_net_1\, D => \i[29]_net_1\, FCI => 
        mult1_un54_sum_cry_2, S => mult1_un54_sum_cry_3_S, Y => 
        OPEN, FCO => mult1_un54_sum_cry_3);
    
    \un5_time.if_generate_plus.mult1_un89_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[21]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un89_sum_cry_0);
    
    \i[1]\ : SLE
      port map(D => \i_4_20_115_i_i_a2\, CLK => FCCC_0_GL0, EN
         => un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[1]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un222_sum_cry_1\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \i_i[3]\, B => mult1_un215_sum_s_9_S, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un222_sum_cry_0, 
        S => mult1_un222_sum_cry_1_S, Y => OPEN, FCO => 
        mult1_un222_sum_cry_1);
    
    \i_RNO[7]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[7]\, B => \state[1]_net_1\, Y => 
        N_326_i_0);
    
    \un5_time.if_generate_plus.mult1_un96_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un89_sum_cry_6_S, B => 
        mult1_un89_sum_s_9_S, C => GND_net_1, D => GND_net_1, FCI
         => mult1_un96_sum_cry_6, S => mult1_un96_sum_cry_7_S, Y
         => OPEN, FCO => mult1_un96_sum_cry_7);
    
    \i[28]\ : SLE
      port map(D => \i_4_1_248_i_i_a2\, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[28]_net_1\);
    
    \i_RNI9AT1[5]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[5]_net_1\, Y => \i_i[5]\);
    
    \time[6]\ : SLE
      port map(D => \mult1_un187_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(6));
    
    \un5_time.if_generate_plus.mult1_un215_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un208_sum_cry_7_S, B => 
        mult1_un208_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un215_sum_cry_7, S => 
        mult1_un215_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un215_sum_cry_8);
    
    \un5_time.if_generate_plus.mult1_un187_sum_cry_4\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un180_sum_cry_3_S, B => 
        mult1_un180_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un187_sum_cry_3, S => 
        mult1_un187_sum_cry_4_S, Y => OPEN, FCO => 
        mult1_un187_sum_cry_4);
    
    \i_RNI89T1[4]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[4]_net_1\, Y => \i_i[4]\);
    
    \un5_time.if_generate_plus.mult1_un61_sum_cry_7\ : ARI1
      generic map(INIT => x"6AA00")

      port map(A => VCC_net_1, B => mult1_un54_sum_cry_6, C => 
        GND_net_1, D => GND_net_1, FCI => mult1_un61_sum_cry_6, S
         => mult1_un61_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un61_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un138_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un131_sum_cry_6_S, B => 
        mult1_un131_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un138_sum_cry_6, S => 
        mult1_un138_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un138_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un117_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un110_sum_cry_1_S, B => 
        mult1_un110_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un117_sum_cry_1, S => 
        mult1_un117_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un117_sum_cry_2);
    
    i_3_cry_13 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[13]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_3_cry_12\, S => \i_3[13]\, Y
         => OPEN, FCO => \i_3_cry_13\);
    
    \time[14]\ : SLE
      port map(D => \mult1_un131_sum_i_0[10]\, CLK => FCCC_0_GL0, 
        EN => \state_s3_i_i_a2\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => pulse_meash_0_time(14));
    
    \i[18]\ : SLE
      port map(D => N_416_i_0, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[18]_net_1\);
    
    \un5_time.if_generate_plus.mult1_un110_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un103_sum_cry_6_S, B => 
        mult1_un103_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un110_sum_cry_6, S => 
        mult1_un110_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un110_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un138_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un131_sum_cry_1_S, B => 
        mult1_un131_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un138_sum_cry_1, S => 
        mult1_un138_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un138_sum_cry_2);
    
    i_3_cry_0 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[0]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => i_3_s_0_104_FCO, S => \i_3[0]\, Y
         => OPEN, FCO => \i_3_cry_0\);
    
    \un5_time.if_generate_plus.mult1_un131_sum_cry_2\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un124_sum_cry_1_S, B => 
        mult1_un124_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un131_sum_cry_1, S => 
        mult1_un131_sum_cry_2_S, Y => OPEN, FCO => 
        mult1_un131_sum_cry_2);
    
    i_4_27_66_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[8]\, B => \state[1]_net_1\, Y => 
        \i_4_27_66_i_i_a2\);
    
    \i_RNO[15]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \i_3[15]\, B => \state[1]_net_1\, Y => 
        N_434_i_0);
    
    \un5_time.if_generate_plus.mult1_un124_sum_cry_0\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[16]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => mult1_un124_sum_cry_0);
    
    \un5_time.if_generate_plus.mult1_un159_sum_cry_7\ : ARI1
      generic map(INIT => x"555AA")

      port map(A => mult1_un152_sum_cry_6_S, B => 
        mult1_un152_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un159_sum_cry_6, S => 
        mult1_un159_sum_cry_7_S, Y => OPEN, FCO => 
        mult1_un159_sum_cry_7);
    
    \un5_time.if_generate_plus.mult1_un180_sum_cry_8\ : ARI1
      generic map(INIT => x"5AA55")

      port map(A => mult1_un173_sum_cry_7_S, B => 
        mult1_un173_sum_s_9_S, C => GND_net_1, D => GND_net_1, 
        FCI => mult1_un180_sum_cry_7, S => 
        mult1_un180_sum_cry_8_S, Y => OPEN, FCO => 
        mult1_un180_sum_cry_8);
    
    \i_RNIDET1[9]\ : CFG1
      generic map(INIT => "01")

      port map(A => \i[9]_net_1\, Y => \i_i[9]\);
    
    \i[26]\ : SLE
      port map(D => \i_4_262_i_i_a2\, CLK => FCCC_0_GL0, EN => 
        un1_state_2_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \i[26]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity locator_control_work_top_rtl_0layer0 is

    port( locator_control_0_angle1   : out   std_logic_vector(3 downto 0);
          BT_module_0_data_buf       : in    std_logic_vector(7 downto 0);
          FCCC_0_LOCK                : in    std_logic;
          FCCC_0_GL0                 : in    std_logic;
          un42_clk_0                 : out   std_logic;
          un42_clk_1                 : out   std_logic;
          un42_clk_2                 : out   std_logic;
          un42_clk_3                 : out   std_logic;
          trig_c                     : out   std_logic;
          locator_control_0_en_timer : out   std_logic;
          un1_state_7_0              : out   std_logic;
          pulse_meash_0_new_ready    : in    std_logic
        );

end locator_control_work_top_rtl_0layer0;

architecture DEF_ARCH of locator_control_work_top_rtl_0layer0 is 

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component ARI1
    generic (INIT:std_logic_vector(19 downto 0) := x"00000");

    port( A   : in    std_logic := 'U';
          B   : in    std_logic := 'U';
          C   : in    std_logic := 'U';
          D   : in    std_logic := 'U';
          FCI : in    std_logic := 'U';
          S   : out   std_logic;
          Y   : out   std_logic;
          FCO : out   std_logic
        );
  end component;

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

    signal \un34_clk_cry_30\, un34_clk_cry_30_i_0, VCC_net_1, 
        \un42_clk_0\, \state[4]_net_1\, GND_net_1, \un42_clk_1\, 
        \un42_clk_2\, \un42_clk_3\, \over\, over_1_sqmuxa, 
        \un1_angle_0_sqmuxa_0\, \state[8]_net_1\, un1_state_8_i_0, 
        \dir\, cr_angle_0_sqmuxa, \st_angle[0]_net_1\, 
        \fn_angle_0_sqmuxa\, \st_angle[1]_net_1\, 
        \st_angle[2]_net_1\, \st_angle[3]_net_1\, un34_clk_0, 
        un34_clk_1, un34_clk_2, un34_clk_3, \state[6]_net_1\, 
        N_232_i_0, N_194_i_0, \state[5]_net_1\, \state[3]_net_1\, 
        \state_ns[8]_net_1\, \state[2]_net_1\, N_568_i_0, 
        \state[1]_net_1\, \state[0]_net_1\, \state_ns[11]\, 
        \state[11]_net_1\, \state_ns_i_i_a3_0_a3[0]_net_1\, 
        \state[10]_net_1\, \state[9]_net_1\, N_191_i_0, 
        \state[7]_net_1\, \state_ns[4]\, \i[0]_net_1\, \i_lm[0]\, 
        N_155_i_0, \i[1]_net_1\, \i_lm[1]\, \i[2]_net_1\, 
        \i_lm[2]\, \i[3]_net_1\, \i_lm[3]\, \i[4]_net_1\, 
        \i_lm[4]\, \i[5]_net_1\, \i_lm[5]\, \i[6]_net_1\, 
        \i_lm[6]\, \i[7]_net_1\, \i_lm[7]\, \i[8]_net_1\, 
        \i_lm[8]\, \i[9]_net_1\, \i_lm[9]\, \i[10]_net_1\, 
        \i_lm[10]\, \i[11]_net_1\, \i_lm[11]\, \i[12]_net_1\, 
        \i_lm[12]\, \i[13]_net_1\, \i_lm[13]\, \i[14]_net_1\, 
        \i_lm[14]\, \i[15]_net_1\, \i_lm[15]\, \i[16]_net_1\, 
        \i_lm[16]\, \i[17]_net_1\, \i_lm[17]\, \i[18]_net_1\, 
        \i_lm[18]\, \i[19]_net_1\, \i_lm[19]\, \i[20]_net_1\, 
        \i_lm[20]\, \i[21]_net_1\, \i_lm[21]\, \i[22]_net_1\, 
        \i_lm[22]\, \i[23]_net_1\, \i_lm[23]\, \i[24]_net_1\, 
        \i_lm[24]\, \i[25]_net_1\, \i_lm[25]\, \i[26]_net_1\, 
        \i_lm[26]\, \i[27]_net_1\, \i_lm[27]\, \i[28]_net_1\, 
        \i_lm[28]\, \i[29]_net_1\, \i_lm[29]\, \i[30]_net_1\, 
        \i_lm[30]\, \cr_angle_s[0]\, \cr_angle_s[1]\, 
        \cr_angle_s[2]\, \cr_angle_s[3]\, un42_clk_4, 
        \cr_angle_s[4]\, un42_clk_5, \cr_angle_s[5]\, un42_clk_6, 
        \cr_angle_s[6]\, un42_clk_7, \cr_angle_s[7]\, un42_clk_8, 
        \cr_angle_s[8]\, un42_clk_9, \cr_angle_s[9]\, un42_clk_10, 
        \cr_angle_s[10]\, un42_clk_11, \cr_angle_s[11]\, 
        un42_clk_12, \cr_angle_s[12]\, un42_clk_13, 
        \cr_angle_s[13]\, un42_clk_14, \cr_angle_s[14]\, 
        un42_clk_15, \cr_angle_s[15]\, un42_clk_16, 
        \cr_angle_s[16]\, un42_clk_17, \cr_angle_s[17]\, 
        un42_clk_18, \cr_angle_s[18]\, un42_clk_19, 
        \cr_angle_s[19]\, un42_clk_20, \cr_angle_s[20]\, 
        un42_clk_21, \cr_angle_s[21]\, un42_clk_22, 
        \cr_angle_s[22]\, un42_clk_23, \cr_angle_s[23]\, 
        un42_clk_24, \cr_angle_s[24]\, un42_clk_25, 
        \cr_angle_s[25]\, un42_clk_26, \cr_angle_s[26]\, 
        un42_clk_27, \cr_angle_s[27]\, un42_clk_28, 
        \cr_angle_s[28]\, un42_clk_29, \cr_angle_s[29]\, 
        un42_clk_30, \cr_angle_s[30]\, cr_angle_lcry_cy, N_167, 
        cr_angle, cr_angle_0_sqmuxa_0_a2_0_a2_RNI7VP23_Y, 
        N_361_i_0_0, N_164_i_0, \cr_angle_cry[0]\, 
        \cr_angle_lxu;_0[0]\, \cr_angle_qxu[0]_net_1\, 
        \cr_angle_cry[1]\, \cr_angle_lxu;_0[1]\, 
        \cr_angle_qxu[1]_net_1\, \cr_angle_cry[2]\, N_361_i_0, 
        \cr_angle_cry[3]\, \cr_angle_cry[4]\, \cr_angle_cry[5]\, 
        \cr_angle_cry[6]\, \cr_angle_cry[7]\, \cr_angle_cry[8]\, 
        \cr_angle_cry[9]\, \cr_angle_cry[10]\, \cr_angle_cry[11]\, 
        \cr_angle_cry[12]\, \cr_angle_cry[13]\, 
        \cr_angle_cry[14]\, \cr_angle_cry[15]\, 
        \cr_angle_cry[16]\, \cr_angle_cry[17]\, 
        \cr_angle_cry[18]\, \cr_angle_cry[19]\, 
        \cr_angle_cry[20]\, \cr_angle_cry[21]\, 
        \cr_angle_cry[22]\, \cr_angle_cry[23]\, 
        \cr_angle_cry[24]\, \cr_angle_cry[25]\, 
        \cr_angle_cry[26]\, \cr_angle_cry[27]\, 
        \cr_angle_cry[28]\, \cr_angle_cry[29]\, \un42_clk_cry_0\, 
        \un42_clk_cry_1\, \un42_clk_cry_2\, \un42_clk_cry_3\, 
        \un42_clk_cry_4\, \un42_clk_cry_5\, \un42_clk_cry_6\, 
        \un42_clk_cry_7\, \un42_clk_cry_8\, \un42_clk_cry_9\, 
        \un42_clk_cry_10\, \un42_clk_cry_11\, \un42_clk_cry_12\, 
        \un42_clk_cry_13\, \un42_clk_cry_14\, \un42_clk_cry_15\, 
        \un42_clk_cry_16\, \un42_clk_cry_17\, \un42_clk_cry_18\, 
        \un42_clk_cry_19\, \un42_clk_cry_20\, \un42_clk_cry_21\, 
        \un42_clk_cry_22\, \un42_clk_cry_23\, \un42_clk_cry_24\, 
        \un42_clk_cry_25\, \un42_clk_cry_26\, \un42_clk_cry_27\, 
        \un42_clk_cry_28\, \un42_clk_cry_29\, \un42_clk_cry_30\, 
        \un34_clk_cry_0\, \un34_clk_cry_1\, \un34_clk_cry_2\, 
        \un34_clk_cry_3\, \un34_clk_cry_4\, \un34_clk_cry_5\, 
        \un34_clk_cry_6\, \un34_clk_cry_7\, \un34_clk_cry_8\, 
        \un34_clk_cry_9\, \un34_clk_cry_10\, \un34_clk_cry_11\, 
        \un34_clk_cry_12\, \un34_clk_cry_13\, \un34_clk_cry_14\, 
        \un34_clk_cry_15\, \un34_clk_cry_16\, \un34_clk_cry_17\, 
        \un34_clk_cry_18\, \un34_clk_cry_19\, \un34_clk_cry_20\, 
        \un34_clk_cry_21\, \un34_clk_cry_22\, \un34_clk_cry_23\, 
        \un34_clk_cry_24\, \un34_clk_cry_25\, \un34_clk_cry_26\, 
        \un34_clk_cry_27\, \un34_clk_cry_28\, \un34_clk_cry_29\, 
        i_s_103_FCO, \i_cry[1]_net_1\, \i_s[1]\, \i_cry[2]_net_1\, 
        \i_s[2]\, \i_cry[3]_net_1\, \i_s[3]\, \i_cry[4]_net_1\, 
        \i_s[4]\, \i_cry[5]_net_1\, \i_s[5]\, \i_cry[6]_net_1\, 
        \i_s[6]\, \i_cry[7]_net_1\, \i_s[7]\, \i_cry[8]_net_1\, 
        \i_s[8]\, \i_cry[9]_net_1\, \i_s[9]\, \i_cry[10]_net_1\, 
        \i_s[10]\, \i_cry[11]_net_1\, \i_s[11]\, 
        \i_cry[12]_net_1\, \i_s[12]\, \i_cry[13]_net_1\, 
        \i_s[13]\, \i_cry[14]_net_1\, \i_s[14]\, 
        \i_cry[15]_net_1\, \i_s[15]\, \i_cry[16]_net_1\, 
        \i_s[16]\, \i_cry[17]_net_1\, \i_s[17]\, 
        \i_cry[18]_net_1\, \i_s[18]\, \i_cry[19]_net_1\, 
        \i_s[19]\, \i_cry[20]_net_1\, \i_s[20]\, 
        \i_cry[21]_net_1\, \i_s[21]\, \i_cry[22]_net_1\, 
        \i_s[22]\, \i_cry[23]_net_1\, \i_s[23]\, 
        \i_cry[24]_net_1\, \i_s[24]\, \i_cry[25]_net_1\, 
        \i_s[25]\, \i_cry[26]_net_1\, \i_s[26]\, 
        \i_cry[27]_net_1\, \i_s[27]\, \i_cry[28]_net_1\, 
        \i_s[28]\, \i_s[30]_net_1\, \i_cry[29]_net_1\, \i_s[29]\, 
        \cr_angle_lxu;[1]\, \cr_angle_lxu;[0]\, 
        \state_ns_0_0_o2_4[11]_net_1\, \un1_state_10_i_a2_15\, 
        \state_ns_i_0_0_a2_5[5]_net_1\, 
        \state_ns_i_0_0_a2_4[5]_net_1\, \un1_state_10_i_a2_1_5\, 
        \un1_state_10_i_a2_1_4\, \state_ns_i_0_0_o2_1[5]_net_1\, 
        \state_ns_0_0_a2_7_2[11]_net_1\, 
        \state_ns_i_0_0_o2[5]_net_1\, \un1_state_10_i_a2_1\, 
        \state_ns_0_0_o2_7[11]_net_1\, 
        \state_ns_0_0_o2_2[11]_net_1\, N_182, 
        \state_ns_0_0_o2_0[11]_net_1\, 
        \state_ns_0_0_a2_5[11]_net_1\, N_187, 
        \state_ns_i_0_0_a2[5]_net_1\, \state_ns_0_0_o2[11]_net_1\, 
        \un1_state_10_i_0_a3\ : std_logic;

begin 

    un42_clk_0 <= \un42_clk_0\;
    un42_clk_1 <= \un42_clk_1\;
    un42_clk_2 <= \un42_clk_2\;
    un42_clk_3 <= \un42_clk_3\;

    \cr_angle[21]\ : SLE
      port map(D => \cr_angle_s[21]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_21);
    
    \state[0]\ : SLE
      port map(D => \state_ns[11]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \state[0]_net_1\);
    
    \cr_angle[8]\ : SLE
      port map(D => \cr_angle_s[8]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_8);
    
    un42_clk_cry_29 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_29, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_28\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_29\);
    
    \cr_angle_RNIKUDLJ[10]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_10, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[9]\, S => 
        \cr_angle_s[10]\, Y => OPEN, FCO => \cr_angle_cry[10]\);
    
    \cr_angle_RNIBQHOC[5]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_5, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[4]\, S => 
        \cr_angle_s[5]\, Y => OPEN, FCO => \cr_angle_cry[5]\);
    
    un42_clk_cry_5 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_5, C => GND_net_1, D
         => GND_net_1, FCI => \un42_clk_cry_4\, S => OPEN, Y => 
        OPEN, FCO => \un42_clk_cry_5\);
    
    un34_clk_cry_18 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_18, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_17\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_18\);
    
    \state_ns_i_0_0_o2[5]\ : CFG4
      generic map(INIT => x"EFFF")

      port map(A => \un1_state_10_i_a2_15\, B => 
        \state_ns_i_0_0_o2_1[5]_net_1\, C => \i[7]_net_1\, D => 
        \i[6]_net_1\, Y => \state_ns_i_0_0_o2[5]_net_1\);
    
    \cr_angle_RNIO26DL[11]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_11, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[10]\, S => 
        \cr_angle_s[11]\, Y => OPEN, FCO => \cr_angle_cry[11]\);
    
    \cr_angle_RNIHRLTH[9]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_9, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[8]\, S => 
        \cr_angle_s[9]\, Y => OPEN, FCO => \cr_angle_cry[9]\);
    
    \i[7]\ : SLE
      port map(D => \i_lm[7]\, CLK => FCCC_0_GL0, EN => N_155_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[7]_net_1\);
    
    dir_RNO : CFG1
      generic map(INIT => "01")

      port map(A => \un34_clk_cry_30\, Y => un34_clk_cry_30_i_0);
    
    un42_clk_cry_13 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_13, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_12\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_13\);
    
    \angle1[2]\ : SLE
      port map(D => \un42_clk_2\, CLK => FCCC_0_GL0, EN => 
        \state[4]_net_1\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => locator_control_0_angle1(2));
    
    \i[16]\ : SLE
      port map(D => \i_lm[16]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[16]_net_1\);
    
    \fn_angle[1]\ : SLE
      port map(D => BT_module_0_data_buf(5), CLK => FCCC_0_GL0, 
        EN => \fn_angle_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => un34_clk_1);
    
    \i_cry[14]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[14]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[13]_net_1\, S => \i_s[14]\, 
        Y => OPEN, FCO => \i_cry[14]_net_1\);
    
    un1_state_10_i_a2_1_4 : CFG3
      generic map(INIT => x"01")

      port map(A => \i[30]_net_1\, B => \i[25]_net_1\, C => 
        \i[23]_net_1\, Y => \un1_state_10_i_a2_1_4\);
    
    cr_angle_0_sqmuxa_0_a2_0_a2_RNI9MVP1 : ARI1
      generic map(INIT => x"4FDDD")

      port map(A => \un34_clk_cry_30\, B => FCCC_0_LOCK, C => 
        N_167, D => cr_angle_0_sqmuxa, FCI => VCC_net_1, S => 
        OPEN, Y => OPEN, FCO => cr_angle_lcry_cy);
    
    \i_lm_0[24]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[24]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[24]\);
    
    \cr_angle[23]\ : SLE
      port map(D => \cr_angle_s[23]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_23);
    
    un42_clk_cry_26 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_26, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_25\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_26\);
    
    \i[21]\ : SLE
      port map(D => \i_lm[21]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[21]_net_1\);
    
    un34_clk_cry_25 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_25, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_24\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_25\);
    
    \i_cry[20]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[20]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[19]_net_1\, S => \i_s[20]\, 
        Y => OPEN, FCO => \i_cry[20]_net_1\);
    
    un34_clk_cry_7 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_7, C => GND_net_1, D
         => GND_net_1, FCI => \un34_clk_cry_6\, S => OPEN, Y => 
        OPEN, FCO => \un34_clk_cry_7\);
    
    \state[10]\ : SLE
      port map(D => \state[11]_net_1\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \state[10]_net_1\);
    
    \i[0]\ : SLE
      port map(D => \i_lm[0]\, CLK => FCCC_0_GL0, EN => N_155_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[0]_net_1\);
    
    \i[11]\ : SLE
      port map(D => \i_lm[11]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[11]_net_1\);
    
    \cr_angle_RNO[30]\ : ARI1
      generic map(INIT => x"46C00")

      port map(A => VCC_net_1, B => N_164_i_0, C => N_361_i_0, D
         => un42_clk_30, FCI => \cr_angle_cry[29]\, S => 
        \cr_angle_s[30]\, Y => OPEN, FCO => OPEN);
    
    \cr_angle_qxu_RNIFGPU3[0]\ : ARI1
      generic map(INIT => x"5CCAA")

      port map(A => VCC_net_1, B => \cr_angle_lxu;_0[0]\, C => 
        \cr_angle_qxu[0]_net_1\, D => GND_net_1, FCI => cr_angle, 
        S => \cr_angle_s[0]\, Y => OPEN, FCO => \cr_angle_cry[0]\);
    
    un34_clk_cry_4 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_4, C => GND_net_1, D
         => GND_net_1, FCI => \un34_clk_cry_3\, S => OPEN, Y => 
        OPEN, FCO => \un34_clk_cry_4\);
    
    \state[6]\ : SLE
      port map(D => N_194_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \state[6]_net_1\);
    
    \cr_angle_RNIOEI9H1[27]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_27, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[26]\, S => 
        \cr_angle_s[27]\, Y => OPEN, FCO => \cr_angle_cry[27]\);
    
    dir : SLE
      port map(D => un34_clk_cry_30_i_0, CLK => FCCC_0_GL0, EN
         => cr_angle_0_sqmuxa, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \dir\);
    
    un34_clk_cry_19 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_19, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_18\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_19\);
    
    \state_ns_0_0_o2_2[11]\ : CFG4
      generic map(INIT => x"7F77")

      port map(A => \i[10]_net_1\, B => \i[9]_net_1\, C => 
        \i[8]_net_1\, D => \state_ns_0_0_o2_7[11]_net_1\, Y => 
        \state_ns_0_0_o2_2[11]_net_1\);
    
    i_s_103 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[0]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y => OPEN, 
        FCO => i_s_103_FCO);
    
    \cr_angle_qxu_RNIQ4PQ4[1]\ : ARI1
      generic map(INIT => x"5CCAA")

      port map(A => VCC_net_1, B => \cr_angle_lxu;_0[1]\, C => 
        \cr_angle_qxu[1]_net_1\, D => GND_net_1, FCI => 
        \cr_angle_cry[0]\, S => \cr_angle_s[1]\, Y => OPEN, FCO
         => \cr_angle_cry[1]\);
    
    \st_angle[2]\ : SLE
      port map(D => BT_module_0_data_buf(2), CLK => FCCC_0_GL0, 
        EN => \fn_angle_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \st_angle[2]_net_1\);
    
    \state_ns_0_0_a2_1[11]\ : CFG4
      generic map(INIT => x"7F00")

      port map(A => \i[16]_net_1\, B => \i[15]_net_1\, C => 
        \i[14]_net_1\, D => N_182, Y => N_187);
    
    \angle1[1]\ : SLE
      port map(D => \un42_clk_1\, CLK => FCCC_0_GL0, EN => 
        \state[4]_net_1\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => locator_control_0_angle1(1));
    
    un42_clk_cry_9 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_9, C => GND_net_1, D
         => GND_net_1, FCI => \un42_clk_cry_8\, S => OPEN, Y => 
        OPEN, FCO => \un42_clk_cry_9\);
    
    \i_lm_0[2]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[2]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[2]\);
    
    \cr_angle_RNI0E1351[20]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_20, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[19]\, S => 
        \cr_angle_s[20]\, Y => OPEN, FCO => \cr_angle_cry[20]\);
    
    \cr_angle_RNIIT6CS[15]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_15, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[14]\, S => 
        \cr_angle_s[15]\, Y => OPEN, FCO => \cr_angle_cry[15]\);
    
    un42_clk_cry_11 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_11, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_10\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_11\);
    
    \cr_angle[2]\ : SLE
      port map(D => \cr_angle_s[2]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \un42_clk_2\);
    
    \state_ns_0_0[11]\ : CFG4
      generic map(INIT => x"CE0A")

      port map(A => \state[1]_net_1\, B => \state[0]_net_1\, C
         => \over\, D => \state_ns_0_0_o2[11]_net_1\, Y => 
        \state_ns[11]\);
    
    \state_ns_0_0[4]\ : CFG3
      generic map(INIT => x"EA")

      port map(A => \state[8]_net_1\, B => 
        \state_ns_i_0_0_a2[5]_net_1\, C => \state[7]_net_1\, Y
         => \state_ns[4]\);
    
    \cr_angle_RNIGSFJ11[18]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_18, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[17]\, S => 
        \cr_angle_s[18]\, Y => OPEN, FCO => \cr_angle_cry[18]\);
    
    \cr_angle[14]\ : SLE
      port map(D => \cr_angle_s[14]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_14);
    
    \i_lm_0[27]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[27]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[27]\);
    
    \st_angle_RNINLNE[0]\ : CFG4
      generic map(INIT => x"BF80")

      port map(A => \st_angle[0]_net_1\, B => FCCC_0_LOCK, C => 
        \state[10]_net_1\, D => \un42_clk_0\, Y => 
        \cr_angle_lxu;_0[0]\);
    
    un34_clk_cry_6 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_6, C => GND_net_1, D
         => GND_net_1, FCI => \un34_clk_cry_5\, S => OPEN, Y => 
        OPEN, FCO => \un34_clk_cry_6\);
    
    \cr_angle[6]\ : SLE
      port map(D => \cr_angle_s[6]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_6);
    
    \state[4]\ : SLE
      port map(D => \state[5]_net_1\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \state[4]_net_1\);
    
    un1_state_7_0_0_0 : CFG3
      generic map(INIT => x"AE")

      port map(A => \state[9]_net_1\, B => \state[1]_net_1\, C
         => \over\, Y => un1_state_7_0);
    
    en_sonar_RNO : CFG3
      generic map(INIT => x"3A")

      port map(A => \state[8]_net_1\, B => 
        \state_ns_i_0_0_a2[5]_net_1\, C => \state[7]_net_1\, Y
         => un1_state_8_i_0);
    
    \i_lm_0[25]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[25]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[25]\);
    
    un42_clk_cry_23 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_23, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_22\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_23\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \state[7]\ : SLE
      port map(D => \state_ns[4]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \state[7]_net_1\);
    
    \i[23]\ : SLE
      port map(D => \i_lm[23]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[23]_net_1\);
    
    \cr_angle[18]\ : SLE
      port map(D => \cr_angle_s[18]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_18);
    
    \cr_angle[27]\ : SLE
      port map(D => \cr_angle_s[27]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_27);
    
    \state_ns_i_0_0_a2[5]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \state_ns_i_0_0_a2_4[5]_net_1\, B => 
        \state_ns_i_0_0_a2_5[5]_net_1\, C => 
        \state_ns_0_0_a2_5[11]_net_1\, D => 
        \state_ns_i_0_0_o2[5]_net_1\, Y => 
        \state_ns_i_0_0_a2[5]_net_1\);
    
    \state[5]\ : SLE
      port map(D => \state[6]_net_1\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \state[5]_net_1\);
    
    \cr_angle[22]\ : SLE
      port map(D => \cr_angle_s[22]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_22);
    
    \i_cry[23]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[23]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[22]_net_1\, S => \i_s[23]\, 
        Y => OPEN, FCO => \i_cry[23]_net_1\);
    
    \cr_angle_RNISO3BF[7]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_7, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[6]\, S => 
        \cr_angle_s[7]\, Y => OPEN, FCO => \cr_angle_cry[7]\);
    
    \cr_angle[29]\ : SLE
      port map(D => \cr_angle_s[29]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_29);
    
    \state_RNIT3TC[10]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \state[10]_net_1\, B => FCCC_0_LOCK, Y => 
        N_164_i_0);
    
    \i[13]\ : SLE
      port map(D => \i_lm[13]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[13]_net_1\);
    
    \i_cry[15]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[15]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[14]_net_1\, S => \i_s[15]\, 
        Y => OPEN, FCO => \i_cry[15]_net_1\);
    
    un34_clk_cry_17 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_17, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_16\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_17\);
    
    un42_clk_cry_8 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_8, C => GND_net_1, D
         => GND_net_1, FCI => \un42_clk_cry_7\, S => OPEN, Y => 
        OPEN, FCO => \un42_clk_cry_8\);
    
    \i[27]\ : SLE
      port map(D => \i_lm[27]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[27]_net_1\);
    
    un34_clk_cry_30_RNI15TR_0 : CFG4
      generic map(INIT => x"BFFF")

      port map(A => \dir\, B => FCCC_0_LOCK, C => 
        \un34_clk_cry_30\, D => \state[2]_net_1\, Y => 
        N_361_i_0_0);
    
    \state_ns_i_0_0_a2_5[5]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \i[21]_net_1\, B => \i[19]_net_1\, C => 
        \i[18]_net_1\, D => \i[14]_net_1\, Y => 
        \state_ns_i_0_0_a2_5[5]_net_1\);
    
    \i_lm_0[10]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[10]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[10]\);
    
    un34_clk_cry_21 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_21, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_20\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_21\);
    
    \state_ns_i_0_0_a2_4[5]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \i[16]_net_1\, B => \i[15]_net_1\, C => 
        \i[10]_net_1\, D => \i[9]_net_1\, Y => 
        \state_ns_i_0_0_a2_4[5]_net_1\);
    
    \i[17]\ : SLE
      port map(D => \i_lm[17]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[17]_net_1\);
    
    un34_clk_cry_12 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_12, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_11\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_12\);
    
    \cr_angle_RNI5KQQ61[21]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_21, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[20]\, S => 
        \cr_angle_s[21]\, Y => OPEN, FCO => \cr_angle_cry[21]\);
    
    un42_clk_cry_1 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \un42_clk_1\, B => \st_angle[1]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un42_clk_cry_0\, S => 
        OPEN, Y => OPEN, FCO => \un42_clk_cry_1\);
    
    un42_clk_cry_12 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_12, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_11\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_12\);
    
    \state_ns_i_i_a3_0_a3[0]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \over\, B => \state[1]_net_1\, Y => 
        \state_ns_i_i_a3_0_a3[0]_net_1\);
    
    un42_clk_cry_3 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \un42_clk_3\, B => \st_angle[3]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un42_clk_cry_2\, S => 
        OPEN, Y => OPEN, FCO => \un42_clk_cry_3\);
    
    un42_clk_cry_21 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_21, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_20\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_21\);
    
    fn_angle_0_sqmuxa : CFG2
      generic map(INIT => x"8")

      port map(A => FCCC_0_LOCK, B => \state[11]_net_1\, Y => 
        \fn_angle_0_sqmuxa\);
    
    \i_cry[26]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[26]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[25]_net_1\, S => \i_s[26]\, 
        Y => OPEN, FCO => \i_cry[26]_net_1\);
    
    \i_cry[17]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[17]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[16]_net_1\, S => \i_s[17]\, 
        Y => OPEN, FCO => \i_cry[17]_net_1\);
    
    \i_lm_0[18]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[18]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[18]\);
    
    \cr_angle_qxu[1]\ : CFG2
      generic map(INIT => x"6")

      port map(A => N_361_i_0, B => \cr_angle_lxu;[1]\, Y => 
        \cr_angle_qxu[1]_net_1\);
    
    cr_angle_0_sqmuxa_0_a2_0_a2 : CFG2
      generic map(INIT => x"2")

      port map(A => \state[2]_net_1\, B => \dir\, Y => 
        cr_angle_0_sqmuxa);
    
    \i[9]\ : SLE
      port map(D => \i_lm[9]\, CLK => FCCC_0_GL0, EN => N_155_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[9]_net_1\);
    
    un34_clk_cry_20 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_20, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_19\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_20\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \cr_angle[10]\ : SLE
      port map(D => \cr_angle_s[10]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_10);
    
    \cr_angle_RNII3DAA1[23]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_23, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[22]\, S => 
        \cr_angle_s[23]\, Y => OPEN, FCO => \cr_angle_cry[23]\);
    
    un34_clk_cry_15 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_15, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_14\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_15\);
    
    un34_clk_cry_9 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_9, C => GND_net_1, D
         => GND_net_1, FCI => \un34_clk_cry_8\, S => OPEN, Y => 
        OPEN, FCO => \un34_clk_cry_9\);
    
    \cr_angle_RNI3PQ1E[6]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_6, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[5]\, S => 
        \cr_angle_s[6]\, Y => OPEN, FCO => \cr_angle_cry[6]\);
    
    \i_cry[29]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[29]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[28]_net_1\, S => \i_s[29]\, 
        Y => OPEN, FCO => \i_cry[29]_net_1\);
    
    \st_angle_RNI0VAR8[2]\ : ARI1
      generic map(INIT => x"51BE4")

      port map(A => N_361_i_0, B => 
        cr_angle_0_sqmuxa_0_a2_0_a2_RNI7VP23_Y, C => 
        \st_angle[2]_net_1\, D => \un42_clk_2\, FCI => 
        \cr_angle_cry[1]\, S => \cr_angle_s[2]\, Y => OPEN, FCO
         => \cr_angle_cry[2]\);
    
    \cr_angle_RNI4SB1J1[28]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_28, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[27]\, S => 
        \cr_angle_s[28]\, Y => OPEN, FCO => \cr_angle_cry[28]\);
    
    \cr_angle_qxu_RNO[1]\ : CFG4
      generic map(INIT => x"BF80")

      port map(A => \st_angle[1]_net_1\, B => FCCC_0_LOCK, C => 
        \state[10]_net_1\, D => \un42_clk_1\, Y => 
        \cr_angle_lxu;[1]\);
    
    \st_angle_RNIPNNE[1]\ : CFG4
      generic map(INIT => x"BF80")

      port map(A => \st_angle[1]_net_1\, B => FCCC_0_LOCK, C => 
        \state[10]_net_1\, D => \un42_clk_1\, Y => 
        \cr_angle_lxu;_0[1]\);
    
    un42_clk_cry_7 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_7, C => GND_net_1, D
         => GND_net_1, FCI => \un42_clk_cry_6\, S => OPEN, Y => 
        OPEN, FCO => \un42_clk_cry_7\);
    
    un34_clk_cry_0 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un34_clk_0, B => \un42_clk_0\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => \un34_clk_cry_0\);
    
    \cr_angle_RNIKS8FB[4]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_4, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[3]\, S => 
        \cr_angle_s[4]\, Y => OPEN, FCO => \cr_angle_cry[4]\);
    
    \state[9]\ : SLE
      port map(D => \state[10]_net_1\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \state[9]_net_1\);
    
    en_timer : SLE
      port map(D => \state[6]_net_1\, CLK => FCCC_0_GL0, EN => 
        N_232_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        locator_control_0_en_timer);
    
    \state_RNO[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => pulse_meash_0_new_ready, B => 
        \state[3]_net_1\, Y => N_568_i_0);
    
    \i_cry[11]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[11]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[10]_net_1\, S => \i_s[11]\, 
        Y => OPEN, FCO => \i_cry[11]_net_1\);
    
    \cr_angle[11]\ : SLE
      port map(D => \cr_angle_s[11]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_11);
    
    un42_clk_cry_17 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_17, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_16\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_17\);
    
    \i[25]\ : SLE
      port map(D => \i_lm[25]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[25]_net_1\);
    
    \state_ns[8]\ : CFG3
      generic map(INIT => x"AE")

      port map(A => \state[4]_net_1\, B => \state[3]_net_1\, C
         => pulse_meash_0_new_ready, Y => \state_ns[8]_net_1\);
    
    un42_clk_cry_2 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \un42_clk_2\, B => \st_angle[2]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un42_clk_cry_1\, S => 
        OPEN, Y => OPEN, FCO => \un42_clk_cry_2\);
    
    \i_cry[24]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[24]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[23]_net_1\, S => \i_s[24]\, 
        Y => OPEN, FCO => \i_cry[24]_net_1\);
    
    un42_clk_cry_22 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_22, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_21\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_22\);
    
    \state_RNO[6]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \state_ns_i_0_0_a2[5]_net_1\, B => 
        \state[7]_net_1\, Y => N_194_i_0);
    
    \i_lm_0[19]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[19]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[19]\);
    
    \i[15]\ : SLE
      port map(D => \i_lm[15]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[15]_net_1\);
    
    \i_lm_0[3]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[3]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[3]\);
    
    \state_ns_0_0_a2_4[11]\ : CFG3
      generic map(INIT => x"04")

      port map(A => \i[20]_net_1\, B => \un1_state_10_i_a2_1\, C
         => \i[17]_net_1\, Y => N_182);
    
    \i_lm_0[16]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[16]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[16]\);
    
    \cr_angle[13]\ : SLE
      port map(D => \cr_angle_s[13]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_13);
    
    un34_clk_cry_5 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_5, C => GND_net_1, D
         => GND_net_1, FCI => \un34_clk_cry_4\, S => OPEN, Y => 
        OPEN, FCO => \un34_clk_cry_5\);
    
    un42_clk_cry_6 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_6, C => GND_net_1, D
         => GND_net_1, FCI => \un42_clk_cry_5\, S => OPEN, Y => 
        OPEN, FCO => \un42_clk_cry_6\);
    
    un1_state_10_i_0_a3 : CFG4
      generic map(INIT => x"0045")

      port map(A => \state[8]_net_1\, B => 
        \state_ns_0_0_o2[11]_net_1\, C => \state[0]_net_1\, D => 
        \state[7]_net_1\, Y => \un1_state_10_i_0_a3\);
    
    \i_lm_0[20]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[20]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[20]\);
    
    \state_ns_0_0_o2[11]\ : CFG4
      generic map(INIT => x"FFEC")

      port map(A => \state_ns_0_0_o2_2[11]_net_1\, B => 
        \state_ns_0_0_o2_0[11]_net_1\, C => 
        \state_ns_0_0_a2_5[11]_net_1\, D => N_187, Y => 
        \state_ns_0_0_o2[11]_net_1\);
    
    \cr_angle_RNIS88B31[19]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_19, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[18]\, S => 
        \cr_angle_s[19]\, Y => OPEN, FCO => \cr_angle_cry[19]\);
    
    un34_clk_cry_2 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un34_clk_2, B => \un42_clk_2\, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_1\, S => OPEN, Y => 
        OPEN, FCO => \un34_clk_cry_2\);
    
    \i_cry[7]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[7]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[6]_net_1\, S => \i_s[7]\, Y
         => OPEN, FCO => \i_cry[7]_net_1\);
    
    \i[22]\ : SLE
      port map(D => \i_lm[22]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[22]_net_1\);
    
    \cr_angle[26]\ : SLE
      port map(D => \cr_angle_s[26]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_26);
    
    \i_s[30]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[30]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[29]_net_1\, S => 
        \i_s[30]_net_1\, Y => OPEN, FCO => OPEN);
    
    \i_cry[12]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[12]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[11]_net_1\, S => \i_s[12]\, 
        Y => OPEN, FCO => \i_cry[12]_net_1\);
    
    \cr_angle[30]\ : SLE
      port map(D => \cr_angle_s[30]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_30);
    
    \cr_angle[25]\ : SLE
      port map(D => \cr_angle_s[25]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_25);
    
    un34_clk_cry_30 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_30, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_29\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_30\);
    
    \i_lm_0[6]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[6]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[6]\);
    
    \i_cry[18]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[18]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[17]_net_1\, S => \i_s[18]\, 
        Y => OPEN, FCO => \i_cry[18]_net_1\);
    
    cr_angle_0_sqmuxa_0_a2_0_a2_RNI7VP23 : ARI1
      generic map(INIT => x"5CCAA")

      port map(A => VCC_net_1, B => N_361_i_0_0, C => N_164_i_0, 
        D => GND_net_1, FCI => cr_angle_lcry_cy, S => OPEN, Y => 
        cr_angle_0_sqmuxa_0_a2_0_a2_RNI7VP23_Y, FCO => cr_angle);
    
    \cr_angle_RNID2PHF1[26]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_26, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[25]\, S => 
        \cr_angle_s[26]\, Y => OPEN, FCO => \cr_angle_cry[26]\);
    
    \i[2]\ : SLE
      port map(D => \i_lm[2]\, CLK => FCCC_0_GL0, EN => N_155_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[2]_net_1\);
    
    \i[12]\ : SLE
      port map(D => \i_lm[12]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[12]_net_1\);
    
    \state[8]\ : SLE
      port map(D => N_191_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \state[8]_net_1\);
    
    \i_lm_0[28]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[28]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[28]\);
    
    un42_clk_cry_10 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_10, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_9\, S => OPEN, Y => 
        OPEN, FCO => \un42_clk_cry_10\);
    
    en_timer_RNO : CFG2
      generic map(INIT => x"E")

      port map(A => \state[4]_net_1\, B => \state[6]_net_1\, Y
         => N_232_i_0);
    
    un34_clk_cry_24 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_24, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_23\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_24\);
    
    \cr_angle_RNIMPCKG[8]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_8, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[7]\, S => 
        \cr_angle_s[8]\, Y => OPEN, FCO => \cr_angle_cry[8]\);
    
    \i_lm_0[1]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[1]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[1]\);
    
    \cr_angle[9]\ : SLE
      port map(D => \cr_angle_s[9]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_9);
    
    \cr_angle_RNIR6V3U[16]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_16, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[15]\, S => 
        \cr_angle_s[16]\, Y => OPEN, FCO => \cr_angle_cry[16]\);
    
    un42_clk_cry_30 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_30, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_29\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_30\);
    
    \i_lm_0[12]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[12]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[12]\);
    
    \i[20]\ : SLE
      port map(D => \i_lm[20]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[20]_net_1\);
    
    \i[30]\ : SLE
      port map(D => \i_lm[30]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[30]_net_1\);
    
    \cr_angle_RNIBRJI81[22]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_22, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[21]\, S => 
        \cr_angle_s[22]\, Y => OPEN, FCO => \cr_angle_cry[22]\);
    
    \state_ns_0_0_a2_5[11]\ : CFG4
      generic map(INIT => x"0100")

      port map(A => \i[13]_net_1\, B => \i[12]_net_1\, C => 
        \i[11]_net_1\, D => N_182, Y => 
        \state_ns_0_0_a2_5[11]_net_1\);
    
    \state[3]\ : SLE
      port map(D => \state_ns[8]_net_1\, CLK => FCCC_0_GL0, EN
         => VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \state[3]_net_1\);
    
    \i_lm_0[11]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[11]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[11]\);
    
    \fn_angle[2]\ : SLE
      port map(D => BT_module_0_data_buf(6), CLK => FCCC_0_GL0, 
        EN => \fn_angle_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => un34_clk_2);
    
    un34_clk_cry_11 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_11, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_10\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_11\);
    
    un34_clk_cry_23 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_23, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_22\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_23\);
    
    over : SLE
      port map(D => over_1_sqmuxa, CLK => FCCC_0_GL0, EN => 
        \un1_angle_0_sqmuxa_0\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \over\);
    
    \i[10]\ : SLE
      port map(D => \i_lm[10]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[10]_net_1\);
    
    un42_clk_cry_27 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_27, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_26\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_27\);
    
    un42_clk_cry_14 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_14, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_13\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_14\);
    
    \i[6]\ : SLE
      port map(D => \i_lm[6]\, CLK => FCCC_0_GL0, EN => N_155_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[6]_net_1\);
    
    un42_clk_cry_4 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_4, C => GND_net_1, D
         => GND_net_1, FCI => \un42_clk_cry_3\, S => OPEN, Y => 
        OPEN, FCO => \un42_clk_cry_4\);
    
    \i_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[1]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => i_s_103_FCO, S => \i_s[1]\, Y => 
        OPEN, FCO => \i_cry[1]_net_1\);
    
    \i[29]\ : SLE
      port map(D => \i_lm[29]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[29]_net_1\);
    
    \cr_angle_qxu_RNO[0]\ : CFG4
      generic map(INIT => x"BF80")

      port map(A => \st_angle[0]_net_1\, B => FCCC_0_LOCK, C => 
        \state[10]_net_1\, D => \un42_clk_0\, Y => 
        \cr_angle_lxu;[0]\);
    
    \i_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[2]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[1]_net_1\, S => \i_s[2]\, Y
         => OPEN, FCO => \i_cry[2]_net_1\);
    
    \fn_angle[3]\ : SLE
      port map(D => BT_module_0_data_buf(7), CLK => FCCC_0_GL0, 
        EN => \fn_angle_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => un34_clk_3);
    
    \st_angle[1]\ : SLE
      port map(D => BT_module_0_data_buf(1), CLK => FCCC_0_GL0, 
        EN => \fn_angle_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \st_angle[1]_net_1\);
    
    \i[4]\ : SLE
      port map(D => \i_lm[4]\, CLK => FCCC_0_GL0, EN => N_155_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[4]_net_1\);
    
    \i_cry[10]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[10]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[9]_net_1\, S => \i_s[10]\, 
        Y => OPEN, FCO => \i_cry[10]_net_1\);
    
    \i_cry[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[6]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[5]_net_1\, S => \i_s[6]\, Y
         => OPEN, FCO => \i_cry[6]_net_1\);
    
    \cr_angle[3]\ : SLE
      port map(D => \cr_angle_s[3]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \un42_clk_3\);
    
    un42_clk_cry_18 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_18, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_17\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_18\);
    
    \state_ns_0_0_o2_7[11]\ : CFG4
      generic map(INIT => x"8FFF")

      port map(A => \un1_state_10_i_a2_15\, B => 
        \state_ns_0_0_a2_7_2[11]_net_1\, C => \i[7]_net_1\, D => 
        \i[6]_net_1\, Y => \state_ns_0_0_o2_7[11]_net_1\);
    
    un34_clk_cry_26 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_26, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_25\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_26\);
    
    \i_lm_0[8]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[8]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[8]\);
    
    \i[19]\ : SLE
      port map(D => \i_lm[19]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[19]_net_1\);
    
    \cr_angle[17]\ : SLE
      port map(D => \cr_angle_s[17]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_17);
    
    un34_clk_cry_10 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_10, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_9\, S => OPEN, Y => 
        OPEN, FCO => \un34_clk_cry_10\);
    
    \cr_angle_RNIHA5PK1[29]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_29, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[28]\, S => 
        \cr_angle_s[29]\, Y => OPEN, FCO => \cr_angle_cry[29]\);
    
    \st_angle[0]\ : SLE
      port map(D => BT_module_0_data_buf(0), CLK => FCCC_0_GL0, 
        EN => \fn_angle_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \st_angle[0]_net_1\);
    
    un34_clk_cry_30_RNI15TR : CFG4
      generic map(INIT => x"BFFF")

      port map(A => \dir\, B => FCCC_0_LOCK, C => 
        \un34_clk_cry_30\, D => \state[2]_net_1\, Y => N_361_i_0);
    
    \cr_angle[12]\ : SLE
      port map(D => \cr_angle_s[12]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_12);
    
    \cr_angle[19]\ : SLE
      port map(D => \cr_angle_s[19]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_19);
    
    \i_cry[25]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[25]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[24]_net_1\, S => \i_s[25]\, 
        Y => OPEN, FCO => \i_cry[25]_net_1\);
    
    un34_clk_cry_3 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un34_clk_3, B => \un42_clk_3\, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_2\, S => OPEN, Y => 
        OPEN, FCO => \un34_clk_cry_3\);
    
    \cr_angle_RNIT7U4N[12]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_12, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[11]\, S => 
        \cr_angle_s[12]\, Y => OPEN, FCO => \cr_angle_cry[12]\);
    
    \i_lm_0[29]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[29]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[29]\);
    
    \i_lm_0[26]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[26]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[26]\);
    
    \angle1[0]\ : SLE
      port map(D => \un42_clk_0\, CLK => FCCC_0_GL0, EN => 
        \state[4]_net_1\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => locator_control_0_angle1(0));
    
    un34_clk_cry_28 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_28, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_27\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_28\);
    
    \i[24]\ : SLE
      port map(D => \i_lm[24]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[24]_net_1\);
    
    \cr_angle[5]\ : SLE
      port map(D => \cr_angle_s[5]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_5);
    
    un42_clk_cry_20 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_20, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_19\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_20\);
    
    un1_state_10_i_a2_1_5 : CFG4
      generic map(INIT => x"0001")

      port map(A => \i[28]_net_1\, B => \i[27]_net_1\, C => 
        \i[26]_net_1\, D => \i[22]_net_1\, Y => 
        \un1_state_10_i_a2_1_5\);
    
    un1_state_10_i_a2_15 : CFG2
      generic map(INIT => x"1")

      port map(A => \i[2]_net_1\, B => \i[3]_net_1\, Y => 
        \un1_state_10_i_a2_15\);
    
    \i_lm_0[7]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[7]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[7]\);
    
    \i_lm_0[13]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[13]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[13]\);
    
    \state_ns_0_0_o2_4[11]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \i[18]_net_1\, B => \i[19]_net_1\, Y => 
        \state_ns_0_0_o2_4[11]_net_1\);
    
    \cr_angle[24]\ : SLE
      port map(D => \cr_angle_s[24]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_24);
    
    \i[14]\ : SLE
      port map(D => \i_lm[14]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[14]_net_1\);
    
    \angle1[3]\ : SLE
      port map(D => \un42_clk_3\, CLK => FCCC_0_GL0, EN => 
        \state[4]_net_1\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => locator_control_0_angle1(3));
    
    \i_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[3]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[2]_net_1\, S => \i_s[3]\, Y
         => OPEN, FCO => \i_cry[3]_net_1\);
    
    \fn_angle[0]\ : SLE
      port map(D => BT_module_0_data_buf(4), CLK => FCCC_0_GL0, 
        EN => \fn_angle_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => un34_clk_0);
    
    \state[2]\ : SLE
      port map(D => N_568_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \state[2]_net_1\);
    
    \i_cry[27]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[27]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[26]_net_1\, S => \i_s[27]\, 
        Y => OPEN, FCO => \i_cry[27]_net_1\);
    
    en_sonar : SLE
      port map(D => \state[8]_net_1\, CLK => FCCC_0_GL0, EN => 
        un1_state_8_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => trig_c);
    
    \cr_angle_RNIALEKQ[14]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_14, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[13]\, S => 
        \cr_angle_s[14]\, Y => OPEN, FCO => \cr_angle_cry[14]\);
    
    un42_clk_cry_15 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_15, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_14\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_15\);
    
    \state[1]\ : SLE
      port map(D => \state[2]_net_1\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \state[1]_net_1\);
    
    over_1_sqmuxa_0_a3 : CFG3
      generic map(INIT => x"08")

      port map(A => \dir\, B => \state[2]_net_1\, C => 
        \un42_clk_cry_30\, Y => over_1_sqmuxa);
    
    \i_lm_0[30]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[30]_net_1\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[30]\);
    
    \cr_angle[28]\ : SLE
      port map(D => \cr_angle_s[28]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_28);
    
    un34_clk_cry_29 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_29, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_28\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_29\);
    
    \i_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[4]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[3]_net_1\, S => \i_s[4]\, Y
         => OPEN, FCO => \i_cry[4]_net_1\);
    
    \cr_angle_RNIQC62C1[24]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_24, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[23]\, S => 
        \cr_angle_s[24]\, Y => OPEN, FCO => \cr_angle_cry[24]\);
    
    un42_clk_cry_24 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_24, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_23\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_24\);
    
    un34_clk_cry_8 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_8, C => GND_net_1, D
         => GND_net_1, FCI => \un34_clk_cry_7\, S => OPEN, Y => 
        OPEN, FCO => \un34_clk_cry_8\);
    
    \i_lm_0[22]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[22]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[22]\);
    
    \i[5]\ : SLE
      port map(D => \i_lm[5]\, CLK => FCCC_0_GL0, EN => N_155_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[5]_net_1\);
    
    \i_lm_0[9]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[9]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[9]\);
    
    \i[8]\ : SLE
      port map(D => \i_lm[8]\, CLK => FCCC_0_GL0, EN => N_155_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[8]_net_1\);
    
    \cr_angle_RNI3NVPD1[25]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_25, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[24]\, S => 
        \cr_angle_s[25]\, Y => OPEN, FCO => \cr_angle_cry[25]\);
    
    un42_clk_cry_28 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_28, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_27\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_28\);
    
    un34_clk_cry_1 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un34_clk_1, B => \un42_clk_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_0\, S => OPEN, Y => 
        OPEN, FCO => \un34_clk_cry_1\);
    
    \i_lm_0[21]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[21]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[21]\);
    
    \i_cry[13]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[13]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[12]_net_1\, S => \i_s[13]\, 
        Y => OPEN, FCO => \i_cry[13]_net_1\);
    
    \state_RNO[8]\ : CFG3
      generic map(INIT => x"AE")

      port map(A => \state[9]_net_1\, B => \state[0]_net_1\, C
         => \state_ns_0_0_o2[11]_net_1\, Y => N_191_i_0);
    
    \i_lm_0[5]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[5]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[5]\);
    
    \cr_angle[7]\ : SLE
      port map(D => \cr_angle_s[7]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_7);
    
    \i_lm_0[14]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[14]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[14]\);
    
    \i_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[5]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[4]_net_1\, S => \i_s[5]\, Y
         => OPEN, FCO => \i_cry[5]_net_1\);
    
    \state_ns_0_0_a2_7_2[11]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \i[5]_net_1\, B => \i[1]_net_1\, C => 
        \i[0]_net_1\, D => \i[4]_net_1\, Y => 
        \state_ns_0_0_a2_7_2[11]_net_1\);
    
    un42_clk_cry_19 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_19, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_18\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_19\);
    
    \st_angle_RNIUVV5A[3]\ : ARI1
      generic map(INIT => x"51BE4")

      port map(A => N_361_i_0, B => N_164_i_0, C => 
        \st_angle[3]_net_1\, D => \un42_clk_3\, FCI => 
        \cr_angle_cry[2]\, S => \cr_angle_s[3]\, Y => OPEN, FCO
         => \cr_angle_cry[3]\);
    
    un1_state_10_i_a2_1 : CFG4
      generic map(INIT => x"1000")

      port map(A => \i[24]_net_1\, B => \i[29]_net_1\, C => 
        \un1_state_10_i_a2_1_5\, D => \un1_state_10_i_a2_1_4\, Y
         => \un1_state_10_i_a2_1\);
    
    \st_angle[3]\ : SLE
      port map(D => BT_module_0_data_buf(3), CLK => FCCC_0_GL0, 
        EN => \fn_angle_0_sqmuxa\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \st_angle[3]_net_1\);
    
    \state[11]\ : SLE
      port map(D => \state_ns_i_i_a3_0_a3[0]_net_1\, CLK => 
        FCCC_0_GL0, EN => VCC_net_1, ALn => FCCC_0_LOCK, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \state[11]_net_1\);
    
    \i_cry[9]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[9]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[8]_net_1\, S => \i_s[9]\, Y
         => OPEN, FCO => \i_cry[9]_net_1\);
    
    \i_cry[21]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[21]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[20]_net_1\, S => \i_s[21]\, 
        Y => OPEN, FCO => \i_cry[21]_net_1\);
    
    \cr_angle_RNI5HNRV[17]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_17, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[16]\, S => 
        \cr_angle_s[17]\, Y => OPEN, FCO => \cr_angle_cry[17]\);
    
    \i_lm_0[0]\ : CFG4
      generic map(INIT => x"3130")

      port map(A => \state[8]_net_1\, B => \i[0]_net_1\, C => 
        \un1_state_10_i_0_a3\, D => \state_ns_i_0_0_a2[5]_net_1\, 
        Y => \i_lm[0]\);
    
    un34_clk_cry_14 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_14, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_13\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_14\);
    
    \i[3]\ : SLE
      port map(D => \i_lm[3]\, CLK => FCCC_0_GL0, EN => N_155_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[3]_net_1\);
    
    \i_lm_0[4]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[4]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[4]\);
    
    un42_clk_cry_16 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_16, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_15\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_16\);
    
    \cr_angle[4]\ : SLE
      port map(D => \cr_angle_s[4]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_4);
    
    un42_clk_cry_30_RNIPNC31 : CFG4
      generic map(INIT => x"070F")

      port map(A => \dir\, B => \state[2]_net_1\, C => 
        \state[10]_net_1\, D => \un42_clk_cry_30\, Y => N_167);
    
    \i_cry[16]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[16]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[15]_net_1\, S => \i_s[16]\, 
        Y => OPEN, FCO => \i_cry[16]_net_1\);
    
    \i_cry[8]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[8]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[7]_net_1\, S => \i_s[8]\, Y
         => OPEN, FCO => \i_cry[8]_net_1\);
    
    un34_clk_cry_13 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_13, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_12\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_13\);
    
    \i[1]\ : SLE
      port map(D => \i_lm[1]\, CLK => FCCC_0_GL0, EN => N_155_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[1]_net_1\);
    
    \state_ns_i_0_0_o2_1[5]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \i[8]_net_1\, B => \i[5]_net_1\, C => 
        \i[4]_net_1\, Y => \state_ns_i_0_0_o2_1[5]_net_1\);
    
    \cr_angle[0]\ : SLE
      port map(D => \cr_angle_s[0]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \un42_clk_0\);
    
    \cr_angle[20]\ : SLE
      port map(D => \cr_angle_s[20]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_20);
    
    \i[28]\ : SLE
      port map(D => \i_lm[28]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[28]_net_1\);
    
    un42_clk_cry_25 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un42_clk_25, C => GND_net_1, 
        D => GND_net_1, FCI => \un42_clk_cry_24\, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_25\);
    
    un42_clk_cry_0 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => \un42_clk_0\, B => \st_angle[0]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => GND_net_1, S => OPEN, Y
         => OPEN, FCO => \un42_clk_cry_0\);
    
    un34_clk_cry_27 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_27, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_26\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_27\);
    
    \cr_angle_qxu[0]\ : CFG2
      generic map(INIT => x"6")

      port map(A => N_361_i_0, B => \cr_angle_lxu;[0]\, Y => 
        \cr_angle_qxu[0]_net_1\);
    
    \i_cry[22]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[22]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[21]_net_1\, S => \i_s[22]\, 
        Y => OPEN, FCO => \i_cry[22]_net_1\);
    
    \cr_angle_RNI3EMSO[13]\ : ARI1
      generic map(INIT => x"5D52A")

      port map(A => N_361_i_0, B => un42_clk_13, C => FCCC_0_LOCK, 
        D => \state[10]_net_1\, FCI => \cr_angle_cry[12]\, S => 
        \cr_angle_s[13]\, Y => OPEN, FCO => \cr_angle_cry[13]\);
    
    \i_lm_0[17]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[17]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[17]\);
    
    \cr_angle[16]\ : SLE
      port map(D => \cr_angle_s[16]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_16);
    
    \i_lm_0[23]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[23]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[23]\);
    
    un34_clk_cry_16 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_16, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_15\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_16\);
    
    \i_cry[19]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[19]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[18]_net_1\, S => \i_s[19]\, 
        Y => OPEN, FCO => \i_cry[19]_net_1\);
    
    \cr_angle[15]\ : SLE
      port map(D => \cr_angle_s[15]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        un42_clk_15);
    
    \i_cry[28]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[28]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[27]_net_1\, S => \i_s[28]\, 
        Y => OPEN, FCO => \i_cry[28]_net_1\);
    
    \i[18]\ : SLE
      port map(D => \i_lm[18]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[18]_net_1\);
    
    \cr_angle[1]\ : SLE
      port map(D => \cr_angle_s[1]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => VCC_net_1, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \un42_clk_1\);
    
    \i_lm_0[15]\ : CFG4
      generic map(INIT => x"CC40")

      port map(A => \state[8]_net_1\, B => \i_s[15]\, C => 
        \state_ns_i_0_0_a2[5]_net_1\, D => \un1_state_10_i_0_a3\, 
        Y => \i_lm[15]\);
    
    \state_ns_0_0_o2_0[11]\ : CFG4
      generic map(INIT => x"7030")

      port map(A => \i[20]_net_1\, B => \i[21]_net_1\, C => 
        \un1_state_10_i_a2_1\, D => \state_ns_0_0_o2_4[11]_net_1\, 
        Y => \state_ns_0_0_o2_0[11]_net_1\);
    
    un34_clk_cry_22 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => un42_clk_22, C => GND_net_1, 
        D => GND_net_1, FCI => \un34_clk_cry_21\, S => OPEN, Y
         => OPEN, FCO => \un34_clk_cry_22\);
    
    un1_angle_0_sqmuxa_0 : CFG3
      generic map(INIT => x"F8")

      port map(A => \over\, B => \state[1]_net_1\, C => 
        over_1_sqmuxa, Y => \un1_angle_0_sqmuxa_0\);
    
    \state_RNIQHKJ1[3]\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \state[0]_net_1\, B => \state[3]_net_1\, C
         => \state[8]_net_1\, D => \state[7]_net_1\, Y => 
        N_155_i_0);
    
    \i[26]\ : SLE
      port map(D => \i_lm[26]\, CLK => FCCC_0_GL0, EN => 
        N_155_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[26]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity time_sender_work_top_rtl_0layer0 is

    port( locator_control_0_angle1 : in    std_logic_vector(3 downto 0);
          pulse_meash_0_time       : in    std_logic_vector(15 downto 0);
          time_sender_0_data_out_0 : out   std_logic;
          time_sender_0_data_out_1 : out   std_logic;
          time_sender_0_data_out_2 : out   std_logic;
          time_sender_0_data_out_3 : out   std_logic;
          time_sender_0_data_out_5 : out   std_logic;
          time_sender_0_wen        : out   std_logic;
          time_sender_0_wen_i_0    : out   std_logic;
          FCCC_0_LOCK              : in    std_logic;
          FCCC_0_GL0               : in    std_logic;
          COREUART_0_TXRDY         : in    std_logic;
          pulse_meash_0_new_ready  : in    std_logic
        );

end time_sender_work_top_rtl_0layer0;

architecture DEF_ARCH of time_sender_work_top_rtl_0layer0 is 

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component ARI1
    generic (INIT:std_logic_vector(19 downto 0) := x"00000");

    port( A   : in    std_logic := 'U';
          B   : in    std_logic := 'U';
          C   : in    std_logic := 'U';
          D   : in    std_logic := 'U';
          FCI : in    std_logic := 'U';
          S   : out   std_logic;
          Y   : out   std_logic;
          FCO : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

    signal \time_sender_0_wen\, \buff_0[0]_net_1\, VCC_net_1, 
        \k[0]_net_1\, \buff_0_1_sqmuxa_0_a2_i_i_a2\, GND_net_1, 
        \buff_0[1]_net_1\, \k[1]_net_1\, \buff_0[2]_net_1\, 
        \k[2]_net_1\, \buff_0[3]_net_1\, \k[3]_net_1\, 
        \buff_0[5]\, \k[5]\, \buff_8[0]_net_1\, buff_8_1_sqmuxa, 
        \buff_8[1]_net_1\, \buff_8[2]_net_1\, \buff_8[3]_net_1\, 
        \buff_8[5]\, \buff_7[0]_net_1\, buff_7_1_sqmuxa, 
        \buff_7[1]_net_1\, \buff_7[2]_net_1\, \buff_7[3]_net_1\, 
        \buff_7[5]\, \buff_6[0]_net_1\, buff_6_1_sqmuxa, 
        \buff_6[1]_net_1\, \buff_6[2]_net_1\, \buff_6[3]_net_1\, 
        \buff_6[5]\, \buff_5[0]_net_1\, buff_5_1_sqmuxa, 
        \buff_5[1]_net_1\, \buff_5[2]_net_1\, \buff_5[3]_net_1\, 
        \buff_5[5]\, \buff_4[0]_net_1\, buff_4_1_sqmuxa, 
        \buff_4[1]_net_1\, \buff_4[2]_net_1\, \buff_4[3]_net_1\, 
        \buff_4[5]\, \buff_3[0]_net_1\, buff_3_1_sqmuxa, 
        \buff_3[1]_net_1\, \buff_3[2]_net_1\, \buff_3[3]_net_1\, 
        \buff_3[5]\, \buff_2[0]_net_1\, buff_2_1_sqmuxa_1, 
        \buff_2[1]_net_1\, \buff_2[2]_net_1\, \buff_2[3]_net_1\, 
        \buff_2[5]\, \valu[0]_net_1\, \k_1_sqmuxa_i_i_a2\, 
        \un24_k_v[0]_net_1\, \un24_k_v[1]_net_1\, \SUM[3]\, 
        \buff_1[0]_net_1\, \un1_angle[0]_net_1\, 
        \un1_rst_n_inv_2_0_i\, \buff_1[1]_net_1\, 
        \un1_angle[1]_net_1\, \buff_1[2]_net_1\, 
        \un1_angle[2]_net_1\, \buff_1[3]_net_1\, 
        \un1_angle[3]_net_1\, \buff_1[5]\, \un1_angle[5]\, N_408, 
        \data_out_0_sqmuxa_i_i_a2\, N_409, N_410, N_411, N_413, 
        \un1_time1[0]_net_1\, \un1_rst_n_inv_0_i\, 
        \valu[1]_net_1\, \un1_time1_i_m2[1]_net_1\, 
        \valu[2]_net_1\, \un1_time1_i_m2[2]_net_1\, 
        \valu[3]_net_1\, N_120, \valu[4]_net_1\, 
        \un1_time1_i_m2[4]_net_1\, \valu[5]_net_1\, 
        \un1_time1_i_m2[5]_net_1\, \valu[6]_net_1\, 
        \un1_time1_i_m2[6]_net_1\, \valu[7]_net_1\, 
        \un1_time1_i_m2[7]_net_1\, \valu[8]_net_1\, 
        \un1_time1_i_m2[8]_net_1\, \valu[9]_net_1\, 
        \un1_time1_i_m2[9]_net_1\, \valu[10]_net_1\, 
        \un1_time1_i_m2[10]_net_1\, \valu[11]_net_1\, 
        \un1_time1_i_m2[11]_net_1\, \valu[12]_net_1\, 
        \un1_time1_i_m2[12]_net_1\, \valu[13]_net_1\, N_126, 
        \valu[14]_net_1\, \un1_time1_i_m2[14]_net_1\, 
        \valu[15]_net_1\, \un1_time1_i_m2[15]_net_1\, 
        \un1_state_0_i_a3_i\, N_466_i_0, \state[6]_net_1\, 
        \state_ns[0]\, \state[5]_net_1\, \state_ns_i_i[1]_net_1\, 
        \state[4]_net_1\, \state[3]_net_1\, 
        \state_ns_i_i[3]_net_1\, \state[2]_net_1\, N_715, 
        \state[1]_net_1\, N_450_i_0, \state[0]_net_1\, 
        \state_ns[6]\, \i[0]_net_1\, \i_lm[0]\, N_14_i_0, 
        \i[1]_net_1\, \i_lm[1]\, \i[2]_net_1\, \i_lm[2]\, 
        \i[3]_net_1\, \i_lm[3]\, \i[4]_net_1\, \i_lm[4]\, 
        \i[5]_net_1\, \i_lm[5]\, \i[6]_net_1\, \i_lm[6]\, 
        \i[7]_net_1\, \i_lm[7]\, \i[8]_net_1\, \i_lm[8]\, 
        \i[9]_net_1\, \i_lm[9]\, \i[10]_net_1\, \i_lm[10]\, 
        \i[11]_net_1\, \i_lm[11]\, \i[12]_net_1\, \i_lm[12]\, 
        \i[13]_net_1\, \i_lm[13]\, \i[14]_net_1\, \i_lm[14]\, 
        \i[15]_net_1\, \i_lm[15]\, \i[16]_net_1\, \i_lm[16]\, 
        \i[17]_net_1\, \i_lm[17]\, \i[18]_net_1\, \i_lm[18]\, 
        \i[19]_net_1\, \i_lm[19]\, \i[20]_net_1\, \i_lm[20]\, 
        \i[21]_net_1\, \i_lm[21]\, \i[22]_net_1\, \i_lm[22]\, 
        \i[23]_net_1\, \i_lm[23]\, \i[24]_net_1\, \i_lm[24]\, 
        \i[25]_net_1\, \i_lm[25]\, \i_cry[0]_net_1\, \i_cry_Y[0]\, 
        \i_cry[1]_net_1\, \i_s[1]\, \i_cry[2]_net_1\, \i_s[2]\, 
        \i_cry[3]_net_1\, \i_s[3]\, \i_cry[4]_net_1\, \i_s[4]\, 
        \i_cry[5]_net_1\, \i_s[5]\, \i_cry[6]_net_1\, \i_s[6]\, 
        \i_cry[7]_net_1\, \i_s[7]\, \i_cry[8]_net_1\, \i_s[8]\, 
        \i_cry[9]_net_1\, \i_s[9]\, \i_cry[10]_net_1\, \i_s[10]\, 
        \i_cry[11]_net_1\, \i_s[11]\, \i_cry[12]_net_1\, 
        \i_s[12]\, \i_cry[13]_net_1\, \i_s[13]\, 
        \i_cry[14]_net_1\, \i_s[14]\, \i_cry[15]_net_1\, 
        \i_s[15]\, \i_cry[16]_net_1\, \i_s[16]\, 
        \i_cry[17]_net_1\, \i_s[17]\, \i_cry[18]_net_1\, 
        \i_s[18]\, \i_cry[19]_net_1\, \i_s[19]\, 
        \i_cry[20]_net_1\, \i_s[20]\, \i_cry[21]_net_1\, 
        \i_s[21]\, \i_cry[22]_net_1\, \i_s[22]\, 
        \i_cry[23]_net_1\, \i_s[23]\, \i_s[25]_net_1\, 
        \i_cry[24]_net_1\, \i_s[24]\, un1_i_s_1_106_FCO, 
        \un1_i_cry_1\, un1_i_cry_1_S, \un1_i_cry_2\, 
        un1_i_cry_2_S, \un1_i_cry_3\, un14_clklto3, \un1_i_cry_4\, 
        un1_i_cry_4_S, \un1_i_cry_5\, un1_i_cry_5_S, 
        \un1_i_cry_6\, un1_i_cry_6_S, \un1_i_cry_7\, 
        un1_i_cry_7_S, \un1_i_cry_8\, un1_i_cry_8_S, 
        \un1_i_cry_9\, un1_i_cry_9_S, \un1_i_cry_10\, 
        un1_i_cry_10_S, \un1_i_cry_11\, un1_i_cry_11_S, 
        \un1_i_cry_12\, un1_i_cry_12_S, \un1_i_cry_13\, 
        un1_i_cry_13_S, \un1_i_cry_14\, un1_i_cry_14_S, 
        \un1_i_cry_15\, un1_i_cry_15_S, \un1_i_cry_16\, 
        un1_i_cry_16_S, \un1_i_cry_17\, un1_i_cry_17_S, 
        \un1_i_cry_18\, un1_i_cry_18_S, \un1_i_cry_19\, 
        un1_i_cry_19_S, \un1_i_cry_20\, un1_i_cry_20_S, 
        \un1_i_cry_21\, un1_i_cry_21_S, \un1_i_cry_22\, 
        un1_i_cry_22_S, \un1_i_cry_23\, un1_i_cry_23_S, 
        \un1_i_cry_24\, un1_i_cry_24_S, \un1_i_cry_25\, 
        un1_i_cry_25_S, \mult1_un194_sum_1_SUM[1]\, un1_i1_mux_0, 
        un1_N_6_1, un1_N_11_mux, \mult1_un208_sum_1_SUM_RNO[4]\, 
        un1_N_8_2, \mult1_un194_sum_1_SUM_2[4]\, 
        mult1_un201_sum_1_CO3_0_tz, mult1_un201_sum_1_ANC3, 
        mult1_un201_sum_1_CO3, \state_ns_i_a3_0[3]_net_1\, N_428, 
        N_427, \i_8[2]\, \mult1_temp_b_30[3]\, 
        \mult1_un201_sum_1_SUM[1]\, ANC2_m3_0_1, 
        mult1_un208_sum_1_CO1, \mult1_un222_sum_1_SUM_0_0[4]\, 
        \mult1_un208_sum_1_SUM[1]\, \mult1_temp_b_31[3]\, 
        mult1_un215_sum_1_CO3, \mult1_un215_sum_1_SUM_1_0[4]\, 
        \mult1_temp_b_1[3]\, \mult1_un201_sum_1_SUM[2]\, 
        mult1_un208_sum_1_CO2_0, d_m6_0_1, 
        mult1_un215_sum_1_CO3_RNO_4, \mult1_un201_sum_1_SUM_2[4]\, 
        \mult1_un180_sum_1_SUM[1]\, un1_m15_1_0, 
        mult1_un201_sum_1_CO3_0_tz_0_RNO_1, un1_m16_1, 
        mult1_un201_sum_1_CO3_0_tz_0_0_RNO, 
        mult1_un201_sum_1_CO3_0_tz_0_RNO_4, un1_m15_1_1, 
        un1_N_3_mux, un1_N_14, \mult1_un180_sum_1_SUM[3]\, 
        un1_N_5_1, un1_N_4_1, mult1_un194_sum_1_CO3_0_tz_0_1, 
        mult1_un194_sum_1_CO3_0_tz_0_RNO, 
        mult1_un194_sum_1_CO3_0_tz, un1_N_2_0_i, 
        \mult1_temp_b_27[3]\, \mult1_un180_sum_1_SUM[2]\, 
        \mult1_un159_sum_1_SUM[2]\, \mult1_temp_b_24[3]\, 
        mult1_un166_sum_1_CO2, un1_m8_1_1, 
        mult1_un166_sum_1_CO2_RNIIT571, 
        \mult1_un166_sum_1_SUM[2]\, \mult1_un166_sum_1_SUM_0[4]\, 
        un1_m8_1_0, mult1_un166_sum_1_CO3, 
        \mult1_un166_sum_1_SUM[1]\, 
        \data_out_1_6_i_m2_i_m2_am_1_1[0]_net_1\, 
        \data_out_1_6_i_m2_i_m2_am[0]_net_1\, 
        \data_out_1_6_i_m2_i_m2_bm_1_1[0]_net_1\, 
        \data_out_1_6_i_m2_i_m2_bm[0]_net_1\, 
        \data_out_1_6_i_m2_i_m2_am_1_1[1]_net_1\, 
        \data_out_1_6_i_m2_i_m2_am[1]_net_1\, 
        \data_out_1_6_i_m2_i_m2_bm_1_1[1]_net_1\, 
        \data_out_1_6_i_m2_i_m2_bm[1]_net_1\, 
        \data_out_1_6_i_m2_i_m2_am_1_1[2]_net_1\, 
        \data_out_1_6_i_m2_i_m2_am[2]_net_1\, 
        \data_out_1_6_i_m2_i_m2_bm_1_1[2]_net_1\, 
        \data_out_1_6_i_m2_i_m2_bm[2]_net_1\, 
        \data_out_1_6_i_m2_i_m2_am_1_1[3]_net_1\, 
        \data_out_1_6_i_m2_i_m2_am[3]_net_1\, 
        \data_out_1_6_i_m2_i_m2_bm_1_1[3]_net_1\, 
        \data_out_1_6_i_m2_i_m2_bm[3]_net_1\, 
        \data_out_1_6_i_m2_i_m2_am_1_1[4]_net_1\, 
        \data_out_1_6_i_m2_i_m2_am[4]_net_1\, 
        \data_out_1_6_i_m2_i_m2_bm_1_1[4]_net_1\, 
        \data_out_1_6_i_m2_i_m2_bm[4]_net_1\, N_400, N_401, N_402, 
        N_403, N_405, \SUM_3[3]\, mult1_un222_sum_1_CO3, 
        \mult1_un215_sum_1_SUM[1]\, \state_ns_i_a3_0_4[3]_net_1\, 
        mult1_un152_sum_1_CO3_1_a1_0, 
        \mult1_un201_sum_1_SUM_0[1]\, mult1_un152_sum_1_CO1_a2_1, 
        mult1_un180_sum_1_CO3_0_0_tz_tz, 
        mult1_un152_sum_1_CO3_1_a2_0, N_624, N_625, N_622, N_621, 
        N_311, \state_ns_i_i_0[3]_net_1\, 
        \state_ns_i_a3_0_16[3]_net_1\, 
        \state_ns_i_a3_0_15[3]_net_1\, 
        \state_ns_i_a3_0_14[3]_net_1\, 
        \state_ns_i_a3_0_12[3]_net_1\, 
        \state_ns_i_0_0_a2_15[5]_net_1\, 
        \state_ns_i_0_0_a2_14[5]_net_1\, 
        \state_ns_i_0_0_a2_13[5]_net_1\, 
        \state_ns_i_0_0_a2_12[5]_net_1\, 
        \state_ns_i_0_0_a2_11[5]_net_1\, 
        \state_ns_0_0_a2_3[0]_net_1\, \un1_rst_n_inv_2_0_i_a2_0\, 
        N_333, mult1_un152_sum_1_CO1_a0, \mult1_temp_b_21[3]\, 
        \state_ns_i_a3_0_18[3]_net_1\, 
        \state_ns_i_a3_0_17[3]_net_1\, 
        \state_ns_i_0_0_a2_16[5]_net_1\, un1_m1_e_4_1, 
        un1_m1_e_4_0, \state_ns_i_i_a2[3]_net_1\, 
        \mult1_un145_sum_1_SUM[1]\, mult1_un152_sum_1_CO1_1_2, 
        mult1_un152_sum_1_ANC3_1, mult1_un152_sum_1_ANC3_0, 
        mult1_un152_sum_1_ANC3_0_a0_1_0, 
        \state_ns_i_0_0_a2_20[5]_net_1\, \mult1_temp_b_22[3]\, 
        \mult1_un159_sum_1_SUM_2_0[4]\, 
        mult1_un152_sum_1_ANC3_tz_0, N_721, 
        \mult1_un152_sum_1_SUM[1]\, mult1_un152_sum_1_CO1, 
        mult1_un152_sum_1_CO3_tz, \state_ns_i_i_a2[1]_net_1\, 
        \mult1_un152_sum_1_SUM[2]\, \i_8_iv_i_i_o2[3]_net_1\, 
        un1_m5_i_0, \mult1_temp_b_23[3]\, 
        \mult1_un159_sum_1_SUM_2_1[4]\, 
        \mult1_un159_sum_1_SUM[1]\, mult1_un159_sum_1_CO3, 
        mult1_un159_sum_1_CO3_1_RNIFEB01, un1_N_5_i_1, 
        mult1_un159_sum_1_CO2, un1_N_5, \valu_RNIKEDM1[9]_net_1\, 
        mult1_un173_sum_1_CO1_0, \mult1_temp_b_25[3]\, 
        \mult1_un173_sum_1_SUM[1]\, \mult1_un173_sum_1_SUM[2]\, 
        \mult1_un180_sum_1_SUM_2_1[4]\, mult1_un173_sum_1_CO2, 
        mult1_un180_sum_1_CO3_1_0, mult1_un180_sum_1_CO3_1, 
        un1_i1_mux, mult1_un180_sum_1_CO2, 
        mult1_un173_sum_1_CO2_RNIJ88Q, \mult1_un187_sum_1_SUM[1]\, 
        \mult1_un194_sum_1_SUM_1[4]\, un1_i2_mux_1, 
        \mult1_un187_sum_1_SUM[2]\, 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, un1_N_7_mux, 
        un1_N_3_mux_0, un1_N_17_0, d_N_16, d_i6_mux_0, 
        mult1_un201_sum_1_CO3_0_tz_a3_0, mult1_un194_sum_1_CO1_0, 
        d_N_15_mux, mult1_un194_sum_1_ANC3_d_2_out_tz, 
        mult1_un194_sum_1_CO1, mult1_un194_sum_1_ANC3_d_d, 
        mult1_un194_sum_1_CO2_0_tz, 
        mult1_un201_sum_1_CO3_0_tz_a0_1, un1_m3_i_o2_0, 
        mult1_un201_sum_1_CO3_0_tz_a3, \mult1_un194_sum_1_SUM[2]\, 
        mult1_un194_sum_1_ANC3_d_2_out, 
        mult1_un201_sum_1_ANC3_0_RNO_0, 
        mult1_un201_sum_1_CO3_0_tz_0_2, un1_m2_0_a2_0, 
        un1_i4_mux_1, un1_N_6_4, mult1_un194_sum_1_CO2, 
        mult1_un201_sum_1_CO3_0_tz_0_0, un1_N_10_mux, 
        mult1_un201_sum_1_CO3_0_tz_a0, 
        \mult1_un201_sum_1_SUM_1[4]\, un1_N_7_2, 
        mult1_un201_sum_1_CO3_0_tz_0_1, \mult1_temp_b_29[3]\, 
        \valu_RNIL8K77[5]_net_1\, un1_i4_mux_0, 
        \mult1_un194_sum_1_SUM_2_RNIENPP4[4]\, 
        \mult1_un208_sum_1_SUM_RNO_1[4]\, d_N_7_mux, un1_i5_mux_1, 
        mult1_un222_sum_1_CO3_1_0_RNO_2, 
        \mult1_un201_sum_1_SUM[3]\, d_i4_mux_2, un1_N_11_i_2_i, 
        mult1_un215_sum_1_CO3_RNO_5, 
        \mult1_un208_sum_1_SUM_0_i[4]\, 
        mult1_un201_sum_1_CO3_0_tz_0_RNIPVHK1, un1_m7_1_0, 
        mult1_un222_sum_1_CO3_1_0_RNO_1, 
        mult1_un215_sum_1_CO3_RNO_1, un1_i5_mux_0, 
        mult1_un215_sum_1_CO3_RNO, mult1_un222_sum_1_CO3_0_0, 
        mult1_un222_sum_1_CO3_1_0_RNO_0, 
        mult1_un222_sum_1_CO3_1_0_RNO, mult1_un215_sum_1_CO3_0, 
        mult1_un222_sum_1_CO3_1_0, \mult1_un215_sum_1_SUM[2]\, 
        ANC2_m3, \mult1_un222_sum_1_SUM[4]\ : std_logic;

begin 

    time_sender_0_wen <= \time_sender_0_wen\;

    buff_5_1_sqmuxa_0_a2_0_a2 : CFG4
      generic map(INIT => x"8000")

      port map(A => \i[2]_net_1\, B => \i[0]_net_1\, C => N_622, 
        D => N_621, Y => buff_5_1_sqmuxa);
    
    \data_out_1_6_i_m2_i_m2_bm_1_1[3]\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \buff_6[3]_net_1\, B => \buff_2[3]_net_1\, C
         => \i[2]_net_1\, D => \i[0]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_bm_1_1[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_0_RNO_6\ : 
        CFG4
      generic map(INIT => x"37FB")

      port map(A => \mult1_un180_sum_1_SUM[2]\, B => un1_N_3_mux, 
        C => \mult1_temp_b_27[3]\, D => 
        \mult1_un180_sum_1_SUM[3]\, Y => un1_N_14);
    
    \state[0]\ : SLE
      port map(D => \state_ns[6]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \state[0]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_SUM_2[4]\ : CFG3
      generic map(INIT => x"96")

      port map(A => \mult1_un180_sum_1_SUM[3]\, B => un1_i2_mux_1, 
        C => \mult1_un194_sum_1_SUM_1[4]\, Y => 
        \mult1_un194_sum_1_SUM_2[4]\);
    
    \valu[10]\ : SLE
      port map(D => \un1_time1_i_m2[10]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[10]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un180_sum_1_SUM[4]\ : CFG4
      generic map(INIT => x"8778")

      port map(A => mult1_un180_sum_1_CO3_1_0, B => 
        mult1_un180_sum_1_CO3_1, C => mult1_un173_sum_1_CO2, D
         => \mult1_un180_sum_1_SUM_2_1[4]\, Y => 
        \mult1_temp_b_27[3]\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_SUM[1]\ : CFG4
      generic map(INIT => x"9669")

      port map(A => \valu[5]_net_1\, B => \valu[6]_net_1\, C => 
        \mult1_un180_sum_1_SUM[3]\, D => un1_i2_mux_1, Y => 
        \mult1_un194_sum_1_SUM[1]\);
    
    \i[7]\ : SLE
      port map(D => \i_lm[7]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[7]_net_1\);
    
    buff_2_1_sqmuxa_1_a2_0_a2 : CFG3
      generic map(INIT => x"80")

      port map(A => N_625, B => N_624, C => N_621, Y => 
        buff_2_1_sqmuxa_1);
    
    \i[16]\ : SLE
      port map(D => \i_lm[16]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[16]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_CO3\ : CFG4
      generic map(INIT => x"EEFC")

      port map(A => mult1_un215_sum_1_CO3_RNO, B => 
        mult1_un215_sum_1_CO3_0, C => \valu[2]_net_1\, D => 
        mult1_un215_sum_1_CO3_RNO_1, Y => mult1_un215_sum_1_CO3);
    
    \state_ns_i_0_0_a2_11[5]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \i[23]_net_1\, B => \i[22]_net_1\, C => 
        \i[17]_net_1\, D => \i[16]_net_1\, Y => 
        \state_ns_i_0_0_a2_11[5]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_SUM[1]\ : CFG3
      generic map(INIT => x"96")

      port map(A => \valu[3]_net_1\, B => \mult1_temp_b_31[3]\, C
         => \valu[2]_net_1\, Y => \mult1_un215_sum_1_SUM[1]\);
    
    buff_0_1_sqmuxa_0_a2_i_i_a2 : CFG3
      generic map(INIT => x"80")

      port map(A => N_624, B => \state[4]_net_1\, C => N_622, Y
         => \buff_0_1_sqmuxa_0_a2_i_i_a2\);
    
    \buff_0[3]\ : SLE
      port map(D => \k[3]_net_1\, CLK => FCCC_0_GL0, EN => 
        \buff_0_1_sqmuxa_0_a2_i_i_a2\, ALn => FCCC_0_LOCK, ADn
         => GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \buff_0[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_a0\ : CFG4
      generic map(INIT => x"7000")

      port map(A => mult1_un194_sum_1_CO1, B => un1_N_3_mux_0, C
         => mult1_un194_sum_1_ANC3_d_2_out, D => 
        mult1_un201_sum_1_CO3_0_tz_a0_1, Y => 
        mult1_un201_sum_1_CO3_0_tz_a0);
    
    \un1_k_if_generate_plus.mult1_un145_sum_1_SUM[1]\ : CFG4
      generic map(INIT => x"58A7")

      port map(A => \valu[15]_net_1\, B => \valu[14]_net_1\, C
         => \valu[13]_net_1\, D => \valu[12]_net_1\, Y => 
        \mult1_un145_sum_1_SUM[1]\);
    
    \i_cry[14]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[14]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[13]_net_1\, S => \i_s[14]\, 
        Y => OPEN, FCO => \i_cry[14]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un208_sum_1_CO1_1_RNO\ : CFG4
      generic map(INIT => x"0009")

      port map(A => \valu[3]_net_1\, B => \valu[4]_net_1\, C => 
        \mult1_temp_b_29[3]\, D => mult1_un201_sum_1_ANC3, Y => 
        un1_i4_mux_0);
    
    \i_lm_0[24]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[24]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[24]\);
    
    buff_7_1_sqmuxa_0_a2_0_a2 : CFG4
      generic map(INIT => x"8000")

      port map(A => \i[2]_net_1\, B => \i[0]_net_1\, C => N_625, 
        D => N_621, Y => buff_7_1_sqmuxa);
    
    \i[21]\ : SLE
      port map(D => \i_lm[21]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[21]_net_1\);
    
    \state_ns_i_a3_0_16[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => un1_i_cry_21_S, B => un1_i_cry_22_S, C => 
        un1_i_cry_23_S, D => un1_i_cry_24_S, Y => 
        \state_ns_i_a3_0_16[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un166_sum_1_SUM_0[4]\ : CFG4
      generic map(INIT => x"6996")

      port map(A => \mult1_temp_b_23[3]\, B => 
        \mult1_un152_sum_1_SUM[2]\, C => \mult1_temp_b_24[3]\, D
         => mult1_un159_sum_1_CO2, Y => 
        \mult1_un166_sum_1_SUM_0[4]\);
    
    \i_cry[20]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[20]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[19]_net_1\, S => \i_s[20]\, 
        Y => OPEN, FCO => \i_cry[20]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un1_sum_1.ANC2_m3_0\ : CFG4
      generic map(INIT => x"9669")

      port map(A => \mult1_temp_b_30[3]\, B => 
        \mult1_un201_sum_1_SUM[1]\, C => ANC2_m3_0_1, D => 
        mult1_un208_sum_1_CO1, Y => 
        \mult1_un222_sum_1_SUM_0_0[4]\);
    
    \un1_angle[2]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => locator_control_0_angle1(2), B => 
        \k[2]_net_1\, C => \state[4]_net_1\, Y => 
        \un1_angle[2]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_SUM[2]\ : CFG4
      generic map(INIT => x"2D4B")

      port map(A => \valu[4]_net_1\, B => \valu[5]_net_1\, C => 
        \mult1_un194_sum_1_SUM[1]\, D => \mult1_temp_b_29[3]\, Y
         => \mult1_un201_sum_1_SUM[2]\);
    
    \buff_4[1]\ : SLE
      port map(D => \k[1]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_4_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_4[1]_net_1\);
    
    \k[1]\ : SLE
      port map(D => \un24_k_v[0]_net_1\, CLK => FCCC_0_GL0, EN
         => \k_1_sqmuxa_i_i_a2\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \k[1]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_am_1_1[1]\ : CFG4
      generic map(INIT => x"05F3")

      port map(A => \buff_1[1]_net_1\, B => \buff_0[1]_net_1\, C
         => \i[2]_net_1\, D => \i[0]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_am_1_1[1]_net_1\);
    
    \state_ns_i_a3_0_17[3]\ : CFG4
      generic map(INIT => x"0100")

      port map(A => un1_i_cry_4_S, B => un1_i_cry_5_S, C => 
        un1_i_cry_25_S, D => \state_ns_i_a3_0_12[3]_net_1\, Y => 
        \state_ns_i_a3_0_17[3]_net_1\);
    
    \state_ns_i_0_0_a2_15[5]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \i[11]_net_1\, B => \i[10]_net_1\, C => 
        \i[5]_net_1\, D => \i[4]_net_1\, Y => 
        \state_ns_i_0_0_a2_15[5]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_am[0]\ : CFG4
      generic map(INIT => x"C0AF")

      port map(A => \buff_5[0]_net_1\, B => \buff_4[0]_net_1\, C
         => \i[2]_net_1\, D => 
        \data_out_1_6_i_m2_i_m2_am_1_1[0]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_am[0]_net_1\);
    
    \i[0]\ : SLE
      port map(D => \i_lm[0]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[0]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un180_sum_1_CO3_1_0\ : CFG4
      generic map(INIT => x"FFA8")

      port map(A => \mult1_un173_sum_1_SUM[2]\, B => 
        mult1_un180_sum_1_CO3_0_0_tz_tz, C => 
        mult1_un166_sum_1_CO2_RNIIT571, D => 
        \mult1_un173_sum_1_SUM[1]\, Y => 
        mult1_un180_sum_1_CO3_1_0);
    
    \i[11]\ : SLE
      port map(D => \i_lm[11]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[11]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_am[2]\ : CFG4
      generic map(INIT => x"C0AF")

      port map(A => \buff_5[2]_net_1\, B => \buff_4[2]_net_1\, C
         => \i[2]_net_1\, D => 
        \data_out_1_6_i_m2_i_m2_am_1_1[2]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_am[2]_net_1\);
    
    \valu_RNIL8K77[5]\ : CFG4
      generic map(INIT => x"8B47")

      port map(A => \valu[6]_net_1\, B => \valu[5]_net_1\, C => 
        un1_N_7_2, D => \mult1_un180_sum_1_SUM_RNI77563[3]\, Y
         => \valu_RNIL8K77[5]_net_1\);
    
    \state[6]\ : SLE
      port map(D => \state_ns[0]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \state[6]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_0_1\ : 
        CFG4
      generic map(INIT => x"FF80")

      port map(A => mult1_un194_sum_1_CO3_0_tz, B => 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, C => 
        mult1_un201_sum_1_CO3_0_tz_a3_0, D => 
        mult1_un201_sum_1_CO3_0_tz_0_0, Y => 
        mult1_un201_sum_1_CO3_0_tz_0_1);
    
    \buff_0[0]\ : SLE
      port map(D => \k[0]_net_1\, CLK => FCCC_0_GL0, EN => 
        \buff_0_1_sqmuxa_0_a2_i_i_a2\, ALn => FCCC_0_LOCK, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \buff_0[0]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_CO3_RNO\ : CFG4
      generic map(INIT => x"0942")

      port map(A => \valu[3]_net_1\, B => \valu[4]_net_1\, C => 
        \mult1_un201_sum_1_SUM[1]\, D => \mult1_temp_b_30[3]\, Y
         => mult1_un215_sum_1_CO3_RNO);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_ANC3_d_d_RNI2D4K4\ : 
        CFG4
      generic map(INIT => x"FFF8")

      port map(A => un1_N_3_mux_0, B => mult1_un194_sum_1_CO1, C
         => mult1_un194_sum_1_ANC3_d_d, D => un1_m3_i_o2_0, Y => 
        un1_N_8_2);
    
    \un1_k_if_generate_plus.mult1_un166_sum_1_SUM[4]\ : CFG4
      generic map(INIT => x"3AC5")

      port map(A => \mult1_temp_b_24[3]\, B => 
        \mult1_un159_sum_1_SUM[2]\, C => \valu_RNIKEDM1[9]_net_1\, 
        D => \mult1_un166_sum_1_SUM_0[4]\, Y => 
        \mult1_temp_b_25[3]\);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_SUM[4]\ : CFG3
      generic map(INIT => x"01")

      port map(A => mult1_un152_sum_1_ANC3_0, B => 
        mult1_un152_sum_1_CO3_tz, C => mult1_un152_sum_1_ANC3_1, 
        Y => \mult1_temp_b_23[3]\);
    
    \state_ns_i_i_0[3]\ : CFG3
      generic map(INIT => x"CE")

      port map(A => \state[3]_net_1\, B => \state[1]_net_1\, C
         => COREUART_0_TXRDY, Y => \state_ns_i_i_0[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_ANC3_c_0_RNI46CP\ : 
        CFG4
      generic map(INIT => x"A556")

      port map(A => \mult1_un194_sum_1_SUM_1[4]\, B => 
        mult1_un194_sum_1_CO3_0_tz, C => \valu[6]_net_1\, D => 
        un1_N_3_mux_0, Y => un1_i4_mux_1);
    
    \i_lm_0[2]\ : CFG4
      generic map(INIT => x"CACC")

      port map(A => \i_s[2]\, B => \i_8[2]\, C => 
        \state[4]_net_1\, D => N_311, Y => \i_lm[2]\);
    
    \buff_6[0]\ : SLE
      port map(D => \k[0]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_6_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_6[0]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_SUM_2_RNIENPP4[4]\ : 
        CFG3
      generic map(INIT => x"69")

      port map(A => \valu[5]_net_1\, B => 
        \mult1_un194_sum_1_SUM_2[4]\, C => un1_N_8_2, Y => 
        \mult1_un194_sum_1_SUM_2_RNIENPP4[4]\);
    
    \un1_k_if_generate_plus.mult1_un166_sum_1_CO2\ : CFG4
      generic map(INIT => x"F2B0")

      port map(A => \valu[9]_net_1\, B => \valu[10]_net_1\, C => 
        \mult1_un159_sum_1_SUM[1]\, D => \mult1_temp_b_24[3]\, Y
         => mult1_un166_sum_1_CO2);
    
    \state_ns_i_a3_0_18[3]\ : CFG4
      generic map(INIT => x"1000")

      port map(A => un1_i_cry_10_S, B => un1_i_cry_11_S, C => 
        \state_ns_i_a3_0_4[3]_net_1\, D => 
        \state_ns_i_a3_0_14[3]_net_1\, Y => 
        \state_ns_i_a3_0_18[3]_net_1\);
    
    \un1_time1_i_m2[12]\ : CFG3
      generic map(INIT => x"2E")

      port map(A => pulse_meash_0_time(12), B => \state[4]_net_1\, 
        C => \mult1_temp_b_21[3]\, Y => 
        \un1_time1_i_m2[12]_net_1\);
    
    \un1_angle[4]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \state[4]_net_1\, B => \k[5]\, Y => 
        \un1_angle[5]\);
    
    \data_out_1_i_m2_i_m2[3]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => \i[3]_net_1\, B => N_403, C => 
        \buff_8[3]_net_1\, Y => N_411);
    
    \data_out_1_i_m2_i_m2[2]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => \i[3]_net_1\, B => N_402, C => 
        \buff_8[2]_net_1\, Y => N_410);
    
    \data_out_1_6_i_m2_i_m2_am_1_1[4]\ : CFG4
      generic map(INIT => x"05F3")

      port map(A => \buff_1[5]\, B => \buff_0[5]\, C => 
        \i[2]_net_1\, D => \i[0]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_am_1_1[4]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_CO3_RNO_5\ : CFG4
      generic map(INIT => x"9669")

      port map(A => un1_i5_mux_1, B => \mult1_temp_b_29[3]\, C
         => \valu[3]_net_1\, D => \mult1_un194_sum_1_SUM[2]\, Y
         => mult1_un215_sum_1_CO3_RNO_5);
    
    \un1_k_if_generate_plus.mult1_un159_sum_1_SUM[2]\ : CFG4
      generic map(INIT => x"2D4B")

      port map(A => \valu[10]_net_1\, B => \valu[11]_net_1\, C
         => \mult1_un152_sum_1_SUM[1]\, D => \mult1_temp_b_23[3]\, 
        Y => \mult1_un159_sum_1_SUM[2]\);
    
    \un1_time1_i_m2[15]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \state[4]_net_1\, B => pulse_meash_0_time(15), 
        Y => \un1_time1_i_m2[15]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un222_sum_1_CO3_1_0_RNO_1\ : 
        CFG4
      generic map(INIT => x"02DF")

      port map(A => mult1_un222_sum_1_CO3_1_0_RNO_2, B => 
        un1_N_6_1, C => mult1_un201_sum_1_CO3_0_tz_0_RNIPVHK1, D
         => \mult1_un201_sum_1_SUM[2]\, Y => 
        mult1_un222_sum_1_CO3_1_0_RNO_1);
    
    \un1_k_if_generate_plus.mult1_un159_sum_1_SUM[4]\ : CFG3
      generic map(INIT => x"69")

      port map(A => mult1_un159_sum_1_CO3, B => 
        \mult1_un159_sum_1_SUM_2_1[4]\, C => \mult1_temp_b_23[3]\, 
        Y => \mult1_temp_b_24[3]\);
    
    un1_i_cry_23 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[23]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_22\, S => 
        un1_i_cry_23_S, Y => OPEN, FCO => \un1_i_cry_23\);
    
    \buff_8[1]\ : SLE
      port map(D => \k[1]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_8_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_8[1]_net_1\);
    
    \i_8_iv_i_0_i_o2[1]\ : CFG3
      generic map(INIT => x"DF")

      port map(A => un1_i_cry_1_S, B => un14_clklto3, C => 
        \state_ns_i_a3_0[3]_net_1\, Y => N_428);
    
    buff_4_1_sqmuxa_0_a2_0_a2 : CFG4
      generic map(INIT => x"2000")

      port map(A => \i[2]_net_1\, B => \i[0]_net_1\, C => N_622, 
        D => N_621, Y => buff_4_1_sqmuxa);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_CO3_RNO_0\ : CFG4
      generic map(INIT => x"080D")

      port map(A => un1_i5_mux_0, B => \valu[2]_net_1\, C => 
        \mult1_temp_b_31[3]\, D => mult1_un215_sum_1_CO3_RNO_4, Y
         => mult1_un215_sum_1_CO3_0);
    
    \un1_k_if_generate_plus.mult1_un180_sum_1_CO2_1\ : CFG4
      generic map(INIT => x"BF02")

      port map(A => \valu[7]_net_1\, B => \valu[8]_net_1\, C => 
        mult1_un166_sum_1_CO2_RNIIT571, D => 
        \mult1_un173_sum_1_SUM[1]\, Y => mult1_un180_sum_1_CO2);
    
    buff_3_1_sqmuxa_0_a2_0_a2 : CFG4
      generic map(INIT => x"4000")

      port map(A => \i[2]_net_1\, B => \i[0]_net_1\, C => N_625, 
        D => N_621, Y => buff_3_1_sqmuxa);
    
    \data_out[1]\ : SLE
      port map(D => N_409, CLK => FCCC_0_GL0, EN => 
        \data_out_0_sqmuxa_i_i_a2\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => time_sender_0_data_out_1);
    
    \buff_0[2]\ : SLE
      port map(D => \k[2]_net_1\, CLK => FCCC_0_GL0, EN => 
        \buff_0_1_sqmuxa_0_a2_i_i_a2\, ALn => FCCC_0_LOCK, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \buff_0[2]_net_1\);
    
    wen_RNIMEN5 : CFG1
      generic map(INIT => "01")

      port map(A => \time_sender_0_wen\, Y => 
        time_sender_0_wen_i_0);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_0_RNO_5\ : 
        CFG4
      generic map(INIT => x"2E0C")

      port map(A => un1_N_3_mux, B => \valu[6]_net_1\, C => 
        un1_N_14, D => \mult1_un180_sum_1_SUM[3]\, Y => 
        un1_m15_1_1);
    
    \un1_k_if_generate_plus.mult1_un159_sum_1_CO3_1\ : CFG4
      generic map(INIT => x"AA8E")

      port map(A => \mult1_un152_sum_1_SUM[2]\, B => 
        \mult1_un152_sum_1_SUM[1]\, C => \mult1_temp_b_23[3]\, D
         => un1_m5_i_0, Y => mult1_un159_sum_1_CO3);
    
    \buff_4[4]\ : SLE
      port map(D => \k[5]\, CLK => FCCC_0_GL0, EN => 
        buff_4_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_4[5]\);
    
    \valu_RNI08BU1[11]\ : CFG4
      generic map(INIT => x"C4FF")

      port map(A => \valu[14]_net_1\, B => \valu[12]_net_1\, C
         => \valu[15]_net_1\, D => \valu[11]_net_1\, Y => 
        un1_m1_e_4_0);
    
    \valu[7]\ : SLE
      port map(D => \un1_time1_i_m2[7]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[7]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un222_sum_1_SUM[4]\ : CFG3
      generic map(INIT => x"69")

      port map(A => mult1_un222_sum_1_CO3, B => 
        \mult1_un222_sum_1_SUM_0_0[4]\, C => \mult1_temp_b_1[3]\, 
        Y => \mult1_un222_sum_1_SUM[4]\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_CO1_0\ : CFG4
      generic map(INIT => x"2332")

      port map(A => \valu[5]_net_1\, B => \valu[6]_net_1\, C => 
        \mult1_un180_sum_1_SUM[3]\, D => un1_i2_mux_1, Y => 
        mult1_un194_sum_1_CO1_0);
    
    \buff_2[0]\ : SLE
      port map(D => \k[0]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_2_1_sqmuxa_1, ALn => VCC_net_1, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \buff_2[0]_net_1\);
    
    \un1_time1_i_m2[11]\ : CFG3
      generic map(INIT => x"2E")

      port map(A => pulse_meash_0_time(11), B => \state[4]_net_1\, 
        C => \mult1_temp_b_22[3]\, Y => 
        \un1_time1_i_m2[11]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un180_sum_1_SUM[2]\ : CFG4
      generic map(INIT => x"42BD")

      port map(A => \valu[7]_net_1\, B => \valu[8]_net_1\, C => 
        mult1_un166_sum_1_CO2_RNIIT571, D => 
        \mult1_un173_sum_1_SUM[1]\, Y => 
        \mult1_un180_sum_1_SUM[2]\);
    
    \buff_0[4]\ : SLE
      port map(D => \k[5]\, CLK => FCCC_0_GL0, EN => 
        \buff_0_1_sqmuxa_0_a2_i_i_a2\, ALn => FCCC_0_LOCK, ADn
         => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \buff_0[5]\);
    
    un1_i_cry_21 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[21]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_20\, S => 
        un1_i_cry_21_S, Y => OPEN, FCO => \un1_i_cry_21\);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_ANC3_1\ : CFG4
      generic map(INIT => x"8400")

      port map(A => \valu[15]_net_1\, B => \valu[14]_net_1\, C
         => \valu[13]_net_1\, D => mult1_un152_sum_1_CO3_1_a2_0, 
        Y => mult1_un152_sum_1_ANC3_1);
    
    \buff_6[2]\ : SLE
      port map(D => \k[2]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_6_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_6[2]_net_1\);
    
    \valu[13]\ : SLE
      port map(D => N_126, CLK => FCCC_0_GL0, EN => 
        \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \valu[13]_net_1\);
    
    \buff_5[1]\ : SLE
      port map(D => \k[1]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_5_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_5[1]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un180_sum_1_CO3_2_tz_tz\ : CFG2
      generic map(INIT => x"2")

      port map(A => \valu[7]_net_1\, B => \valu[8]_net_1\, Y => 
        mult1_un180_sum_1_CO3_0_0_tz_tz);
    
    \state[4]\ : SLE
      port map(D => \state[5]_net_1\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \state[4]_net_1\);
    
    \state_ns_i_i[3]\ : CFG4
      generic map(INIT => x"FCFE")

      port map(A => \state[4]_net_1\, B => 
        \state_ns_i_i_0[3]_net_1\, C => 
        \state_ns_i_i_a2[3]_net_1\, D => 
        \state_ns_i_a3_0[3]_net_1\, Y => \state_ns_i_i[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un208_sum_1_SUM_0[4]\ : CFG3
      generic map(INIT => x"96")

      port map(A => mult1_un201_sum_1_CO3, B => 
        \mult1_un201_sum_1_SUM_2[4]\, C => 
        \mult1_un201_sum_1_SUM[3]\, Y => 
        \mult1_un208_sum_1_SUM_0_i[4]\);
    
    \i_lm_0[25]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[25]_net_1\, B => \state[4]_net_1\, C => 
        N_311, Y => \i_lm[25]\);
    
    \valu_RNIBG2A1[8]\ : CFG4
      generic map(INIT => x"1428")

      port map(A => \valu[8]_net_1\, B => \valu[7]_net_1\, C => 
        \valu[6]_net_1\, D => mult1_un166_sum_1_CO2_RNIIT571, Y
         => un1_i1_mux);
    
    \valu[3]\ : SLE
      port map(D => N_120, CLK => FCCC_0_GL0, EN => 
        \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \valu[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un187_sum_1_SUM[1]\ : CFG3
      generic map(INIT => x"96")

      port map(A => \valu[7]_net_1\, B => \valu[6]_net_1\, C => 
        \mult1_temp_b_27[3]\, Y => \mult1_un187_sum_1_SUM[1]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \data_out_1_6_i_m2_i_m2_bm_1_1[1]\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \buff_6[1]_net_1\, B => \buff_2[1]_net_1\, C
         => \i[2]_net_1\, D => \i[0]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_bm_1_1[1]_net_1\);
    
    \buff_5[3]\ : SLE
      port map(D => \k[3]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_5_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_5[3]_net_1\);
    
    buff_2_1_sqmuxa_1_a2_0_a2_0 : CFG2
      generic map(INIT => x"1")

      port map(A => \i[0]_net_1\, B => \i[2]_net_1\, Y => N_624);
    
    \buff_0[1]\ : SLE
      port map(D => \k[1]_net_1\, CLK => FCCC_0_GL0, EN => 
        \buff_0_1_sqmuxa_0_a2_i_i_a2\, ALn => FCCC_0_LOCK, ADn
         => GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \buff_0[1]_net_1\);
    
    \un1_time1_i_m2[10]\ : CFG3
      generic map(INIT => x"2E")

      port map(A => pulse_meash_0_time(10), B => \state[4]_net_1\, 
        C => \mult1_temp_b_23[3]\, Y => 
        \un1_time1_i_m2[10]_net_1\);
    
    \un1_angle[1]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => locator_control_0_angle1(1), B => 
        \k[1]_net_1\, C => \state[4]_net_1\, Y => 
        \un1_angle[1]_net_1\);
    
    \buff_7[4]\ : SLE
      port map(D => \k[5]\, CLK => FCCC_0_GL0, EN => 
        buff_7_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_7[5]\);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_CO3_RNO_3\ : CFG4
      generic map(INIT => x"6A95")

      port map(A => \valu[3]_net_1\, B => 
        \mult1_un194_sum_1_SUM[1]\, C => 
        \mult1_un194_sum_1_SUM_2_RNIENPP4[4]\, D => 
        \mult1_un201_sum_1_SUM[3]\, Y => un1_N_11_i_2_i);
    
    \un1_k_if_generate_plus.mult1_un159_sum_1_SUM_2_0[4]\ : CFG4
      generic map(INIT => x"FDDE")

      port map(A => \valu[15]_net_1\, B => \valu[14]_net_1\, C
         => \valu[13]_net_1\, D => \valu[12]_net_1\, Y => 
        \mult1_un159_sum_1_SUM_2_0[4]\);
    
    \i[23]\ : SLE
      port map(D => \i_lm[23]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[23]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_SUM_1_RNIBDHV3[4]\ : 
        CFG2
      generic map(INIT => x"6")

      port map(A => un1_N_6_4, B => \mult1_un194_sum_1_SUM_1[4]\, 
        Y => un1_N_7_2);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_ANC3_0\ : CFG4
      generic map(INIT => x"4202")

      port map(A => \valu[15]_net_1\, B => \valu[14]_net_1\, C
         => \valu[13]_net_1\, D => mult1_un152_sum_1_CO3_1_a1_0, 
        Y => mult1_un152_sum_1_ANC3_0);
    
    \state_ns_i_a3_0_14[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => un1_i_cry_15_S, B => un1_i_cry_16_S, C => 
        un1_i_cry_14_S, D => \un1_i_cry_25\, Y => 
        \state_ns_i_a3_0_14[3]_net_1\);
    
    \state_ns_i_0_0_a2[5]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => N_622, B => N_624, C => 
        \state_ns_i_0_0_a2_16[5]_net_1\, D => 
        \state_ns_i_0_0_a2_20[5]_net_1\, Y => N_721);
    
    \i_8_iv_i_0_i_o2[0]\ : CFG3
      generic map(INIT => x"EF")

      port map(A => \i[0]_net_1\, B => un14_clklto3, C => 
        \state_ns_i_a3_0[3]_net_1\, Y => N_427);
    
    \state[5]\ : SLE
      port map(D => \state_ns_i_i[1]_net_1\, CLK => FCCC_0_GL0, 
        EN => VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \state[5]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_0_2\ : 
        CFG4
      generic map(INIT => x"ECCC")

      port map(A => mult1_un201_sum_1_CO3_0_tz_a3_0, B => 
        mult1_un201_sum_1_CO3_0_tz_a3, C => un1_N_3_mux_0, D => 
        mult1_un194_sum_1_CO1, Y => 
        mult1_un201_sum_1_CO3_0_tz_0_2);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_CO1_a1_1_RNI62LR1\ : 
        CFG4
      generic map(INIT => x"75FF")

      port map(A => \valu[15]_net_1\, B => \valu[11]_net_1\, C
         => \valu[12]_net_1\, D => mult1_un152_sum_1_CO1_a2_1, Y
         => un1_m1_e_4_1);
    
    \un1_k_if_generate_plus.mult1_un1_sum_1.ANC2_m3_0_1\ : CFG4
      generic map(INIT => x"0DB0")

      port map(A => \valu[2]_net_1\, B => \valu[3]_net_1\, C => 
        \mult1_un208_sum_1_SUM[1]\, D => \mult1_temp_b_31[3]\, Y
         => ANC2_m3_0_1);
    
    \buff_3[0]\ : SLE
      port map(D => \k[0]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_3_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_3[0]_net_1\);
    
    \i_cry[23]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[23]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[22]_net_1\, S => \i_s[23]\, 
        Y => OPEN, FCO => \i_cry[23]_net_1\);
    
    \i_lm_0_RNO[2]\ : CFG4
      generic map(INIT => x"0800")

      port map(A => \state[4]_net_1\, B => un1_i_cry_2_S, C => 
        un14_clklto3, D => \state_ns_i_a3_0[3]_net_1\, Y => 
        \i_8[2]\);
    
    \i[13]\ : SLE
      port map(D => \i_lm[13]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[13]_net_1\);
    
    \buff_1[1]\ : SLE
      port map(D => \un1_angle[1]_net_1\, CLK => FCCC_0_GL0, EN
         => \un1_rst_n_inv_2_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \buff_1[1]_net_1\);
    
    \i_cry[15]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[15]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[14]_net_1\, S => \i_s[15]\, 
        Y => OPEN, FCO => \i_cry[15]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_SUM_2_RNIUFOQ4[4]\ : 
        CFG4
      generic map(INIT => x"B22B")

      port map(A => \valu[5]_net_1\, B => \valu[4]_net_1\, C => 
        un1_N_8_2, D => \mult1_un194_sum_1_SUM_2[4]\, Y => 
        un1_i1_mux_0);
    
    \data_out_1_6_i_m2_i_m2_bm_1_1[4]\ : CFG4
      generic map(INIT => x"05F3")

      port map(A => \buff_3[5]\, B => \buff_2[5]\, C => 
        \i[2]_net_1\, D => \i[0]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_bm_1_1[4]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_ns[2]\ : CFG3
      generic map(INIT => x"D8")

      port map(A => \i[1]_net_1\, B => 
        \data_out_1_6_i_m2_i_m2_bm[2]_net_1\, C => 
        \data_out_1_6_i_m2_i_m2_am[2]_net_1\, Y => N_402);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_ANC3_0_RNO_0\ : 
        CFG4
      generic map(INIT => x"D580")

      port map(A => \valu[6]_net_1\, B => d_N_16, C => d_i6_mux_0, 
        D => d_N_15_mux, Y => mult1_un201_sum_1_ANC3_0_RNO_0);
    
    \k[4]\ : SLE
      port map(D => VCC_net_1, CLK => FCCC_0_GL0, EN => 
        \k_1_sqmuxa_i_i_a2\, ALn => VCC_net_1, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \k[5]\);
    
    \i_lm_0[10]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[10]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[10]\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_a1_1\ : 
        CFG4
      generic map(INIT => x"6009")

      port map(A => \valu[6]_net_1\, B => \valu[5]_net_1\, C => 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, D => 
        \mult1_un194_sum_1_SUM_1[4]\, Y => 
        mult1_un201_sum_1_CO3_0_tz_a3_0);
    
    \data_out[2]\ : SLE
      port map(D => N_410, CLK => FCCC_0_GL0, EN => 
        \data_out_0_sqmuxa_i_i_a2\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => time_sender_0_data_out_2);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_CO1_1_2\ : CFG4
      generic map(INIT => x"F8F0")

      port map(A => \valu[14]_net_1\, B => \valu[11]_net_1\, C
         => mult1_un152_sum_1_CO1_a0, D => \valu[13]_net_1\, Y
         => mult1_un152_sum_1_CO1_1_2);
    
    \i[17]\ : SLE
      port map(D => \i_lm[17]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[17]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_0_0\ : 
        CFG4
      generic map(INIT => x"B0FF")

      port map(A => \valu[4]_net_1\, B => \valu[5]_net_1\, C => 
        \mult1_un194_sum_1_SUM[1]\, D => 
        mult1_un201_sum_1_CO3_0_tz_0_0_RNO, Y => 
        mult1_un201_sum_1_CO3_0_tz_0_0);
    
    \state_ns_i_a3_0_4[3]\ : CFG2
      generic map(INIT => x"1")

      port map(A => un1_i_cry_13_S, B => un1_i_cry_12_S, Y => 
        \state_ns_i_a3_0_4[3]_net_1\);
    
    \data_out_1_i_m2_i_m2[0]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => \i[3]_net_1\, B => N_400, C => 
        \buff_8[0]_net_1\, Y => N_408);
    
    \buff_5[0]\ : SLE
      port map(D => \k[0]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_5_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_5[0]_net_1\);
    
    \un1_clk_inv_i_i_a2_i_o2[0]\ : CFG2
      generic map(INIT => x"7")

      port map(A => pulse_meash_0_new_ready, B => 
        \state[6]_net_1\, Y => N_311);
    
    \state_ns_i_a3_0_15[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => un1_i_cry_17_S, B => un1_i_cry_18_S, C => 
        un1_i_cry_19_S, D => un1_i_cry_20_S, Y => 
        \state_ns_i_a3_0_15[3]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_am[3]\ : CFG4
      generic map(INIT => x"C0AF")

      port map(A => \buff_5[3]_net_1\, B => \buff_4[3]_net_1\, C
         => \i[2]_net_1\, D => 
        \data_out_1_6_i_m2_i_m2_am_1_1[3]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_am[3]_net_1\);
    
    \buff_7[0]\ : SLE
      port map(D => \k[0]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_7_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_7[0]_net_1\);
    
    un1_i_cry_7 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[7]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_6\, S => un1_i_cry_7_S, 
        Y => OPEN, FCO => \un1_i_cry_7\);
    
    \un1_time1_i_m2[6]\ : CFG3
      generic map(INIT => x"2E")

      port map(A => pulse_meash_0_time(6), B => \state[4]_net_1\, 
        C => \mult1_temp_b_27[3]\, Y => \un1_time1_i_m2[6]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un159_sum_1_SUM_RNITEEL1[1]\ : 
        CFG4
      generic map(INIT => x"5177")

      port map(A => \mult1_un159_sum_1_SUM[2]\, B => 
        mult1_un159_sum_1_CO3_1_RNIFEB01, C => \valu[10]_net_1\, 
        D => \mult1_un159_sum_1_SUM[1]\, Y => un1_N_5);
    
    un1_i_cry_4 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[4]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_3\, S => un1_i_cry_4_S, 
        Y => OPEN, FCO => \un1_i_cry_4\);
    
    \valu_RNIUPD24[4]\ : CFG4
      generic map(INIT => x"C7C1")

      port map(A => \valu[4]_net_1\, B => \valu[5]_net_1\, C => 
        un1_N_17_0, D => un1_i4_mux_1, Y => un1_i5_mux_1);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_CO3_RNO_1\ : CFG4
      generic map(INIT => x"FEBF")

      port map(A => un1_N_11_i_2_i, B => \mult1_temp_b_30[3]\, C
         => \valu[4]_net_1\, D => 
        \mult1_un194_sum_1_SUM_2_RNIENPP4[4]\, Y => 
        mult1_un215_sum_1_CO3_RNO_1);
    
    \k[2]\ : SLE
      port map(D => \un24_k_v[1]_net_1\, CLK => FCCC_0_GL0, EN
         => \k_1_sqmuxa_i_i_a2\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \k[2]_net_1\);
    
    \buff_8[2]\ : SLE
      port map(D => \k[2]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_8_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_8[2]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un222_sum_1_CO3_1_0_RNO\ : CFG4
      generic map(INIT => x"EB14")

      port map(A => \valu[3]_net_1\, B => 
        mult1_un222_sum_1_CO3_1_0_RNO_1, C => 
        \mult1_un208_sum_1_SUM_0_i[4]\, D => 
        \mult1_un208_sum_1_SUM[1]\, Y => 
        mult1_un222_sum_1_CO3_1_0_RNO);
    
    \valu[9]\ : SLE
      port map(D => \un1_time1_i_m2[9]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[9]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_CO3_RNO_4\ : CFG4
      generic map(INIT => x"4290")

      port map(A => \valu[3]_net_1\, B => \valu[4]_net_1\, C => 
        \mult1_un201_sum_1_SUM[1]\, D => d_m6_0_1, Y => 
        mult1_un215_sum_1_CO3_RNO_4);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_ANC3_d_2_s\ : CFG3
      generic map(INIT => x"FD")

      port map(A => \mult1_un187_sum_1_SUM[2]\, B => 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, C => 
        mult1_un194_sum_1_ANC3_d_2_out_tz, Y => 
        mult1_un194_sum_1_ANC3_d_2_out);
    
    \state_ns_i_0_0_a2_RNIPDTD[5]\ : CFG4
      generic map(INIT => x"CFEF")

      port map(A => \state[2]_net_1\, B => \state[4]_net_1\, C
         => N_311, D => N_721, Y => N_14_i_0);
    
    k_1_sqmuxa_i_i_a2 : CFG2
      generic map(INIT => x"8")

      port map(A => FCCC_0_LOCK, B => \state[5]_net_1\, Y => 
        \k_1_sqmuxa_i_i_a2\);
    
    \un1_k_if_generate_plus.mult1_un222_sum_1_CO3_1\ : CFG4
      generic map(INIT => x"80F0")

      port map(A => mult1_un222_sum_1_CO3_0_0, B => 
        \mult1_un215_sum_1_SUM[2]\, C => 
        mult1_un222_sum_1_CO3_1_0, D => \mult1_temp_b_1[3]\, Y
         => mult1_un222_sum_1_CO3);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_CO2_0_tz\ : CFG4
      generic map(INIT => x"FBF2")

      port map(A => \valu[5]_net_1\, B => \valu[6]_net_1\, C => 
        \mult1_un187_sum_1_SUM[1]\, D => 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, Y => 
        mult1_un194_sum_1_CO2_0_tz);
    
    \i_cry[17]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[17]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[16]_net_1\, S => \i_s[17]\, 
        Y => OPEN, FCO => \i_cry[17]_net_1\);
    
    \state_RNO[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_721, B => \state[2]_net_1\, Y => N_450_i_0);
    
    \i_lm_0[18]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[18]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[18]\);
    
    \valu[4]\ : SLE
      port map(D => \un1_time1_i_m2[4]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[4]_net_1\);
    
    \state_ns_i_i_a2[3]\ : CFG3
      generic map(INIT => x"80")

      port map(A => un14_clklto3, B => N_333, C => 
        \state[4]_net_1\, Y => \state_ns_i_i_a2[3]_net_1\);
    
    un1_rst_n_inv_2_0_i : CFG4
      generic map(INIT => x"8A0A")

      port map(A => FCCC_0_LOCK, B => \state[4]_net_1\, C => 
        N_311, D => \un1_rst_n_inv_2_0_i_a2_0\, Y => 
        \un1_rst_n_inv_2_0_i\);
    
    \i[9]\ : SLE
      port map(D => \i_lm[9]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[9]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un208_sum_1_SUM[1]\ : CFG4
      generic map(INIT => x"6996")

      port map(A => \valu[4]_net_1\, B => \valu[3]_net_1\, C => 
        mult1_un201_sum_1_CO3, D => \mult1_un201_sum_1_SUM_2[4]\, 
        Y => \mult1_un208_sum_1_SUM[1]\);
    
    un1_i_cry_8 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[8]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_7\, S => un1_i_cry_8_S, 
        Y => OPEN, FCO => \un1_i_cry_8\);
    
    \valu[5]\ : SLE
      port map(D => \un1_time1_i_m2[5]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[5]_net_1\);
    
    \buff_8[4]\ : SLE
      port map(D => \k[5]\, CLK => FCCC_0_GL0, EN => 
        buff_8_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_8[5]\);
    
    \un1_time1_i_m2[13]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \state[4]_net_1\, B => pulse_meash_0_time(13), 
        Y => N_126);
    
    un1_state_0_i_a3_i : CFG2
      generic map(INIT => x"E")

      port map(A => \state[1]_net_1\, B => \state[0]_net_1\, Y
         => \un1_state_0_i_a3_i\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \buff_2[2]\ : SLE
      port map(D => \k[2]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_2_1_sqmuxa_1, ALn => VCC_net_1, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \buff_2[2]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_SUM[1]\ : CFG3
      generic map(INIT => x"69")

      port map(A => \mult1_un201_sum_1_SUM_0[1]\, B => 
        \mult1_un194_sum_1_SUM_2[4]\, C => un1_N_8_2, Y => 
        \mult1_un201_sum_1_SUM[1]\);
    
    un1_i_s_1_106 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[0]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y => OPEN, 
        FCO => un1_i_s_1_106_FCO);
    
    \valu[0]\ : SLE
      port map(D => \un1_time1[0]_net_1\, CLK => FCCC_0_GL0, EN
         => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[0]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3\ : CFG4
      generic map(INIT => x"FF90")

      port map(A => un1_N_8_2, B => \mult1_un194_sum_1_SUM_2[4]\, 
        C => mult1_un201_sum_1_CO3_0_tz, D => 
        mult1_un201_sum_1_ANC3, Y => mult1_un201_sum_1_CO3);
    
    un1_i_cry_12 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[12]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_11\, S => 
        un1_i_cry_12_S, Y => OPEN, FCO => \un1_i_cry_12\);
    
    \buff_8[0]\ : SLE
      port map(D => \k[0]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_8_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_8[0]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_0\ : CFG4
      generic map(INIT => x"FFFE")

      port map(A => \mult1_un194_sum_1_SUM[2]\, B => 
        mult1_un201_sum_1_CO3_0_tz_a0, C => 
        mult1_un201_sum_1_CO3_0_tz_0_2, D => 
        mult1_un201_sum_1_CO3_0_tz_0_1, Y => 
        mult1_un201_sum_1_CO3_0_tz);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_ANC3_0_RNO\ : CFG4
      generic map(INIT => x"0010")

      port map(A => \mult1_un201_sum_1_SUM_0[1]\, B => 
        \valu[6]_net_1\, C => \mult1_un180_sum_1_SUM_RNI77563[3]\, 
        D => \mult1_un187_sum_1_SUM[1]\, Y => un1_N_7_mux);
    
    \state_ns_0_0[0]\ : CFG4
      generic map(INIT => x"ABAA")

      port map(A => \state[0]_net_1\, B => \state[2]_net_1\, C
         => \state[4]_net_1\, D => \state_ns_0_0_a2_3[0]_net_1\, 
        Y => \state_ns[0]\);
    
    \un1_k_if_generate_plus.mult1_un208_sum_1_CO1_1_RNO_1\ : CFG3
      generic map(INIT => x"48")

      port map(A => un1_N_8_2, B => mult1_un201_sum_1_ANC3, C => 
        \mult1_un194_sum_1_SUM_2[4]\, Y => d_N_7_mux);
    
    \un1_time1_i_m2[4]\ : CFG4
      generic map(INIT => x"E44E")

      port map(A => \state[4]_net_1\, B => pulse_meash_0_time(4), 
        C => un1_N_8_2, D => \mult1_un194_sum_1_SUM_2[4]\, Y => 
        \un1_time1_i_m2[4]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un159_sum_1_CO3_1_RNIFEB01\ : 
        CFG3
      generic map(INIT => x"96")

      port map(A => mult1_un159_sum_1_CO3, B => 
        \mult1_un159_sum_1_SUM_2_1[4]\, C => \mult1_temp_b_23[3]\, 
        Y => mult1_un159_sum_1_CO3_1_RNIFEB01);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_ANC3_tz\ : CFG4
      generic map(INIT => x"70F0")

      port map(A => un1_m1_e_4_1, B => 
        mult1_un152_sum_1_ANC3_0_a0_1_0, C => 
        mult1_un152_sum_1_ANC3_tz_0, D => un1_m1_e_4_0, Y => 
        mult1_un152_sum_1_CO3_tz);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_ANC3_0_RNO_1\ : 
        CFG3
      generic map(INIT => x"69")

      port map(A => un1_i2_mux_1, B => \mult1_un187_sum_1_SUM[1]\, 
        C => \mult1_un180_sum_1_SUM[3]\, Y => d_N_16);
    
    \state_ns_i_0_0_a2_14[5]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \i[13]_net_1\, B => \i[12]_net_1\, C => 
        \i[9]_net_1\, D => \i[8]_net_1\, Y => 
        \state_ns_i_0_0_a2_14[5]_net_1\);
    
    un1_i_cry_5 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[5]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_4\, S => un1_i_cry_5_S, 
        Y => OPEN, FCO => \un1_i_cry_5\);
    
    un1_i_cry_10 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[10]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_9\, S => un1_i_cry_10_S, 
        Y => OPEN, FCO => \un1_i_cry_10\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_0_RNO_0\ : 
        CFG3
      generic map(INIT => x"74")

      port map(A => un1_N_5_1, B => \valu[6]_net_1\, C => 
        un1_N_4_1, Y => un1_m15_1_0);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_ANC3_d_2_s_tz\ : 
        CFG4
      generic map(INIT => x"040D")

      port map(A => \valu[5]_net_1\, B => \valu[6]_net_1\, C => 
        \mult1_un187_sum_1_SUM[1]\, D => 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, Y => 
        mult1_un194_sum_1_ANC3_d_2_out_tz);
    
    \un1_k_if_generate_plus.mult1_un180_sum_1_SUM_RNI77563[3]\ : 
        CFG2
      generic map(INIT => x"6")

      port map(A => un1_i2_mux_1, B => \mult1_un180_sum_1_SUM[3]\, 
        Y => \mult1_un180_sum_1_SUM_RNI77563[3]\);
    
    \un1_k_if_generate_plus.mult1_un180_sum_1_SUM[1]\ : CFG3
      generic map(INIT => x"69")

      port map(A => \valu[8]_net_1\, B => \valu[7]_net_1\, C => 
        mult1_un166_sum_1_CO2_RNIIT571, Y => 
        \mult1_un180_sum_1_SUM[1]\);
    
    \un1_k_if_generate_plus.mult1_un173_sum_1_CO2\ : CFG4
      generic map(INIT => x"FE88")

      port map(A => mult1_un173_sum_1_CO1_0, B => 
        \mult1_temp_b_25[3]\, C => \valu[8]_net_1\, D => 
        \mult1_un166_sum_1_SUM[1]\, Y => mult1_un173_sum_1_CO2);
    
    \i_s[25]\ : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[25]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[24]_net_1\, S => 
        \i_s[25]_net_1\, Y => OPEN, FCO => OPEN);
    
    un1_i_cry_6 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[6]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_5\, S => un1_i_cry_6_S, 
        Y => OPEN, FCO => \un1_i_cry_6\);
    
    \i_cry[11]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[11]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[10]_net_1\, S => \i_s[11]\, 
        Y => OPEN, FCO => \i_cry[11]_net_1\);
    
    \buff_4[2]\ : SLE
      port map(D => \k[2]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_4_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_4[2]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_am_1_1[0]\ : CFG4
      generic map(INIT => x"05F3")

      port map(A => \buff_1[0]_net_1\, B => \buff_0[0]_net_1\, C
         => \i[2]_net_1\, D => \i[0]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_am_1_1[0]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_SUM_2[4]\ : CFG3
      generic map(INIT => x"69")

      port map(A => \mult1_un201_sum_1_SUM_1[4]\, B => un1_N_8_2, 
        C => \mult1_un194_sum_1_SUM_2[4]\, Y => 
        \mult1_un201_sum_1_SUM_2[4]\);
    
    \i[25]\ : SLE
      port map(D => \i_lm[25]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[25]_net_1\);
    
    \valu[15]\ : SLE
      port map(D => \un1_time1_i_m2[15]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[15]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un222_sum_1_CO3_1_0_RNO_0\ : 
        CFG4
      generic map(INIT => x"4290")

      port map(A => \valu[2]_net_1\, B => \valu[3]_net_1\, C => 
        \mult1_un208_sum_1_SUM[1]\, D => \mult1_temp_b_31[3]\, Y
         => mult1_un222_sum_1_CO3_1_0_RNO_0);
    
    un1_i_cry_1 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[1]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => un1_i_s_1_106_FCO, S => 
        un1_i_cry_1_S, Y => OPEN, FCO => \un1_i_cry_1\);
    
    \k[3]\ : SLE
      port map(D => \SUM[3]\, CLK => FCCC_0_GL0, EN => 
        \k_1_sqmuxa_i_i_a2\, ALn => VCC_net_1, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \k[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_a0_1\ : 
        CFG4
      generic map(INIT => x"1A00")

      port map(A => \mult1_un194_sum_1_SUM_1[4]\, B => 
        mult1_un194_sum_1_CO3_0_tz, C => 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, D => 
        \mult1_un194_sum_1_SUM[1]\, Y => 
        mult1_un201_sum_1_CO3_0_tz_a0_1);
    
    \un1_k_if_generate_plus.mult1_un173_sum_1_CO2_RNIJ88Q\ : CFG4
      generic map(INIT => x"7887")

      port map(A => mult1_un180_sum_1_CO3_1_0, B => 
        mult1_un180_sum_1_CO3_1, C => mult1_un173_sum_1_CO2, D
         => \mult1_un180_sum_1_SUM_2_1[4]\, Y => 
        mult1_un173_sum_1_CO2_RNIJ88Q);
    
    \k[0]\ : SLE
      port map(D => \valu[0]_net_1\, CLK => FCCC_0_GL0, EN => 
        \k_1_sqmuxa_i_i_a2\, ALn => VCC_net_1, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \k[0]_net_1\);
    
    \buff_3[3]\ : SLE
      port map(D => \k[3]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_3_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_3[3]_net_1\);
    
    \i_cry[24]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[24]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[23]_net_1\, S => \i_s[24]\, 
        Y => OPEN, FCO => \i_cry[24]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un222_sum_1_CO3_1_0\ : CFG4
      generic map(INIT => x"00BF")

      port map(A => \valu[1]_net_1\, B => \valu[2]_net_1\, C => 
        mult1_un222_sum_1_CO3_1_0_RNO, D => 
        mult1_un222_sum_1_CO3_1_0_RNO_0, Y => 
        mult1_un222_sum_1_CO3_1_0);
    
    \i_lm_0[19]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[19]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[19]\);
    
    \i[15]\ : SLE
      port map(D => \i_lm[15]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[15]_net_1\);
    
    \i_lm_0[3]\ : CFG4
      generic map(INIT => x"CAC0")

      port map(A => \i_s[3]\, B => \i_8_iv_i_i_o2[3]_net_1\, C
         => \state[4]_net_1\, D => N_311, Y => \i_lm[3]\);
    
    \i_lm_0[16]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[16]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[16]\);
    
    wen : SLE
      port map(D => \un1_state_0_i_a3_i\, CLK => FCCC_0_GL0, EN
         => N_466_i_0, ALn => FCCC_0_LOCK, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \time_sender_0_wen\);
    
    \un1_k_if_generate_plus.mult1_un180_sum_1_SUM[3]\ : CFG3
      generic map(INIT => x"96")

      port map(A => \mult1_un173_sum_1_SUM[2]\, B => 
        mult1_un166_sum_1_CO2_RNIIT571, C => 
        mult1_un180_sum_1_CO2, Y => \mult1_un180_sum_1_SUM[3]\);
    
    \un1_k_if_generate_plus.mult1_un166_sum_1_SUM_RNIMHE2[1]\ : 
        CFG4
      generic map(INIT => x"0BD0")

      port map(A => \valu[8]_net_1\, B => \valu[9]_net_1\, C => 
        \mult1_un166_sum_1_SUM[2]\, D => 
        \mult1_un166_sum_1_SUM[1]\, Y => un1_m8_1_0);
    
    \un1_k_if_generate_plus.mult1_un208_sum_1_CO1_1\ : CFG4
      generic map(INIT => x"487B")

      port map(A => \mult1_un201_sum_1_SUM_1[4]\, B => 
        un1_i4_mux_0, C => mult1_un201_sum_1_CO3_0_tz, D => 
        d_i4_mux_2, Y => mult1_un208_sum_1_CO1);
    
    \i_lm_0[20]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[20]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[20]\);
    
    \data_out_1_6_i_m2_i_m2_bm[4]\ : CFG4
      generic map(INIT => x"C0AF")

      port map(A => \buff_7[5]\, B => \buff_6[5]\, C => 
        \i[2]_net_1\, D => 
        \data_out_1_6_i_m2_i_m2_bm_1_1[4]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_bm[4]_net_1\);
    
    buff_6_1_sqmuxa_0_a2_0_a2 : CFG4
      generic map(INIT => x"2000")

      port map(A => \i[2]_net_1\, B => \i[0]_net_1\, C => N_625, 
        D => N_621, Y => buff_6_1_sqmuxa);
    
    wen_RNO : CFG3
      generic map(INIT => x"FE")

      port map(A => \state[0]_net_1\, B => \state[1]_net_1\, C
         => \state[2]_net_1\, Y => N_466_i_0);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_SUM_1[4]\ : CFG3
      generic map(INIT => x"96")

      port map(A => \mult1_un187_sum_1_SUM[2]\, B => 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, C => 
        mult1_un194_sum_1_CO2, Y => \mult1_un201_sum_1_SUM_1[4]\);
    
    \state_ns_0_0_a2_3[0]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => pulse_meash_0_new_ready, B => 
        \state[5]_net_1\, C => \state[3]_net_1\, D => 
        \state[1]_net_1\, Y => \state_ns_0_0_a2_3[0]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_am_1_1[2]\ : CFG4
      generic map(INIT => x"05F3")

      port map(A => \buff_1[2]_net_1\, B => \buff_0[2]_net_1\, C
         => \i[2]_net_1\, D => \i[0]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_am_1_1[2]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un1_sum_1.SUM[3]\ : CFG4
      generic map(INIT => x"9669")

      port map(A => \SUM_3[3]\, B => mult1_un222_sum_1_CO3, C => 
        \mult1_un215_sum_1_SUM[1]\, D => 
        \mult1_un222_sum_1_SUM_0_0[4]\, Y => \SUM[3]\);
    
    \i_cry[7]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[7]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[6]_net_1\, S => \i_s[7]\, Y
         => OPEN, FCO => \i_cry[7]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_CO1_0_RNI5PP54\ : 
        CFG4
      generic map(INIT => x"EC20")

      port map(A => mult1_un194_sum_1_CO1_0, B => 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, C => 
        \mult1_un187_sum_1_SUM[2]\, D => 
        mult1_un194_sum_1_CO3_0_tz, Y => un1_m3_i_o2_0);
    
    \un1_k_if_generate_plus.mult1_un159_sum_1_SUM_2_1[4]\ : CFG4
      generic map(INIT => x"1E78")

      port map(A => \mult1_temp_b_22[3]\, B => 
        mult1_un152_sum_1_CO1, C => 
        \mult1_un159_sum_1_SUM_2_0[4]\, D => 
        \mult1_un145_sum_1_SUM[1]\, Y => 
        \mult1_un159_sum_1_SUM_2_1[4]\);
    
    \i[22]\ : SLE
      port map(D => \i_lm[22]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[22]_net_1\);
    
    \un24_k_v[1]\ : CFG4
      generic map(INIT => x"A956")

      port map(A => \valu[2]_net_1\, B => \valu[1]_net_1\, C => 
        \mult1_un222_sum_1_SUM[4]\, D => \mult1_temp_b_1[3]\, Y
         => \un24_k_v[1]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un159_sum_1_CO3_1_RNO\ : CFG3
      generic map(INIT => x"42")

      port map(A => \valu[11]_net_1\, B => 
        \mult1_un152_sum_1_SUM[2]\, C => \valu[10]_net_1\, Y => 
        un1_m5_i_0);
    
    \i_cry[12]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[12]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[11]_net_1\, S => \i_s[12]\, 
        Y => OPEN, FCO => \i_cry[12]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_SUM_1[4]\ : CFG4
      generic map(INIT => x"3369")

      port map(A => \mult1_un180_sum_1_SUM[1]\, B => 
        \mult1_un180_sum_1_SUM[2]\, C => \mult1_temp_b_27[3]\, D
         => un1_i1_mux, Y => \mult1_un194_sum_1_SUM_1[4]\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_SUM[2]\ : CFG4
      generic map(INIT => x"4B2D")

      port map(A => \valu[5]_net_1\, B => \valu[6]_net_1\, C => 
        \mult1_un187_sum_1_SUM[1]\, D => 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, Y => 
        \mult1_un194_sum_1_SUM[2]\);
    
    \i_lm_0[6]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[6]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[6]\);
    
    \i_cry[18]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[18]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[17]_net_1\, S => \i_s[18]\, 
        Y => OPEN, FCO => \i_cry[18]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un159_sum_1_CO2\ : CFG4
      generic map(INIT => x"F2B0")

      port map(A => \valu[10]_net_1\, B => \valu[11]_net_1\, C
         => \mult1_un152_sum_1_SUM[1]\, D => \mult1_temp_b_23[3]\, 
        Y => mult1_un159_sum_1_CO2);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_CO1_a5\ : CFG2
      generic map(INIT => x"4")

      port map(A => \valu[12]_net_1\, B => \valu[11]_net_1\, Y
         => mult1_un152_sum_1_CO3_1_a2_0);
    
    \state_ns_i_0_0_a2_13[5]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \i[15]_net_1\, B => \i[14]_net_1\, C => 
        \i[7]_net_1\, D => \i[6]_net_1\, Y => 
        \state_ns_i_0_0_a2_13[5]_net_1\);
    
    \i[2]\ : SLE
      port map(D => \i_lm[2]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[2]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_SUM[4]\ : CFG4
      generic map(INIT => x"5AE1")

      port map(A => mult1_un201_sum_1_ANC3, B => 
        mult1_un201_sum_1_CO3_0_tz, C => 
        \mult1_un201_sum_1_SUM_1[4]\, D => \mult1_temp_b_29[3]\, 
        Y => \mult1_temp_b_30[3]\);
    
    \i[12]\ : SLE
      port map(D => \i_lm[12]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[12]_net_1\);
    
    un1_i_cry_15 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[15]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_14\, S => 
        un1_i_cry_15_S, Y => OPEN, FCO => \un1_i_cry_15\);
    
    \buff_6[4]\ : SLE
      port map(D => \k[5]\, CLK => FCCC_0_GL0, EN => 
        buff_6_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_6[5]\);
    
    \state_ns_i_0_0_a2_12[5]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \i[25]_net_1\, B => \i[24]_net_1\, C => 
        \i[19]_net_1\, D => \i[18]_net_1\, Y => 
        \state_ns_i_0_0_a2_12[5]_net_1\);
    
    \valu[8]\ : SLE
      port map(D => \un1_time1_i_m2[8]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[8]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_ANC3_c_0_RNIHVTR3\ : 
        CFG4
      generic map(INIT => x"B087")

      port map(A => mult1_un194_sum_1_CO3_0_tz, B => 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, C => \valu[6]_net_1\, 
        D => un1_N_3_mux_0, Y => un1_N_6_4);
    
    \data_out_1_i_m2_i_m2[1]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => \i[3]_net_1\, B => N_401, C => 
        \buff_8[1]_net_1\, Y => N_409);
    
    \un1_k_if_generate_plus.mult1_un180_sum_1_SUM_2_1[4]\ : CFG3
      generic map(INIT => x"69")

      port map(A => mult1_un166_sum_1_CO2_RNIIT571, B => 
        \mult1_un166_sum_1_SUM[2]\, C => \mult1_temp_b_25[3]\, Y
         => \mult1_un180_sum_1_SUM_2_1[4]\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_CO2\ : CFG4
      generic map(INIT => x"B0F2")

      port map(A => \valu[5]_net_1\, B => \valu[6]_net_1\, C => 
        \mult1_un187_sum_1_SUM[1]\, D => 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, Y => 
        mult1_un194_sum_1_CO2);
    
    \i_lm_0[1]\ : CFG4
      generic map(INIT => x"3A3F")

      port map(A => \i_s[1]\, B => N_428, C => \state[4]_net_1\, 
        D => N_311, Y => \i_lm[1]\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_a3\ : CFG4
      generic map(INIT => x"4000")

      port map(A => \mult1_un180_sum_1_SUM_RNI77563[3]\, B => 
        \mult1_un187_sum_1_SUM[2]\, C => 
        mult1_un194_sum_1_CO2_0_tz, D => 
        mult1_un201_sum_1_CO3_0_tz_a3_0, Y => 
        mult1_un201_sum_1_CO3_0_tz_a3);
    
    \buff_4[0]\ : SLE
      port map(D => \k[0]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_4_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_4[0]_net_1\);
    
    \un1_time1[0]\ : CFG3
      generic map(INIT => x"72")

      port map(A => \state[4]_net_1\, B => 
        \mult1_un222_sum_1_SUM[4]\, C => pulse_meash_0_time(0), Y
         => \un1_time1[0]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un173_sum_1_SUM[2]\ : CFG4
      generic map(INIT => x"8976")

      port map(A => mult1_un173_sum_1_CO1_0, B => 
        \mult1_temp_b_25[3]\, C => \valu[8]_net_1\, D => 
        \mult1_un166_sum_1_SUM[1]\, Y => 
        \mult1_un173_sum_1_SUM[2]\);
    
    \data_out_1_6_i_m2_i_m2_bm_1_1[0]\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \buff_6[0]_net_1\, B => \buff_2[0]_net_1\, C
         => \i[2]_net_1\, D => \i[0]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_bm_1_1[0]_net_1\);
    
    \state_ns_i_0_0_a2_20[5]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \state_ns_i_0_0_a2_15[5]_net_1\, B => 
        \state_ns_i_0_0_a2_14[5]_net_1\, C => 
        \state_ns_i_0_0_a2_13[5]_net_1\, D => 
        \state_ns_i_0_0_a2_12[5]_net_1\, Y => 
        \state_ns_i_0_0_a2_20[5]_net_1\);
    
    \i_lm_0[12]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[12]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[12]\);
    
    \buff_1[4]\ : SLE
      port map(D => \un1_angle[5]\, CLK => FCCC_0_GL0, EN => 
        \un1_rst_n_inv_2_0_i\, ALn => VCC_net_1, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \buff_1[5]\);
    
    \i[20]\ : SLE
      port map(D => \i_lm[20]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[20]_net_1\);
    
    \data_out[3]\ : SLE
      port map(D => N_411, CLK => FCCC_0_GL0, EN => 
        \data_out_0_sqmuxa_i_i_a2\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => time_sender_0_data_out_3);
    
    \un1_time1_i_m2[3]\ : CFG4
      generic map(INIT => x"E44E")

      port map(A => \state[4]_net_1\, B => pulse_meash_0_time(3), 
        C => mult1_un201_sum_1_CO3, D => 
        \mult1_un201_sum_1_SUM_2[4]\, Y => N_120);
    
    un1_rst_n_inv_0_i_a2_0 : CFG2
      generic map(INIT => x"8")

      port map(A => \state[4]_net_1\, B => FCCC_0_LOCK, Y => 
        N_621);
    
    \un1_k_if_generate_plus.mult1_un180_sum_1_SUM_RNID3O31[2]\ : 
        CFG4
      generic map(INIT => x"4484")

      port map(A => \mult1_un180_sum_1_SUM[2]\, B => un1_N_3_mux, 
        C => \mult1_temp_b_27[3]\, D => 
        \mult1_un180_sum_1_SUM[3]\, Y => un1_N_5_1);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_ANC3_0_RNO_2\ : 
        CFG4
      generic map(INIT => x"5E58")

      port map(A => \valu[5]_net_1\, B => \valu[4]_net_1\, C => 
        \mult1_un187_sum_1_SUM[1]\, D => 
        \mult1_un194_sum_1_SUM_1[4]\, Y => d_i6_mux_0);
    
    \data_out_1_i_m2_i_m2[4]\ : CFG3
      generic map(INIT => x"E4")

      port map(A => \i[3]_net_1\, B => N_405, C => \buff_8[5]\, Y
         => N_413);
    
    un1_i_cry_9 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[9]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_8\, S => un1_i_cry_9_S, 
        Y => OPEN, FCO => \un1_i_cry_9\);
    
    \buff_7[1]\ : SLE
      port map(D => \k[1]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_7_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_7[1]_net_1\);
    
    \state[3]\ : SLE
      port map(D => \state_ns_i_i[3]_net_1\, CLK => FCCC_0_GL0, 
        EN => VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \state[3]_net_1\);
    
    \i_lm_0[11]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[11]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[11]\);
    
    \un1_time1_i_m2[9]\ : CFG3
      generic map(INIT => x"2E")

      port map(A => pulse_meash_0_time(9), B => \state[4]_net_1\, 
        C => \mult1_temp_b_24[3]\, Y => \un1_time1_i_m2[9]_net_1\);
    
    \valu[11]\ : SLE
      port map(D => \un1_time1_i_m2[11]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[11]_net_1\);
    
    un1_i_cry_18 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[18]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_17\, S => 
        un1_i_cry_18_S, Y => OPEN, FCO => \un1_i_cry_18\);
    
    \i[10]\ : SLE
      port map(D => \i_lm[10]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[10]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_ANC3_0_a0_1_0\ : 
        CFG4
      generic map(INIT => x"0609")

      port map(A => \valu[12]_net_1\, B => \valu[13]_net_1\, C
         => mult1_un152_sum_1_CO1_1_2, D => \mult1_temp_b_21[3]\, 
        Y => mult1_un152_sum_1_ANC3_0_a0_1_0);
    
    un1_i_cry_14 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[14]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_13\, S => 
        un1_i_cry_14_S, Y => OPEN, FCO => \un1_i_cry_14\);
    
    \i[6]\ : SLE
      port map(D => \i_lm[6]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[6]_net_1\);
    
    \valu_RNI1IT1[4]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \valu[5]_net_1\, B => \valu[4]_net_1\, Y => 
        un1_N_3_mux);
    
    \i_cry[1]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[1]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[0]_net_1\, S => \i_s[1]\, Y
         => OPEN, FCO => \i_cry[1]_net_1\);
    
    \un1_angle[0]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => locator_control_0_angle1(0), B => 
        \k[0]_net_1\, C => \state[4]_net_1\, Y => 
        \un1_angle[0]_net_1\);
    
    \i_cry[2]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[2]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[1]_net_1\, S => \i_s[2]\, Y
         => OPEN, FCO => \i_cry[2]_net_1\);
    
    \buff_7[2]\ : SLE
      port map(D => \k[2]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_7_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_7[2]_net_1\);
    
    \i[4]\ : SLE
      port map(D => \i_lm[4]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[4]_net_1\);
    
    \i_cry[10]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[10]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[9]_net_1\, S => \i_s[10]\, 
        Y => OPEN, FCO => \i_cry[10]_net_1\);
    
    un1_i_cry_17 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[17]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_16\, S => 
        un1_i_cry_17_S, Y => OPEN, FCO => \un1_i_cry_17\);
    
    \i_cry[6]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[6]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[5]_net_1\, S => \i_s[6]\, Y
         => OPEN, FCO => \i_cry[6]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_bm[1]\ : CFG4
      generic map(INIT => x"C0AF")

      port map(A => \buff_7[1]_net_1\, B => \buff_3[1]_net_1\, C
         => \i[0]_net_1\, D => 
        \data_out_1_6_i_m2_i_m2_bm_1_1[1]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_bm[1]_net_1\);
    
    \buff_3[4]\ : SLE
      port map(D => \k[5]\, CLK => FCCC_0_GL0, EN => 
        buff_3_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_3[5]\);
    
    \data_out_1_6_i_m2_i_m2_bm_1_1[2]\ : CFG4
      generic map(INIT => x"0F53")

      port map(A => \buff_6[2]_net_1\, B => \buff_2[2]_net_1\, C
         => \i[2]_net_1\, D => \i[0]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_bm_1_1[2]_net_1\);
    
    un1_i_cry_16 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[16]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_15\, S => 
        un1_i_cry_16_S, Y => OPEN, FCO => \un1_i_cry_16\);
    
    un1_i_cry_22 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[22]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_21\, S => 
        un1_i_cry_22_S, Y => OPEN, FCO => \un1_i_cry_22\);
    
    \state_ns_i_i_a2[1]\ : CFG3
      generic map(INIT => x"08")

      port map(A => \state_ns_i_a3_0[3]_net_1\, B => 
        \state[4]_net_1\, C => N_333, Y => 
        \state_ns_i_i_a2[1]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_CO3_0_tz_0\ : CFG4
      generic map(INIT => x"B133")

      port map(A => mult1_un194_sum_1_CO3_0_tz_0_1, B => 
        mult1_un194_sum_1_CO3_0_tz_0_RNO, C => \valu[5]_net_1\, D
         => \mult1_un180_sum_1_SUM[1]\, Y => 
        mult1_un194_sum_1_CO3_0_tz);
    
    \i_lm_0[8]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[8]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[8]\);
    
    \un1_time1_i_m2[5]\ : CFG4
      generic map(INIT => x"66F0")

      port map(A => \mult1_un180_sum_1_SUM[3]\, B => un1_i2_mux_1, 
        C => pulse_meash_0_time(5), D => \state[4]_net_1\, Y => 
        \un1_time1_i_m2[5]_net_1\);
    
    \i[19]\ : SLE
      port map(D => \i_lm[19]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[19]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un187_sum_1_SUM[2]\ : CFG4
      generic map(INIT => x"24DB")

      port map(A => \valu[6]_net_1\, B => \valu[7]_net_1\, C => 
        \mult1_temp_b_27[3]\, D => \mult1_un180_sum_1_SUM[1]\, Y
         => \mult1_un187_sum_1_SUM[2]\);
    
    \data_out[4]\ : SLE
      port map(D => N_413, CLK => FCCC_0_GL0, EN => 
        \data_out_0_sqmuxa_i_i_a2\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => time_sender_0_data_out_5);
    
    \buff_1[3]\ : SLE
      port map(D => \un1_angle[3]_net_1\, CLK => FCCC_0_GL0, EN
         => \un1_rst_n_inv_2_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \buff_1[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_SUM[1]\ : CFG3
      generic map(INIT => x"96")

      port map(A => \valu[12]_net_1\, B => \mult1_temp_b_22[3]\, 
        C => \valu[11]_net_1\, Y => \mult1_un152_sum_1_SUM[1]\);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_CO1_1\ : CFG3
      generic map(INIT => x"DF")

      port map(A => un1_m1_e_4_1, B => mult1_un152_sum_1_CO1_1_2, 
        C => un1_m1_e_4_0, Y => mult1_un152_sum_1_CO1);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_SUM[2]\ : CFG3
      generic map(INIT => x"96")

      port map(A => \mult1_un145_sum_1_SUM[1]\, B => 
        \mult1_temp_b_22[3]\, C => mult1_un152_sum_1_CO1, Y => 
        \mult1_un152_sum_1_SUM[2]\);
    
    \un1_k_if_generate_plus.mult1_un208_sum_1_SUM[4]\ : CFG4
      generic map(INIT => x"D287")

      port map(A => \mult1_un208_sum_1_SUM_RNO[4]\, B => 
        \mult1_un201_sum_1_SUM[2]\, C => 
        \mult1_un208_sum_1_SUM_0_i[4]\, D => 
        mult1_un201_sum_1_CO3_0_tz_0_RNIPVHK1, Y => 
        \mult1_temp_b_31[3]\);
    
    \un1_k_if_generate_plus.mult1_un208_sum_1_SUM_RNO_2[4]\ : 
        CFG3
      generic map(INIT => x"70")

      port map(A => un1_N_3_mux_0, B => mult1_un194_sum_1_CO1, C
         => un1_m2_0_a2_0, Y => un1_N_10_mux);
    
    \buff_2[1]\ : SLE
      port map(D => \k[1]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_2_1_sqmuxa_1, ALn => VCC_net_1, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \buff_2[1]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un222_sum_1_CO3_0_0\ : CFG4
      generic map(INIT => x"99F6")

      port map(A => \valu[3]_net_1\, B => \mult1_temp_b_31[3]\, C
         => \valu[1]_net_1\, D => \valu[2]_net_1\, Y => 
        mult1_un222_sum_1_CO3_0_0);
    
    \buff_7[3]\ : SLE
      port map(D => \k[3]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_7_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_7[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un166_sum_1_SUM[1]\ : CFG3
      generic map(INIT => x"96")

      port map(A => \valu[10]_net_1\, B => \mult1_temp_b_24[3]\, 
        C => \valu[9]_net_1\, Y => \mult1_un166_sum_1_SUM[1]\);
    
    un1_i_cry_20 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[20]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_19\, S => 
        un1_i_cry_20_S, Y => OPEN, FCO => \un1_i_cry_20\);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_SUM[2]\ : CFG4
      generic map(INIT => x"2D4B")

      port map(A => \valu[2]_net_1\, B => \valu[3]_net_1\, C => 
        \mult1_un208_sum_1_SUM[1]\, D => \mult1_temp_b_31[3]\, Y
         => \mult1_un215_sum_1_SUM[2]\);
    
    \un1_k_if_generate_plus.mult1_un180_sum_1_CO3_3\ : CFG4
      generic map(INIT => x"FFB0")

      port map(A => \valu[7]_net_1\, B => \valu[8]_net_1\, C => 
        mult1_un166_sum_1_CO2_RNIIT571, D => 
        \mult1_un173_sum_1_SUM[2]\, Y => mult1_un180_sum_1_CO3_1);
    
    data_out_0_sqmuxa_i_i_a2 : CFG3
      generic map(INIT => x"80")

      port map(A => COREUART_0_TXRDY, B => FCCC_0_LOCK, C => 
        \state[3]_net_1\, Y => \data_out_0_sqmuxa_i_i_a2\);
    
    \buff_2[3]\ : SLE
      port map(D => \k[3]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_2_1_sqmuxa_1, ALn => VCC_net_1, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \buff_2[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un208_sum_1_SUM_RNO_3[4]\ : 
        CFG4
      generic map(INIT => x"15BF")

      port map(A => \mult1_un180_sum_1_SUM_RNI77563[3]\, B => 
        mult1_un194_sum_1_CO2_0_tz, C => 
        \mult1_un187_sum_1_SUM[2]\, D => 
        mult1_un194_sum_1_CO3_0_tz, Y => un1_m2_0_a2_0);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_CO1_a0\ : CFG4
      generic map(INIT => x"0040")

      port map(A => \valu[15]_net_1\, B => \valu[14]_net_1\, C
         => \valu[13]_net_1\, D => \valu[12]_net_1\, Y => 
        mult1_un152_sum_1_CO1_a0);
    
    \valu[14]\ : SLE
      port map(D => \un1_time1_i_m2[14]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[14]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_ANC3_0\ : CFG4
      generic map(INIT => x"9F90")

      port map(A => \mult1_un194_sum_1_SUM_1[4]\, B => 
        mult1_un194_sum_1_CO3_0_tz, C => un1_N_7_mux, D => 
        mult1_un201_sum_1_ANC3_0_RNO_0, Y => 
        mult1_un201_sum_1_ANC3);
    
    \un1_k_if_generate_plus.mult1_un1_sum_1.ANC2_m3\ : CFG4
      generic map(INIT => x"969C")

      port map(A => \mult1_un215_sum_1_SUM[2]\, B => 
        \mult1_un222_sum_1_SUM_0_0[4]\, C => \valu[2]_net_1\, D
         => \mult1_un215_sum_1_SUM[1]\, Y => ANC2_m3);
    
    \buff_3[2]\ : SLE
      port map(D => \k[2]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_3_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_3[2]_net_1\);
    
    \buff_6[1]\ : SLE
      port map(D => \k[1]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_6_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_6[1]_net_1\);
    
    buff_2_1_sqmuxa_1_a2_0_a2_1 : CFG2
      generic map(INIT => x"2")

      port map(A => \i[1]_net_1\, B => \i[3]_net_1\, Y => N_625);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_CO3_0_tz_0_RNO\ : 
        CFG4
      generic map(INIT => x"4920")

      port map(A => \valu[6]_net_1\, B => \valu[7]_net_1\, C => 
        \mult1_temp_b_27[3]\, D => \mult1_un180_sum_1_SUM[1]\, Y
         => mult1_un194_sum_1_CO3_0_tz_0_RNO);
    
    \state_ns_a2_0_a2_0_a2[6]\ : CFG2
      generic map(INIT => x"8")

      port map(A => N_721, B => \state[2]_net_1\, Y => 
        \state_ns[6]\);
    
    \i[24]\ : SLE
      port map(D => \i_lm[24]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[24]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_bm[0]\ : CFG4
      generic map(INIT => x"C0AF")

      port map(A => \buff_7[0]_net_1\, B => \buff_3[0]_net_1\, C
         => \i[0]_net_1\, D => 
        \data_out_1_6_i_m2_i_m2_bm_1_1[0]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_bm[0]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_CO3_RNO_6\ : CFG4
      generic map(INIT => x"6900")

      port map(A => \mult1_un201_sum_1_SUM_2[4]\, B => 
        \valu[4]_net_1\, C => mult1_un201_sum_1_CO3, D => 
        \mult1_un201_sum_1_SUM[1]\, Y => un1_m7_1_0);
    
    un1_i_cry_2 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[2]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_1\, S => un1_i_cry_2_S, 
        Y => OPEN, FCO => \un1_i_cry_2\);
    
    \un1_time1_i_m2[7]\ : CFG3
      generic map(INIT => x"E2")

      port map(A => pulse_meash_0_time(7), B => \state[4]_net_1\, 
        C => mult1_un166_sum_1_CO2_RNIIT571, Y => 
        \un1_time1_i_m2[7]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_bm[2]\ : CFG4
      generic map(INIT => x"C0AF")

      port map(A => \buff_7[2]_net_1\, B => \buff_3[2]_net_1\, C
         => \i[0]_net_1\, D => 
        \data_out_1_6_i_m2_i_m2_bm_1_1[2]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_bm[2]_net_1\);
    
    un1_rst_n_inv_2_0_i_a2_0 : CFG3
      generic map(INIT => x"40")

      port map(A => \i[2]_net_1\, B => \i[0]_net_1\, C => N_622, 
        Y => \un1_rst_n_inv_2_0_i_a2_0\);
    
    \i_lm_0[7]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[7]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[7]\);
    
    \i_lm_0[13]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[13]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[13]\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_SUM[3]\ : CFG3
      generic map(INIT => x"96")

      port map(A => \mult1_un194_sum_1_SUM[2]\, B => un1_i5_mux_1, 
        C => \mult1_temp_b_29[3]\, Y => 
        \mult1_un201_sum_1_SUM[3]\);
    
    \un1_k_if_generate_plus.mult1_un166_sum_1_CO3_1\ : CFG3
      generic map(INIT => x"8D")

      port map(A => \valu_RNIKEDM1[9]_net_1\, B => 
        \mult1_un159_sum_1_SUM[2]\, C => \mult1_temp_b_24[3]\, Y
         => mult1_un166_sum_1_CO3);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_ANC3_tz_0\ : CFG4
      generic map(INIT => x"399C")

      port map(A => \valu[15]_net_1\, B => \valu[14]_net_1\, C
         => \valu[13]_net_1\, D => \valu[12]_net_1\, Y => 
        mult1_un152_sum_1_ANC3_tz_0);
    
    \data_out_1_6_i_m2_i_m2_ns[3]\ : CFG3
      generic map(INIT => x"D8")

      port map(A => \i[1]_net_1\, B => 
        \data_out_1_6_i_m2_i_m2_bm[3]_net_1\, C => 
        \data_out_1_6_i_m2_i_m2_am[3]_net_1\, Y => N_403);
    
    un1_rst_n_inv_0_i : CFG3
      generic map(INIT => x"F2")

      port map(A => FCCC_0_LOCK, B => N_311, C => N_621, Y => 
        \un1_rst_n_inv_0_i\);
    
    \i[14]\ : SLE
      port map(D => \i_lm[14]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[14]_net_1\);
    
    \i_cry[3]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[3]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[2]_net_1\, S => \i_s[3]\, Y
         => OPEN, FCO => \i_cry[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_ANC3_0_RNO_3\ : 
        CFG4
      generic map(INIT => x"0803")

      port map(A => \valu[4]_net_1\, B => \valu[5]_net_1\, C => 
        \mult1_un187_sum_1_SUM[1]\, D => 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, Y => d_N_15_mux);
    
    \state[2]\ : SLE
      port map(D => N_715, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \state[2]_net_1\);
    
    un1_i_cry_3 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[3]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_2\, S => un14_clklto3, 
        Y => OPEN, FCO => \un1_i_cry_3\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_CO3_0_tz_0_1_RNO\ : 
        CFG4
      generic map(INIT => x"6996")

      port map(A => mult1_un166_sum_1_CO2_RNIIT571, B => 
        mult1_un180_sum_1_CO2, C => \valu[6]_net_1\, D => 
        \mult1_un173_sum_1_SUM[2]\, Y => un1_N_2_0_i);
    
    \data_out_1_6_i_m2_i_m2_ns[1]\ : CFG3
      generic map(INIT => x"D8")

      port map(A => \i[1]_net_1\, B => 
        \data_out_1_6_i_m2_i_m2_bm[1]_net_1\, C => 
        \data_out_1_6_i_m2_i_m2_am[1]_net_1\, Y => N_401);
    
    \un1_k_if_generate_plus.mult1_un208_sum_1_SUM_RNO[4]\ : CFG4
      generic map(INIT => x"FFF9")

      port map(A => \mult1_un194_sum_1_SUM[1]\, B => un1_i1_mux_0, 
        C => un1_N_6_1, D => un1_N_11_mux, Y => 
        \mult1_un208_sum_1_SUM_RNO[4]\);
    
    \state[1]\ : SLE
      port map(D => N_450_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \state[1]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un208_sum_1_CO1_1_RNO_0\ : CFG4
      generic map(INIT => x"2BB2")

      port map(A => \valu[4]_net_1\, B => \valu[3]_net_1\, C => 
        d_N_7_mux, D => \mult1_un201_sum_1_SUM_1[4]\, Y => 
        d_i4_mux_2);
    
    \i_cry[4]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[4]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[3]_net_1\, S => \i_s[4]\, Y
         => OPEN, FCO => \i_cry[4]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un138_sum_1_SUM_1[4]\ : CFG3
      generic map(INIT => x"57")

      port map(A => \valu[15]_net_1\, B => \valu[14]_net_1\, C
         => \valu[13]_net_1\, Y => \mult1_temp_b_21[3]\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_0_RNO_2\ : 
        CFG4
      generic map(INIT => x"350F")

      port map(A => mult1_un201_sum_1_CO3_0_tz_0_RNO_4, B => 
        un1_m15_1_1, C => \valu[7]_net_1\, D => 
        \mult1_un180_sum_1_SUM[1]\, Y => un1_m16_1);
    
    \un1_k_if_generate_plus.mult1_un166_sum_1_SUM_RNIII9R[2]\ : 
        CFG4
      generic map(INIT => x"0609")

      port map(A => \mult1_un166_sum_1_SUM[2]\, B => 
        \mult1_un166_sum_1_SUM_0[4]\, C => un1_m8_1_0, D => 
        mult1_un166_sum_1_CO3, Y => un1_m8_1_1);
    
    \i_lm_0[22]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[22]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[22]\);
    
    \i[5]\ : SLE
      port map(D => \i_lm[5]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[5]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_0_RNO_4\ : 
        CFG4
      generic map(INIT => x"4844")

      port map(A => \mult1_un180_sum_1_SUM[2]\, B => un1_N_3_mux, 
        C => \mult1_temp_b_27[3]\, D => 
        \mult1_un180_sum_1_SUM[3]\, Y => 
        mult1_un201_sum_1_CO3_0_tz_0_RNO_4);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_0_RNO_1\ : 
        CFG4
      generic map(INIT => x"B830")

      port map(A => un1_N_3_mux, B => \valu[6]_net_1\, C => 
        un1_N_5_1, D => \mult1_un180_sum_1_SUM[3]\, Y => 
        mult1_un201_sum_1_CO3_0_tz_0_RNO_1);
    
    \i_lm_0[9]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[9]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[9]\);
    
    \i[8]\ : SLE
      port map(D => \i_lm[8]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[8]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_SUM_1_0[4]\ : CFG4
      generic map(INIT => x"336C")

      port map(A => \mult1_un201_sum_1_SUM[1]\, B => 
        \mult1_un201_sum_1_SUM[2]\, C => mult1_un208_sum_1_CO1, D
         => mult1_un208_sum_1_CO2_0, Y => 
        \mult1_un215_sum_1_SUM_1_0[4]\);
    
    \buff_1[2]\ : SLE
      port map(D => \un1_angle[2]_net_1\, CLK => FCCC_0_GL0, EN
         => \un1_rst_n_inv_2_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \buff_1[2]_net_1\);
    
    \valu_RNIKOH97[3]\ : CFG3
      generic map(INIT => x"02")

      port map(A => \valu[4]_net_1\, B => 
        \valu_RNIL8K77[5]_net_1\, C => \valu[3]_net_1\, Y => 
        un1_N_6_1);
    
    \buff_4[3]\ : SLE
      port map(D => \k[3]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_4_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_4[3]_net_1\);
    
    \un1_angle[3]\ : CFG3
      generic map(INIT => x"CA")

      port map(A => locator_control_0_angle1(3), B => 
        \k[3]_net_1\, C => \state[4]_net_1\, Y => 
        \un1_angle[3]_net_1\);
    
    \i_lm_0[21]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[21]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[21]\);
    
    \i_cry[13]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[13]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[12]_net_1\, S => \i_s[13]\, 
        Y => OPEN, FCO => \i_cry[13]_net_1\);
    
    \valu[6]\ : SLE
      port map(D => \un1_time1_i_m2[6]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[6]_net_1\);
    
    \i_lm_0[5]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[5]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[5]\);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_CO3_1_a1_0\ : CFG2
      generic map(INIT => x"8")

      port map(A => \valu[12]_net_1\, B => \valu[11]_net_1\, Y
         => mult1_un152_sum_1_CO3_1_a1_0);
    
    un1_i_cry_25 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[25]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_24\, S => 
        un1_i_cry_25_S, Y => OPEN, FCO => \un1_i_cry_25\);
    
    \i_lm_0[14]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[14]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[14]\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_0_RNO_3\ : 
        CFG3
      generic map(INIT => x"6F")

      port map(A => \mult1_un180_sum_1_SUM[2]\, B => 
        \mult1_temp_b_27[3]\, C => un1_N_3_mux, Y => un1_N_4_1);
    
    \i_cry[5]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[5]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[4]_net_1\, S => \i_s[5]\, Y
         => OPEN, FCO => \i_cry[5]_net_1\);
    
    \un24_k_v[0]\ : CFG4
      generic map(INIT => x"6996")

      port map(A => \mult1_un222_sum_1_SUM_0_0[4]\, B => 
        \valu[1]_net_1\, C => mult1_un222_sum_1_CO3, D => 
        \mult1_temp_b_1[3]\, Y => \un24_k_v[0]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_am[4]\ : CFG4
      generic map(INIT => x"C0AF")

      port map(A => \buff_5[5]\, B => \buff_4[5]\, C => 
        \i[2]_net_1\, D => 
        \data_out_1_6_i_m2_i_m2_am_1_1[4]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_am[4]_net_1\);
    
    \valu[12]\ : SLE
      port map(D => \un1_time1_i_m2[12]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[12]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_ANC3_d_d\ : CFG3
      generic map(INIT => x"20")

      port map(A => \mult1_un187_sum_1_SUM[1]\, B => 
        \mult1_un180_sum_1_SUM_RNI77563[3]\, C => 
        \mult1_un187_sum_1_SUM[2]\, Y => 
        mult1_un194_sum_1_ANC3_d_d);
    
    \un1_time1_i_m2[14]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \state[4]_net_1\, B => pulse_meash_0_time(14), 
        Y => \un1_time1_i_m2[14]_net_1\);
    
    un1_i_cry_13 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[13]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_12\, S => 
        un1_i_cry_13_S, Y => OPEN, FCO => \un1_i_cry_13\);
    
    \i_cry[9]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[9]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[8]_net_1\, S => \i_s[9]\, Y
         => OPEN, FCO => \i_cry[9]_net_1\);
    
    \i_cry[21]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[21]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[20]_net_1\, S => \i_s[21]\, 
        Y => OPEN, FCO => \i_cry[21]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_CO3_RNO_2\ : CFG4
      generic map(INIT => x"9030")

      port map(A => \mult1_un201_sum_1_SUM[2]\, B => 
        mult1_un215_sum_1_CO3_RNO_5, C => un1_m7_1_0, D => 
        \mult1_temp_b_30[3]\, Y => un1_i5_mux_0);
    
    \i_lm_0[0]\ : CFG4
      generic map(INIT => x"3A3F")

      port map(A => \i_cry_Y[0]\, B => N_427, C => 
        \state[4]_net_1\, D => N_311, Y => \i_lm[0]\);
    
    \buff_3[1]\ : SLE
      port map(D => \k[1]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_3_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_3[1]_net_1\);
    
    \state_ns_i_i[1]\ : CFG4
      generic map(INIT => x"BAFF")

      port map(A => \state_ns_i_i_a2[1]_net_1\, B => 
        \i_8_iv_i_i_o2[3]_net_1\, C => \state[4]_net_1\, D => 
        N_311, Y => \state_ns_i_i[1]_net_1\);
    
    \state_ns_i_0_0_a2_16[5]\ : CFG3
      generic map(INIT => x"04")

      port map(A => \i[20]_net_1\, B => 
        \state_ns_i_0_0_a2_11[5]_net_1\, C => \i[21]_net_1\, Y
         => \state_ns_i_0_0_a2_16[5]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un208_sum_1_SUM_RNO_1[4]\ : 
        CFG3
      generic map(INIT => x"28")

      port map(A => \valu[5]_net_1\, B => 
        \mult1_un194_sum_1_SUM_2[4]\, C => un1_N_10_mux, Y => 
        \mult1_un208_sum_1_SUM_RNO_1[4]\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_CO1_0_0\ : CFG4
      generic map(INIT => x"2BB2")

      port map(A => \valu[5]_net_1\, B => \valu[6]_net_1\, C => 
        \mult1_un180_sum_1_SUM[3]\, D => un1_i2_mux_1, Y => 
        mult1_un194_sum_1_CO1);
    
    \i[3]\ : SLE
      port map(D => \i_lm[3]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[3]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_am_1_1[3]\ : CFG4
      generic map(INIT => x"05F3")

      port map(A => \buff_1[3]_net_1\, B => \buff_0[3]_net_1\, C
         => \i[2]_net_1\, D => \i[0]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_am_1_1[3]_net_1\);
    
    \i_lm_0[4]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[4]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[4]\);
    
    \valu[2]\ : SLE
      port map(D => \un1_time1_i_m2[2]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[2]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un222_sum_1_CO3_1_0_RNO_2\ : 
        CFG2
      generic map(INIT => x"6")

      port map(A => un1_i1_mux_0, B => \mult1_un194_sum_1_SUM[1]\, 
        Y => mult1_un222_sum_1_CO3_1_0_RNO_2);
    
    \buff_6[3]\ : SLE
      port map(D => \k[3]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_6_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_6[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_ANC3_c_0\ : CFG4
      generic map(INIT => x"0492")

      port map(A => \valu[6]_net_1\, B => \valu[7]_net_1\, C => 
        \mult1_temp_b_27[3]\, D => \mult1_un180_sum_1_SUM[1]\, Y
         => un1_N_3_mux_0);
    
    
        \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_0_RNIPVHK1\ : 
        CFG4
      generic map(INIT => x"A51E")

      port map(A => mult1_un201_sum_1_ANC3, B => 
        mult1_un201_sum_1_CO3_0_tz, C => 
        \mult1_un201_sum_1_SUM_1[4]\, D => \mult1_temp_b_29[3]\, 
        Y => mult1_un201_sum_1_CO3_0_tz_0_RNIPVHK1);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_CO3_0_tz_0_1\ : 
        CFG4
      generic map(INIT => x"4282")

      port map(A => un1_N_2_0_i, B => \mult1_temp_b_27[3]\, C => 
        \valu[7]_net_1\, D => \mult1_un180_sum_1_SUM[2]\, Y => 
        mult1_un194_sum_1_CO3_0_tz_0_1);
    
    \un1_k_if_generate_plus.mult1_un145_sum_1_SUM_1[4]\ : CFG4
      generic map(INIT => x"39BD")

      port map(A => \valu[15]_net_1\, B => \valu[14]_net_1\, C
         => \valu[13]_net_1\, D => \valu[12]_net_1\, Y => 
        \mult1_temp_b_22[3]\);
    
    un1_i_cry_24 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[24]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_23\, S => 
        un1_i_cry_24_S, Y => OPEN, FCO => \un1_i_cry_24\);
    
    \un1_k_if_generate_plus.mult1_un194_sum_1_SUM[4]\ : CFG2
      generic map(INIT => x"6")

      port map(A => un1_N_8_2, B => \mult1_un194_sum_1_SUM_2[4]\, 
        Y => \mult1_temp_b_29[3]\);
    
    \un1_k_if_generate_plus.mult1_un1_sum_1.SUM_3[3]\ : CFG4
      generic map(INIT => x"3F2B")

      port map(A => \valu[1]_net_1\, B => \valu[2]_net_1\, C => 
        \mult1_temp_b_1[3]\, D => ANC2_m3, Y => \SUM_3[3]\);
    
    un1_i_cry_11 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[11]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_10\, S => 
        un1_i_cry_11_S, Y => OPEN, FCO => \un1_i_cry_11\);
    
    \i_cry[16]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[16]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[15]_net_1\, S => \i_s[16]\, 
        Y => OPEN, FCO => \i_cry[16]_net_1\);
    
    \buff_5[4]\ : SLE
      port map(D => \k[5]\, CLK => FCCC_0_GL0, EN => 
        buff_5_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_5[5]\);
    
    \un1_time1_i_m2[8]\ : CFG4
      generic map(INIT => x"E44E")

      port map(A => \state[4]_net_1\, B => pulse_meash_0_time(8), 
        C => mult1_un166_sum_1_CO3, D => 
        \mult1_un166_sum_1_SUM_0[4]\, Y => 
        \un1_time1_i_m2[8]_net_1\);
    
    \i_cry[8]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[8]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[7]_net_1\, S => \i_s[8]\, Y
         => OPEN, FCO => \i_cry[8]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un166_sum_1_SUM_0_RNIU1632[4]\ : 
        CFG4
      generic map(INIT => x"2332")

      port map(A => \valu[8]_net_1\, B => \valu[9]_net_1\, C => 
        \mult1_un166_sum_1_SUM_0[4]\, D => un1_N_5, Y => 
        mult1_un173_sum_1_CO1_0);
    
    \un1_k_if_generate_plus.mult1_un180_sum_1_SUM_RNIP1473[3]\ : 
        CFG3
      generic map(INIT => x"69")

      port map(A => un1_i2_mux_1, B => \valu[6]_net_1\, C => 
        \mult1_un180_sum_1_SUM[3]\, Y => un1_N_17_0);
    
    buff_8_1_sqmuxa_0_a2_0_a2 : CFG4
      generic map(INIT => x"2000")

      port map(A => \i[3]_net_1\, B => \i[1]_net_1\, C => N_624, 
        D => N_621, Y => buff_8_1_sqmuxa);
    
    \i_cry[0]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[0]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => 
        \i_cry_Y[0]\, FCO => \i_cry[0]_net_1\);
    
    \valu[1]\ : SLE
      port map(D => \un1_time1_i_m2[1]_net_1\, CLK => FCCC_0_GL0, 
        EN => \un1_rst_n_inv_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \valu[1]_net_1\);
    
    \buff_2[4]\ : SLE
      port map(D => \k[5]\, CLK => FCCC_0_GL0, EN => 
        buff_2_1_sqmuxa_1, ALn => VCC_net_1, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \buff_2[5]\);
    
    \i[1]\ : SLE
      port map(D => \i_lm[1]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[1]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un173_sum_1_SUM[1]\ : CFG4
      generic map(INIT => x"6996")

      port map(A => \valu[9]_net_1\, B => \valu[8]_net_1\, C => 
        \mult1_un166_sum_1_SUM_0[4]\, D => mult1_un166_sum_1_CO3, 
        Y => \mult1_un173_sum_1_SUM[1]\);
    
    \state_ns_i_a3_0_12[3]\ : CFG4
      generic map(INIT => x"0001")

      port map(A => un1_i_cry_6_S, B => un1_i_cry_7_S, C => 
        un1_i_cry_8_S, D => un1_i_cry_9_S, Y => 
        \state_ns_i_a3_0_12[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un166_sum_1_SUM[2]\ : CFG4
      generic map(INIT => x"2D4B")

      port map(A => \valu[9]_net_1\, B => \valu[10]_net_1\, C => 
        \mult1_un159_sum_1_SUM[1]\, D => \mult1_temp_b_24[3]\, Y
         => \mult1_un166_sum_1_SUM[2]\);
    
    \un1_k_if_generate_plus.mult1_un152_sum_1_CO1_a1_1\ : CFG2
      generic map(INIT => x"1")

      port map(A => \valu[13]_net_1\, B => \valu[14]_net_1\, Y
         => mult1_un152_sum_1_CO1_a2_1);
    
    buff_4_1_sqmuxa_0_a2_0_a2_0 : CFG2
      generic map(INIT => x"1")

      port map(A => \i[1]_net_1\, B => \i[3]_net_1\, Y => N_622);
    
    \state_ns_i_a3_0[3]\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \state_ns_i_a3_0_15[3]_net_1\, B => 
        \state_ns_i_a3_0_16[3]_net_1\, C => 
        \state_ns_i_a3_0_17[3]_net_1\, D => 
        \state_ns_i_a3_0_18[3]_net_1\, Y => 
        \state_ns_i_a3_0[3]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_bm[3]\ : CFG4
      generic map(INIT => x"C0AF")

      port map(A => \buff_7[3]_net_1\, B => \buff_3[3]_net_1\, C
         => \i[0]_net_1\, D => 
        \data_out_1_6_i_m2_i_m2_bm_1_1[3]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_bm[3]_net_1\);
    
    \state_ns_i_0_i_a2[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => COREUART_0_TXRDY, B => \state[3]_net_1\, Y
         => N_715);
    
    \un1_time1_i_m2[1]\ : CFG3
      generic map(INIT => x"2E")

      port map(A => pulse_meash_0_time(1), B => \state[4]_net_1\, 
        C => \mult1_temp_b_1[3]\, Y => \un1_time1_i_m2[1]_net_1\);
    
    \buff_1[0]\ : SLE
      port map(D => \un1_angle[0]_net_1\, CLK => FCCC_0_GL0, EN
         => \un1_rst_n_inv_2_0_i\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \buff_1[0]_net_1\);
    
    \valu_RNIKEDM1[9]\ : CFG4
      generic map(INIT => x"2F4F")

      port map(A => \valu[9]_net_1\, B => \valu[10]_net_1\, C => 
        un1_N_5_i_1, D => \mult1_temp_b_24[3]\, Y => 
        \valu_RNIKEDM1[9]_net_1\);
    
    \i_cry[22]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[22]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[21]_net_1\, S => \i_s[22]\, 
        Y => OPEN, FCO => \i_cry[22]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un208_sum_1_SUM_RNO_0[4]\ : 
        CFG4
      generic map(INIT => x"2002")

      port map(A => \valu[3]_net_1\, B => \valu[4]_net_1\, C => 
        \mult1_un194_sum_1_SUM[1]\, D => 
        \mult1_un208_sum_1_SUM_RNO_1[4]\, Y => un1_N_11_mux);
    
    \i_lm_0[17]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[17]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[17]\);
    
    \i_8_iv_i_i_o2[3]\ : CFG2
      generic map(INIT => x"D")

      port map(A => \state_ns_i_a3_0[3]_net_1\, B => un14_clklto3, 
        Y => \i_8_iv_i_i_o2[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_SUM[4]\ : CFG4
      generic map(INIT => x"6996")

      port map(A => \mult1_temp_b_31[3]\, B => 
        \mult1_temp_b_30[3]\, C => mult1_un215_sum_1_CO3, D => 
        \mult1_un215_sum_1_SUM_1_0[4]\, Y => \mult1_temp_b_1[3]\);
    
    \i_lm_0[23]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[23]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[23]\);
    
    \un1_k_if_generate_plus.mult1_un215_sum_1_CO3_RNO_7\ : CFG2
      generic map(INIT => x"6")

      port map(A => mult1_un201_sum_1_CO3, B => 
        \mult1_un201_sum_1_SUM_2[4]\, Y => d_m6_0_1);
    
    \i_cry[19]\ : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \i[19]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[18]_net_1\, S => \i_s[19]\, 
        Y => OPEN, FCO => \i_cry[19]_net_1\);
    
    \state_ns_i_i_o2[3]\ : CFG3
      generic map(INIT => x"FB")

      port map(A => un1_i_cry_2_S, B => \i[0]_net_1\, C => 
        un1_i_cry_1_S, Y => N_333);
    
    un1_i_cry_19 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[19]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un1_i_cry_18\, S => 
        un1_i_cry_19_S, Y => OPEN, FCO => \un1_i_cry_19\);
    
    \data_out[0]\ : SLE
      port map(D => N_408, CLK => FCCC_0_GL0, EN => 
        \data_out_0_sqmuxa_i_i_a2\, ALn => VCC_net_1, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => time_sender_0_data_out_0);
    
    \i[18]\ : SLE
      port map(D => \i_lm[18]\, CLK => FCCC_0_GL0, EN => N_14_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[18]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_CO3_0_tz_0_0_RNO\ : 
        CFG4
      generic map(INIT => x"AF44")

      port map(A => \mult1_un180_sum_1_SUM[1]\, B => un1_m15_1_0, 
        C => mult1_un201_sum_1_CO3_0_tz_0_RNO_1, D => un1_m16_1, 
        Y => mult1_un201_sum_1_CO3_0_tz_0_0_RNO);
    
    \un1_k_if_generate_plus.mult1_un166_sum_1_CO2_RNIIT571\ : 
        CFG4
      generic map(INIT => x"6996")

      port map(A => \mult1_un159_sum_1_SUM[2]\, B => 
        \mult1_temp_b_24[3]\, C => mult1_un166_sum_1_CO2, D => 
        un1_m8_1_1, Y => mult1_un166_sum_1_CO2_RNIIT571);
    
    \data_out_1_6_i_m2_i_m2_ns[4]\ : CFG3
      generic map(INIT => x"D8")

      port map(A => \i[1]_net_1\, B => 
        \data_out_1_6_i_m2_i_m2_bm[4]_net_1\, C => 
        \data_out_1_6_i_m2_i_m2_am[4]_net_1\, Y => N_405);
    
    \i_lm_0[15]\ : CFG3
      generic map(INIT => x"20")

      port map(A => \i_s[15]\, B => \state[4]_net_1\, C => N_311, 
        Y => \i_lm[15]\);
    
    \un1_time1_i_m2[2]\ : CFG3
      generic map(INIT => x"2E")

      port map(A => pulse_meash_0_time(2), B => \state[4]_net_1\, 
        C => \mult1_temp_b_31[3]\, Y => \un1_time1_i_m2[2]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un159_sum_1_CO3_1_RNINI331\ : 
        CFG4
      generic map(INIT => x"9669")

      port map(A => \mult1_temp_b_23[3]\, B => 
        \mult1_un159_sum_1_SUM_2_1[4]\, C => 
        mult1_un159_sum_1_CO3, D => \mult1_un159_sum_1_SUM[1]\, Y
         => un1_N_5_i_1);
    
    \un1_k_if_generate_plus.mult1_un180_sum_1_SUM_RNI3CSQ2[2]\ : 
        CFG4
      generic map(INIT => x"AE57")

      port map(A => \mult1_un180_sum_1_SUM[2]\, B => 
        \mult1_un180_sum_1_SUM[1]\, C => un1_i1_mux, D => 
        mult1_un173_sum_1_CO2_RNIJ88Q, Y => un1_i2_mux_1);
    
    \buff_8[3]\ : SLE
      port map(D => \k[3]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_8_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_8[3]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un159_sum_1_SUM[1]\ : CFG3
      generic map(INIT => x"96")

      port map(A => \valu[11]_net_1\, B => \mult1_temp_b_23[3]\, 
        C => \valu[10]_net_1\, Y => \mult1_un159_sum_1_SUM[1]\);
    
    \un1_k_if_generate_plus.mult1_un208_sum_1_CO2_0\ : CFG4
      generic map(INIT => x"F200")

      port map(A => \valu[3]_net_1\, B => \valu[4]_net_1\, C => 
        \mult1_un201_sum_1_SUM[1]\, D => \mult1_temp_b_30[3]\, Y
         => mult1_un208_sum_1_CO2_0);
    
    \data_out_1_6_i_m2_i_m2_ns[0]\ : CFG3
      generic map(INIT => x"D8")

      port map(A => \i[1]_net_1\, B => 
        \data_out_1_6_i_m2_i_m2_bm[0]_net_1\, C => 
        \data_out_1_6_i_m2_i_m2_am[0]_net_1\, Y => N_400);
    
    \buff_5[2]\ : SLE
      port map(D => \k[2]_net_1\, CLK => FCCC_0_GL0, EN => 
        buff_5_1_sqmuxa, ALn => VCC_net_1, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \buff_5[2]_net_1\);
    
    \data_out_1_6_i_m2_i_m2_am[1]\ : CFG4
      generic map(INIT => x"C0AF")

      port map(A => \buff_5[1]_net_1\, B => \buff_4[1]_net_1\, C
         => \i[2]_net_1\, D => 
        \data_out_1_6_i_m2_i_m2_am_1_1[1]_net_1\, Y => 
        \data_out_1_6_i_m2_i_m2_am[1]_net_1\);
    
    \un1_k_if_generate_plus.mult1_un201_sum_1_SUM_0[1]\ : CFG2
      generic map(INIT => x"9")

      port map(A => \valu[5]_net_1\, B => \valu[4]_net_1\, Y => 
        \mult1_un201_sum_1_SUM_0[1]\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity BT_module is

    port( BT_module_0_data_buf : out   std_logic_vector(7 downto 0);
          COREUART_0_DATA_OUT  : in    std_logic_vector(7 downto 0);
          FCCC_0_LOCK          : in    std_logic;
          FCCC_0_GL0           : in    std_logic;
          BT_module_0_oen      : out   std_logic;
          COREUART_0_RXRDY     : in    std_logic
        );

end BT_module;

architecture DEF_ARCH of BT_module is 

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal VCC_net_1, \TX_RX_repiter[0]_net_1\, GND_net_1, 
        \TX_RX_repiter[1]_net_1\, N_19_i_0, \TX_RX_repiter_ns[0]\
         : std_logic;

begin 


    \data_buf[4]\ : SLE
      port map(D => COREUART_0_DATA_OUT(4), CLK => FCCC_0_GL0, EN
         => \TX_RX_repiter[0]_net_1\, ALn => FCCC_0_LOCK, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => BT_module_0_data_buf(4));
    
    \TX_RX_repiter[1]\ : SLE
      port map(D => \TX_RX_repiter[0]_net_1\, CLK => FCCC_0_GL0, 
        EN => VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \TX_RX_repiter[1]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \data_buf[1]\ : SLE
      port map(D => COREUART_0_DATA_OUT(1), CLK => FCCC_0_GL0, EN
         => \TX_RX_repiter[0]_net_1\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => BT_module_0_data_buf(1));
    
    \data_buf[3]\ : SLE
      port map(D => COREUART_0_DATA_OUT(3), CLK => FCCC_0_GL0, EN
         => \TX_RX_repiter[0]_net_1\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => BT_module_0_data_buf(3));
    
    \TX_RX_repiter_ns_0_a2[0]\ : CFG3
      generic map(INIT => x"02")

      port map(A => COREUART_0_RXRDY, B => 
        \TX_RX_repiter[1]_net_1\, C => \TX_RX_repiter[0]_net_1\, 
        Y => \TX_RX_repiter_ns[0]\);
    
    \data_buf[0]\ : SLE
      port map(D => COREUART_0_DATA_OUT(0), CLK => FCCC_0_GL0, EN
         => \TX_RX_repiter[0]_net_1\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => BT_module_0_data_buf(0));
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \TX_RX_repiter[0]\ : SLE
      port map(D => \TX_RX_repiter_ns[0]\, CLK => FCCC_0_GL0, EN
         => VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \TX_RX_repiter[0]_net_1\);
    
    \data_buf[6]\ : SLE
      port map(D => COREUART_0_DATA_OUT(6), CLK => FCCC_0_GL0, EN
         => \TX_RX_repiter[0]_net_1\, ALn => FCCC_0_LOCK, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => BT_module_0_data_buf(6));
    
    \data_buf[5]\ : SLE
      port map(D => COREUART_0_DATA_OUT(5), CLK => FCCC_0_GL0, EN
         => \TX_RX_repiter[0]_net_1\, ALn => FCCC_0_LOCK, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => BT_module_0_data_buf(5));
    
    oen : SLE
      port map(D => \TX_RX_repiter[1]_net_1\, CLK => FCCC_0_GL0, 
        EN => N_19_i_0, ALn => FCCC_0_LOCK, ADn => GND_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        BT_module_0_oen);
    
    oen_RNO : CFG2
      generic map(INIT => x"E")

      port map(A => \TX_RX_repiter[0]_net_1\, B => 
        \TX_RX_repiter[1]_net_1\, Y => N_19_i_0);
    
    \data_buf[7]\ : SLE
      port map(D => COREUART_0_DATA_OUT(7), CLK => FCCC_0_GL0, EN
         => \TX_RX_repiter[0]_net_1\, ALn => FCCC_0_LOCK, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => BT_module_0_data_buf(7));
    
    \data_buf[2]\ : SLE
      port map(D => COREUART_0_DATA_OUT(2), CLK => FCCC_0_GL0, EN
         => \TX_RX_repiter[0]_net_1\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => BT_module_0_data_buf(2));
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity servo_driver_work_top_rtl_0layer0 is

    port( FCCC_0_LOCK   : in    std_logic;
          FCCC_0_GL0    : in    std_logic;
          servo_pwm_c   : out   std_logic;
          un42_clk_0    : in    std_logic;
          un42_clk_1    : in    std_logic;
          un42_clk_2    : in    std_logic;
          un42_clk_3    : in    std_logic;
          un1_state_7_0 : in    std_logic
        );

end servo_driver_work_top_rtl_0layer0;

architecture DEF_ARCH of servo_driver_work_top_rtl_0layer0 is 

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component ARI1
    generic (INIT:std_logic_vector(19 downto 0) := x"00000");

    port( A   : in    std_logic := 'U';
          B   : in    std_logic := 'U';
          C   : in    std_logic := 'U';
          D   : in    std_logic := 'U';
          FCI : in    std_logic := 'U';
          S   : out   std_logic;
          Y   : out   std_logic;
          FCO : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component MACC
    port( CLK               : in    std_logic_vector(1 downto 0) := (others => 'U');
          A                 : in    std_logic_vector(17 downto 0) := (others => 'U');
          A_EN              : in    std_logic_vector(1 downto 0) := (others => 'U');
          A_ARST_N          : in    std_logic_vector(1 downto 0) := (others => 'U');
          A_SRST_N          : in    std_logic_vector(1 downto 0) := (others => 'U');
          B                 : in    std_logic_vector(17 downto 0) := (others => 'U');
          B_EN              : in    std_logic_vector(1 downto 0) := (others => 'U');
          B_ARST_N          : in    std_logic_vector(1 downto 0) := (others => 'U');
          B_SRST_N          : in    std_logic_vector(1 downto 0) := (others => 'U');
          C                 : in    std_logic_vector(43 downto 0) := (others => 'U');
          C_EN              : in    std_logic_vector(1 downto 0) := (others => 'U');
          C_ARST_N          : in    std_logic_vector(1 downto 0) := (others => 'U');
          C_SRST_N          : in    std_logic_vector(1 downto 0) := (others => 'U');
          P_EN              : in    std_logic_vector(1 downto 0) := (others => 'U');
          P_ARST_N          : in    std_logic_vector(1 downto 0) := (others => 'U');
          P_SRST_N          : in    std_logic_vector(1 downto 0) := (others => 'U');
          FDBKSEL           : in    std_logic := 'U';
          FDBKSEL_EN        : in    std_logic := 'U';
          FDBKSEL_AL_N      : in    std_logic := 'U';
          FDBKSEL_SL_N      : in    std_logic := 'U';
          CDSEL             : in    std_logic := 'U';
          CDSEL_EN          : in    std_logic := 'U';
          CDSEL_AL_N        : in    std_logic := 'U';
          CDSEL_SL_N        : in    std_logic := 'U';
          ARSHFT17          : in    std_logic := 'U';
          ARSHFT17_EN       : in    std_logic := 'U';
          ARSHFT17_AL_N     : in    std_logic := 'U';
          ARSHFT17_SL_N     : in    std_logic := 'U';
          SUB               : in    std_logic := 'U';
          SUB_EN            : in    std_logic := 'U';
          SUB_AL_N          : in    std_logic := 'U';
          SUB_SL_N          : in    std_logic := 'U';
          CARRYIN           : in    std_logic := 'U';
          SIMD              : in    std_logic := 'U';
          DOTP              : in    std_logic := 'U';
          OVFL_CARRYOUT_SEL : in    std_logic := 'U';
          A_BYPASS          : in    std_logic_vector(1 downto 0) := (others => 'U');
          B_BYPASS          : in    std_logic_vector(1 downto 0) := (others => 'U');
          C_BYPASS          : in    std_logic_vector(1 downto 0) := (others => 'U');
          P_BYPASS          : in    std_logic_vector(1 downto 0) := (others => 'U');
          FDBKSEL_BYPASS    : in    std_logic := 'U';
          FDBKSEL_AD        : in    std_logic := 'U';
          FDBKSEL_SD_N      : in    std_logic := 'U';
          CDSEL_BYPASS      : in    std_logic := 'U';
          CDSEL_AD          : in    std_logic := 'U';
          CDSEL_SD_N        : in    std_logic := 'U';
          ARSHFT17_BYPASS   : in    std_logic := 'U';
          ARSHFT17_AD       : in    std_logic := 'U';
          ARSHFT17_SD_N     : in    std_logic := 'U';
          SUB_BYPASS        : in    std_logic := 'U';
          SUB_AD            : in    std_logic := 'U';
          SUB_SD_N          : in    std_logic := 'U';
          CDIN              : in    std_logic_vector(43 downto 0) := (others => 'U');
          CDOUT             : out   std_logic_vector(43 downto 0);
          P                 : out   std_logic_vector(43 downto 0);
          OVFL_CARRYOUT     : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal un11_clk_0, VCC_net_1, \P[0]\, \state_d[2]\, 
        GND_net_1, un11_clk_1, \P[1]\, un11_clk_2, 
        un5_pulse_length_cry_0_Y, un11_clk_3, 
        un5_pulse_length_cry_1_S, un11_clk_4, 
        un5_pulse_length_cry_2_S, un11_clk_5, 
        un5_pulse_length_cry_3_S, un11_clk_6, 
        un5_pulse_length_cry_4_S, un11_clk_7, 
        un5_pulse_length_cry_5_S, un11_clk_8, 
        un5_pulse_length_cry_6_S, un11_clk_9, 
        un5_pulse_length_cry_7_S, un11_clk_10, 
        un5_pulse_length_cry_8_S, un11_clk_11, 
        un5_pulse_length_cry_9_S, un11_clk_12, 
        un5_pulse_length_cry_10_S, un11_clk_13, 
        un5_pulse_length_cry_11_S, un11_clk_14, 
        un5_pulse_length_cry_12_S, un11_clk_15, 
        \un5_pulse_length_cry_12\, \state[0]_net_1\, 
        \state_d_i_0[2]\, N_35_i_0, \state[1]_net_1\, 
        \state_ns[1]\, \i[0]_net_1\, \i_lm[0]\, \i[1]_net_1\, 
        \i_lm[1]\, \i[2]_net_1\, \i_lm[2]\, \i[3]_net_1\, 
        \i_lm[3]\, \i[4]_net_1\, \i_lm[4]\, \i[5]_net_1\, 
        \i_lm[5]\, \i[6]_net_1\, \i_lm[6]\, \i[7]_net_1\, 
        \i_lm[7]\, \i[8]_net_1\, \i_lm[8]\, \i[9]_net_1\, 
        \i_lm[9]\, \i[10]_net_1\, \i_lm[10]\, \i[11]_net_1\, 
        \i_lm[11]\, \i[12]_net_1\, \i_lm[12]\, \i[13]_net_1\, 
        \i_lm[13]\, \i[14]_net_1\, \i_lm[14]\, \i[15]_net_1\, 
        \i_lm[15]\, \i[16]_net_1\, \i_lm[16]\, \i[17]_net_1\, 
        \i_lm[17]\, \i[18]_net_1\, \i_lm[18]\, \i[19]_net_1\, 
        \i_lm[19]\, \i[20]_net_1\, \i_lm[20]\, \i[21]_net_1\, 
        \i_lm[21]\, \i[22]_net_1\, \i_lm[22]\, \i[23]_net_1\, 
        \i_lm[23]\, \i[24]_net_1\, \i_lm[24]\, \i[25]_net_1\, 
        \i_lm[25]\, \i[26]_net_1\, \i_lm[26]\, \i[27]_net_1\, 
        \i_lm[27]\, \i[28]_net_1\, \i_lm[28]\, \i[29]_net_1\, 
        \i_lm[29]\, \i[30]_net_1\, \i_lm[30]\, 
        \un5_pulse_length_cry_0\, un5_pulse_length, 
        \un5_pulse_length_cry_1\, un5_pulse_length_axb_1, 
        \un5_pulse_length_cry_2\, \P[4]\, 
        \un5_pulse_length_cry_3\, un5_pulse_length_axb_3, 
        \un5_pulse_length_cry_4\, \P[6]\, 
        \un5_pulse_length_cry_5\, \P[7]\, 
        \un5_pulse_length_cry_6\, un5_pulse_length_axb_6, 
        \un5_pulse_length_cry_7\, un5_pulse_length_axb_7, 
        \un5_pulse_length_cry_8\, un5_pulse_length_axb_8, 
        \un5_pulse_length_cry_9\, un5_pulse_length_axb_9, 
        \un5_pulse_length_cry_10\, \P[12]\, 
        \un5_pulse_length_cry_11\, \P[13]\, 
        un5_pulse_length_axb_12, \un11_clk_cry_2\, 
        \un11_clk_cry_3\, \un11_clk_cry_4\, \un11_clk_cry_5\, 
        \un11_clk_cry_6\, \un11_clk_cry_7\, \un11_clk_cry_8\, 
        \un11_clk_cry_9\, \un11_clk_cry_10\, \un11_clk_cry_11\, 
        \un11_clk_cry_12\, \un11_clk_cry_13\, \un11_clk_cry_14\, 
        \un11_clk_cry_15\, \un11_clk_cry_16\, \un11_clk_cry_17\, 
        \un11_clk_cry_18\, \un11_clk_cry_19\, \un11_clk_cry_20\, 
        \un11_clk_cry_21\, \un11_clk_cry_22\, \un11_clk_cry_23\, 
        \un11_clk_cry_24\, \un11_clk_cry_25\, \un11_clk_cry_26\, 
        \un11_clk_cry_27\, \un11_clk_cry_28\, \un11_clk_cry_29\, 
        \un11_clk_cry_30\, i_s_102_FCO, \i_cry[1]_net_1\, 
        \i_s[1]\, \i_cry[2]_net_1\, \i_s[2]\, \i_cry[3]_net_1\, 
        \i_s[3]\, \i_cry[4]_net_1\, \i_s[4]\, \i_cry[5]_net_1\, 
        \i_s[5]\, \i_cry[6]_net_1\, \i_s[6]\, \i_cry[7]_net_1\, 
        \i_s[7]\, \i_cry[8]_net_1\, \i_s[8]\, \i_cry[9]_net_1\, 
        \i_s[9]\, \i_cry[10]_net_1\, \i_s[10]\, \i_cry[11]_net_1\, 
        \i_s[11]\, \i_cry[12]_net_1\, \i_s[12]\, 
        \i_cry[13]_net_1\, \i_s[13]\, \i_cry[14]_net_1\, 
        \i_s[14]\, \i_cry[15]_net_1\, \i_s[15]\, 
        \i_cry[16]_net_1\, \i_s[16]\, \i_cry[17]_net_1\, 
        \i_s[17]\, \i_cry[18]_net_1\, \i_s[18]\, 
        \i_cry[19]_net_1\, \i_s[19]\, \i_cry[20]_net_1\, 
        \i_s[20]\, \i_cry[21]_net_1\, \i_s[21]\, 
        \i_cry[22]_net_1\, \i_s[22]\, \i_cry[23]_net_1\, 
        \i_s[23]\, \i_cry[24]_net_1\, \i_s[24]\, 
        \i_cry[25]_net_1\, \i_s[25]\, \i_cry[26]_net_1\, 
        \i_s[26]\, \i_cry[27]_net_1\, \i_s[27]\, 
        \i_cry[28]_net_1\, \i_s[28]\, \i_s[30]_net_1\, 
        \i_cry[29]_net_1\, \i_s[29]\, \un1_state_0_sqmuxa_0\, 
        \un17_clklto30_7\, \un17_clklto30_6\, \un17_clklto19_2\, 
        \un17_clklto13_2\, \un17_clklto30_8\, un17_clklt13, 
        un17_clklt19, \un17_clklto30\ : std_logic;
    signal nc47, nc34, nc70, nc60, nc64, nc9, nc13, nc23, nc55, 
        nc33, nc16, nc26, nc45, nc73, nc58, nc63, nc27, nc17, 
        nc36, nc48, nc37, nc5, nc52, nc51, nc66, nc67, nc4, nc42, 
        nc41, nc59, nc25, nc15, nc35, nc49, nc28, nc18, nc65, 
        nc38, nc1, nc2, nc50, nc22, nc12, nc21, nc11, nc54, nc68, 
        nc3, nc32, nc40, nc31, nc44, nc7, nc72, nc6, nc71, nc62, 
        nc61, nc19, nc29, nc53, nc39, nc8, nc43, nc69, nc56, nc20, 
        nc10, nc57, nc24, nc14, nc46, nc30 : std_logic;

begin 


    \state[0]\ : SLE
      port map(D => N_35_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \state[0]_net_1\);
    
    un5_pulse_length_cry_4 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \P[6]\, C => GND_net_1, D => 
        GND_net_1, FCI => \un5_pulse_length_cry_3\, S => 
        un5_pulse_length_cry_4_S, Y => OPEN, FCO => 
        \un5_pulse_length_cry_4\);
    
    \pulse_length[16]\ : SLE
      port map(D => un5_pulse_length_cry_12_S, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_14);
    
    \i[7]\ : SLE
      port map(D => \i_lm[7]\, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[7]_net_1\);
    
    \i[16]\ : SLE
      port map(D => \i_lm[16]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[16]_net_1\);
    
    \i_cry[14]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[14]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[13]_net_1\, S => \i_s[14]\, 
        Y => OPEN, FCO => \i_cry[14]_net_1\);
    
    un11_clk_cry_27 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[27]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_26\, S => OPEN, Y
         => OPEN, FCO => \un11_clk_cry_27\);
    
    \i_lm_0[24]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[24]\, Y => 
        \i_lm[24]\);
    
    un5_pulse_length_cry_11 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \P[13]\, C => GND_net_1, D
         => GND_net_1, FCI => \un5_pulse_length_cry_10\, S => 
        un5_pulse_length_cry_11_S, Y => OPEN, FCO => 
        \un5_pulse_length_cry_11\);
    
    \pulse_length[5]\ : SLE
      port map(D => un5_pulse_length_cry_1_S, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_3);
    
    un11_clk_cry_20 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[20]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_19\, S => OPEN, Y
         => OPEN, FCO => \un11_clk_cry_20\);
    
    \i[21]\ : SLE
      port map(D => \i_lm[21]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[21]_net_1\);
    
    \i_cry[20]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[20]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[19]_net_1\, S => \i_s[20]\, 
        Y => OPEN, FCO => \i_cry[20]_net_1\);
    
    un11_clk_cry_16 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_14, B => \i[16]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un11_clk_cry_15\, S
         => OPEN, Y => OPEN, FCO => \un11_clk_cry_16\);
    
    \i[0]\ : SLE
      port map(D => \i_lm[0]\, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[0]_net_1\);
    
    \i[11]\ : SLE
      port map(D => \i_lm[11]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[11]_net_1\);
    
    un11_clk_cry_13 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_11, B => \i[13]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un11_clk_cry_12\, S
         => OPEN, Y => OPEN, FCO => \un11_clk_cry_13\);
    
    \i_lm_0[2]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[2]\, Y => 
        \i_lm[2]\);
    
    un11_clk_cry_24 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[24]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_23\, S => OPEN, Y
         => OPEN, FCO => \un11_clk_cry_24\);
    
    un11_clk_cry_3 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_1, B => \i[3]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_2\, S => OPEN, Y => 
        OPEN, FCO => \un11_clk_cry_3\);
    
    un11_clk_cry_18 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[18]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_17\, S => OPEN, Y
         => OPEN, FCO => \un11_clk_cry_18\);
    
    un17_clklto9 : CFG4
      generic map(INIT => x"5557")

      port map(A => \i[9]_net_1\, B => \i[8]_net_1\, C => 
        \i[7]_net_1\, D => \i[6]_net_1\, Y => un17_clklt13);
    
    \i_lm_0[27]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[27]\, Y => 
        \i_lm[27]\);
    
    un17_clklto30_7 : CFG4
      generic map(INIT => x"0001")

      port map(A => \i[26]_net_1\, B => \i[25]_net_1\, C => 
        \i[24]_net_1\, D => \i[23]_net_1\, Y => \un17_clklto30_7\);
    
    \i_lm_0[25]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[25]\, Y => 
        \i_lm[25]\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \i[23]\ : SLE
      port map(D => \i_lm[23]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[23]_net_1\);
    
    un5_pulse_length_cry_12 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => un5_pulse_length_axb_12, C
         => GND_net_1, D => GND_net_1, FCI => 
        \un5_pulse_length_cry_11\, S => un5_pulse_length_cry_12_S, 
        Y => OPEN, FCO => \un5_pulse_length_cry_12\);
    
    \i_RNO[0]\ : CFG2
      generic map(INIT => x"2")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i[0]_net_1\, Y
         => \i_lm[0]\);
    
    \i_cry[23]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[23]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[22]_net_1\, S => \i_s[23]\, 
        Y => OPEN, FCO => \i_cry[23]_net_1\);
    
    \i[13]\ : SLE
      port map(D => \i_lm[13]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[13]_net_1\);
    
    un11_clk_cry_7 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_5, B => \i[7]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_6\, S => OPEN, Y => 
        OPEN, FCO => \un11_clk_cry_7\);
    
    \i_cry[15]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[15]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[14]_net_1\, S => \i_s[15]\, 
        Y => OPEN, FCO => \i_cry[15]_net_1\);
    
    \pulse_length[10]\ : SLE
      port map(D => un5_pulse_length_cry_6_S, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_8);
    
    \i[27]\ : SLE
      port map(D => \i_lm[27]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[27]_net_1\);
    
    un11_clk_cry_22 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[22]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_21\, S => OPEN, Y
         => OPEN, FCO => \un11_clk_cry_22\);
    
    \pulse_length[14]\ : SLE
      port map(D => un5_pulse_length_cry_10_S, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_12);
    
    un5_pulse_length_cry_2 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \P[4]\, C => GND_net_1, D => 
        GND_net_1, FCI => \un5_pulse_length_cry_1\, S => 
        un5_pulse_length_cry_2_S, Y => OPEN, FCO => 
        \un5_pulse_length_cry_2\);
    
    \i_lm_0[10]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[10]\, Y => 
        \i_lm[10]\);
    
    un11_clk_cry_9 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_7, B => \i[9]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_8\, S => OPEN, Y => 
        OPEN, FCO => \un11_clk_cry_9\);
    
    \i[17]\ : SLE
      port map(D => \i_lm[17]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[17]_net_1\);
    
    un17_clklto13_2 : CFG4
      generic map(INIT => x"0001")

      port map(A => \i[13]_net_1\, B => \i[12]_net_1\, C => 
        \i[11]_net_1\, D => \i[10]_net_1\, Y => \un17_clklto13_2\);
    
    \i_cry[26]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[26]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[25]_net_1\, S => \i_s[26]\, 
        Y => OPEN, FCO => \i_cry[26]_net_1\);
    
    \i_cry[17]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[17]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[16]_net_1\, S => \i_s[17]\, 
        Y => OPEN, FCO => \i_cry[17]_net_1\);
    
    un17_clklto30 : CFG4
      generic map(INIT => x"A080")

      port map(A => \un17_clklto30_8\, B => un17_clklt19, C => 
        \un17_clklto30_7\, D => \un17_clklto19_2\, Y => 
        \un17_clklto30\);
    
    \i_lm_0[18]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[18]\, Y => 
        \i_lm[18]\);
    
    \i[9]\ : SLE
      port map(D => \i_lm[9]\, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[9]_net_1\);
    
    un5_pulse_length_cry_0 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => un5_pulse_length, C => 
        GND_net_1, D => GND_net_1, FCI => GND_net_1, S => OPEN, Y
         => un5_pulse_length_cry_0_Y, FCO => 
        \un5_pulse_length_cry_0\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    un5_pulse_length_cry_1 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => un5_pulse_length_axb_1, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \un5_pulse_length_cry_0\, S => un5_pulse_length_cry_1_S, 
        Y => OPEN, FCO => \un5_pulse_length_cry_1\);
    
    \pulse_length[8]\ : SLE
      port map(D => un5_pulse_length_cry_4_S, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_6);
    
    un11_clk_cry_2 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_0, B => \i[2]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => GND_net_1, S => OPEN, Y => OPEN, 
        FCO => \un11_clk_cry_2\);
    
    \pulse_length[7]\ : SLE
      port map(D => un5_pulse_length_cry_3_S, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_5);
    
    \i_cry[29]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[29]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[28]_net_1\, S => \i_s[29]\, 
        Y => OPEN, FCO => \i_cry[29]_net_1\);
    
    un11_clk_cry_26 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[26]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_25\, S => OPEN, Y
         => OPEN, FCO => \un11_clk_cry_26\);
    
    \pulse_length[13]\ : SLE
      port map(D => un5_pulse_length_cry_9_S, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_11);
    
    \pulse_length[15]\ : SLE
      port map(D => un5_pulse_length_cry_11_S, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_13);
    
    un11_clk_cry_19 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[19]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_18\, S => OPEN, Y
         => OPEN, FCO => \un11_clk_cry_19\);
    
    un5_pulse_length_cry_5 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \P[7]\, C => GND_net_1, D => 
        GND_net_1, FCI => \un5_pulse_length_cry_4\, S => 
        un5_pulse_length_cry_5_S, Y => OPEN, FCO => 
        \un5_pulse_length_cry_5\);
    
    \i_cry[11]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[11]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[10]_net_1\, S => \i_s[11]\, 
        Y => OPEN, FCO => \i_cry[11]_net_1\);
    
    \i[25]\ : SLE
      port map(D => \i_lm[25]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[25]_net_1\);
    
    un11_clk_cry_23 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[23]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_22\, S => OPEN, Y
         => OPEN, FCO => \un11_clk_cry_23\);
    
    un17_clklto30_6 : CFG4
      generic map(INIT => x"0001")

      port map(A => \i[30]_net_1\, B => \i[29]_net_1\, C => 
        \i[28]_net_1\, D => \i[27]_net_1\, Y => \un17_clklto30_6\);
    
    un5_pulse_length_cry_8 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => un5_pulse_length_axb_8, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \un5_pulse_length_cry_7\, S => un5_pulse_length_cry_8_S, 
        Y => OPEN, FCO => \un5_pulse_length_cry_8\);
    
    \i_cry[24]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[24]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[23]_net_1\, S => \i_s[24]\, 
        Y => OPEN, FCO => \i_cry[24]_net_1\);
    
    \i_lm_0[19]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[19]\, Y => 
        \i_lm[19]\);
    
    \i[15]\ : SLE
      port map(D => \i_lm[15]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[15]_net_1\);
    
    \i_lm_0[3]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[3]\, Y => 
        \i_lm[3]\);
    
    \i_lm_0[16]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[16]\, Y => 
        \i_lm[16]\);
    
    \i_lm_0[20]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[20]\, Y => 
        \i_lm[20]\);
    
    un11_clk_cry_28 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[28]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_27\, S => OPEN, Y
         => OPEN, FCO => \un11_clk_cry_28\);
    
    \pulse_length[12]\ : SLE
      port map(D => un5_pulse_length_cry_8_S, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_10);
    
    un11_clk_cry_15 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_13, B => \i[15]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un11_clk_cry_14\, S
         => OPEN, Y => OPEN, FCO => \un11_clk_cry_15\);
    
    \i_cry[7]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[7]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[6]_net_1\, S => \i_s[7]\, Y
         => OPEN, FCO => \i_cry[7]_net_1\);
    
    \i[22]\ : SLE
      port map(D => \i_lm[22]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[22]_net_1\);
    
    \i_s[30]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[30]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[29]_net_1\, S => 
        \i_s[30]_net_1\, Y => OPEN, FCO => OPEN);
    
    \i_cry[12]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[12]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[11]_net_1\, S => \i_s[12]\, 
        Y => OPEN, FCO => \i_cry[12]_net_1\);
    
    \un4_mulonly_0[31:17]\ : MACC
      port map(CLK(1) => FCCC_0_GL0, CLK(0) => FCCC_0_GL0, A(17)
         => GND_net_1, A(16) => GND_net_1, A(15) => GND_net_1, 
        A(14) => GND_net_1, A(13) => GND_net_1, A(12) => 
        GND_net_1, A(11) => GND_net_1, A(10) => VCC_net_1, A(9)
         => VCC_net_1, A(8) => GND_net_1, A(7) => GND_net_1, A(6)
         => VCC_net_1, A(5) => GND_net_1, A(4) => VCC_net_1, A(3)
         => VCC_net_1, A(2) => GND_net_1, A(1) => GND_net_1, A(0)
         => VCC_net_1, A_EN(1) => VCC_net_1, A_EN(0) => VCC_net_1, 
        A_ARST_N(1) => VCC_net_1, A_ARST_N(0) => VCC_net_1, 
        A_SRST_N(1) => VCC_net_1, A_SRST_N(0) => VCC_net_1, B(17)
         => GND_net_1, B(16) => GND_net_1, B(15) => GND_net_1, 
        B(14) => GND_net_1, B(13) => GND_net_1, B(12) => 
        GND_net_1, B(11) => GND_net_1, B(10) => GND_net_1, B(9)
         => GND_net_1, B(8) => GND_net_1, B(7) => GND_net_1, B(6)
         => GND_net_1, B(5) => GND_net_1, B(4) => GND_net_1, B(3)
         => un42_clk_3, B(2) => un42_clk_2, B(1) => un42_clk_1, 
        B(0) => un42_clk_0, B_EN(1) => un1_state_7_0, B_EN(0) => 
        un1_state_7_0, B_ARST_N(1) => FCCC_0_LOCK, B_ARST_N(0)
         => FCCC_0_LOCK, B_SRST_N(1) => VCC_net_1, B_SRST_N(0)
         => VCC_net_1, C(43) => GND_net_1, C(42) => GND_net_1, 
        C(41) => GND_net_1, C(40) => GND_net_1, C(39) => 
        GND_net_1, C(38) => GND_net_1, C(37) => GND_net_1, C(36)
         => GND_net_1, C(35) => GND_net_1, C(34) => GND_net_1, 
        C(33) => GND_net_1, C(32) => GND_net_1, C(31) => 
        GND_net_1, C(30) => GND_net_1, C(29) => GND_net_1, C(28)
         => GND_net_1, C(27) => GND_net_1, C(26) => GND_net_1, 
        C(25) => GND_net_1, C(24) => GND_net_1, C(23) => 
        GND_net_1, C(22) => GND_net_1, C(21) => GND_net_1, C(20)
         => GND_net_1, C(19) => GND_net_1, C(18) => GND_net_1, 
        C(17) => GND_net_1, C(16) => GND_net_1, C(15) => 
        GND_net_1, C(14) => GND_net_1, C(13) => GND_net_1, C(12)
         => GND_net_1, C(11) => GND_net_1, C(10) => GND_net_1, 
        C(9) => GND_net_1, C(8) => GND_net_1, C(7) => GND_net_1, 
        C(6) => GND_net_1, C(5) => GND_net_1, C(4) => GND_net_1, 
        C(3) => GND_net_1, C(2) => GND_net_1, C(1) => GND_net_1, 
        C(0) => GND_net_1, C_EN(1) => VCC_net_1, C_EN(0) => 
        VCC_net_1, C_ARST_N(1) => VCC_net_1, C_ARST_N(0) => 
        VCC_net_1, C_SRST_N(1) => VCC_net_1, C_SRST_N(0) => 
        VCC_net_1, P_EN(1) => VCC_net_1, P_EN(0) => VCC_net_1, 
        P_ARST_N(1) => VCC_net_1, P_ARST_N(0) => VCC_net_1, 
        P_SRST_N(1) => VCC_net_1, P_SRST_N(0) => VCC_net_1, 
        FDBKSEL => GND_net_1, FDBKSEL_EN => VCC_net_1, 
        FDBKSEL_AL_N => VCC_net_1, FDBKSEL_SL_N => VCC_net_1, 
        CDSEL => GND_net_1, CDSEL_EN => VCC_net_1, CDSEL_AL_N => 
        VCC_net_1, CDSEL_SL_N => VCC_net_1, ARSHFT17 => GND_net_1, 
        ARSHFT17_EN => VCC_net_1, ARSHFT17_AL_N => VCC_net_1, 
        ARSHFT17_SL_N => VCC_net_1, SUB => GND_net_1, SUB_EN => 
        VCC_net_1, SUB_AL_N => VCC_net_1, SUB_SL_N => VCC_net_1, 
        CARRYIN => GND_net_1, SIMD => GND_net_1, DOTP => 
        GND_net_1, OVFL_CARRYOUT_SEL => GND_net_1, A_BYPASS(1)
         => VCC_net_1, A_BYPASS(0) => VCC_net_1, B_BYPASS(1) => 
        GND_net_1, B_BYPASS(0) => GND_net_1, C_BYPASS(1) => 
        VCC_net_1, C_BYPASS(0) => VCC_net_1, P_BYPASS(1) => 
        VCC_net_1, P_BYPASS(0) => VCC_net_1, FDBKSEL_BYPASS => 
        VCC_net_1, FDBKSEL_AD => GND_net_1, FDBKSEL_SD_N => 
        GND_net_1, CDSEL_BYPASS => VCC_net_1, CDSEL_AD => 
        GND_net_1, CDSEL_SD_N => GND_net_1, ARSHFT17_BYPASS => 
        VCC_net_1, ARSHFT17_AD => GND_net_1, ARSHFT17_SD_N => 
        GND_net_1, SUB_BYPASS => VCC_net_1, SUB_AD => GND_net_1, 
        SUB_SD_N => GND_net_1, CDIN(43) => GND_net_1, CDIN(42)
         => GND_net_1, CDIN(41) => GND_net_1, CDIN(40) => 
        GND_net_1, CDIN(39) => GND_net_1, CDIN(38) => GND_net_1, 
        CDIN(37) => GND_net_1, CDIN(36) => GND_net_1, CDIN(35)
         => GND_net_1, CDIN(34) => GND_net_1, CDIN(33) => 
        GND_net_1, CDIN(32) => GND_net_1, CDIN(31) => GND_net_1, 
        CDIN(30) => GND_net_1, CDIN(29) => GND_net_1, CDIN(28)
         => GND_net_1, CDIN(27) => GND_net_1, CDIN(26) => 
        GND_net_1, CDIN(25) => GND_net_1, CDIN(24) => GND_net_1, 
        CDIN(23) => GND_net_1, CDIN(22) => GND_net_1, CDIN(21)
         => GND_net_1, CDIN(20) => GND_net_1, CDIN(19) => 
        GND_net_1, CDIN(18) => GND_net_1, CDIN(17) => GND_net_1, 
        CDIN(16) => GND_net_1, CDIN(15) => GND_net_1, CDIN(14)
         => GND_net_1, CDIN(13) => GND_net_1, CDIN(12) => 
        GND_net_1, CDIN(11) => GND_net_1, CDIN(10) => GND_net_1, 
        CDIN(9) => GND_net_1, CDIN(8) => GND_net_1, CDIN(7) => 
        GND_net_1, CDIN(6) => GND_net_1, CDIN(5) => GND_net_1, 
        CDIN(4) => GND_net_1, CDIN(3) => GND_net_1, CDIN(2) => 
        GND_net_1, CDIN(1) => GND_net_1, CDIN(0) => GND_net_1, 
        CDOUT(43) => nc47, CDOUT(42) => nc34, CDOUT(41) => nc70, 
        CDOUT(40) => nc60, CDOUT(39) => nc64, CDOUT(38) => nc9, 
        CDOUT(37) => nc13, CDOUT(36) => nc23, CDOUT(35) => nc55, 
        CDOUT(34) => nc33, CDOUT(33) => nc16, CDOUT(32) => nc26, 
        CDOUT(31) => nc45, CDOUT(30) => nc73, CDOUT(29) => nc58, 
        CDOUT(28) => nc63, CDOUT(27) => nc27, CDOUT(26) => nc17, 
        CDOUT(25) => nc36, CDOUT(24) => nc48, CDOUT(23) => nc37, 
        CDOUT(22) => nc5, CDOUT(21) => nc52, CDOUT(20) => nc51, 
        CDOUT(19) => nc66, CDOUT(18) => nc67, CDOUT(17) => nc4, 
        CDOUT(16) => nc42, CDOUT(15) => nc41, CDOUT(14) => nc59, 
        CDOUT(13) => nc25, CDOUT(12) => nc15, CDOUT(11) => nc35, 
        CDOUT(10) => nc49, CDOUT(9) => nc28, CDOUT(8) => nc18, 
        CDOUT(7) => nc65, CDOUT(6) => nc38, CDOUT(5) => nc1, 
        CDOUT(4) => nc2, CDOUT(3) => nc50, CDOUT(2) => nc22, 
        CDOUT(1) => nc12, CDOUT(0) => nc21, P(43) => nc11, P(42)
         => nc54, P(41) => nc68, P(40) => nc3, P(39) => nc32, 
        P(38) => nc40, P(37) => nc31, P(36) => nc44, P(35) => nc7, 
        P(34) => nc72, P(33) => nc6, P(32) => nc71, P(31) => nc62, 
        P(30) => nc61, P(29) => nc19, P(28) => nc29, P(27) => 
        nc53, P(26) => nc39, P(25) => nc8, P(24) => nc43, P(23)
         => nc69, P(22) => nc56, P(21) => nc20, P(20) => nc10, 
        P(19) => nc57, P(18) => nc24, P(17) => nc14, P(16) => 
        nc46, P(15) => nc30, P(14) => un5_pulse_length_axb_12, 
        P(13) => \P[13]\, P(12) => \P[12]\, P(11) => 
        un5_pulse_length_axb_9, P(10) => un5_pulse_length_axb_8, 
        P(9) => un5_pulse_length_axb_7, P(8) => 
        un5_pulse_length_axb_6, P(7) => \P[7]\, P(6) => \P[6]\, 
        P(5) => un5_pulse_length_axb_3, P(4) => \P[4]\, P(3) => 
        un5_pulse_length_axb_1, P(2) => un5_pulse_length, P(1)
         => \P[1]\, P(0) => \P[0]\, OVFL_CARRYOUT => OPEN);
    
    \i_lm_0[6]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[6]\, Y => 
        \i_lm[6]\);
    
    \i_cry[18]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[18]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[17]_net_1\, S => \i_s[18]\, 
        Y => OPEN, FCO => \i_cry[18]_net_1\);
    
    \i[2]\ : SLE
      port map(D => \i_lm[2]\, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[2]_net_1\);
    
    \i[12]\ : SLE
      port map(D => \i_lm[12]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[12]_net_1\);
    
    un17_clklto30_8 : CFG4
      generic map(INIT => x"0004")

      port map(A => \i[20]_net_1\, B => \un17_clklto30_6\, C => 
        \i[22]_net_1\, D => \i[21]_net_1\, Y => \un17_clklto30_8\);
    
    \i_lm_0[28]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[28]\, Y => 
        \i_lm[28]\);
    
    un11_clk_cry_11 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_9, B => \i[11]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un11_clk_cry_10\, S
         => OPEN, Y => OPEN, FCO => \un11_clk_cry_11\);
    
    \i_lm_0[1]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[1]\, Y => 
        \i_lm[1]\);
    
    \i_lm_0[12]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[12]\, Y => 
        \i_lm[12]\);
    
    \i[20]\ : SLE
      port map(D => \i_lm[20]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[20]_net_1\);
    
    un5_pulse_length_cry_9 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => un5_pulse_length_axb_9, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \un5_pulse_length_cry_8\, S => un5_pulse_length_cry_9_S, 
        Y => OPEN, FCO => \un5_pulse_length_cry_9\);
    
    \i[30]\ : SLE
      port map(D => \i_lm[30]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[30]_net_1\);
    
    un5_pulse_length_cry_6 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => un5_pulse_length_axb_6, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \un5_pulse_length_cry_5\, S => un5_pulse_length_cry_6_S, 
        Y => OPEN, FCO => \un5_pulse_length_cry_6\);
    
    \pulse_length[9]\ : SLE
      port map(D => un5_pulse_length_cry_5_S, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_7);
    
    \i_lm_0[11]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[11]\, Y => 
        \i_lm[11]\);
    
    \i[10]\ : SLE
      port map(D => \i_lm[10]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[10]_net_1\);
    
    un5_pulse_length_cry_10 : ARI1
      generic map(INIT => x"65500")

      port map(A => VCC_net_1, B => \P[12]\, C => GND_net_1, D
         => GND_net_1, FCI => \un5_pulse_length_cry_9\, S => 
        un5_pulse_length_cry_10_S, Y => OPEN, FCO => 
        \un5_pulse_length_cry_10\);
    
    \i[6]\ : SLE
      port map(D => \i_lm[6]\, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[6]_net_1\);
    
    \i_cry[1]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[1]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => i_s_102_FCO, S => \i_s[1]\, Y => 
        OPEN, FCO => \i_cry[1]_net_1\);
    
    \i[29]\ : SLE
      port map(D => \i_lm[29]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[29]_net_1\);
    
    \i_cry[2]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[2]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[1]_net_1\, S => \i_s[2]\, Y
         => OPEN, FCO => \i_cry[2]_net_1\);
    
    \i[4]\ : SLE
      port map(D => \i_lm[4]\, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[4]_net_1\);
    
    \i_cry[10]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[10]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[9]_net_1\, S => \i_s[10]\, 
        Y => OPEN, FCO => \i_cry[10]_net_1\);
    
    \i_cry[6]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[6]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[5]_net_1\, S => \i_s[6]\, Y
         => OPEN, FCO => \i_cry[6]_net_1\);
    
    servo_pwm_RNO : CFG2
      generic map(INIT => x"E")

      port map(A => \state[0]_net_1\, B => \state[1]_net_1\, Y
         => \state_d_i_0[2]\);
    
    \pulse_length[6]\ : SLE
      port map(D => un5_pulse_length_cry_2_S, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_4);
    
    \i_lm_0[8]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[8]\, Y => 
        \i_lm[8]\);
    
    \i[19]\ : SLE
      port map(D => \i_lm[19]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[19]_net_1\);
    
    un5_pulse_length_cry_3 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => un5_pulse_length_axb_3, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \un5_pulse_length_cry_2\, S => un5_pulse_length_cry_3_S, 
        Y => OPEN, FCO => \un5_pulse_length_cry_3\);
    
    \i_cry[25]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[25]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[24]_net_1\, S => \i_s[25]\, 
        Y => OPEN, FCO => \i_cry[25]_net_1\);
    
    \i_lm_0[29]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[29]\, Y => 
        \i_lm[29]\);
    
    un11_clk_cry_17 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_15, B => \i[17]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un11_clk_cry_16\, S
         => OPEN, Y => OPEN, FCO => \un11_clk_cry_17\);
    
    \i_lm_0[26]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[26]\, Y => 
        \i_lm[26]\);
    
    un11_clk_cry_10 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_8, B => \i[10]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un11_clk_cry_9\, S => 
        OPEN, Y => OPEN, FCO => \un11_clk_cry_10\);
    
    \i[24]\ : SLE
      port map(D => \i_lm[24]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[24]_net_1\);
    
    \state_ns_0[1]\ : CFG4
      generic map(INIT => x"40EA")

      port map(A => \state[0]_net_1\, B => \state[1]_net_1\, C
         => \un17_clklto30\, D => \un11_clk_cry_30\, Y => 
        \state_ns[1]\);
    
    un17_clklto15 : CFG4
      generic map(INIT => x"5111")

      port map(A => \i[15]_net_1\, B => \i[14]_net_1\, C => 
        \un17_clklto13_2\, D => un17_clklt13, Y => un17_clklt19);
    
    \i_lm_0[7]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[7]\, Y => 
        \i_lm[7]\);
    
    \i_lm_0[13]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[13]\, Y => 
        \i_lm[13]\);
    
    \i[14]\ : SLE
      port map(D => \i_lm[14]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[14]_net_1\);
    
    \i_cry[3]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[3]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[2]_net_1\, S => \i_s[3]\, Y
         => OPEN, FCO => \i_cry[3]_net_1\);
    
    \i_cry[27]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[27]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[26]_net_1\, S => \i_s[27]\, 
        Y => OPEN, FCO => \i_cry[27]_net_1\);
    
    \pulse_length[4]\ : SLE
      port map(D => un5_pulse_length_cry_0_Y, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_2);
    
    un11_clk_cry_29 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[29]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_28\, S => OPEN, Y
         => OPEN, FCO => \un11_clk_cry_29\);
    
    un11_clk_cry_14 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_12, B => \i[14]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un11_clk_cry_13\, S
         => OPEN, Y => OPEN, FCO => \un11_clk_cry_14\);
    
    \state[1]\ : SLE
      port map(D => \state_ns[1]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \state[1]_net_1\);
    
    \i_lm_0[30]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[30]_net_1\, 
        Y => \i_lm[30]\);
    
    \i_cry[4]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[4]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[3]_net_1\, S => \i_s[4]\, Y
         => OPEN, FCO => \i_cry[4]_net_1\);
    
    \pulse_length[11]\ : SLE
      port map(D => un5_pulse_length_cry_7_S, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_9);
    
    \i_lm_0[22]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[22]\, Y => 
        \i_lm[22]\);
    
    \i[5]\ : SLE
      port map(D => \i_lm[5]\, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[5]_net_1\);
    
    un11_clk_cry_8 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_6, B => \i[8]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_7\, S => OPEN, Y => 
        OPEN, FCO => \un11_clk_cry_8\);
    
    \i_lm_0[9]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[9]\, Y => 
        \i_lm[9]\);
    
    \i[8]\ : SLE
      port map(D => \i_lm[8]\, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[8]_net_1\);
    
    \pulse_length[17]\ : SLE
      port map(D => \un5_pulse_length_cry_12\, CLK => FCCC_0_GL0, 
        EN => \state_d[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => un11_clk_15);
    
    \i_lm_0[21]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[21]\, Y => 
        \i_lm[21]\);
    
    \i_cry[13]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[13]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[12]_net_1\, S => \i_s[13]\, 
        Y => OPEN, FCO => \i_cry[13]_net_1\);
    
    \i_lm_0[5]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[5]\, Y => 
        \i_lm[5]\);
    
    un11_clk_cry_5 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_3, B => \i[5]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_4\, S => OPEN, Y => 
        OPEN, FCO => \un11_clk_cry_5\);
    
    \state_RNO[0]\ : CFG3
      generic map(INIT => x"0D")

      port map(A => \state[0]_net_1\, B => \un11_clk_cry_30\, C
         => \state[1]_net_1\, Y => N_35_i_0);
    
    \i_lm_0[14]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[14]\, Y => 
        \i_lm[14]\);
    
    \i_cry[5]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[5]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[4]_net_1\, S => \i_s[5]\, Y
         => OPEN, FCO => \i_cry[5]_net_1\);
    
    un11_clk_cry_6 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_4, B => \i[6]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_5\, S => OPEN, Y => 
        OPEN, FCO => \un11_clk_cry_6\);
    
    un11_clk_cry_30 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[30]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_29\, S => OPEN, Y
         => OPEN, FCO => \un11_clk_cry_30\);
    
    un11_clk_cry_25 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[25]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_24\, S => OPEN, Y
         => OPEN, FCO => \un11_clk_cry_25\);
    
    \pulse_length[2]\ : SLE
      port map(D => \P[0]\, CLK => FCCC_0_GL0, EN => \state_d[2]\, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => un11_clk_0);
    
    un17_clklto19_2 : CFG4
      generic map(INIT => x"7FFF")

      port map(A => \i[19]_net_1\, B => \i[18]_net_1\, C => 
        \i[17]_net_1\, D => \i[16]_net_1\, Y => \un17_clklto19_2\);
    
    \i_cry[9]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[9]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[8]_net_1\, S => \i_s[9]\, Y
         => OPEN, FCO => \i_cry[9]_net_1\);
    
    \i_cry[21]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[21]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[20]_net_1\, S => \i_s[21]\, 
        Y => OPEN, FCO => \i_cry[21]_net_1\);
    
    \i[3]\ : SLE
      port map(D => \i_lm[3]\, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[3]_net_1\);
    
    \i_lm_0[4]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[4]\, Y => 
        \i_lm[4]\);
    
    \i_cry[16]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[16]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[15]_net_1\, S => \i_s[16]\, 
        Y => OPEN, FCO => \i_cry[16]_net_1\);
    
    \i_cry[8]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[8]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[7]_net_1\, S => \i_s[8]\, Y
         => OPEN, FCO => \i_cry[8]_net_1\);
    
    un11_clk_cry_21 : ARI1
      generic map(INIT => x"45500")

      port map(A => VCC_net_1, B => \i[21]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_20\, S => OPEN, Y
         => OPEN, FCO => \un11_clk_cry_21\);
    
    \pulse_length[3]\ : SLE
      port map(D => \P[1]\, CLK => FCCC_0_GL0, EN => \state_d[2]\, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => un11_clk_1);
    
    i_s_102 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[0]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => VCC_net_1, S => OPEN, Y => OPEN, 
        FCO => i_s_102_FCO);
    
    servo_pwm : SLE
      port map(D => \state[0]_net_1\, CLK => FCCC_0_GL0, EN => 
        \state_d_i_0[2]\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => servo_pwm_c);
    
    \i[1]\ : SLE
      port map(D => \i_lm[1]\, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \i[1]_net_1\);
    
    un1_state_0_sqmuxa_0 : CFG4
      generic map(INIT => x"EAC0")

      port map(A => \state[0]_net_1\, B => \state[1]_net_1\, C
         => \un17_clklto30\, D => \un11_clk_cry_30\, Y => 
        \un1_state_0_sqmuxa_0\);
    
    un11_clk_cry_12 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_10, B => \i[12]_net_1\, C => 
        GND_net_1, D => GND_net_1, FCI => \un11_clk_cry_11\, S
         => OPEN, Y => OPEN, FCO => \un11_clk_cry_12\);
    
    \i[28]\ : SLE
      port map(D => \i_lm[28]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[28]_net_1\);
    
    un5_pulse_length_cry_7 : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => un5_pulse_length_axb_7, C => 
        GND_net_1, D => GND_net_1, FCI => 
        \un5_pulse_length_cry_6\, S => un5_pulse_length_cry_7_S, 
        Y => OPEN, FCO => \un5_pulse_length_cry_7\);
    
    \i_cry[22]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[22]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[21]_net_1\, S => \i_s[22]\, 
        Y => OPEN, FCO => \i_cry[22]_net_1\);
    
    \i_lm_0[17]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[17]\, Y => 
        \i_lm[17]\);
    
    \i_lm_0[23]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[23]\, Y => 
        \i_lm[23]\);
    
    state_s0_0_a3 : CFG2
      generic map(INIT => x"1")

      port map(A => \state[0]_net_1\, B => \state[1]_net_1\, Y
         => \state_d[2]\);
    
    \i_cry[19]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[19]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[18]_net_1\, S => \i_s[19]\, 
        Y => OPEN, FCO => \i_cry[19]_net_1\);
    
    \i_cry[28]\ : ARI1
      generic map(INIT => x"4AA00")

      port map(A => VCC_net_1, B => \i[28]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \i_cry[27]_net_1\, S => \i_s[28]\, 
        Y => OPEN, FCO => \i_cry[28]_net_1\);
    
    \i[18]\ : SLE
      port map(D => \i_lm[18]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[18]_net_1\);
    
    un11_clk_cry_4 : ARI1
      generic map(INIT => x"5AA55")

      port map(A => un11_clk_2, B => \i[4]_net_1\, C => GND_net_1, 
        D => GND_net_1, FCI => \un11_clk_cry_3\, S => OPEN, Y => 
        OPEN, FCO => \un11_clk_cry_4\);
    
    \i_lm_0[15]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \un1_state_0_sqmuxa_0\, B => \i_s[15]\, Y => 
        \i_lm[15]\);
    
    \i[26]\ : SLE
      port map(D => \i_lm[26]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \i[26]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity TOP_COREUART_0_Tx_async_0_0 is

    port( tx_hold_reg_0     : in    std_logic;
          tx_hold_reg_1     : in    std_logic;
          tx_hold_reg_2     : in    std_logic;
          tx_hold_reg_3     : in    std_logic;
          tx_hold_reg_5     : in    std_logic;
          tx_c              : out   std_logic;
          FCCC_0_LOCK       : in    std_logic;
          FCCC_0_GL0        : in    std_logic;
          N_313_i_0         : in    std_logic;
          COREUART_0_TXRDY  : out   std_logic;
          time_sender_0_wen : in    std_logic;
          N_313             : in    std_logic
        );

end TOP_COREUART_0_Tx_async_0_0;

architecture DEF_ARCH of TOP_COREUART_0_Tx_async_0_0 is 

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal GND_net_1, tx_xhdl2_3_iv_0_i, 
        un5_xmit_pulse_i_a3_0_a2_i, VCC_net_1, 
        \xmit_bit_sel[0]_net_1\, \xmit_bit_sel_3[0]\, 
        \xmit_bit_sel[1]_net_1\, N_106_i_0, 
        \xmit_bit_sel[2]_net_1\, N_108_i_0, 
        \xmit_bit_sel[3]_net_1\, N_110_i_0, \COREUART_0_TXRDY\, 
        txrdy_int_1_sqmuxa_i_0, \tx_byte[0]_net_1\, N_334_i_0, 
        \tx_byte[1]_net_1\, \tx_byte[2]_net_1\, 
        \tx_byte[3]_net_1\, \tx_byte[5]\, \xmit_state[5]_net_1\, 
        \xmit_state_ns[0]\, \xmit_state[4]_net_1\, 
        \xmit_state_ns[1]\, \xmit_state[3]_net_1\, 
        \xmit_state_ns[2]\, \xmit_state[2]_net_1\, N_563_i_0, 
        \xmit_state[0]_net_1\, \xmit_state_ns[5]\, 
        \xmit_state_ns_a3_2_0_1[0]_net_1\, 
        tx_xhdl2_1_7_i_m2_ns_1_2, tx_xhdl2_1_7_i_m2_ns_1, N_348, 
        N_315, N_705 : std_logic;

begin 

    COREUART_0_TXRDY <= \COREUART_0_TXRDY\;

    \xmit_cnt.xmit_bit_sel_3_i_0_o2[2]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \xmit_bit_sel[0]_net_1\, B => 
        \xmit_bit_sel[1]_net_1\, Y => N_315);
    
    txrdy_int : SLE
      port map(D => time_sender_0_wen, CLK => FCCC_0_GL0, EN => 
        txrdy_int_1_sqmuxa_i_0, ALn => FCCC_0_LOCK, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \COREUART_0_TXRDY\);
    
    \xmit_state[3]\ : SLE
      port map(D => \xmit_state_ns[2]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[3]_net_1\);
    
    \tx_byte[0]\ : SLE
      port map(D => tx_hold_reg_0, CLK => FCCC_0_GL0, EN => 
        N_334_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[0]_net_1\);
    
    \xmit_state[0]\ : SLE
      port map(D => \xmit_state_ns[5]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[0]_net_1\);
    
    \tx_byte[4]\ : SLE
      port map(D => tx_hold_reg_5, CLK => FCCC_0_GL0, EN => 
        N_334_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[5]\);
    
    \xmit_state_RNIMINA[3]\ : CFG2
      generic map(INIT => x"4")

      port map(A => N_313, B => \xmit_state[3]_net_1\, Y => 
        N_334_i_0);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_ns_1_2\ : CFG4
      generic map(INIT => x"530F")

      port map(A => \tx_byte[3]_net_1\, B => \tx_byte[1]_net_1\, 
        C => \xmit_bit_sel[1]_net_1\, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_i_m2_ns_1_2);
    
    \xmit_cnt.xmit_bit_sel_3_a3_0_a2[0]\ : CFG2
      generic map(INIT => x"2")

      port map(A => \xmit_state[2]_net_1\, B => 
        \xmit_bit_sel[0]_net_1\, Y => \xmit_bit_sel_3[0]\);
    
    \xmit_bit_sel_RNO[1]\ : CFG3
      generic map(INIT => x"48")

      port map(A => \xmit_bit_sel[0]_net_1\, B => 
        \xmit_state[2]_net_1\, C => \xmit_bit_sel[1]_net_1\, Y
         => N_106_i_0);
    
    \xmit_state_ns_0_0[2]\ : CFG3
      generic map(INIT => x"F8")

      port map(A => \xmit_state[3]_net_1\, B => N_313, C => 
        \xmit_state[4]_net_1\, Y => \xmit_state_ns[2]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    txrdy_int_1_sqmuxa_i : CFG3
      generic map(INIT => x"4F")

      port map(A => N_313, B => \xmit_state[3]_net_1\, C => 
        time_sender_0_wen, Y => txrdy_int_1_sqmuxa_i_0);
    
    \xmit_state[5]\ : SLE
      port map(D => \xmit_state_ns[0]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[5]_net_1\);
    
    \xmit_sm.un5_xmit_pulse_i_a3_0_a2_i\ : CFG3
      generic map(INIT => x"FB")

      port map(A => \xmit_state[4]_net_1\, B => N_313, C => 
        \xmit_state[5]_net_1\, Y => un5_xmit_pulse_i_a3_0_a2_i);
    
    \xmit_state_ns_a3_2_0_1[0]\ : CFG4
      generic map(INIT => x"00DC")

      port map(A => \xmit_state[4]_net_1\, B => 
        \xmit_state[0]_net_1\, C => \COREUART_0_TXRDY\, D => 
        \xmit_state[2]_net_1\, Y => 
        \xmit_state_ns_a3_2_0_1[0]_net_1\);
    
    \xmit_state[2]\ : SLE
      port map(D => N_563_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[2]_net_1\);
    
    \xmit_bit_sel[3]\ : SLE
      port map(D => N_110_i_0, CLK => FCCC_0_GL0, EN => N_313_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[3]_net_1\);
    
    tx_xhdl2 : SLE
      port map(D => tx_xhdl2_3_iv_0_i, CLK => FCCC_0_GL0, EN => 
        un5_xmit_pulse_i_a3_0_a2_i, ALn => FCCC_0_LOCK, ADn => 
        GND_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => tx_c);
    
    \xmit_bit_sel[2]\ : SLE
      port map(D => N_108_i_0, CLK => FCCC_0_GL0, EN => N_313_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[2]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \tx_byte[3]\ : SLE
      port map(D => tx_hold_reg_3, CLK => FCCC_0_GL0, EN => 
        N_334_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[3]_net_1\);
    
    \xmit_state_ns_a3_2_0[0]\ : CFG4
      generic map(INIT => x"1030")

      port map(A => \xmit_state[0]_net_1\, B => 
        \xmit_state[3]_net_1\, C => 
        \xmit_state_ns_a3_2_0_1[0]_net_1\, D => N_313, Y => 
        \xmit_state_ns[0]\);
    
    \xmit_bit_sel_RNO[2]\ : CFG3
      generic map(INIT => x"84")

      port map(A => \xmit_bit_sel[2]_net_1\, B => 
        \xmit_state[2]_net_1\, C => N_315, Y => N_108_i_0);
    
    \xmit_sel.tx_xhdl2_3_iv_0_i\ : CFG3
      generic map(INIT => x"0D")

      port map(A => \xmit_state[2]_net_1\, B => N_348, C => 
        \xmit_state[3]_net_1\, Y => tx_xhdl2_3_iv_0_i);
    
    \xmit_state_ns_a3_0_a2_0_a2[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \COREUART_0_TXRDY\, B => 
        \xmit_state[5]_net_1\, Y => \xmit_state_ns[1]\);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_ns_1\ : CFG4
      generic map(INIT => x"F053")

      port map(A => \tx_byte[0]_net_1\, B => \tx_byte[2]_net_1\, 
        C => tx_xhdl2_1_7_i_m2_ns_1_2, D => 
        \xmit_bit_sel[0]_net_1\, Y => tx_xhdl2_1_7_i_m2_ns_1);
    
    \xmit_state_ns_i_i_i_a2_1[3]\ : CFG3
      generic map(INIT => x"02")

      port map(A => \xmit_bit_sel[2]_net_1\, B => N_315, C => 
        \xmit_bit_sel[3]_net_1\, Y => N_705);
    
    \xmit_sel.tx_xhdl2_1_7_i_m2_ns\ : CFG4
      generic map(INIT => x"083B")

      port map(A => \tx_byte[5]\, B => \xmit_bit_sel[2]_net_1\, C
         => \xmit_bit_sel[1]_net_1\, D => tx_xhdl2_1_7_i_m2_ns_1, 
        Y => N_348);
    
    \xmit_bit_sel[1]\ : SLE
      port map(D => N_106_i_0, CLK => FCCC_0_GL0, EN => N_313_i_0, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[1]_net_1\);
    
    \xmit_bit_sel[0]\ : SLE
      port map(D => \xmit_bit_sel_3[0]\, CLK => FCCC_0_GL0, EN
         => N_313_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_bit_sel[0]_net_1\);
    
    \xmit_state_RNO[2]\ : CFG4
      generic map(INIT => x"CCAE")

      port map(A => \xmit_state[3]_net_1\, B => 
        \xmit_state[2]_net_1\, C => N_705, D => N_313, Y => 
        N_563_i_0);
    
    \tx_byte[2]\ : SLE
      port map(D => tx_hold_reg_2, CLK => FCCC_0_GL0, EN => 
        N_334_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[2]_net_1\);
    
    \xmit_state_ns_0_0[5]\ : CFG4
      generic map(INIT => x"CAC0")

      port map(A => \xmit_state[2]_net_1\, B => 
        \xmit_state[0]_net_1\, C => N_313, D => N_705, Y => 
        \xmit_state_ns[5]\);
    
    \tx_byte[1]\ : SLE
      port map(D => tx_hold_reg_1, CLK => FCCC_0_GL0, EN => 
        N_334_i_0, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \tx_byte[1]_net_1\);
    
    \xmit_state[4]\ : SLE
      port map(D => \xmit_state_ns[1]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_state[4]_net_1\);
    
    \xmit_bit_sel_RNO[3]\ : CFG4
      generic map(INIT => x"C600")

      port map(A => \xmit_bit_sel[2]_net_1\, B => 
        \xmit_bit_sel[3]_net_1\, C => N_315, D => 
        \xmit_state[2]_net_1\, Y => N_110_i_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity TOP_COREUART_0_Rx_async_0_0 is

    port( COREUART_0_DATA_OUT : out   std_logic_vector(7 downto 0);
          FCCC_0_LOCK         : in    std_logic;
          FCCC_0_GL0          : in    std_logic;
          baud_clock          : in    std_logic;
          receive_full        : out   std_logic;
          BT_module_0_oen     : in    std_logic;
          stop_strobe         : out   std_logic;
          rx_c                : in    std_logic
        );

end TOP_COREUART_0_Rx_async_0_0;

architecture DEF_ARCH of TOP_COREUART_0_Rx_async_0_0 is 

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

    signal \rx_state[1]_net_1\, VCC_net_1, N_13_i_0, GND_net_1, 
        \rx_state[0]_net_1\, N_15_i_0, \rx_shift[0]_net_1\, 
        \rx_shift_12[0]\, \un1_samples8_1_0_0\, 
        \rx_shift[1]_net_1\, \rx_shift_12[1]\, 
        \rx_shift[2]_net_1\, \rx_shift_12[2]\, 
        \rx_shift[3]_net_1\, \rx_shift_12[3]\, 
        \rx_shift[4]_net_1\, \rx_shift_12[4]\, 
        \rx_shift[5]_net_1\, \rx_shift_12[5]\, 
        \rx_shift[6]_net_1\, \rx_shift_12[6]\, 
        \rx_shift[7]_net_1\, N_17_i_1, \receive_count[0]_net_1\, 
        N_246_i_0, \receive_count[1]_net_1\, N_265_i_0, 
        \receive_count[2]_net_1\, N_286_i_0, 
        \receive_count[3]_net_1\, N_308_i_0, \receive_full\, 
        \un1_receive_full_int_1_sqmuxa_i_0\, 
        rx_byte_xhdl5_1_sqmuxa, \last_bit[0]_net_1\, 
        un30_baud_clock, \last_bit[3]_net_1\, 
        framing_error_int_2_sqmuxa, \samples[0]_net_1\, 
        \samples[1]_net_1\, \samples[2]_net_1\, 
        \rx_bit_cnt[0]_net_1\, N_101_i_0, \rx_bit_cnt[1]_net_1\, 
        N_23_i_0, \rx_bit_cnt[2]_net_1\, N_21_i_0, 
        \rx_bit_cnt[3]_net_1\, N_19_i_0, un47_baud_clock_NE_0, 
        \rx_byte_xhdl5_1_sqmuxa_0_a2\, \rx_bit_cnt_4_i_a2[3]\, 
        \receive_count_RNI17N31[2]_net_1\, 
        \rx_state_RNIJP7J[0]_net_1\, N_127, 
        \samples_RNIIN5V1[0]_net_1\, 
        \un1_receive_full_int_1_sqmuxa_i_a3_0\, N_140, 
        un1_receive_full_int_1_sqmuxa_i_a3_3, 
        receive_count_3_2_80_i_0_a3_1, m16_i_a2_0, N_110, 
        un47_baud_clock_NE, \samples_RNIVTTB1[0]_net_1\, N_122, 
        m16_i_0, \rx_bit_cnt_4_i_o2[0]\, m16_i_1, m19_i_1, 
        \samples_RNI9R4M3[0]_net_1\, N_112, N_108 : std_logic;

begin 

    receive_full <= \receive_full\;

    \rx_byte_xhdl5[0]\ : SLE
      port map(D => \rx_shift[0]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => COREUART_0_DATA_OUT(0));
    
    \rcv_sm.un47_baud_clock_NE_0\ : CFG4
      generic map(INIT => x"7BDE")

      port map(A => \last_bit[3]_net_1\, B => \last_bit[0]_net_1\, 
        C => \rx_bit_cnt[3]_net_1\, D => \rx_bit_cnt[0]_net_1\, Y
         => un47_baud_clock_NE_0);
    
    \samples[0]\ : SLE
      port map(D => \samples[1]_net_1\, CLK => FCCC_0_GL0, EN => 
        baud_clock, ALn => FCCC_0_LOCK, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \samples[0]_net_1\);
    
    \rx_state_ns_1_0_.m16_i_a3\ : CFG4
      generic map(INIT => x"CCC8")

      port map(A => \receive_count[0]_net_1\, B => 
        \rx_state_RNIJP7J[0]_net_1\, C => 
        \receive_count[2]_net_1\, D => \receive_count[1]_net_1\, 
        Y => N_127);
    
    \rx_shift[2]\ : SLE
      port map(D => \rx_shift_12[2]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[2]_net_1\);
    
    \rx_byte_xhdl5[6]\ : SLE
      port map(D => \rx_shift[6]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => COREUART_0_DATA_OUT(6));
    
    \receive_count[1]\ : SLE
      port map(D => N_265_i_0, CLK => FCCC_0_GL0, EN => 
        baud_clock, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[1]_net_1\);
    
    \rx_shift[7]\ : SLE
      port map(D => N_17_i_1, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[7]_net_1\);
    
    \rx_state_ns_1_0_.m16_i_0\ : CFG4
      generic map(INIT => x"F2F0")

      port map(A => \rx_state[1]_net_1\, B => 
        \receive_count[0]_net_1\, C => N_127, D => m16_i_a2_0, Y
         => m16_i_0);
    
    \rx_shift[0]\ : SLE
      port map(D => \rx_shift_12[0]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[0]_net_1\);
    
    un1_samples8_1_0_0 : CFG4
      generic map(INIT => x"F0F8")

      port map(A => baud_clock, B => \receive_count[3]_net_1\, C
         => \rx_bit_cnt_4_i_a2[3]\, D => 
        \receive_count_RNI17N31[2]_net_1\, Y => 
        \un1_samples8_1_0_0\);
    
    \samples_RNIVTTB1[0]\ : CFG3
      generic map(INIT => x"E8")

      port map(A => \samples[1]_net_1\, B => \samples[0]_net_1\, 
        C => \samples[2]_net_1\, Y => \samples_RNIVTTB1[0]_net_1\);
    
    \receive_shift.rx_shift_12[0]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \rx_state_RNIJP7J[0]_net_1\, B => 
        \rx_shift[1]_net_1\, Y => \rx_shift_12[0]\);
    
    \receive_count_RNO_0[0]\ : CFG3
      generic map(INIT => x"04")

      port map(A => \receive_count[1]_net_1\, B => 
        \receive_count[3]_net_1\, C => \receive_count[2]_net_1\, 
        Y => receive_count_3_2_80_i_0_a3_1);
    
    un1_receive_full_int_1_sqmuxa_i_0 : CFG4
      generic map(INIT => x"D555")

      port map(A => BT_module_0_oen, B => baud_clock, C => 
        \un1_receive_full_int_1_sqmuxa_i_a3_0\, D => 
        un1_receive_full_int_1_sqmuxa_i_a3_3, Y => 
        \un1_receive_full_int_1_sqmuxa_i_0\);
    
    \rx_byte_xhdl5[7]\ : SLE
      port map(D => \rx_shift[7]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => COREUART_0_DATA_OUT(7));
    
    \receive_count[3]\ : SLE
      port map(D => N_308_i_0, CLK => FCCC_0_GL0, EN => 
        baud_clock, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[3]_net_1\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \rx_bit_cnt[2]\ : SLE
      port map(D => N_21_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[2]_net_1\);
    
    \rx_state_ns_1_0_.m16_i_1\ : CFG4
      generic map(INIT => x"F2F0")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        C => m16_i_0, D => \receive_count_RNI17N31[2]_net_1\, Y
         => m16_i_1);
    
    \rx_bit_cnt[1]\ : SLE
      port map(D => N_23_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[1]_net_1\);
    
    framing_error_int_2_sqmuxa_0_a4_0_a3 : CFG4
      generic map(INIT => x"0200")

      port map(A => \receive_count[3]_net_1\, B => 
        \rx_state[0]_net_1\, C => 
        \receive_count_RNI17N31[2]_net_1\, D => 
        \rx_state[1]_net_1\, Y => framing_error_int_2_sqmuxa);
    
    \samples_RNI9R4M3[0]\ : CFG3
      generic map(INIT => x"EC")

      port map(A => m16_i_a2_0, B => \samples_RNIIN5V1[0]_net_1\, 
        C => N_140, Y => \samples_RNI9R4M3[0]_net_1\);
    
    \receive_count_RNO_0[3]\ : CFG2
      generic map(INIT => x"2")

      port map(A => \rx_state_RNIJP7J[0]_net_1\, B => N_110, Y
         => N_122);
    
    \rx_bit_cnt_RNO[0]\ : CFG3
      generic map(INIT => x"09")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        \rx_bit_cnt_4_i_o2[0]\, C => \rx_bit_cnt_4_i_a2[3]\, Y
         => N_101_i_0);
    
    \receive_count_RNO[2]\ : CFG4
      generic map(INIT => x"1230")

      port map(A => \receive_count[0]_net_1\, B => 
        \samples_RNI9R4M3[0]_net_1\, C => 
        \receive_count[2]_net_1\, D => \receive_count[1]_net_1\, 
        Y => N_286_i_0);
    
    \receive_count_RNI17N31[2]\ : CFG3
      generic map(INIT => x"7F")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[1]_net_1\, C => \receive_count[0]_net_1\, 
        Y => \receive_count_RNI17N31[2]_net_1\);
    
    \samples[1]\ : SLE
      port map(D => \samples[2]_net_1\, CLK => FCCC_0_GL0, EN => 
        baud_clock, ALn => FCCC_0_LOCK, ADn => GND_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \samples[1]_net_1\);
    
    \rx_bit_cnt_RNO[2]\ : CFG3
      generic map(INIT => x"09")

      port map(A => N_108, B => \rx_bit_cnt[2]_net_1\, C => 
        \rx_bit_cnt_4_i_a2[3]\, Y => N_21_i_0);
    
    \receive_count[2]\ : SLE
      port map(D => N_286_i_0, CLK => FCCC_0_GL0, EN => 
        baud_clock, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[2]_net_1\);
    
    stop_strobe_i : SLE
      port map(D => framing_error_int_2_sqmuxa, CLK => FCCC_0_GL0, 
        EN => baud_clock, ALn => FCCC_0_LOCK, ADn => VCC_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => stop_strobe);
    
    \receive_shift.rx_shift_12[2]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \rx_state_RNIJP7J[0]_net_1\, B => 
        \rx_shift[3]_net_1\, Y => \rx_shift_12[2]\);
    
    \receive_shift.rx_shift_12[5]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \rx_state_RNIJP7J[0]_net_1\, B => 
        \rx_shift[6]_net_1\, Y => \rx_shift_12[5]\);
    
    \rx_state[1]\ : SLE
      port map(D => N_13_i_0, CLK => FCCC_0_GL0, EN => baud_clock, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[1]_net_1\);
    
    \rx_shift_RNO[7]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \rx_state_RNIJP7J[0]_net_1\, B => 
        \samples_RNIVTTB1[0]_net_1\, Y => N_17_i_1);
    
    \rx_state_ns_1_0_.N_13_i\ : CFG4
      generic map(INIT => x"0023")

      port map(A => \rx_state[1]_net_1\, B => 
        \rx_state_RNIJP7J[0]_net_1\, C => un47_baud_clock_NE, D
         => m19_i_1, Y => N_13_i_0);
    
    \receive_count_RNO[1]\ : CFG3
      generic map(INIT => x"12")

      port map(A => \receive_count[0]_net_1\, B => 
        \samples_RNI9R4M3[0]_net_1\, C => 
        \receive_count[1]_net_1\, Y => N_265_i_0);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \rx_shift[4]\ : SLE
      port map(D => \rx_shift_12[4]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[4]_net_1\);
    
    \rx_state_ns_1_0_.m16_i_a2_0\ : CFG3
      generic map(INIT => x"20")

      port map(A => \receive_count[1]_net_1\, B => 
        \receive_count[3]_net_1\, C => \receive_count[2]_net_1\, 
        Y => m16_i_a2_0);
    
    \last_bit[3]\ : SLE
      port map(D => VCC_net_1, CLK => FCCC_0_GL0, EN => 
        un30_baud_clock, ALn => FCCC_0_LOCK, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \last_bit[3]_net_1\);
    
    \receive_shift.rx_shift_12[1]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \rx_state_RNIJP7J[0]_net_1\, B => 
        \rx_shift[2]_net_1\, Y => \rx_shift_12[1]\);
    
    \receive_count_RNO[3]\ : CFG4
      generic map(INIT => x"0009")

      port map(A => \receive_count_RNI17N31[2]_net_1\, B => 
        \receive_count[3]_net_1\, C => 
        \samples_RNIIN5V1[0]_net_1\, D => N_122, Y => N_308_i_0);
    
    un1_receive_full_int_1_sqmuxa_i_a3_3_0 : CFG4
      generic map(INIT => x"0001")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        \rx_state[1]_net_1\, C => \rx_bit_cnt[2]_net_1\, D => 
        \rx_bit_cnt[1]_net_1\, Y => 
        un1_receive_full_int_1_sqmuxa_i_a3_3);
    
    receive_full_int : SLE
      port map(D => BT_module_0_oen, CLK => FCCC_0_GL0, EN => 
        \un1_receive_full_int_1_sqmuxa_i_0\, ALn => FCCC_0_LOCK, 
        ADn => VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT
         => GND_net_1, Q => \receive_full\);
    
    \rx_state_ns_1_0_.m19_i_1\ : CFG4
      generic map(INIT => x"A2A0")

      port map(A => N_140, B => \receive_count[0]_net_1\, C => 
        \samples_RNIVTTB1[0]_net_1\, D => m16_i_a2_0, Y => 
        m19_i_1);
    
    \rcv_sm.un47_baud_clock_NE\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \rx_bit_cnt[2]_net_1\, B => 
        \rx_bit_cnt[1]_net_1\, C => un47_baud_clock_NE_0, Y => 
        un47_baud_clock_NE);
    
    \receive_count_RNO[0]\ : CFG4
      generic map(INIT => x"0015")

      port map(A => \receive_count[0]_net_1\, B => 
        receive_count_3_2_80_i_0_a3_1, C => 
        \rx_state_RNIJP7J[0]_net_1\, D => 
        \samples_RNI9R4M3[0]_net_1\, Y => N_246_i_0);
    
    \rx_byte_xhdl5[4]\ : SLE
      port map(D => \rx_shift[4]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => COREUART_0_DATA_OUT(4));
    
    \rx_shift[6]\ : SLE
      port map(D => \rx_shift_12[6]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[6]_net_1\);
    
    \receive_shift.rx_bit_cnt_4_i_a2[3]\ : CFG2
      generic map(INIT => x"8")

      port map(A => \rx_state_RNIJP7J[0]_net_1\, B => baud_clock, 
        Y => \rx_bit_cnt_4_i_a2[3]\);
    
    \rx_shift[1]\ : SLE
      port map(D => \rx_shift_12[1]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[1]_net_1\);
    
    rx_byte_xhdl5_1_sqmuxa_0_a2 : CFG4
      generic map(INIT => x"0001")

      port map(A => \rx_state[1]_net_1\, B => 
        un47_baud_clock_NE_0, C => \rx_bit_cnt[1]_net_1\, D => 
        \rx_bit_cnt[2]_net_1\, Y => \rx_byte_xhdl5_1_sqmuxa_0_a2\);
    
    \rx_shift[3]\ : SLE
      port map(D => \rx_shift_12[3]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[3]_net_1\);
    
    \rx_byte_xhdl5[2]\ : SLE
      port map(D => \rx_shift[2]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => COREUART_0_DATA_OUT(2));
    
    \make_last_bit.un30_baud_clock_0_a4_0_a3\ : CFG3
      generic map(INIT => x"20")

      port map(A => \receive_count[3]_net_1\, B => N_110, C => 
        \rx_bit_cnt_4_i_a2[3]\, Y => un30_baud_clock);
    
    \rx_state[0]\ : SLE
      port map(D => N_15_i_0, CLK => FCCC_0_GL0, EN => baud_clock, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_state[0]_net_1\);
    
    \samples[2]\ : SLE
      port map(D => rx_c, CLK => FCCC_0_GL0, EN => baud_clock, 
        ALn => FCCC_0_LOCK, ADn => GND_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        \samples[2]_net_1\);
    
    \receive_shift.rx_shift_12[6]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \rx_state_RNIJP7J[0]_net_1\, B => 
        \rx_shift[7]_net_1\, Y => \rx_shift_12[6]\);
    
    \rx_state_ns_1_0_.m16_i_o2_0\ : CFG3
      generic map(INIT => x"F8")

      port map(A => \rx_state[1]_net_1\, B => 
        \samples_RNIVTTB1[0]_net_1\, C => 
        \rx_byte_xhdl5_1_sqmuxa_0_a2\, Y => N_112);
    
    \receive_count[0]\ : SLE
      port map(D => N_246_i_0, CLK => FCCC_0_GL0, EN => 
        baud_clock, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \receive_count[0]_net_1\);
    
    \rx_state_RNIJP7J[0]\ : CFG2
      generic map(INIT => x"1")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        Y => \rx_state_RNIJP7J[0]_net_1\);
    
    \rx_byte_xhdl5[3]\ : SLE
      port map(D => \rx_shift[3]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => COREUART_0_DATA_OUT(3));
    
    un1_receive_full_int_1_sqmuxa_i_a3_0 : CFG2
      generic map(INIT => x"8")

      port map(A => \rx_state[0]_net_1\, B => 
        \rx_bit_cnt[3]_net_1\, Y => 
        \un1_receive_full_int_1_sqmuxa_i_a3_0\);
    
    \receive_shift.rx_shift_12[4]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \rx_state_RNIJP7J[0]_net_1\, B => 
        \rx_shift[5]_net_1\, Y => \rx_shift_12[4]\);
    
    \receive_shift.rx_bit_cnt_4_i_o2[2]\ : CFG3
      generic map(INIT => x"DF")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        \rx_bit_cnt_4_i_o2[0]\, C => \rx_bit_cnt[1]_net_1\, Y => 
        N_108);
    
    \rx_state_ns_1_0_.m19_i_a2\ : CFG2
      generic map(INIT => x"8")

      port map(A => \rx_state[1]_net_1\, B => \rx_state[0]_net_1\, 
        Y => N_140);
    
    \receive_shift.rx_shift_12[3]\ : CFG2
      generic map(INIT => x"4")

      port map(A => \rx_state_RNIJP7J[0]_net_1\, B => 
        \rx_shift[4]_net_1\, Y => \rx_shift_12[3]\);
    
    \rx_state_ns_1_0_.N_15_i\ : CFG4
      generic map(INIT => x"004E")

      port map(A => \rx_state[0]_net_1\, B => 
        \receive_count[3]_net_1\, C => N_112, D => m16_i_1, Y => 
        N_15_i_0);
    
    \rx_shift[5]\ : SLE
      port map(D => \rx_shift_12[5]\, CLK => FCCC_0_GL0, EN => 
        \un1_samples8_1_0_0\, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \rx_shift[5]_net_1\);
    
    \rx_bit_cnt[0]\ : SLE
      port map(D => N_101_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[0]_net_1\);
    
    \receive_shift.rx_bit_cnt_4_i_o2[0]\ : CFG3
      generic map(INIT => x"DF")

      port map(A => baud_clock, B => 
        \receive_count_RNI17N31[2]_net_1\, C => 
        \receive_count[3]_net_1\, Y => \rx_bit_cnt_4_i_o2[0]\);
    
    \rx_byte_xhdl5[1]\ : SLE
      port map(D => \rx_shift[1]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => COREUART_0_DATA_OUT(1));
    
    \samples_RNIIN5V1[0]\ : CFG4
      generic map(INIT => x"E800")

      port map(A => \samples[0]_net_1\, B => \samples[1]_net_1\, 
        C => \samples[2]_net_1\, D => \rx_state_RNIJP7J[0]_net_1\, 
        Y => \samples_RNIIN5V1[0]_net_1\);
    
    \rx_state_ns_1_0_.m16_i_o2\ : CFG3
      generic map(INIT => x"FE")

      port map(A => \receive_count[2]_net_1\, B => 
        \receive_count[1]_net_1\, C => \receive_count[0]_net_1\, 
        Y => N_110);
    
    \last_bit[0]\ : SLE
      port map(D => GND_net_1, CLK => FCCC_0_GL0, EN => 
        un30_baud_clock, ALn => FCCC_0_LOCK, ADn => GND_net_1, 
        SLn => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q
         => \last_bit[0]_net_1\);
    
    \rx_bit_cnt_RNO[3]\ : CFG4
      generic map(INIT => x"0A06")

      port map(A => \rx_bit_cnt[3]_net_1\, B => 
        \rx_bit_cnt[2]_net_1\, C => \rx_bit_cnt_4_i_a2[3]\, D => 
        N_108, Y => N_19_i_0);
    
    rx_byte_xhdl5_1_sqmuxa_0_a3 : CFG4
      generic map(INIT => x"0800")

      port map(A => baud_clock, B => 
        \rx_byte_xhdl5_1_sqmuxa_0_a2\, C => \receive_full\, D => 
        \rx_state[0]_net_1\, Y => rx_byte_xhdl5_1_sqmuxa);
    
    \rx_byte_xhdl5[5]\ : SLE
      port map(D => \rx_shift[5]_net_1\, CLK => FCCC_0_GL0, EN
         => rx_byte_xhdl5_1_sqmuxa, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => COREUART_0_DATA_OUT(5));
    
    \rx_bit_cnt[3]\ : SLE
      port map(D => N_19_i_0, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        \rx_bit_cnt[3]_net_1\);
    
    \rx_bit_cnt_RNO[1]\ : CFG4
      generic map(INIT => x"0C06")

      port map(A => \rx_bit_cnt[0]_net_1\, B => 
        \rx_bit_cnt[1]_net_1\, C => \rx_bit_cnt_4_i_a2[3]\, D => 
        \rx_bit_cnt_4_i_o2[0]\, Y => N_23_i_0);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity TOP_COREUART_0_Clock_gen_0_0 is

    port( N_313       : out   std_logic;
          N_313_i_0   : out   std_logic;
          FCCC_0_LOCK : in    std_logic;
          FCCC_0_GL0  : in    std_logic;
          baud_clock  : out   std_logic
        );

end TOP_COREUART_0_Clock_gen_0_0;

architecture DEF_ARCH of TOP_COREUART_0_Clock_gen_0_0 is 

  component ARI1
    generic (INIT:std_logic_vector(19 downto 0) := x"00000");

    port( A   : in    std_logic := 'U';
          B   : in    std_logic := 'U';
          C   : in    std_logic := 'U';
          D   : in    std_logic := 'U';
          FCI : in    std_logic := 'U';
          S   : out   std_logic;
          Y   : out   std_logic;
          FCO : out   std_logic
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG3
    generic (INIT:std_logic_vector(7 downto 0) := x"00");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CFG4
    generic (INIT:std_logic_vector(15 downto 0) := x"0000");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          D : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component CFG1
    generic (INIT:std_logic_vector(1 downto 0) := "00");

    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal \N_313\, \xmit_clock\, VCC_net_1, un8_baud_clock_int, 
        \baud_clock\, GND_net_1, \xmit_cntr[0]_net_1\, N_332_i, 
        \xmit_cntr[1]_net_1\, N_335_i_i_0, \xmit_cntr[2]_net_1\, 
        N_337_i_i_0, \xmit_cntr[3]_net_1\, N_426_i_i_0, baud_cntr, 
        \baud_cntr[0]_net_1\, \baud_cntr_s[0]\, 
        \baud_cntr[1]_net_1\, \baud_cntr_s[1]\, 
        \baud_cntr[2]_net_1\, \baud_cntr_s[2]\, 
        \baud_cntr[3]_net_1\, \baud_cntr_s[3]\, 
        \baud_cntr[4]_net_1\, \baud_cntr_s[4]\, 
        \baud_cntr[5]_net_1\, \baud_cntr_s[5]\, 
        \baud_cntr[6]_net_1\, \baud_cntr_s[6]\, 
        \baud_cntr[7]_net_1\, \baud_cntr_s[7]\, 
        \baud_cntr[8]_net_1\, \baud_cntr_s[8]\, 
        \baud_cntr[9]_net_1\, \baud_cntr_s[9]\, 
        \baud_cntr[10]_net_1\, \baud_cntr_s[10]\, 
        \baud_cntr[11]_net_1\, \baud_cntr_s[11]\, 
        \baud_cntr[12]_net_1\, \baud_cntr_s[12]\, 
        \baud_cntr_cry_cy[0]\, un2_baud_cntr_1_RNILA4R_Y, 
        un2_baud_cntr_1, un2_baud_cntr_7, un2_baud_cntr_8, 
        \baud_cntr_cry[0]\, \baud_cntr_cry[1]\, 
        \baud_cntr_cry[2]\, \baud_cntr_cry[3]\, 
        \baud_cntr_cry[4]\, \baud_cntr_cry[5]\, 
        \baud_cntr_cry[6]\, \baud_cntr_cry[7]\, 
        \baud_cntr_cry[8]\, \baud_cntr_cry[9]\, 
        \baud_cntr_cry[10]\, \baud_cntr_cry[11]\, N_317
         : std_logic;

begin 

    N_313 <= \N_313\;
    baud_clock <= \baud_clock\;

    \baud_cntr_RNI0K152[6]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[6]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[5]\, S => \baud_cntr_s[6]\, Y => OPEN, FCO
         => \baud_cntr_cry[6]\);
    
    \baud_cntr[7]\ : SLE
      port map(D => \baud_cntr_s[7]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[7]_net_1\);
    
    xmit_pulse_0_o2 : CFG2
      generic map(INIT => x"7")

      port map(A => \baud_clock\, B => \xmit_clock\, Y => \N_313\);
    
    \make_xmit_clock.xmit_cntr_3_1.N_337_i_i\ : CFG3
      generic map(INIT => x"D2")

      port map(A => \xmit_cntr[1]_net_1\, B => N_317, C => 
        \xmit_cntr[2]_net_1\, Y => N_337_i_i_0);
    
    \baud_cntr[0]\ : SLE
      port map(D => \baud_cntr_s[0]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[0]_net_1\);
    
    \baud_cntr[9]\ : SLE
      port map(D => \baud_cntr_s[9]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[9]_net_1\);
    
    \xmit_cntr[3]\ : SLE
      port map(D => N_426_i_i_0, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[3]_net_1\);
    
    \baud_cntr_RNIE8TR1[2]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[2]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[1]\, S => \baud_cntr_s[2]\, Y => OPEN, FCO
         => \baud_cntr_cry[2]\);
    
    \baud_cntr_RNI3KLL2[11]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[11]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[10]\, S => \baud_cntr_s[11]\, Y => OPEN, 
        FCO => \baud_cntr_cry[11]\);
    
    \baud_cntr_RNIVVJ92[8]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[8]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[7]\, S => \baud_cntr_s[8]\, Y => OPEN, FCO
         => \baud_cntr_cry[8]\);
    
    \baud_cntr_RNIR8BN1[0]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => un2_baud_cntr_1_RNILA4R_Y, C
         => \baud_cntr[0]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry_cy[0]\, S => \baud_cntr_s[0]\, Y => OPEN, 
        FCO => \baud_cntr_cry[0]\);
    
    \baud_cntr_RNIP96U1[3]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[3]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[2]\, S => \baud_cntr_s[3]\, Y => OPEN, FCO
         => \baud_cntr_cry[3]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_1\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[4]_net_1\, B => 
        \baud_cntr[3]_net_1\, C => \baud_cntr[1]_net_1\, D => 
        \baud_cntr[0]_net_1\, Y => un2_baud_cntr_1);
    
    \baud_cntr_RNO[12]\ : ARI1
      generic map(INIT => x"4BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[12]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[11]\, S => \baud_cntr_s[12]\, Y => OPEN, 
        FCO => OPEN);
    
    \baud_cntr_RNIG7TB2[9]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[9]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[8]\, S => \baud_cntr_s[9]\, Y => OPEN, FCO
         => \baud_cntr_cry[9]\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \baud_cntr_RNIIFO22[5]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[5]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[4]\, S => \baud_cntr_s[5]\, Y => OPEN, FCO
         => \baud_cntr_cry[5]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_7\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[12]_net_1\, B => 
        \baud_cntr[11]_net_1\, C => \baud_cntr[10]_net_1\, D => 
        \baud_cntr[9]_net_1\, Y => un2_baud_cntr_7);
    
    \baud_cntr_RNI48KP1[1]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[1]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[0]\, S => \baud_cntr_s[1]\, Y => OPEN, FCO
         => \baud_cntr_cry[1]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr\ : CFG4
      generic map(INIT => x"4000")

      port map(A => \baud_cntr[2]_net_1\, B => un2_baud_cntr_8, C
         => un2_baud_cntr_7, D => un2_baud_cntr_1, Y => baud_cntr);
    
    \baud_cntr[5]\ : SLE
      port map(D => \baud_cntr_s[5]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[5]_net_1\);
    
    \baud_cntr_RNI5CF02[4]\ : ARI1
      generic map(INIT => x"61100")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[4]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[3]\, S => \baud_cntr_s[4]\, Y => OPEN, FCO
         => \baud_cntr_cry[4]\);
    
    \baud_cntr[3]\ : SLE
      port map(D => \baud_cntr_s[3]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[3]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    \make_xmit_clock.xmit_cntr_3_1.N_426_i_i\ : CFG4
      generic map(INIT => x"D2F0")

      port map(A => \xmit_cntr[1]_net_1\, B => N_317, C => 
        \xmit_cntr[3]_net_1\, D => \xmit_cntr[2]_net_1\, Y => 
        N_426_i_i_0);
    
    \baud_cntr[2]\ : SLE
      port map(D => \baud_cntr_s[2]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[2]_net_1\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_1_RNILA4R\ : ARI1
      generic map(INIT => x"40080")

      port map(A => \baud_cntr[2]_net_1\, B => un2_baud_cntr_1, C
         => un2_baud_cntr_7, D => un2_baud_cntr_8, FCI => 
        VCC_net_1, S => OPEN, Y => un2_baud_cntr_1_RNILA4R_Y, FCO
         => \baud_cntr_cry_cy[0]\);
    
    \baud_cntr_RNI9DPG2[10]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[10]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[9]\, S => \baud_cntr_s[10]\, Y => OPEN, 
        FCO => \baud_cntr_cry[10]\);
    
    \UG10.make_baud_cntr2.un2_baud_cntr_8\ : CFG4
      generic map(INIT => x"0001")

      port map(A => \baud_cntr[8]_net_1\, B => 
        \baud_cntr[7]_net_1\, C => \baud_cntr[6]_net_1\, D => 
        \baud_cntr[5]_net_1\, Y => un2_baud_cntr_8);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM_0_x2[0]\ : CFG2
      generic map(INIT => x"6")

      port map(A => \baud_clock\, B => \xmit_cntr[0]_net_1\, Y
         => N_332_i);
    
    xmit_pulse_0_o2_RNIGFN9 : CFG1
      generic map(INIT => "01")

      port map(A => \N_313\, Y => N_313_i_0);
    
    \baud_cntr[10]\ : SLE
      port map(D => \baud_cntr_s[10]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[10]_net_1\);
    
    \baud_cntr[11]\ : SLE
      port map(D => \baud_cntr_s[11]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[11]_net_1\);
    
    \baud_cntr[6]\ : SLE
      port map(D => \baud_cntr_s[6]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[6]_net_1\);
    
    \baud_cntr[4]\ : SLE
      port map(D => \baud_cntr_s[4]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[4]_net_1\);
    
    \xmit_cntr[2]\ : SLE
      port map(D => N_337_i_i_0, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[2]_net_1\);
    
    \baud_cntr_RNIFPA72[7]\ : ARI1
      generic map(INIT => x"6BB00")

      port map(A => VCC_net_1, B => baud_cntr, C => 
        \baud_cntr[7]_net_1\, D => GND_net_1, FCI => 
        \baud_cntr_cry[6]\, S => \baud_cntr_s[7]\, Y => OPEN, FCO
         => \baud_cntr_cry[7]\);
    
    \baud_cntr[1]\ : SLE
      port map(D => \baud_cntr_s[1]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[1]_net_1\);
    
    \make_xmit_clock.un8_baud_clock_int_0_a2\ : CFG4
      generic map(INIT => x"8000")

      port map(A => \xmit_cntr[2]_net_1\, B => 
        \xmit_cntr[3]_net_1\, C => \xmit_cntr[1]_net_1\, D => 
        \xmit_cntr[0]_net_1\, Y => un8_baud_clock_int);
    
    xmit_clock : SLE
      port map(D => un8_baud_clock_int, CLK => FCCC_0_GL0, EN => 
        \baud_clock\, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_clock\);
    
    baud_clock_int : SLE
      port map(D => baud_cntr, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => \baud_clock\);
    
    \xmit_cntr[1]\ : SLE
      port map(D => N_335_i_i_0, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[1]_net_1\);
    
    \make_xmit_clock.xmit_cntr_3_1.SUM_0_o2[1]\ : CFG2
      generic map(INIT => x"7")

      port map(A => \baud_clock\, B => \xmit_cntr[0]_net_1\, Y
         => N_317);
    
    \baud_cntr[12]\ : SLE
      port map(D => \baud_cntr_s[12]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[12]_net_1\);
    
    \xmit_cntr[0]\ : SLE
      port map(D => N_332_i, CLK => FCCC_0_GL0, EN => VCC_net_1, 
        ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => VCC_net_1, 
        SD => GND_net_1, LAT => GND_net_1, Q => 
        \xmit_cntr[0]_net_1\);
    
    \make_xmit_clock.xmit_cntr_3_1.N_335_i_i\ : CFG2
      generic map(INIT => x"9")

      port map(A => N_317, B => \xmit_cntr[1]_net_1\, Y => 
        N_335_i_i_0);
    
    \baud_cntr[8]\ : SLE
      port map(D => \baud_cntr_s[8]\, CLK => FCCC_0_GL0, EN => 
        VCC_net_1, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn => 
        VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        \baud_cntr[8]_net_1\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity TOP_COREUART_0_COREUART_19_0_0_0_0 is

    port( COREUART_0_DATA_OUT      : out   std_logic_vector(7 downto 0);
          time_sender_0_data_out_0 : in    std_logic;
          time_sender_0_data_out_1 : in    std_logic;
          time_sender_0_data_out_2 : in    std_logic;
          time_sender_0_data_out_3 : in    std_logic;
          time_sender_0_data_out_5 : in    std_logic;
          COREUART_0_RXRDY         : out   std_logic;
          FCCC_0_LOCK              : in    std_logic;
          FCCC_0_GL0               : in    std_logic;
          time_sender_0_wen_i_0    : in    std_logic;
          tx_c                     : out   std_logic;
          COREUART_0_TXRDY         : out   std_logic;
          time_sender_0_wen        : in    std_logic;
          BT_module_0_oen          : in    std_logic;
          rx_c                     : in    std_logic
        );

end TOP_COREUART_0_COREUART_19_0_0_0_0;

architecture DEF_ARCH of TOP_COREUART_0_COREUART_19_0_0_0_0 is 

  component CFG2
    generic (INIT:std_logic_vector(3 downto 0) := x"0");

    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component TOP_COREUART_0_Tx_async_0_0
    port( tx_hold_reg_0     : in    std_logic := 'U';
          tx_hold_reg_1     : in    std_logic := 'U';
          tx_hold_reg_2     : in    std_logic := 'U';
          tx_hold_reg_3     : in    std_logic := 'U';
          tx_hold_reg_5     : in    std_logic := 'U';
          tx_c              : out   std_logic;
          FCCC_0_LOCK       : in    std_logic := 'U';
          FCCC_0_GL0        : in    std_logic := 'U';
          N_313_i_0         : in    std_logic := 'U';
          COREUART_0_TXRDY  : out   std_logic;
          time_sender_0_wen : in    std_logic := 'U';
          N_313             : in    std_logic := 'U'
        );
  end component;

  component SLE
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          EN  : in    std_logic := 'U';
          ALn : in    std_logic := 'U';
          ADn : in    std_logic := 'U';
          SLn : in    std_logic := 'U';
          SD  : in    std_logic := 'U';
          LAT : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component TOP_COREUART_0_Rx_async_0_0
    port( COREUART_0_DATA_OUT : out   std_logic_vector(7 downto 0);
          FCCC_0_LOCK         : in    std_logic := 'U';
          FCCC_0_GL0          : in    std_logic := 'U';
          baud_clock          : in    std_logic := 'U';
          receive_full        : out   std_logic;
          BT_module_0_oen     : in    std_logic := 'U';
          stop_strobe         : out   std_logic;
          rx_c                : in    std_logic := 'U'
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component TOP_COREUART_0_Clock_gen_0_0
    port( N_313       : out   std_logic;
          N_313_i_0   : out   std_logic;
          FCCC_0_LOCK : in    std_logic := 'U';
          FCCC_0_GL0  : in    std_logic := 'U';
          baud_clock  : out   std_logic
        );
  end component;

    signal VCC_net_1, receive_full, un1_rx_fifo, GND_net_1, 
        \tx_hold_reg[0]_net_1\, \tx_hold_reg[1]_net_1\, 
        \tx_hold_reg[2]_net_1\, \tx_hold_reg[3]_net_1\, 
        \tx_hold_reg[5]\, stop_strobe, N_313, N_313_i_0, 
        baud_clock : std_logic;

    for all : TOP_COREUART_0_Tx_async_0_0
	Use entity work.TOP_COREUART_0_Tx_async_0_0(DEF_ARCH);
    for all : TOP_COREUART_0_Rx_async_0_0
	Use entity work.TOP_COREUART_0_Rx_async_0_0(DEF_ARCH);
    for all : TOP_COREUART_0_Clock_gen_0_0
	Use entity work.TOP_COREUART_0_Clock_gen_0_0(DEF_ARCH);
begin 


    \RXRDY_NEW.un1_rx_fifo\ : CFG2
      generic map(INIT => x"D")

      port map(A => receive_full, B => stop_strobe, Y => 
        un1_rx_fifo);
    
    make_TX : TOP_COREUART_0_Tx_async_0_0
      port map(tx_hold_reg_0 => \tx_hold_reg[0]_net_1\, 
        tx_hold_reg_1 => \tx_hold_reg[1]_net_1\, tx_hold_reg_2
         => \tx_hold_reg[2]_net_1\, tx_hold_reg_3 => 
        \tx_hold_reg[3]_net_1\, tx_hold_reg_5 => \tx_hold_reg[5]\, 
        tx_c => tx_c, FCCC_0_LOCK => FCCC_0_LOCK, FCCC_0_GL0 => 
        FCCC_0_GL0, N_313_i_0 => N_313_i_0, COREUART_0_TXRDY => 
        COREUART_0_TXRDY, time_sender_0_wen => time_sender_0_wen, 
        N_313 => N_313);
    
    \tx_hold_reg[3]\ : SLE
      port map(D => time_sender_0_data_out_3, CLK => FCCC_0_GL0, 
        EN => time_sender_0_wen_i_0, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[3]_net_1\);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    make_RX : TOP_COREUART_0_Rx_async_0_0
      port map(COREUART_0_DATA_OUT(7) => COREUART_0_DATA_OUT(7), 
        COREUART_0_DATA_OUT(6) => COREUART_0_DATA_OUT(6), 
        COREUART_0_DATA_OUT(5) => COREUART_0_DATA_OUT(5), 
        COREUART_0_DATA_OUT(4) => COREUART_0_DATA_OUT(4), 
        COREUART_0_DATA_OUT(3) => COREUART_0_DATA_OUT(3), 
        COREUART_0_DATA_OUT(2) => COREUART_0_DATA_OUT(2), 
        COREUART_0_DATA_OUT(1) => COREUART_0_DATA_OUT(1), 
        COREUART_0_DATA_OUT(0) => COREUART_0_DATA_OUT(0), 
        FCCC_0_LOCK => FCCC_0_LOCK, FCCC_0_GL0 => FCCC_0_GL0, 
        baud_clock => baud_clock, receive_full => receive_full, 
        BT_module_0_oen => BT_module_0_oen, stop_strobe => 
        stop_strobe, rx_c => rx_c);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \tx_hold_reg[1]\ : SLE
      port map(D => time_sender_0_data_out_1, CLK => FCCC_0_GL0, 
        EN => time_sender_0_wen_i_0, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[1]_net_1\);
    
    rxrdy_xhdl4 : SLE
      port map(D => receive_full, CLK => FCCC_0_GL0, EN => 
        un1_rx_fifo, ALn => FCCC_0_LOCK, ADn => VCC_net_1, SLn
         => VCC_net_1, SD => GND_net_1, LAT => GND_net_1, Q => 
        COREUART_0_RXRDY);
    
    \tx_hold_reg[0]\ : SLE
      port map(D => time_sender_0_data_out_0, CLK => FCCC_0_GL0, 
        EN => time_sender_0_wen_i_0, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[0]_net_1\);
    
    \tx_hold_reg[2]\ : SLE
      port map(D => time_sender_0_data_out_2, CLK => FCCC_0_GL0, 
        EN => time_sender_0_wen_i_0, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[2]_net_1\);
    
    make_TOP_COREUART_0_Clock_gen : TOP_COREUART_0_Clock_gen_0_0
      port map(N_313 => N_313, N_313_i_0 => N_313_i_0, 
        FCCC_0_LOCK => FCCC_0_LOCK, FCCC_0_GL0 => FCCC_0_GL0, 
        baud_clock => baud_clock);
    
    \tx_hold_reg[4]\ : SLE
      port map(D => time_sender_0_data_out_5, CLK => FCCC_0_GL0, 
        EN => time_sender_0_wen_i_0, ALn => FCCC_0_LOCK, ADn => 
        VCC_net_1, SLn => VCC_net_1, SD => GND_net_1, LAT => 
        GND_net_1, Q => \tx_hold_reg[5]\);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity TOP_FCCC_0_FCCC is

    port( FCCC_0_LOCK                             : out   std_logic;
          FCCC_0_GL0                              : out   std_logic;
          OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC : in    std_logic
        );

end TOP_FCCC_0_FCCC;

architecture DEF_ARCH of TOP_FCCC_0_FCCC is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component CLKINT
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CCC

            generic (INIT:std_logic_vector(209 downto 0) := "00" & x"0000000000000000000000000000000000000000000000000000"; 
        VCOFREQUENCY:real := 0.0);

    port( Y0              : out   std_logic;
          Y1              : out   std_logic;
          Y2              : out   std_logic;
          Y3              : out   std_logic;
          PRDATA          : out   std_logic_vector(7 downto 0);
          LOCK            : out   std_logic;
          BUSY            : out   std_logic;
          CLK0            : in    std_logic := 'U';
          CLK1            : in    std_logic := 'U';
          CLK2            : in    std_logic := 'U';
          CLK3            : in    std_logic := 'U';
          NGMUX0_SEL      : in    std_logic := 'U';
          NGMUX1_SEL      : in    std_logic := 'U';
          NGMUX2_SEL      : in    std_logic := 'U';
          NGMUX3_SEL      : in    std_logic := 'U';
          NGMUX0_HOLD_N   : in    std_logic := 'U';
          NGMUX1_HOLD_N   : in    std_logic := 'U';
          NGMUX2_HOLD_N   : in    std_logic := 'U';
          NGMUX3_HOLD_N   : in    std_logic := 'U';
          NGMUX0_ARST_N   : in    std_logic := 'U';
          NGMUX1_ARST_N   : in    std_logic := 'U';
          NGMUX2_ARST_N   : in    std_logic := 'U';
          NGMUX3_ARST_N   : in    std_logic := 'U';
          PLL_BYPASS_N    : in    std_logic := 'U';
          PLL_ARST_N      : in    std_logic := 'U';
          PLL_POWERDOWN_N : in    std_logic := 'U';
          GPD0_ARST_N     : in    std_logic := 'U';
          GPD1_ARST_N     : in    std_logic := 'U';
          GPD2_ARST_N     : in    std_logic := 'U';
          GPD3_ARST_N     : in    std_logic := 'U';
          PRESET_N        : in    std_logic := 'U';
          PCLK            : in    std_logic := 'U';
          PSEL            : in    std_logic := 'U';
          PENABLE         : in    std_logic := 'U';
          PWRITE          : in    std_logic := 'U';
          PADDR           : in    std_logic_vector(7 downto 2) := (others => 'U');
          PWDATA          : in    std_logic_vector(7 downto 0) := (others => 'U');
          CLK0_PAD        : in    std_logic := 'U';
          CLK1_PAD        : in    std_logic := 'U';
          CLK2_PAD        : in    std_logic := 'U';
          CLK3_PAD        : in    std_logic := 'U';
          GL0             : out   std_logic;
          GL1             : out   std_logic;
          GL2             : out   std_logic;
          GL3             : out   std_logic;
          RCOSC_25_50MHZ  : in    std_logic := 'U';
          RCOSC_1MHZ      : in    std_logic := 'U';
          XTLOSC          : in    std_logic := 'U'
        );
  end component;

    signal LOCK, GL0_net, VCC_net_1, GND_net_1 : std_logic;
    signal nc8, nc7, nc6, nc2, nc5, nc4, nc3, nc1 : std_logic;

begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    GL0_INST : CLKINT
      port map(A => GL0_net, Y => FCCC_0_GL0);
    
    CCC_INST_RNIIJ03 : CLKINT
      port map(A => LOCK, Y => FCCC_0_LOCK);
    
    CCC_INST : CCC

              generic map(INIT => "00" & x"000007F88000045164000318C6318C1F18C61E80404040403100",
         VCOFREQUENCY => 800.0)

      port map(Y0 => OPEN, Y1 => OPEN, Y2 => OPEN, Y3 => OPEN, 
        PRDATA(7) => nc8, PRDATA(6) => nc7, PRDATA(5) => nc6, 
        PRDATA(4) => nc2, PRDATA(3) => nc5, PRDATA(2) => nc4, 
        PRDATA(1) => nc3, PRDATA(0) => nc1, LOCK => LOCK, BUSY
         => OPEN, CLK0 => VCC_net_1, CLK1 => VCC_net_1, CLK2 => 
        VCC_net_1, CLK3 => VCC_net_1, NGMUX0_SEL => GND_net_1, 
        NGMUX1_SEL => GND_net_1, NGMUX2_SEL => GND_net_1, 
        NGMUX3_SEL => GND_net_1, NGMUX0_HOLD_N => VCC_net_1, 
        NGMUX1_HOLD_N => VCC_net_1, NGMUX2_HOLD_N => VCC_net_1, 
        NGMUX3_HOLD_N => VCC_net_1, NGMUX0_ARST_N => VCC_net_1, 
        NGMUX1_ARST_N => VCC_net_1, NGMUX2_ARST_N => VCC_net_1, 
        NGMUX3_ARST_N => VCC_net_1, PLL_BYPASS_N => VCC_net_1, 
        PLL_ARST_N => VCC_net_1, PLL_POWERDOWN_N => VCC_net_1, 
        GPD0_ARST_N => VCC_net_1, GPD1_ARST_N => VCC_net_1, 
        GPD2_ARST_N => VCC_net_1, GPD3_ARST_N => VCC_net_1, 
        PRESET_N => GND_net_1, PCLK => VCC_net_1, PSEL => 
        VCC_net_1, PENABLE => VCC_net_1, PWRITE => VCC_net_1, 
        PADDR(7) => VCC_net_1, PADDR(6) => VCC_net_1, PADDR(5)
         => VCC_net_1, PADDR(4) => VCC_net_1, PADDR(3) => 
        VCC_net_1, PADDR(2) => VCC_net_1, PWDATA(7) => VCC_net_1, 
        PWDATA(6) => VCC_net_1, PWDATA(5) => VCC_net_1, PWDATA(4)
         => VCC_net_1, PWDATA(3) => VCC_net_1, PWDATA(2) => 
        VCC_net_1, PWDATA(1) => VCC_net_1, PWDATA(0) => VCC_net_1, 
        CLK0_PAD => GND_net_1, CLK1_PAD => GND_net_1, CLK2_PAD
         => GND_net_1, CLK3_PAD => GND_net_1, GL0 => GL0_net, GL1
         => OPEN, GL2 => OPEN, GL3 => OPEN, RCOSC_25_50MHZ => 
        GND_net_1, RCOSC_1MHZ => 
        OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC, XTLOSC => 
        GND_net_1);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity TOP_OSC_0_OSC is

    port( OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC : out   std_logic
        );

end TOP_OSC_0_OSC;

architecture DEF_ARCH of TOP_OSC_0_OSC is 

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component RCOSC_1MHZ
    port( CLKOUT : out   std_logic
        );
  end component;

    signal GND_net_1, VCC_net_1 : std_logic;

begin 


    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    I_RCOSC_1MHZ : RCOSC_1MHZ
      port map(CLKOUT => OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library smartfusion2;
use smartfusion2.all;

entity TOP is

    port( echo      : in    std_logic;
          rx        : in    std_logic;
          servo_pwm : out   std_logic;
          trig      : out   std_logic;
          tx        : out   std_logic
        );

end TOP;

architecture DEF_ARCH of TOP is 

  component OUTBUF
    generic (IOSTD:string := "");

    port( D   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component pulse_meash
    port( pulse_meash_0_time         : out   std_logic_vector(15 downto 0);
          pulse_meash_0_new_ready    : out   std_logic;
          FCCC_0_LOCK                : in    std_logic := 'U';
          FCCC_0_GL0                 : in    std_logic := 'U';
          echo_c                     : in    std_logic := 'U';
          locator_control_0_en_timer : in    std_logic := 'U'
        );
  end component;

  component locator_control_work_top_rtl_0layer0
    port( locator_control_0_angle1   : out   std_logic_vector(3 downto 0);
          BT_module_0_data_buf       : in    std_logic_vector(7 downto 0) := (others => 'U');
          FCCC_0_LOCK                : in    std_logic := 'U';
          FCCC_0_GL0                 : in    std_logic := 'U';
          un42_clk_0                 : out   std_logic;
          un42_clk_1                 : out   std_logic;
          un42_clk_2                 : out   std_logic;
          un42_clk_3                 : out   std_logic;
          trig_c                     : out   std_logic;
          locator_control_0_en_timer : out   std_logic;
          un1_state_7_0              : out   std_logic;
          pulse_meash_0_new_ready    : in    std_logic := 'U'
        );
  end component;

  component time_sender_work_top_rtl_0layer0
    port( locator_control_0_angle1 : in    std_logic_vector(3 downto 0) := (others => 'U');
          pulse_meash_0_time       : in    std_logic_vector(15 downto 0) := (others => 'U');
          time_sender_0_data_out_0 : out   std_logic;
          time_sender_0_data_out_1 : out   std_logic;
          time_sender_0_data_out_2 : out   std_logic;
          time_sender_0_data_out_3 : out   std_logic;
          time_sender_0_data_out_5 : out   std_logic;
          time_sender_0_wen        : out   std_logic;
          time_sender_0_wen_i_0    : out   std_logic;
          FCCC_0_LOCK              : in    std_logic := 'U';
          FCCC_0_GL0               : in    std_logic := 'U';
          COREUART_0_TXRDY         : in    std_logic := 'U';
          pulse_meash_0_new_ready  : in    std_logic := 'U'
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component BT_module
    port( BT_module_0_data_buf : out   std_logic_vector(7 downto 0);
          COREUART_0_DATA_OUT  : in    std_logic_vector(7 downto 0) := (others => 'U');
          FCCC_0_LOCK          : in    std_logic := 'U';
          FCCC_0_GL0           : in    std_logic := 'U';
          BT_module_0_oen      : out   std_logic;
          COREUART_0_RXRDY     : in    std_logic := 'U'
        );
  end component;

  component servo_driver_work_top_rtl_0layer0
    port( FCCC_0_LOCK   : in    std_logic := 'U';
          FCCC_0_GL0    : in    std_logic := 'U';
          servo_pwm_c   : out   std_logic;
          un42_clk_0    : in    std_logic := 'U';
          un42_clk_1    : in    std_logic := 'U';
          un42_clk_2    : in    std_logic := 'U';
          un42_clk_3    : in    std_logic := 'U';
          un1_state_7_0 : in    std_logic := 'U'
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component TOP_COREUART_0_COREUART_19_0_0_0_0
    port( COREUART_0_DATA_OUT      : out   std_logic_vector(7 downto 0);
          time_sender_0_data_out_0 : in    std_logic := 'U';
          time_sender_0_data_out_1 : in    std_logic := 'U';
          time_sender_0_data_out_2 : in    std_logic := 'U';
          time_sender_0_data_out_3 : in    std_logic := 'U';
          time_sender_0_data_out_5 : in    std_logic := 'U';
          COREUART_0_RXRDY         : out   std_logic;
          FCCC_0_LOCK              : in    std_logic := 'U';
          FCCC_0_GL0               : in    std_logic := 'U';
          time_sender_0_wen_i_0    : in    std_logic := 'U';
          tx_c                     : out   std_logic;
          COREUART_0_TXRDY         : out   std_logic;
          time_sender_0_wen        : in    std_logic := 'U';
          BT_module_0_oen          : in    std_logic := 'U';
          rx_c                     : in    std_logic := 'U'
        );
  end component;

  component TOP_FCCC_0_FCCC
    port( FCCC_0_LOCK                             : out   std_logic;
          FCCC_0_GL0                              : out   std_logic;
          OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC : in    std_logic := 'U'
        );
  end component;

  component INBUF
    generic (IOSTD:string := "");

    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component TOP_OSC_0_OSC
    port( OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC : out   std_logic
        );
  end component;

    signal FCCC_0_LOCK, FCCC_0_GL0, time_sender_0_wen, 
        \time_sender_0_data_out[0]\, \time_sender_0_data_out[1]\, 
        \time_sender_0_data_out[2]\, \time_sender_0_data_out[3]\, 
        \time_sender_0_data_out[5]\, GND_net_1, VCC_net_1, 
        COREUART_0_TXRDY, COREUART_0_RXRDY, 
        \COREUART_0_DATA_OUT[0]\, \COREUART_0_DATA_OUT[1]\, 
        \COREUART_0_DATA_OUT[2]\, \COREUART_0_DATA_OUT[3]\, 
        \COREUART_0_DATA_OUT[4]\, \COREUART_0_DATA_OUT[5]\, 
        \COREUART_0_DATA_OUT[6]\, \COREUART_0_DATA_OUT[7]\, 
        OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC, 
        pulse_meash_0_new_ready, locator_control_0_en_timer, 
        \BT_module_0_data_buf[0]\, \BT_module_0_data_buf[1]\, 
        \BT_module_0_data_buf[2]\, \BT_module_0_data_buf[3]\, 
        \BT_module_0_data_buf[4]\, \BT_module_0_data_buf[5]\, 
        \BT_module_0_data_buf[6]\, \BT_module_0_data_buf[7]\, 
        \locator_control_0_angle1[0]\, 
        \locator_control_0_angle1[1]\, 
        \locator_control_0_angle1[2]\, 
        \locator_control_0_angle1[3]\, \pulse_meash_0_time[0]\, 
        \pulse_meash_0_time[1]\, \pulse_meash_0_time[2]\, 
        \pulse_meash_0_time[3]\, \pulse_meash_0_time[4]\, 
        \pulse_meash_0_time[5]\, \pulse_meash_0_time[6]\, 
        \pulse_meash_0_time[7]\, \pulse_meash_0_time[8]\, 
        \pulse_meash_0_time[9]\, \pulse_meash_0_time[10]\, 
        \pulse_meash_0_time[11]\, \pulse_meash_0_time[12]\, 
        \pulse_meash_0_time[13]\, \pulse_meash_0_time[14]\, 
        \pulse_meash_0_time[15]\, 
        \locator_control_0.un1_state_7_0\, 
        \locator_control_0.un42_clk_0\, 
        \locator_control_0.un42_clk_1\, 
        \locator_control_0.un42_clk_2\, 
        \locator_control_0.un42_clk_3\, BT_module_0_oen, echo_c, 
        rx_c, servo_pwm_c, trig_c, tx_c, time_sender_0_wen_i_0
         : std_logic;

    for all : pulse_meash
	Use entity work.pulse_meash(DEF_ARCH);
    for all : locator_control_work_top_rtl_0layer0
	Use entity work.locator_control_work_top_rtl_0layer0(DEF_ARCH);
    for all : time_sender_work_top_rtl_0layer0
	Use entity work.time_sender_work_top_rtl_0layer0(DEF_ARCH);
    for all : BT_module
	Use entity work.BT_module(DEF_ARCH);
    for all : servo_driver_work_top_rtl_0layer0
	Use entity work.servo_driver_work_top_rtl_0layer0(DEF_ARCH);
    for all : TOP_COREUART_0_COREUART_19_0_0_0_0
	Use entity work.TOP_COREUART_0_COREUART_19_0_0_0_0(DEF_ARCH);
    for all : TOP_FCCC_0_FCCC
	Use entity work.TOP_FCCC_0_FCCC(DEF_ARCH);
    for all : TOP_OSC_0_OSC
	Use entity work.TOP_OSC_0_OSC(DEF_ARCH);
begin 


    servo_pwm_obuf : OUTBUF
      port map(D => servo_pwm_c, PAD => servo_pwm);
    
    pulse_meash_0 : pulse_meash
      port map(pulse_meash_0_time(15) => \pulse_meash_0_time[15]\, 
        pulse_meash_0_time(14) => \pulse_meash_0_time[14]\, 
        pulse_meash_0_time(13) => \pulse_meash_0_time[13]\, 
        pulse_meash_0_time(12) => \pulse_meash_0_time[12]\, 
        pulse_meash_0_time(11) => \pulse_meash_0_time[11]\, 
        pulse_meash_0_time(10) => \pulse_meash_0_time[10]\, 
        pulse_meash_0_time(9) => \pulse_meash_0_time[9]\, 
        pulse_meash_0_time(8) => \pulse_meash_0_time[8]\, 
        pulse_meash_0_time(7) => \pulse_meash_0_time[7]\, 
        pulse_meash_0_time(6) => \pulse_meash_0_time[6]\, 
        pulse_meash_0_time(5) => \pulse_meash_0_time[5]\, 
        pulse_meash_0_time(4) => \pulse_meash_0_time[4]\, 
        pulse_meash_0_time(3) => \pulse_meash_0_time[3]\, 
        pulse_meash_0_time(2) => \pulse_meash_0_time[2]\, 
        pulse_meash_0_time(1) => \pulse_meash_0_time[1]\, 
        pulse_meash_0_time(0) => \pulse_meash_0_time[0]\, 
        pulse_meash_0_new_ready => pulse_meash_0_new_ready, 
        FCCC_0_LOCK => FCCC_0_LOCK, FCCC_0_GL0 => FCCC_0_GL0, 
        echo_c => echo_c, locator_control_0_en_timer => 
        locator_control_0_en_timer);
    
    locator_control_0 : locator_control_work_top_rtl_0layer0
      port map(locator_control_0_angle1(3) => 
        \locator_control_0_angle1[3]\, 
        locator_control_0_angle1(2) => 
        \locator_control_0_angle1[2]\, 
        locator_control_0_angle1(1) => 
        \locator_control_0_angle1[1]\, 
        locator_control_0_angle1(0) => 
        \locator_control_0_angle1[0]\, BT_module_0_data_buf(7)
         => \BT_module_0_data_buf[7]\, BT_module_0_data_buf(6)
         => \BT_module_0_data_buf[6]\, BT_module_0_data_buf(5)
         => \BT_module_0_data_buf[5]\, BT_module_0_data_buf(4)
         => \BT_module_0_data_buf[4]\, BT_module_0_data_buf(3)
         => \BT_module_0_data_buf[3]\, BT_module_0_data_buf(2)
         => \BT_module_0_data_buf[2]\, BT_module_0_data_buf(1)
         => \BT_module_0_data_buf[1]\, BT_module_0_data_buf(0)
         => \BT_module_0_data_buf[0]\, FCCC_0_LOCK => FCCC_0_LOCK, 
        FCCC_0_GL0 => FCCC_0_GL0, un42_clk_0 => 
        \locator_control_0.un42_clk_0\, un42_clk_1 => 
        \locator_control_0.un42_clk_1\, un42_clk_2 => 
        \locator_control_0.un42_clk_2\, un42_clk_3 => 
        \locator_control_0.un42_clk_3\, trig_c => trig_c, 
        locator_control_0_en_timer => locator_control_0_en_timer, 
        un1_state_7_0 => \locator_control_0.un1_state_7_0\, 
        pulse_meash_0_new_ready => pulse_meash_0_new_ready);
    
    time_sender_0 : time_sender_work_top_rtl_0layer0
      port map(locator_control_0_angle1(3) => 
        \locator_control_0_angle1[3]\, 
        locator_control_0_angle1(2) => 
        \locator_control_0_angle1[2]\, 
        locator_control_0_angle1(1) => 
        \locator_control_0_angle1[1]\, 
        locator_control_0_angle1(0) => 
        \locator_control_0_angle1[0]\, pulse_meash_0_time(15) => 
        \pulse_meash_0_time[15]\, pulse_meash_0_time(14) => 
        \pulse_meash_0_time[14]\, pulse_meash_0_time(13) => 
        \pulse_meash_0_time[13]\, pulse_meash_0_time(12) => 
        \pulse_meash_0_time[12]\, pulse_meash_0_time(11) => 
        \pulse_meash_0_time[11]\, pulse_meash_0_time(10) => 
        \pulse_meash_0_time[10]\, pulse_meash_0_time(9) => 
        \pulse_meash_0_time[9]\, pulse_meash_0_time(8) => 
        \pulse_meash_0_time[8]\, pulse_meash_0_time(7) => 
        \pulse_meash_0_time[7]\, pulse_meash_0_time(6) => 
        \pulse_meash_0_time[6]\, pulse_meash_0_time(5) => 
        \pulse_meash_0_time[5]\, pulse_meash_0_time(4) => 
        \pulse_meash_0_time[4]\, pulse_meash_0_time(3) => 
        \pulse_meash_0_time[3]\, pulse_meash_0_time(2) => 
        \pulse_meash_0_time[2]\, pulse_meash_0_time(1) => 
        \pulse_meash_0_time[1]\, pulse_meash_0_time(0) => 
        \pulse_meash_0_time[0]\, time_sender_0_data_out_0 => 
        \time_sender_0_data_out[0]\, time_sender_0_data_out_1 => 
        \time_sender_0_data_out[1]\, time_sender_0_data_out_2 => 
        \time_sender_0_data_out[2]\, time_sender_0_data_out_3 => 
        \time_sender_0_data_out[3]\, time_sender_0_data_out_5 => 
        \time_sender_0_data_out[5]\, time_sender_0_wen => 
        time_sender_0_wen, time_sender_0_wen_i_0 => 
        time_sender_0_wen_i_0, FCCC_0_LOCK => FCCC_0_LOCK, 
        FCCC_0_GL0 => FCCC_0_GL0, COREUART_0_TXRDY => 
        COREUART_0_TXRDY, pulse_meash_0_new_ready => 
        pulse_meash_0_new_ready);
    
    \GND\ : GND
      port map(Y => GND_net_1);
    
    BT_module_0 : BT_module
      port map(BT_module_0_data_buf(7) => 
        \BT_module_0_data_buf[7]\, BT_module_0_data_buf(6) => 
        \BT_module_0_data_buf[6]\, BT_module_0_data_buf(5) => 
        \BT_module_0_data_buf[5]\, BT_module_0_data_buf(4) => 
        \BT_module_0_data_buf[4]\, BT_module_0_data_buf(3) => 
        \BT_module_0_data_buf[3]\, BT_module_0_data_buf(2) => 
        \BT_module_0_data_buf[2]\, BT_module_0_data_buf(1) => 
        \BT_module_0_data_buf[1]\, BT_module_0_data_buf(0) => 
        \BT_module_0_data_buf[0]\, COREUART_0_DATA_OUT(7) => 
        \COREUART_0_DATA_OUT[7]\, COREUART_0_DATA_OUT(6) => 
        \COREUART_0_DATA_OUT[6]\, COREUART_0_DATA_OUT(5) => 
        \COREUART_0_DATA_OUT[5]\, COREUART_0_DATA_OUT(4) => 
        \COREUART_0_DATA_OUT[4]\, COREUART_0_DATA_OUT(3) => 
        \COREUART_0_DATA_OUT[3]\, COREUART_0_DATA_OUT(2) => 
        \COREUART_0_DATA_OUT[2]\, COREUART_0_DATA_OUT(1) => 
        \COREUART_0_DATA_OUT[1]\, COREUART_0_DATA_OUT(0) => 
        \COREUART_0_DATA_OUT[0]\, FCCC_0_LOCK => FCCC_0_LOCK, 
        FCCC_0_GL0 => FCCC_0_GL0, BT_module_0_oen => 
        BT_module_0_oen, COREUART_0_RXRDY => COREUART_0_RXRDY);
    
    trig_obuf : OUTBUF
      port map(D => trig_c, PAD => trig);
    
    servo_driver_0 : servo_driver_work_top_rtl_0layer0
      port map(FCCC_0_LOCK => FCCC_0_LOCK, FCCC_0_GL0 => 
        FCCC_0_GL0, servo_pwm_c => servo_pwm_c, un42_clk_0 => 
        \locator_control_0.un42_clk_0\, un42_clk_1 => 
        \locator_control_0.un42_clk_1\, un42_clk_2 => 
        \locator_control_0.un42_clk_2\, un42_clk_3 => 
        \locator_control_0.un42_clk_3\, un1_state_7_0 => 
        \locator_control_0.un1_state_7_0\);
    
    \VCC\ : VCC
      port map(Y => VCC_net_1);
    
    COREUART_0 : TOP_COREUART_0_COREUART_19_0_0_0_0
      port map(COREUART_0_DATA_OUT(7) => \COREUART_0_DATA_OUT[7]\, 
        COREUART_0_DATA_OUT(6) => \COREUART_0_DATA_OUT[6]\, 
        COREUART_0_DATA_OUT(5) => \COREUART_0_DATA_OUT[5]\, 
        COREUART_0_DATA_OUT(4) => \COREUART_0_DATA_OUT[4]\, 
        COREUART_0_DATA_OUT(3) => \COREUART_0_DATA_OUT[3]\, 
        COREUART_0_DATA_OUT(2) => \COREUART_0_DATA_OUT[2]\, 
        COREUART_0_DATA_OUT(1) => \COREUART_0_DATA_OUT[1]\, 
        COREUART_0_DATA_OUT(0) => \COREUART_0_DATA_OUT[0]\, 
        time_sender_0_data_out_0 => \time_sender_0_data_out[0]\, 
        time_sender_0_data_out_1 => \time_sender_0_data_out[1]\, 
        time_sender_0_data_out_2 => \time_sender_0_data_out[2]\, 
        time_sender_0_data_out_3 => \time_sender_0_data_out[3]\, 
        time_sender_0_data_out_5 => \time_sender_0_data_out[5]\, 
        COREUART_0_RXRDY => COREUART_0_RXRDY, FCCC_0_LOCK => 
        FCCC_0_LOCK, FCCC_0_GL0 => FCCC_0_GL0, 
        time_sender_0_wen_i_0 => time_sender_0_wen_i_0, tx_c => 
        tx_c, COREUART_0_TXRDY => COREUART_0_TXRDY, 
        time_sender_0_wen => time_sender_0_wen, BT_module_0_oen
         => BT_module_0_oen, rx_c => rx_c);
    
    tx_obuf : OUTBUF
      port map(D => tx_c, PAD => tx);
    
    FCCC_0 : TOP_FCCC_0_FCCC
      port map(FCCC_0_LOCK => FCCC_0_LOCK, FCCC_0_GL0 => 
        FCCC_0_GL0, OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC => 
        OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC);
    
    rx_ibuf : INBUF
      port map(PAD => rx, Y => rx_c);
    
    echo_ibuf : INBUF
      port map(PAD => echo, Y => echo_c);
    
    OSC_0 : TOP_OSC_0_OSC
      port map(OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC => 
        OSC_0_RCOSC_1MHZ_CCC_OUT_RCOSC_1MHZ_CCC);
    

end DEF_ARCH; 
