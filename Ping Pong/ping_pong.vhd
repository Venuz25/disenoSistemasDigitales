library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ping_pong is 
    Port ( 
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        button1 : in STD_LOGIC;
        button2 : in STD_LOGIC;
        leds : out STD_LOGIC_VECTOR (7 downto 0);
        player1_display : out STD_LOGIC_VECTOR (6 downto 0);
        player2_display : out STD_LOGIC_VECTOR (6 downto 0)
    );
end ping_pong;

architecture Behavioral of ping_pong is
    signal count : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    signal direction : STD_LOGIC := '0'; -- 0: izq. a derecha, 1: derecha a izq.
    signal player1_score : INTEGER range 0 to 9 := 0; -- el primero en llegar a 9 gana
    signal player2_score : INTEGER range 0 to 9 := 0;
    
    signal game_active : STD_LOGIC := '0';
    signal clk_div : STD_LOGIC := '0';
    constant CLK_DIV_MAX : integer := 25000000; 
    signal counter : integer range 0 to CLK_DIV_MAX - 1 := 0;

begin
    process (clk, reset)
    begin
        if reset = '1' then -- Resetea el juego
            count <= "10000000"; 
            direction <= '0';
            player1_score <= 0;
            player2_score <= 0;
            counter <= 0;
            clk_div <= '0';
            game_active <= '0';
        elsif rising_edge(clk) then
            if counter = CLK_DIV_MAX - 1 then
                counter <= 0;
                clk_div <= NOT clk_div;

                if game_active = '1' then
                    if direction = '0' then
                        if count = "00000001" then
                            if button2 = '1' then
                                direction <= '1';
                            else
                                player1_score <= player1_score + 1;
                                game_active <= '0';
                            end if;
                        else
                            count <= count(6 downto 0) & '0';
                        end if;
                    else
                        if count = "10000000" then
                            if button1 = '1' then
                                direction <= '0';
                            else
                                player2_score <= player2_score + 1;
                                game_active <= '0';
                            end if;
                        else
                            count <= '0' & count(7 downto 1);
                        end if;
                    end if;
                else
                    if direction = '0' and button1 = '1' then
                        game_active <= '1';
                    elsif direction = '1' and button2 = '1' then
                        game_active <= '1';
                    end if;
                end if;

                if player1_score = 9 or player2_score = 9 then
                    count <= "11111111"; -- Todos los LEDs encendidos
                    game_active <= '0';
                end if;
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    process (player1_score)
    begin
        case player1_score is
            when 0 => player1_display <= "0111111"; -- 0
            when 1 => player1_display <= "0000110"; -- 1
            when 2 => player1_display <= "1011011"; -- 2
            when 3 => player1_display <= "1001111"; -- 3
            when 4 => player1_display <= "1100110"; -- 4
            when 5 => player1_display <= "1101101"; -- 5
            when 6 => player1_display <= "1111101"; -- 6
            when 7 => player1_display <= "0000111"; -- 7
            when 8 => player1_display <= "1111111"; -- 8
            when 9 => player1_display <= "1101111"; -- 9
            when others => player1_display <= "1111111"; -- Display apagado
        end case;
    end process;

    process (player2_score)
    begin
        case player2_score is
            when 0 => player2_display <= "1000000"; -- 0
            when 1 => player2_display <= "1111001"; -- 1
            when 2 => player2_display <= "0100100"; -- 2
            when 3 => player2_display <= "0110000"; -- 3
            when 4 => player2_display <= "0011001"; -- 4
            when 5 => player2_display <= "0010010"; -- 5
            when 6 => player2_display <= "0000010"; -- 6
            when 7 => player2_display <= "1111000"; -- 7
            when 8 => player2_display <= "0000000"; -- 8
            when 9 => player2_display <= "0010000"; -- 9
            when others => player2_display <= "0000000"; -- Display apagado
        end case;
    end process;

    leds <= count;
end Behavioral;
