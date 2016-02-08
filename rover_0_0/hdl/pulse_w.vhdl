library IEEE;

use IEEE.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity pulse_meash is

port (
    clk, rst_n : in std_logic;
    en, signal0 : in std_logic;
    new_ready : out std_logic;
    
    time : out std_logic_vector(15 downto 0)
);
end pulse_meash;
architecture BH of pulse_meash is
begin
    process (clk, rst_n)
    variable state, i : natural;
    begin
        if rst_n = '0' then
            state := 0;
            i := 0;
            new_ready <= '0';
            time <= (others => '0');
        elsif clk = '1' and clk'event then
            case state is
                when 0 =>
                  if en = '1' then 
                    state := 1;
                  end if;
                when 1 =>
                    if(signal0 = '1') then
                        state := 2;
                        i := 0;
                    end if;
                when 2 =>
                    if(signal0 = '1' and i < 2_500_000) then
                        i := i + 1;
                    else
                        state := 3;
                    end if;
                when 3 =>
                    new_ready <= '1';
                    time <= std_logic_vector(to_unsigned(i/(50*58), 16));
                    state := 4;
                when 4 =>
                    new_ready <= '0';
                    state := 0;
                when others =>
                    NULL;
            end case;

        end if;
    end process;   

 
    
end BH;

