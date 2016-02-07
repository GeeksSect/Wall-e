library IEEE;

use IEEE.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity time_sender is
generic
  (
    frq : natural := 50_000_000
  );
port (
    clk, rst_n : in std_logic ;
    
    new_ready : in std_logic;
    time1 : in std_logic_vector(15 downto 0);
    angle : in std_logic_vector(3 downto 0);
    wen: out std_logic;
    txrdy : in std_logic;
    data_out : out std_logic_vector(7 downto 0)
    
 
);
    type mem is array (natural range <>) of std_logic_vector(7 downto 0);    

end time_sender;
architecture BH of time_sender is
signal buff : mem (0 to 8);
begin
    process (clk, rst_n)
    variable state, valu, angl, i, k : natural;
    begin
        if rst_n = '0' then
            state := 0;
            i := 0;
            wen <= '1'; 
            buff(0) <= x"0a";

        elsif clk = '1' and clk'event then
              case state is
                  when 0 =>
                     if(new_ready = '1') then   
                        valu := to_integer(unsigned(time1));
                        buff(1) <= std_logic_vector(to_unsigned(to_integer(unsigned(angle))+48, 8));
                        i:=3;
                        state := 1;
                     end if;                  
                  when 1 =>
                     k := (valu mod 10) + 48; 
                     state := 2;
                  when 2 =>
                      buff(i) <= std_logic_vector(to_unsigned(k, 8));
                      valu := valu /10;
                      i:= i+1;
                      if(i <= 8) then
                        state := 1;
                      else
                        i := 8;
                        state := 3;
                      end if;

                  when 3 =>
                      if(txrdy = '1') then
                          state := 4;
                          data_out <= buff(i);
                      end if;                 
                  when 4 =>
                     wen <= '0';
                     if (i > 0) then
                        i := i-1;
                        state := 5;
                     else
                        state :=10;
                     end if;
                  when 5 =>
                    wen <= '1';
                    state :=3;
                  when 10 =>
                    wen <= '1';
                    state := 0;
                  when others =>
                        NULL;
                  end case;

        end if;
    end process;   

 
    
end BH;


