library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflops is
    port ( 
		  clk50MHz: in std_logic;
		  --clr: in std_logic;
        sel : in  std_logic_vector(1 downto 0);
        Input1 : in  std_logic;
        Input2 : in  std_logic;
        Q : out  std_logic_vector(6 downto 0);
        QN : out  std_logic_vector(6 downto 0)
    );
end flipflops;

architecture Behavioral of flipflops is
    signal Q_temp, QN_temp : std_logic_vector(6 downto 0);
	 
    constant D1 : std_logic_vector(6 downto 0) := "1000000";
    constant D0 : std_logic_vector(6 downto 0) := "1111001";
    
    -- Señales del módulo Reloj
    signal clk_5hz : std_logic;
	 
	 -- Declaración del componente Reloj
	 component Reloj is 
		port (
			clk: in std_logic;
			reset: in std_logic;
			salida_5hz: out std_logic	
		);
	 end component;
    
	 begin
		 -- Instancia del componente Reloj
		 Reloj5hz: Reloj port map(clk50MHz, '1', clk_5hz);
		 
		 process(clk_5hz)
		 begin
			  if rising_edge(clk_5hz) then
					case sel is
					
							 when "00" => -- Flipflop JK
								  if Input1 = '0' and Input2 = '0' then
									Q_temp <= Q_temp;
									QN_temp <= QN_temp;
							  elsif Input1 = '0' and Input2 = '1' then
									Q_temp <= D0;
									QN_temp <= D1;
							  elsif Input1 = '1' and Input2 = '0' then
									Q_temp <= D1;
									QN_temp <= D0;
							  elsif Input1 = '1' and Input2 = '1' then
									Q_temp <= QN_temp;
									QN_temp <= Q_temp;
							  end if;
						 
						 when "01" => -- Flipflop T
							  if Input1 = '0' then
									Q_temp <= Q_temp;
									QN_temp <= QN_temp;
							  elsif Input1 = '1' then
									Q_temp <= QN_temp;
									QN_temp <= Q_temp;
							  end if;
						
						 when "10" => -- Flipflop D
							  if Input1 = '0' then
									Q_temp <= D0;
									QN_temp <= D1;
							  elsif Input1 = '1' then
									Q_temp <= D1;
									QN_temp <= D0;
							  end if;
						
						 when "11" => -- Flipflop SR
							  if Input1 = '0' and Input2 = '0' then
									Q_temp <= Q_temp;
									QN_temp <= QN_temp;
							  elsif Input1 = '0' and Input2 = '1' then
									Q_temp <= D1;
									QN_temp <= D0;
							  elsif Input1 = '1' and Input2 = '0' then
									Q_temp <= D0;
									QN_temp <= D1;
							  elsif Input1 = '1' and Input2 = '1' then
									Q_temp <= D0;
									QN_temp <= D0;
							  end if;
						 
						 when others =>
							  Q_temp <= Q_temp;
							  QN_temp <= QN_temp;
					end case;
			  end if;
		 end process;

		 Q <= Q_temp;
		 QN <= QN_temp;

end Behavioral;
