library IEEE;

use IEEE.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity delayer is
generic
  (
    frq : natural := 50_000_000
  );
port (
    clk, rst_n, input : in std_logic;
    led : out std_logic
);
end delayer;
architecture BH of delayer is
begin
    process (clk, rst_n)
    variable i : natural:=0;
    begin
        if rst_n = '0' then
        elsif clk = '1' and clk'event then
            if input = '1' then
                i:=0;
            end if;
            if i > 5_000_000 then
                led <= '0';
            else
                led <= '1';
                i := i+1;
            end if;
        end if;
    end process;   

end BH;



