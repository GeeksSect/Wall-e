--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: BT_resiver.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 VQ>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity BT_resiver is
port (
    clk, rst_n : in std_logic;
    rxrdy, txrdy : in std_logic;
    wen, oen : out std_logic;

    outR_1 : out std_logic;
    outR_2 : out std_logic;
    outL_1 : out std_logic;
    outL_2 : out std_logic;
    
    data_in : in std_logic_vector(7 downto 0);
    data_out : out std_logic_vector(7 downto 0)
);
end BT_resiver;
architecture BH of BT_resiver is
signal powL, powR: integer;
begin
    process (clk, rst_n)
    variable state : natural;
    variable dir1, dir2: integer;
    begin
        if rst_n = '0' then
            powR <= 0;
            powL <= 0;
            wen <= '1';
            oen <= '1';
            state := 0;
            dir1 := 0;
            dir2 := 0;
            data_out <= (others => '0');
        elsif clk = '1' and clk'event then
            case state is
                when 0 =>
                    if(rxrdy = '1') then
                        state := 1;
                    end if;
                when 1 =>
                    oen <= '0';
                    if(data_in(0) = '0') then
                        dir1 := 2 * to_integer(signed(data_in(7 downto 1)));
                    else
                        dir2 := 2 * to_integer(signed(data_in(7 downto 1)));
                    end if;
                    state := 2;
                when 2 =>
                        
                    oen <= '1';
                    state := 3;
                when 3 =>
                    if(dir1 < 30 and dir1 > -30) then
                        powL <= 2 * dir1 + dir2 ;
                        powR <= 2 * dir1 - dir2 ;
                    else
                        powL <= (3 * dir1 / 2) + 15 + (30 * dir2 / dir1) ;
                        powR <= (3 * dir1 / 2) + 15 - (30 * dir2 / dir1) ;
                    end if;    
                    state := 0;
                when others =>
                    NULL;
            end case;

        end if;
    end process;   

 
    process (clk, rst_n)
    variable state : natural;
    variable div , i: integer;
    begin
        
        if rst_n = '0' then
            div := 0;
            i := 0;
        elsif clk = '1' and clk'event then
            if div < 500 then
                div := div+1;
            else
                div := 0;
                if( i < 205) then
                    if(powL >=0) then
                        outL_2 <= '0';
                        if( i < powL) then
                            outL_1 <= '1';
                        else
                            outL_1 <= '0';
                        end if;                      
                    else
                        outL_1 <= '0';
                        if( -i > powL) then
                            outL_2 <= '1';
                        else
                            outL_2 <= '0';
                        end if;
                    end if;                

                    if(powR >=0) then
                        outR_2 <= '0';
                        if( i < powR) then
                            outR_1 <= '1';
                        else
                            outR_1 <= '0';
                        end if;                      
                    else
                        outR_1 <= '0';
                        if( -i >  powR) then
                            outR_2 <= '1';
                        else
                            outR_2 <= '0';
                        end if;
                    end if;

                    i:= i+1;
                else
                    i := 0;
                end if;

            end if;
        end if;
    end process;
end BH;

