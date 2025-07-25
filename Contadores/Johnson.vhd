library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Johnson is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        output : out STD_LOGIC_VECTOR(4 downto 0);
        display : out STD_LOGIC_VECTOR(6 downto 0)
    );
end Johnson;

architecture Behavioral of Johnson is
    signal count : STD_LOGIC_VECTOR(4 downto 0) := "00000";
    signal clk_div : STD_LOGIC := '0';
    constant CLK_DIV_MAX : integer := 50000000; -- Valor de ajuste para dividir el reloj
    signal counter : integer range 0 to CLK_DIV_MAX - 1 := 0;
    signal startup_counter : integer range 0 to CLK_DIV_MAX - 1 := 0;
    constant STARTUP_DURATION : integer := 5000000; 
    signal display_value : std_logic_vector(6 downto 0);
begin
    -- Proceso para manejar el reinicio y el reloj
    process (clk, reset)
    begin
        if reset = '1' then
            count <= "00000"; 
            counter <= 0;
            clk_div <= '0';
            startup_counter <= 0;
        elsif rising_edge(clk) then
            if startup_counter < STARTUP_DURATION then
                startup_counter <= startup_counter + 1;
            else
                if counter = CLK_DIV_MAX - 1 then
                    counter <= 0;
                    clk_div <= NOT clk_div;
                    -- Cambiar el valor de count en el borde de subida del reloj dividido
                    case count is
                        when "00000" =>
                            count <= "10000";
                        when "10000" =>
                            count <= "11000";
                        when "11000" =>
                            count <= "11100";
                        when "11100" =>
                            count <= "11110";
                        when "11110" =>
                            count <= "11111";
                        when "11111" =>
                            count <= "01111";
                        when "01111" =>
                            count <= "00111";
                        when "00111" =>
                            count <= "00011";
                        when "00011" =>
                            count <= "00001";
                        when "00001" =>
                            count <= "00000";
                        when others =>
                            count <= "00000"; 
                    end case;
                else
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;

    -- Proceso para manejar el valor del display
    process (count)
    begin
        case count is
            when "00000" =>
                display_value <= "0111111";  -- 0
            when "10000" =>
                display_value <= "0000110";  -- 1
            when "11000" =>
                display_value <= "1011011";  -- 2
            when "11100" =>
                display_value <= "1001111";  -- 3
            when "11110" =>
                display_value <= "1100110";  -- 4
            when "11111" =>
                display_value <= "1101101";  -- 5
            when "01111" =>
                display_value <= "1111101";  -- 6
            when "00111" =>
                display_value <= "0000111";  -- 7
            when "00011" =>
                display_value <= "1111111";  -- 8
            when "00001" =>
                display_value <= "1100111";  -- 9
            when others =>
                display_value <= "0000000";  -- Display apagado
        end case;
    end process;

    output <= count;
    display <= display_value;
end Behavioral;
