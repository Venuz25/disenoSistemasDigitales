-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "03/21/2024 09:25:51"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contar IS
    PORT (
	clk50Mhz : IN std_logic;
	leds : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END contar;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50Mhz	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF contar IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50Mhz : std_logic;
SIGNAL ww_leds : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reloj1|salida_media~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \clk50Mhz~input_o\ : std_logic;
SIGNAL \clk50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \Reloj1|Add0~0_combout\ : std_logic;
SIGNAL \Reloj1|Add0~1\ : std_logic;
SIGNAL \Reloj1|Add0~2_combout\ : std_logic;
SIGNAL \Reloj1|Add0~3\ : std_logic;
SIGNAL \Reloj1|Add0~4_combout\ : std_logic;
SIGNAL \Reloj1|Add0~5\ : std_logic;
SIGNAL \Reloj1|Add0~6_combout\ : std_logic;
SIGNAL \Reloj1|Add0~7\ : std_logic;
SIGNAL \Reloj1|Add0~8_combout\ : std_logic;
SIGNAL \Reloj1|Add0~9\ : std_logic;
SIGNAL \Reloj1|Add0~10_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~6_combout\ : std_logic;
SIGNAL \Reloj1|Add0~11\ : std_logic;
SIGNAL \Reloj1|Add0~12_combout\ : std_logic;
SIGNAL \Reloj1|contador~11_combout\ : std_logic;
SIGNAL \Reloj1|Add0~13\ : std_logic;
SIGNAL \Reloj1|Add0~14_combout\ : std_logic;
SIGNAL \Reloj1|Add0~15\ : std_logic;
SIGNAL \Reloj1|Add0~16_combout\ : std_logic;
SIGNAL \Reloj1|Add0~17\ : std_logic;
SIGNAL \Reloj1|Add0~18_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~5_combout\ : std_logic;
SIGNAL \Reloj1|Add0~19\ : std_logic;
SIGNAL \Reloj1|Add0~20_combout\ : std_logic;
SIGNAL \Reloj1|Add0~21\ : std_logic;
SIGNAL \Reloj1|Add0~22_combout\ : std_logic;
SIGNAL \Reloj1|contador~10_combout\ : std_logic;
SIGNAL \Reloj1|Add0~23\ : std_logic;
SIGNAL \Reloj1|Add0~24_combout\ : std_logic;
SIGNAL \Reloj1|contador~9_combout\ : std_logic;
SIGNAL \Reloj1|Add0~25\ : std_logic;
SIGNAL \Reloj1|Add0~26_combout\ : std_logic;
SIGNAL \Reloj1|contador~8_combout\ : std_logic;
SIGNAL \Reloj1|Add0~27\ : std_logic;
SIGNAL \Reloj1|Add0~28_combout\ : std_logic;
SIGNAL \Reloj1|contador~7_combout\ : std_logic;
SIGNAL \Reloj1|Add0~29\ : std_logic;
SIGNAL \Reloj1|Add0~30_combout\ : std_logic;
SIGNAL \Reloj1|Add0~31\ : std_logic;
SIGNAL \Reloj1|Add0~32_combout\ : std_logic;
SIGNAL \Reloj1|contador~6_combout\ : std_logic;
SIGNAL \Reloj1|Add0~33\ : std_logic;
SIGNAL \Reloj1|Add0~34_combout\ : std_logic;
SIGNAL \Reloj1|Add0~35\ : std_logic;
SIGNAL \Reloj1|Add0~36_combout\ : std_logic;
SIGNAL \Reloj1|contador~5_combout\ : std_logic;
SIGNAL \Reloj1|Add0~37\ : std_logic;
SIGNAL \Reloj1|Add0~38_combout\ : std_logic;
SIGNAL \Reloj1|contador~4_combout\ : std_logic;
SIGNAL \Reloj1|Add0~39\ : std_logic;
SIGNAL \Reloj1|Add0~40_combout\ : std_logic;
SIGNAL \Reloj1|contador~3_combout\ : std_logic;
SIGNAL \Reloj1|Add0~41\ : std_logic;
SIGNAL \Reloj1|Add0~42_combout\ : std_logic;
SIGNAL \Reloj1|contador~2_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~1_combout\ : std_logic;
SIGNAL \Reloj1|Add0~43\ : std_logic;
SIGNAL \Reloj1|Add0~44_combout\ : std_logic;
SIGNAL \Reloj1|contador~1_combout\ : std_logic;
SIGNAL \Reloj1|Add0~45\ : std_logic;
SIGNAL \Reloj1|Add0~46_combout\ : std_logic;
SIGNAL \Reloj1|Add0~47\ : std_logic;
SIGNAL \Reloj1|Add0~48_combout\ : std_logic;
SIGNAL \Reloj1|contador~0_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~0_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~2_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~3_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~4_combout\ : std_logic;
SIGNAL \Reloj1|Equal0~7_combout\ : std_logic;
SIGNAL \Reloj1|salida_media~0_combout\ : std_logic;
SIGNAL \Reloj1|salida_media~feeder_combout\ : std_logic;
SIGNAL \Reloj1|salida_media~q\ : std_logic;
SIGNAL \Reloj1|salida_media~clkctrl_outclk\ : std_logic;
SIGNAL \numeros[0]~3_combout\ : std_logic;
SIGNAL \numeros[1]~0_combout\ : std_logic;
SIGNAL \numeros[2]~1_combout\ : std_logic;
SIGNAL \numeros[3]~2_combout\ : std_logic;
SIGNAL numeros : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reloj1|contador\ : std_logic_vector(24 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk50Mhz <= clk50Mhz;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reloj1|salida_media~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reloj1|salida_media~q\);

\clk50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50Mhz~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y24_N9
\leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => numeros(0),
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => numeros(1),
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => numeros(2),
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => numeros(3),
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk50Mhz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50Mhz,
	o => \clk50Mhz~input_o\);

-- Location: CLKCTRL_G2
\clk50Mhz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50Mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X4_Y9_N8
\Reloj1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~0_combout\ = \Reloj1|contador\(0) $ (VCC)
-- \Reloj1|Add0~1\ = CARRY(\Reloj1|contador\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(0),
	datad => VCC,
	combout => \Reloj1|Add0~0_combout\,
	cout => \Reloj1|Add0~1\);

-- Location: FF_X4_Y9_N9
\Reloj1|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(0));

-- Location: LCCOMB_X4_Y9_N10
\Reloj1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~2_combout\ = (\Reloj1|contador\(1) & (!\Reloj1|Add0~1\)) # (!\Reloj1|contador\(1) & ((\Reloj1|Add0~1\) # (GND)))
-- \Reloj1|Add0~3\ = CARRY((!\Reloj1|Add0~1\) # (!\Reloj1|contador\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(1),
	datad => VCC,
	cin => \Reloj1|Add0~1\,
	combout => \Reloj1|Add0~2_combout\,
	cout => \Reloj1|Add0~3\);

-- Location: FF_X4_Y9_N11
\Reloj1|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(1));

-- Location: LCCOMB_X4_Y9_N12
\Reloj1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~4_combout\ = (\Reloj1|contador\(2) & (\Reloj1|Add0~3\ $ (GND))) # (!\Reloj1|contador\(2) & (!\Reloj1|Add0~3\ & VCC))
-- \Reloj1|Add0~5\ = CARRY((\Reloj1|contador\(2) & !\Reloj1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(2),
	datad => VCC,
	cin => \Reloj1|Add0~3\,
	combout => \Reloj1|Add0~4_combout\,
	cout => \Reloj1|Add0~5\);

-- Location: FF_X4_Y9_N13
\Reloj1|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(2));

-- Location: LCCOMB_X4_Y9_N14
\Reloj1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~6_combout\ = (\Reloj1|contador\(3) & (!\Reloj1|Add0~5\)) # (!\Reloj1|contador\(3) & ((\Reloj1|Add0~5\) # (GND)))
-- \Reloj1|Add0~7\ = CARRY((!\Reloj1|Add0~5\) # (!\Reloj1|contador\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(3),
	datad => VCC,
	cin => \Reloj1|Add0~5\,
	combout => \Reloj1|Add0~6_combout\,
	cout => \Reloj1|Add0~7\);

-- Location: FF_X4_Y9_N15
\Reloj1|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(3));

-- Location: LCCOMB_X4_Y9_N16
\Reloj1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~8_combout\ = (\Reloj1|contador\(4) & (\Reloj1|Add0~7\ $ (GND))) # (!\Reloj1|contador\(4) & (!\Reloj1|Add0~7\ & VCC))
-- \Reloj1|Add0~9\ = CARRY((\Reloj1|contador\(4) & !\Reloj1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(4),
	datad => VCC,
	cin => \Reloj1|Add0~7\,
	combout => \Reloj1|Add0~8_combout\,
	cout => \Reloj1|Add0~9\);

-- Location: FF_X4_Y9_N17
\Reloj1|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(4));

-- Location: LCCOMB_X4_Y9_N18
\Reloj1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~10_combout\ = (\Reloj1|contador\(5) & (!\Reloj1|Add0~9\)) # (!\Reloj1|contador\(5) & ((\Reloj1|Add0~9\) # (GND)))
-- \Reloj1|Add0~11\ = CARRY((!\Reloj1|Add0~9\) # (!\Reloj1|contador\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(5),
	datad => VCC,
	cin => \Reloj1|Add0~9\,
	combout => \Reloj1|Add0~10_combout\,
	cout => \Reloj1|Add0~11\);

-- Location: FF_X4_Y9_N19
\Reloj1|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(5));

-- Location: LCCOMB_X4_Y9_N4
\Reloj1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~6_combout\ = (\Reloj1|contador\(2) & (\Reloj1|contador\(5) & (\Reloj1|contador\(3) & \Reloj1|contador\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(2),
	datab => \Reloj1|contador\(5),
	datac => \Reloj1|contador\(3),
	datad => \Reloj1|contador\(4),
	combout => \Reloj1|Equal0~6_combout\);

-- Location: LCCOMB_X4_Y9_N20
\Reloj1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~12_combout\ = (\Reloj1|contador\(6) & (\Reloj1|Add0~11\ $ (GND))) # (!\Reloj1|contador\(6) & (!\Reloj1|Add0~11\ & VCC))
-- \Reloj1|Add0~13\ = CARRY((\Reloj1|contador\(6) & !\Reloj1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(6),
	datad => VCC,
	cin => \Reloj1|Add0~11\,
	combout => \Reloj1|Add0~12_combout\,
	cout => \Reloj1|Add0~13\);

-- Location: LCCOMB_X4_Y9_N0
\Reloj1|contador~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|contador~11_combout\ = (!\Reloj1|Equal0~7_combout\ & \Reloj1|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|Equal0~7_combout\,
	datad => \Reloj1|Add0~12_combout\,
	combout => \Reloj1|contador~11_combout\);

-- Location: FF_X4_Y9_N1
\Reloj1|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|contador~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(6));

-- Location: LCCOMB_X4_Y9_N22
\Reloj1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~14_combout\ = (\Reloj1|contador\(7) & (!\Reloj1|Add0~13\)) # (!\Reloj1|contador\(7) & ((\Reloj1|Add0~13\) # (GND)))
-- \Reloj1|Add0~15\ = CARRY((!\Reloj1|Add0~13\) # (!\Reloj1|contador\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(7),
	datad => VCC,
	cin => \Reloj1|Add0~13\,
	combout => \Reloj1|Add0~14_combout\,
	cout => \Reloj1|Add0~15\);

-- Location: FF_X4_Y9_N23
\Reloj1|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(7));

-- Location: LCCOMB_X4_Y9_N24
\Reloj1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~16_combout\ = (\Reloj1|contador\(8) & (\Reloj1|Add0~15\ $ (GND))) # (!\Reloj1|contador\(8) & (!\Reloj1|Add0~15\ & VCC))
-- \Reloj1|Add0~17\ = CARRY((\Reloj1|contador\(8) & !\Reloj1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(8),
	datad => VCC,
	cin => \Reloj1|Add0~15\,
	combout => \Reloj1|Add0~16_combout\,
	cout => \Reloj1|Add0~17\);

-- Location: FF_X4_Y9_N25
\Reloj1|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(8));

-- Location: LCCOMB_X4_Y9_N26
\Reloj1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~18_combout\ = (\Reloj1|contador\(9) & (!\Reloj1|Add0~17\)) # (!\Reloj1|contador\(9) & ((\Reloj1|Add0~17\) # (GND)))
-- \Reloj1|Add0~19\ = CARRY((!\Reloj1|Add0~17\) # (!\Reloj1|contador\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(9),
	datad => VCC,
	cin => \Reloj1|Add0~17\,
	combout => \Reloj1|Add0~18_combout\,
	cout => \Reloj1|Add0~19\);

-- Location: FF_X4_Y9_N27
\Reloj1|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(9));

-- Location: LCCOMB_X4_Y9_N6
\Reloj1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~5_combout\ = (!\Reloj1|contador\(7) & (!\Reloj1|contador\(6) & (!\Reloj1|contador\(9) & !\Reloj1|contador\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(7),
	datab => \Reloj1|contador\(6),
	datac => \Reloj1|contador\(9),
	datad => \Reloj1|contador\(8),
	combout => \Reloj1|Equal0~5_combout\);

-- Location: LCCOMB_X4_Y9_N28
\Reloj1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~20_combout\ = (\Reloj1|contador\(10) & (\Reloj1|Add0~19\ $ (GND))) # (!\Reloj1|contador\(10) & (!\Reloj1|Add0~19\ & VCC))
-- \Reloj1|Add0~21\ = CARRY((\Reloj1|contador\(10) & !\Reloj1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(10),
	datad => VCC,
	cin => \Reloj1|Add0~19\,
	combout => \Reloj1|Add0~20_combout\,
	cout => \Reloj1|Add0~21\);

-- Location: FF_X4_Y9_N29
\Reloj1|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(10));

-- Location: LCCOMB_X4_Y9_N30
\Reloj1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~22_combout\ = (\Reloj1|contador\(11) & (!\Reloj1|Add0~21\)) # (!\Reloj1|contador\(11) & ((\Reloj1|Add0~21\) # (GND)))
-- \Reloj1|Add0~23\ = CARRY((!\Reloj1|Add0~21\) # (!\Reloj1|contador\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(11),
	datad => VCC,
	cin => \Reloj1|Add0~21\,
	combout => \Reloj1|Add0~22_combout\,
	cout => \Reloj1|Add0~23\);

-- Location: LCCOMB_X3_Y8_N0
\Reloj1|contador~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|contador~10_combout\ = (!\Reloj1|Equal0~7_combout\ & \Reloj1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|Equal0~7_combout\,
	datad => \Reloj1|Add0~22_combout\,
	combout => \Reloj1|contador~10_combout\);

-- Location: FF_X3_Y8_N1
\Reloj1|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|contador~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(11));

-- Location: LCCOMB_X4_Y8_N0
\Reloj1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~24_combout\ = (\Reloj1|contador\(12) & (\Reloj1|Add0~23\ $ (GND))) # (!\Reloj1|contador\(12) & (!\Reloj1|Add0~23\ & VCC))
-- \Reloj1|Add0~25\ = CARRY((\Reloj1|contador\(12) & !\Reloj1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(12),
	datad => VCC,
	cin => \Reloj1|Add0~23\,
	combout => \Reloj1|Add0~24_combout\,
	cout => \Reloj1|Add0~25\);

-- Location: LCCOMB_X3_Y8_N8
\Reloj1|contador~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|contador~9_combout\ = (\Reloj1|Add0~24_combout\ & !\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|Add0~24_combout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|contador~9_combout\);

-- Location: FF_X3_Y8_N9
\Reloj1|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|contador~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(12));

-- Location: LCCOMB_X4_Y8_N2
\Reloj1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~26_combout\ = (\Reloj1|contador\(13) & (!\Reloj1|Add0~25\)) # (!\Reloj1|contador\(13) & ((\Reloj1|Add0~25\) # (GND)))
-- \Reloj1|Add0~27\ = CARRY((!\Reloj1|Add0~25\) # (!\Reloj1|contador\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(13),
	datad => VCC,
	cin => \Reloj1|Add0~25\,
	combout => \Reloj1|Add0~26_combout\,
	cout => \Reloj1|Add0~27\);

-- Location: LCCOMB_X3_Y8_N16
\Reloj1|contador~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|contador~8_combout\ = (!\Reloj1|Equal0~7_combout\ & \Reloj1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|Equal0~7_combout\,
	datad => \Reloj1|Add0~26_combout\,
	combout => \Reloj1|contador~8_combout\);

-- Location: FF_X3_Y8_N17
\Reloj1|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|contador~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(13));

-- Location: LCCOMB_X4_Y8_N4
\Reloj1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~28_combout\ = (\Reloj1|contador\(14) & (\Reloj1|Add0~27\ $ (GND))) # (!\Reloj1|contador\(14) & (!\Reloj1|Add0~27\ & VCC))
-- \Reloj1|Add0~29\ = CARRY((\Reloj1|contador\(14) & !\Reloj1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(14),
	datad => VCC,
	cin => \Reloj1|Add0~27\,
	combout => \Reloj1|Add0~28_combout\,
	cout => \Reloj1|Add0~29\);

-- Location: LCCOMB_X4_Y8_N28
\Reloj1|contador~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|contador~7_combout\ = (\Reloj1|Add0~28_combout\ & !\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|Add0~28_combout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|contador~7_combout\);

-- Location: FF_X4_Y8_N29
\Reloj1|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|contador~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(14));

-- Location: LCCOMB_X4_Y8_N6
\Reloj1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~30_combout\ = (\Reloj1|contador\(15) & (!\Reloj1|Add0~29\)) # (!\Reloj1|contador\(15) & ((\Reloj1|Add0~29\) # (GND)))
-- \Reloj1|Add0~31\ = CARRY((!\Reloj1|Add0~29\) # (!\Reloj1|contador\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(15),
	datad => VCC,
	cin => \Reloj1|Add0~29\,
	combout => \Reloj1|Add0~30_combout\,
	cout => \Reloj1|Add0~31\);

-- Location: FF_X4_Y8_N7
\Reloj1|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(15));

-- Location: LCCOMB_X4_Y8_N8
\Reloj1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~32_combout\ = (\Reloj1|contador\(16) & (\Reloj1|Add0~31\ $ (GND))) # (!\Reloj1|contador\(16) & (!\Reloj1|Add0~31\ & VCC))
-- \Reloj1|Add0~33\ = CARRY((\Reloj1|contador\(16) & !\Reloj1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(16),
	datad => VCC,
	cin => \Reloj1|Add0~31\,
	combout => \Reloj1|Add0~32_combout\,
	cout => \Reloj1|Add0~33\);

-- Location: LCCOMB_X4_Y8_N30
\Reloj1|contador~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|contador~6_combout\ = (\Reloj1|Add0~32_combout\ & !\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|Add0~32_combout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|contador~6_combout\);

-- Location: FF_X4_Y8_N31
\Reloj1|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|contador~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(16));

-- Location: LCCOMB_X4_Y8_N10
\Reloj1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~34_combout\ = (\Reloj1|contador\(17) & (!\Reloj1|Add0~33\)) # (!\Reloj1|contador\(17) & ((\Reloj1|Add0~33\) # (GND)))
-- \Reloj1|Add0~35\ = CARRY((!\Reloj1|Add0~33\) # (!\Reloj1|contador\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(17),
	datad => VCC,
	cin => \Reloj1|Add0~33\,
	combout => \Reloj1|Add0~34_combout\,
	cout => \Reloj1|Add0~35\);

-- Location: FF_X4_Y8_N11
\Reloj1|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(17));

-- Location: LCCOMB_X4_Y8_N12
\Reloj1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~36_combout\ = (\Reloj1|contador\(18) & (\Reloj1|Add0~35\ $ (GND))) # (!\Reloj1|contador\(18) & (!\Reloj1|Add0~35\ & VCC))
-- \Reloj1|Add0~37\ = CARRY((\Reloj1|contador\(18) & !\Reloj1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(18),
	datad => VCC,
	cin => \Reloj1|Add0~35\,
	combout => \Reloj1|Add0~36_combout\,
	cout => \Reloj1|Add0~37\);

-- Location: LCCOMB_X3_Y8_N22
\Reloj1|contador~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|contador~5_combout\ = (\Reloj1|Add0~36_combout\ & !\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|Add0~36_combout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|contador~5_combout\);

-- Location: FF_X3_Y8_N23
\Reloj1|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|contador~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(18));

-- Location: LCCOMB_X4_Y8_N14
\Reloj1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~38_combout\ = (\Reloj1|contador\(19) & (!\Reloj1|Add0~37\)) # (!\Reloj1|contador\(19) & ((\Reloj1|Add0~37\) # (GND)))
-- \Reloj1|Add0~39\ = CARRY((!\Reloj1|Add0~37\) # (!\Reloj1|contador\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(19),
	datad => VCC,
	cin => \Reloj1|Add0~37\,
	combout => \Reloj1|Add0~38_combout\,
	cout => \Reloj1|Add0~39\);

-- Location: LCCOMB_X3_Y8_N20
\Reloj1|contador~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|contador~4_combout\ = (\Reloj1|Add0~38_combout\ & !\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|Add0~38_combout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|contador~4_combout\);

-- Location: FF_X3_Y8_N21
\Reloj1|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|contador~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(19));

-- Location: LCCOMB_X4_Y8_N16
\Reloj1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~40_combout\ = (\Reloj1|contador\(20) & (\Reloj1|Add0~39\ $ (GND))) # (!\Reloj1|contador\(20) & (!\Reloj1|Add0~39\ & VCC))
-- \Reloj1|Add0~41\ = CARRY((\Reloj1|contador\(20) & !\Reloj1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(20),
	datad => VCC,
	cin => \Reloj1|Add0~39\,
	combout => \Reloj1|Add0~40_combout\,
	cout => \Reloj1|Add0~41\);

-- Location: LCCOMB_X3_Y8_N24
\Reloj1|contador~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|contador~3_combout\ = (!\Reloj1|Equal0~7_combout\ & \Reloj1|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|Equal0~7_combout\,
	datad => \Reloj1|Add0~40_combout\,
	combout => \Reloj1|contador~3_combout\);

-- Location: FF_X3_Y8_N25
\Reloj1|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(20));

-- Location: LCCOMB_X4_Y8_N18
\Reloj1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~42_combout\ = (\Reloj1|contador\(21) & (!\Reloj1|Add0~41\)) # (!\Reloj1|contador\(21) & ((\Reloj1|Add0~41\) # (GND)))
-- \Reloj1|Add0~43\ = CARRY((!\Reloj1|Add0~41\) # (!\Reloj1|contador\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(21),
	datad => VCC,
	cin => \Reloj1|Add0~41\,
	combout => \Reloj1|Add0~42_combout\,
	cout => \Reloj1|Add0~43\);

-- Location: LCCOMB_X3_Y8_N10
\Reloj1|contador~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|contador~2_combout\ = (!\Reloj1|Equal0~7_combout\ & \Reloj1|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|Equal0~7_combout\,
	datad => \Reloj1|Add0~42_combout\,
	combout => \Reloj1|contador~2_combout\);

-- Location: FF_X3_Y8_N11
\Reloj1|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(21));

-- Location: LCCOMB_X3_Y8_N26
\Reloj1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~1_combout\ = (\Reloj1|contador\(21) & (\Reloj1|contador\(20) & (\Reloj1|contador\(18) & \Reloj1|contador\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(21),
	datab => \Reloj1|contador\(20),
	datac => \Reloj1|contador\(18),
	datad => \Reloj1|contador\(19),
	combout => \Reloj1|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y8_N20
\Reloj1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~44_combout\ = (\Reloj1|contador\(22) & (\Reloj1|Add0~43\ $ (GND))) # (!\Reloj1|contador\(22) & (!\Reloj1|Add0~43\ & VCC))
-- \Reloj1|Add0~45\ = CARRY((\Reloj1|contador\(22) & !\Reloj1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|contador\(22),
	datad => VCC,
	cin => \Reloj1|Add0~43\,
	combout => \Reloj1|Add0~44_combout\,
	cout => \Reloj1|Add0~45\);

-- Location: LCCOMB_X3_Y8_N6
\Reloj1|contador~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|contador~1_combout\ = (\Reloj1|Add0~44_combout\ & !\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|Add0~44_combout\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|contador~1_combout\);

-- Location: FF_X3_Y8_N7
\Reloj1|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(22));

-- Location: LCCOMB_X4_Y8_N22
\Reloj1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~46_combout\ = (\Reloj1|contador\(23) & (!\Reloj1|Add0~45\)) # (!\Reloj1|contador\(23) & ((\Reloj1|Add0~45\) # (GND)))
-- \Reloj1|Add0~47\ = CARRY((!\Reloj1|Add0~45\) # (!\Reloj1|contador\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(23),
	datad => VCC,
	cin => \Reloj1|Add0~45\,
	combout => \Reloj1|Add0~46_combout\,
	cout => \Reloj1|Add0~47\);

-- Location: FF_X4_Y8_N23
\Reloj1|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(23));

-- Location: LCCOMB_X4_Y8_N24
\Reloj1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Add0~48_combout\ = \Reloj1|Add0~47\ $ (!\Reloj1|contador\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Reloj1|contador\(24),
	cin => \Reloj1|Add0~47\,
	combout => \Reloj1|Add0~48_combout\);

-- Location: LCCOMB_X3_Y8_N14
\Reloj1|contador~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|contador~0_combout\ = (!\Reloj1|Equal0~7_combout\ & \Reloj1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|Equal0~7_combout\,
	datad => \Reloj1|Add0~48_combout\,
	combout => \Reloj1|contador~0_combout\);

-- Location: FF_X3_Y8_N15
\Reloj1|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|contador\(24));

-- Location: LCCOMB_X3_Y8_N4
\Reloj1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~0_combout\ = (\Reloj1|contador\(22) & (\Reloj1|contador\(24) & (!\Reloj1|contador\(23) & \Reloj1|contador\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(22),
	datab => \Reloj1|contador\(24),
	datac => \Reloj1|contador\(23),
	datad => \Reloj1|contador\(0),
	combout => \Reloj1|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y8_N26
\Reloj1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~2_combout\ = (!\Reloj1|contador\(15) & (\Reloj1|contador\(14) & (\Reloj1|contador\(16) & !\Reloj1|contador\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(15),
	datab => \Reloj1|contador\(14),
	datac => \Reloj1|contador\(16),
	datad => \Reloj1|contador\(17),
	combout => \Reloj1|Equal0~2_combout\);

-- Location: LCCOMB_X3_Y8_N12
\Reloj1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~3_combout\ = (\Reloj1|contador\(11) & (\Reloj1|contador\(13) & (\Reloj1|contador\(12) & !\Reloj1|contador\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|contador\(11),
	datab => \Reloj1|contador\(13),
	datac => \Reloj1|contador\(12),
	datad => \Reloj1|contador\(10),
	combout => \Reloj1|Equal0~3_combout\);

-- Location: LCCOMB_X3_Y8_N2
\Reloj1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~4_combout\ = (\Reloj1|Equal0~1_combout\ & (\Reloj1|Equal0~0_combout\ & (\Reloj1|Equal0~2_combout\ & \Reloj1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~1_combout\,
	datab => \Reloj1|Equal0~0_combout\,
	datac => \Reloj1|Equal0~2_combout\,
	datad => \Reloj1|Equal0~3_combout\,
	combout => \Reloj1|Equal0~4_combout\);

-- Location: LCCOMB_X3_Y8_N28
\Reloj1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|Equal0~7_combout\ = (\Reloj1|Equal0~6_combout\ & (\Reloj1|contador\(1) & (\Reloj1|Equal0~5_combout\ & \Reloj1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj1|Equal0~6_combout\,
	datab => \Reloj1|contador\(1),
	datac => \Reloj1|Equal0~5_combout\,
	datad => \Reloj1|Equal0~4_combout\,
	combout => \Reloj1|Equal0~7_combout\);

-- Location: LCCOMB_X3_Y8_N18
\Reloj1|salida_media~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|salida_media~0_combout\ = \Reloj1|salida_media~q\ $ (\Reloj1|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj1|salida_media~q\,
	datad => \Reloj1|Equal0~7_combout\,
	combout => \Reloj1|salida_media~0_combout\);

-- Location: LCCOMB_X3_Y8_N30
\Reloj1|salida_media~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj1|salida_media~feeder_combout\ = \Reloj1|salida_media~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj1|salida_media~0_combout\,
	combout => \Reloj1|salida_media~feeder_combout\);

-- Location: FF_X3_Y8_N31
\Reloj1|salida_media\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~inputclkctrl_outclk\,
	d => \Reloj1|salida_media~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj1|salida_media~q\);

-- Location: CLKCTRL_G0
\Reloj1|salida_media~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reloj1|salida_media~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reloj1|salida_media~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y23_N12
\numeros[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \numeros[0]~3_combout\ = !numeros(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => numeros(0),
	combout => \numeros[0]~3_combout\);

-- Location: FF_X24_Y23_N13
\numeros[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	d => \numeros[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => numeros(0));

-- Location: LCCOMB_X24_Y23_N18
\numeros[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \numeros[1]~0_combout\ = numeros(1) $ (numeros(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => numeros(1),
	datad => numeros(0),
	combout => \numeros[1]~0_combout\);

-- Location: FF_X24_Y23_N19
\numeros[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	d => \numeros[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => numeros(1));

-- Location: LCCOMB_X24_Y23_N16
\numeros[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \numeros[2]~1_combout\ = numeros(2) $ (((numeros(1) & numeros(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => numeros(1),
	datac => numeros(2),
	datad => numeros(0),
	combout => \numeros[2]~1_combout\);

-- Location: FF_X24_Y23_N17
\numeros[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	d => \numeros[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => numeros(2));

-- Location: LCCOMB_X24_Y23_N22
\numeros[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \numeros[3]~2_combout\ = numeros(3) $ (((numeros(0) & (numeros(1) & numeros(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => numeros(0),
	datab => numeros(1),
	datac => numeros(3),
	datad => numeros(2),
	combout => \numeros[3]~2_combout\);

-- Location: FF_X24_Y23_N23
\numeros[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj1|salida_media~clkctrl_outclk\,
	d => \numeros[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => numeros(3));

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;
END structure;


