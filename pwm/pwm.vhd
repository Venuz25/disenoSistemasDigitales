library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity pwm is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           pwm_out : out  STD_LOGIC;
           pwm_out_r : out  STD_LOGIC;
           pwm_out_l : out  STD_LOGIC );
end pwm;

architecture Behavioral of pwm is
    signal counter : integer := 0;
    signal pwm_signal : STD_LOGIC := '0';
    signal pwm_signal_r : STD_LOGIC := '0';
    signal pwm_signal_l : STD_LOGIC := '0';

    signal pos : integer range 0 to 4 := 0;
    signal pos_counter : integer := 0; 
begin
    process(clk, reset)
    begin
        if reset = '0' then
            pwm_signal <= '0';
            pwm_signal_r <= '0';
            pwm_signal_l <= '0';

            counter <= 0;
            pos_counter <= 0;

        elsif rising_edge(clk) then
            counter <= counter + 1;
            if counter = 1000000 then -- 1,000,000 ciclos corresponden a 20 ms
                counter <= 0;
                pos_counter <= pos_counter + 1;

                if pos_counter = 50 then -- Cambiar de posición cada 1 segundo (50 * 20 ms = 1s)
                    pos_counter <= 0;
                    pos <= (pos + 1) mod 5; -- Ciclo entre 0, 1, 2, 3 y 4
                end if;
            end if;

            -- pwm_out
            case pos is
                when 0 => 
                    if counter < 25000 then -- 0 grados (1 ms)
                        pwm_signal <= '1';  
                    else
                        pwm_signal <= '0';
                    end if;
                when 1 => 
                    if counter < 75000 then -- 90 grados (1.5 ms)
                        pwm_signal <= '1';  
                    else
                        pwm_signal <= '0';
                    end if;
                when 2 => 
                    if counter < 125000 then -- 180 grados (2 ms)
                        pwm_signal <= '1';   
                    else
                        pwm_signal <= '0';
                    end if;
                when 3 =>
                    if counter < 25000 then -- 0 grados (1 ms)
                        pwm_signal <= '1';
                    else
                        pwm_signal <= '0';
                    end if;
                when others =>
                    pwm_signal <= '0';
            end case;

            -- pwm_out_r
            case pos is
                when 0 => 
                    if counter < 37500 then -- 45 grados (1 ms)
                        pwm_signal_r <= '1';  
                    else
                        pwm_signal_r <= '0';
                    end if;
                when 1 => 
                    if counter < 112500 then -- 135 grados (1.5 ms)
                        pwm_signal_r <= '1';  
                    else
                        pwm_signal_r <= '0';
                    end if;
                when 2 => 
                    if counter < 112500 then -- 135 grados (2 ms)
                        pwm_signal_r <= '1';   
                    else
                        pwm_signal_r <= '0';
                    end if;
                when 3 =>
                    if counter < 37500 then -- 45 grados (1 ms)
                        pwm_signal_r <= '1';
                    else
                        pwm_signal_r <= '0';
                    end if;
                when others =>
                    pwm_signal_r <= '0';
            end case;

            -- pwm_out_l
            case pos is
                when 0 => 
                    if counter < 112500 then -- 135 grados (2 ms)
                        pwm_signal_l <= '1';  
                    else
                        pwm_signal_l <= '0';
                    end if;
                when 1 => 
                    if counter < 37500 then -- 45 grados (1.5 ms)
                        pwm_signal_l <= '1';  
                    else
                        pwm_signal_l <= '0';
                    end if;
                when 2 => 
                    if counter < 37500 then -- 45 grados (1 ms)
                        pwm_signal_l <= '1';   
                    else
                        pwm_signal_l <= '0';
                    end if;
                when 3 =>
                    if counter < 112500 then -- 135 grados (2 ms)
                        pwm_signal_l <= '1';
                    else
                        pwm_signal_l <= '0';
                    end if;
                when others =>
                    pwm_signal_l <= '0';
            end case;
        end if;
    end process;

    pwm_out <= pwm_signal;
    pwm_out_r <= pwm_signal_r;
    pwm_out_l <= pwm_signal_l;
end Behavioral;
