library ieee;
use ieee.std_logic_1164.all;

entity Reloj is
	port( 
		clk: in std_logic;
		reset: in std_logic; 
		salida_5hz: out std_logic
	);
end Reloj;

architecture divisor of Reloj is
	signal contador_5hz: integer range 0 to 4999999 := 0;
	signal salida_5hz_interna: std_logic;
		
		begin
			Divisor_frecuencia: process(clk, reset)	
				begin
					if reset = '1' then
						contador_5hz <= 0;
						salida_5hz_interna <= '0';

					elsif rising_edge(clk) then

						-- Divisor para 5Hz
						if contador_5hz = 4999999 then
							contador_5hz <= 0;
							salida_5hz_interna <= not salida_5hz_interna;
						else
							contador_5hz <= contador_5hz + 1;
						end if;
						
					end if;
			end process;
			salida_5hz <= salida_5hz_interna;
			
end divisor;
