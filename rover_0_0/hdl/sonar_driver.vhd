library IEEE;

use IEEE.std_logic_1164.all;
USE ieee.numeric_std.ALL;

entity locator_control is
generic
  (
    frq : natural := 50_000_000
  );
port (
    clk, rst_n : in std_logic ;
    
    new_ready : in std_logic;
    en_sonar, en_timer : out std_logic;
    
    open_angle : in std_logic_vector(7 downto 0);    
    angle : out std_logic_vector(3 downto 0);    
    angle1 : out std_logic_vector(3 downto 0)
    
);
end locator_control;
architecture BH of locator_control is
begin
    process (clk, rst_n)
    variable state, i, angle_int : natural;
    variable st_angle, fn_angle, cr_angle : natural;
    variable dir, over : std_logic;
    begin
        if rst_n = '0' then
            state := 0;
            i := 0;
            dir := '0';
            over := '0';
            en_sonar <= '0';
            en_timer <= '0';
            angle <= (others => '0');
            angle1 <= (others => '0');
            elsif clk = '1' and clk'event then
                case state is
                    when 0 => -- copy start and finish angle
                        st_angle := to_integer(unsigned(open_angle(3 downto 0)));
                        fn_angle := to_integer(unsigned(open_angle(7 downto 4)));
                        state := 1;
                    when 1 => -- setup first pos
                        cr_angle := st_angle;
                        state := 2;
                    when 2 => --send to servodriver new pos
                        angle <= std_logic_vector(to_unsigned(cr_angle, 4));
                        state := 3;
                    when 3 => --turn on sonar
                        en_sonar <= '1';
                        state := 4;
                        i := 0;
                    when 4 =>
                        if i < 500 then
                            i := i + 1;
                        else
                            i:=0;
                            en_sonar <= '0';
                            state:=5;
                        end if;
                    when 5 => -- turn time meashering
                        en_timer <= '1';
                        state := 6;
                    when 6 =>
                        state := 7;
                    when 7 =>
                        en_timer <= '0'; -- setup last position
                        angle1 <= std_logic_vector(to_unsigned(cr_angle, 4));
                        state := 8;
                    when 8 => -- waiting end of meashering
                        i:= i+1;
                        if new_ready = '1' then
                            state := 9;
                        end if;
                    when 9 => -- change pos
                        if dir = '0' then
                            if fn_angle > cr_angle then
                                cr_angle := cr_angle +1;
                            else
                                dir := '1';
                            end if;
                        elsif dir = '1' then
                            if st_angle < cr_angle then
                                cr_angle := cr_angle -1;
                            else
                                over := '1';
                            end if;
                        end if;
                        state := 10;
                    when 10 => -- check over, if not - move a servo
                        if over = '1' then
                            state := 0;
                            over := '0';
                        else
                            angle <= std_logic_vector(to_unsigned(cr_angle, 4));
                            state := 11;
                        end if;
                    when 11 => --wait noise
                        if i > 3_000_000 then
                            state := 3;
                            i := 0;
                        else
                            i:= i+1;
                        end if; 
                    when others =>
                        NULL;
              end case;

        end if;
    end process;   

 
    
end BH;



