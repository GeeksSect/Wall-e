library IEEE;

use IEEE.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity servo_driver is
generic
  (
    frq : natural := 50_000_000
  );
port (
    clk, rst_n : in std_logic;
    servo_pwm : out std_logic;
    angle : in std_logic_vector(3 downto 0)
);
end servo_driver;
architecture BH of servo_driver is
begin
    process (clk, rst_n)
    variable state, pulse_length, i : natural;
    begin
        if rst_n = '0' then
            state := 0;
            i := 0;
            pulse_length := 0;
            servo_pwm <= '0';
        elsif clk = '1' and clk'event then

              case state is
                  when 0 =>
                    i := 0;
                    pulse_length := to_integer(unsigned(angle))*(frq*14/100_000)+(frq*6/10_000);
                    state := 1;
                  when 1 =>
                    servo_pwm <= '1';
                    if i < pulse_length then
                      i := i+1;
                    else
                      i := 0;
                      state :=2;
                    end if;
                  when 2 =>
                    servo_pwm <= '0';
                    if (i < frq*20/1_000) then
                      i:=i+1;
                    else
                      i := 0;
                      state := 0;
                    end if;
                  when others =>
                    NULL;
              end case;
        end if;
    end process;   

end BH;



