library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;



--declarar la entidad

entity contar is

port ( clk50Mhz: in std_logic;
       leds: out std_logic_vector (3 downto 0)) ; 	-- (3 to 0)
		 
end contar;



architecture cuentabinaria of contar is


signal numeros : std_logic_vector (3 downto 0) := "0000";  -- se inicializa el vector en ceros!!

signal reloj_divisor: std_logic; 


 component  Reloj   is  -- el archivo que contiene el divisor de frecuencia se
                        -- llama para este caso Reloj, y se encuentra en la misma carpeta! y 
								--se va a incluir en estze programa que se llama contar!
		                  -- el divisor para este caso trabaja a 2 HZ!!
								
	
 port( salida: out std_logic; clk:    in std_logic;  reset:  in std_logic );
		 
end component;		  

begin

     Reloj1: Reloj port map( reloj_divisor, clk50Mhz, '1'); --aqui se relacionan las entradas y salidas de los dos programas!!
	  
		 
		 
		 Proceso_contador: process(reloj_divisor)
		 
		    begin 
			 
			 if
			  rising_edge(reloj_divisor) -- en este comando se ejecuta cuando detecta un flanco de subida!
			                              
			 then
			 
			 numeros<=numeros+1;  
			 
			 
			 end if;
			 
			 end process;
			 
			 leds<= numeros;   --- checar si los leds son de ánodo común o de cátodo común!!!
		                      --- si son de ánodo común se  escribe de la sig manera!!!
									 --  leds <= not numeros 
			
			
			end cuentabinaria;