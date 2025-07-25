library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Shifter is
    port (
        data_in  : in  std_logic_vector(3 downto 0);  -- Entrada de datos de 4 bits
        shift    : in  std_logic_vector(1 downto 0);  -- Entrada de control de 2 bits para seleccionar el desplazamiento
        data_out : out std_logic_vector(3 downto 0)   -- Salida de datos de 4 bits
    );
end Shifter;

architecture behavioral of Shifter is
begin
    process(data_in, shift)
    begin
        case shift is
            when "00" =>  -- Sin desplazamiento
                data_out <= data_in;
            when "01" =>  -- Desplazamiento a la izquierda por 1
                data_out <= data_in(1 downto 0) & data_in(3 downto 2);
            when "10" =>  -- Desplazamiento a la izquierda por 2
                data_out <= data_in(2 downto 0) & data_in(3);
            when "11" =>  -- Desplazamiento a la izquierda por 3
                data_out <= data_in(0) & data_in(3 downto 1);
            when others =>
                data_out <= (others => '0');  -- Cualquier otro caso pone la salida a cero
        end case;
    end process;
end behavioral;
