library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Shifter_16 is
    port (
        data_in  : in  std_logic_vector(15 downto 0);  -- Entrada de datos de 16 bits
        shift    : in  std_logic_vector(3 downto 0);   -- Entrada de control de 4 bits para seleccionar el desplazamiento
        data_out : out std_logic_vector(15 downto 0)   -- Salida de datos de 16 bits
    );
end Shifter_16;

architecture behavioral of Shifter_16 is
begin
    process(data_in, shift)
    begin
        case shift is
            when "0000" =>  -- Sin desplazamiento
                data_out <= data_in;
            when "0001" =>  -- Desplazamiento a la derecha por 1
                data_out <= data_in(0) & data_in(15 downto 1);
            when "0010" =>  -- Desplazamiento a la derecha por 2
                data_out <= data_in(1 downto 0) & data_in(15 downto 2);
            when "0011" =>  -- Desplazamiento a la derecha por 3
                data_out <= data_in(2 downto 0) & data_in(15 downto 3);
            when "0100" =>  -- Desplazamiento a la derecha por 4
                data_out <= data_in(3 downto 0) & data_in(15 downto 4);
            when "0101" =>  -- Desplazamiento a la derecha por 5
                data_out <= data_in(4 downto 0) & data_in(15 downto 5);
            when "0110" =>  -- Desplazamiento a la derecha por 6
                data_out <= data_in(5 downto 0) & data_in(15 downto 6);
            when "0111" =>  -- Desplazamiento a la derecha por 7
                data_out <= data_in(6 downto 0) & data_in(15 downto 7);
            when "1000" =>  -- Desplazamiento a la derecha por 8
                data_out <= data_in(7 downto 0) & data_in(15 downto 8);
            when "1001" =>  -- Desplazamiento a la derecha por 9
                data_out <= data_in(8 downto 0) & data_in(15 downto 9);
            when "1010" =>  -- Desplazamiento a la derecha por 10
                data_out <= data_in(9 downto 0) & data_in(15 downto 10);
            when "1011" =>  -- Desplazamiento a la derecha por 11
                data_out <= data_in(10 downto 0) & data_in(15 downto 11);
            when "1100" =>  -- Desplazamiento a la derecha por 12
                data_out <= data_in(11 downto 0) & data_in(15 downto 12);
            when "1101" =>  -- Desplazamiento a la derecha por 13
                data_out <= data_in(12 downto 0) & data_in(15 downto 13);
            when "1110" =>  -- Desplazamiento a la derecha por 14
                data_out <= data_in(13 downto 0) & data_in(15 downto 14);
            when "1111" =>  -- Desplazamiento a la derecha por 15
                data_out <= data_in(14 downto 0) & data_in(15);
            when others =>
                data_out <= (others => '0');  -- Cualquier otro caso pone la salida a cero
        end case;
    end process;
end behavioral;
