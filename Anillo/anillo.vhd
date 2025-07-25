library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity anillo is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (7 downto 0);
           display : out STD_LOGIC_VECTOR (6 downto 0)); 
end anillo;

architecture Behavioral of anillo is
    signal count : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    signal clk_div : STD_LOGIC := '0';
    constant CLK_DIV_MAX : integer := 25000000; 
    signal counter : integer range 0 to CLK_DIV_MAX - 1 := 0;
    signal startup_counter : integer range 0 to CLK_DIV_MAX - 1 := 0;
    constant STARTUP_DURATION : integer := 5000000; 
    signal display_value : std_logic_vector(6 downto 0);
begin
    process (clk, reset)
    begin
        if reset = '1' then
            count <= "10000000"; 
            counter <= 0;
            clk_div <= '0';
            startup_counter <= 0;
        elsif rising_edge(clk) then
            if startup_counter < STARTUP_DURATION then
                startup_counter <= startup_counter + 1;
            else
                if counter = CLK_DIV_MAX - 1 then
                    counter <= 0;
                    case count is
                        when "10000000" =>
                            count <= "01000000";
                        when "01000000" =>
                            count <= "00100000";
                        when "00100000" =>
                            count <= "00010000";
                        when "00010000" =>
                            count <= "00001000";
                        when "00001000" =>
                            count <= "00000100";
                        when "00000100" =>
                            count <= "00000010";
                        when "00000010" =>
                            count <= "00000001";
                        when "00000001" =>
                            count <= "10000000";
                        when others =>
                            count <= "10000000"; 
                    end case;
                    clk_div <= NOT clk_div;
                else
                    counter <= counter + 1;
                end if;
            end if;
        end if;
    end process;

    process (count)
    begin
        case count is
            when "10000000" =>
                display_value <= "0111111"; -- 0
            when "01000000" =>
                display_value <= "0000110"; -- 1
            when "00100000" =>
                display_value <= "1011011"; -- 2
            when "00010000" =>
                display_value <= "1001111"; -- 3
            when "00001000" =>
                display_value <= "1100110"; -- 4
            when "00000100" =>
                display_value <= "1101101"; -- 5
            when "00000010" =>
                display_value <= "1111101"; -- 6
            when "00000001" =>
                display_value <= "0000111"; -- 7
            when others =>
                display_value <= "1111111"; -- Display apagado
        end case;
    end process;

    output <= count;
    display <= display_value;
end Behavioral;
