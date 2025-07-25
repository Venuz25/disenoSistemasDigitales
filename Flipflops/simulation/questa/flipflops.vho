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
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "04/27/2024 18:47:33"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	flipflops IS
    PORT (
	clk50MHz : IN std_logic;
	sel : IN std_logic_vector(1 DOWNTO 0);
	Input1 : IN std_logic;
	Input2 : IN std_logic;
	Q : OUT std_logic_vector(6 DOWNTO 0);
	QN : OUT std_logic_vector(6 DOWNTO 0)
	);
END flipflops;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QN[0]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QN[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QN[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QN[3]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QN[4]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QN[5]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QN[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input1	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input2	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF flipflops IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Input1 : std_logic;
SIGNAL ww_Input2 : std_logic;
SIGNAL ww_Q : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_QN : std_logic_vector(6 DOWNTO 0);
SIGNAL \Reloj5hz|salida_5hz_interna~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \QN[0]~output_o\ : std_logic;
SIGNAL \QN[1]~output_o\ : std_logic;
SIGNAL \QN[2]~output_o\ : std_logic;
SIGNAL \QN[3]~output_o\ : std_logic;
SIGNAL \QN[4]~output_o\ : std_logic;
SIGNAL \QN[5]~output_o\ : std_logic;
SIGNAL \QN[6]~output_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \Reloj5hz|Add0~0_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~1\ : std_logic;
SIGNAL \Reloj5hz|Add0~2_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~3\ : std_logic;
SIGNAL \Reloj5hz|Add0~4_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~5\ : std_logic;
SIGNAL \Reloj5hz|Add0~6_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~7\ : std_logic;
SIGNAL \Reloj5hz|Add0~8_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~9\ : std_logic;
SIGNAL \Reloj5hz|Add0~10_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~11\ : std_logic;
SIGNAL \Reloj5hz|Add0~12_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~13\ : std_logic;
SIGNAL \Reloj5hz|Add0~14_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~15\ : std_logic;
SIGNAL \Reloj5hz|Add0~16_combout\ : std_logic;
SIGNAL \Reloj5hz|contador_5hz~6_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~17\ : std_logic;
SIGNAL \Reloj5hz|Add0~18_combout\ : std_logic;
SIGNAL \Reloj5hz|contador_5hz~5_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~19\ : std_logic;
SIGNAL \Reloj5hz|Add0~20_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~21\ : std_logic;
SIGNAL \Reloj5hz|Add0~22_combout\ : std_logic;
SIGNAL \Reloj5hz|contador_5hz~4_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~23\ : std_logic;
SIGNAL \Reloj5hz|Add0~24_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~25\ : std_logic;
SIGNAL \Reloj5hz|Add0~26_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~27\ : std_logic;
SIGNAL \Reloj5hz|Add0~28_combout\ : std_logic;
SIGNAL \Reloj5hz|contador_5hz~3_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~29\ : std_logic;
SIGNAL \Reloj5hz|Add0~30_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~31\ : std_logic;
SIGNAL \Reloj5hz|Add0~32_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~33\ : std_logic;
SIGNAL \Reloj5hz|Add0~34_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~35\ : std_logic;
SIGNAL \Reloj5hz|Add0~36_combout\ : std_logic;
SIGNAL \Reloj5hz|contador_5hz~2_combout\ : std_logic;
SIGNAL \Reloj5hz|Equal0~1_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~37\ : std_logic;
SIGNAL \Reloj5hz|Add0~38_combout\ : std_logic;
SIGNAL \Reloj5hz|contador_5hz~1_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~39\ : std_logic;
SIGNAL \Reloj5hz|Add0~40_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~41\ : std_logic;
SIGNAL \Reloj5hz|Add0~42_combout\ : std_logic;
SIGNAL \Reloj5hz|Add0~43\ : std_logic;
SIGNAL \Reloj5hz|Add0~44_combout\ : std_logic;
SIGNAL \Reloj5hz|contador_5hz~0_combout\ : std_logic;
SIGNAL \Reloj5hz|Equal0~0_combout\ : std_logic;
SIGNAL \Reloj5hz|Equal0~2_combout\ : std_logic;
SIGNAL \Reloj5hz|Equal0~3_combout\ : std_logic;
SIGNAL \Reloj5hz|Equal0~4_combout\ : std_logic;
SIGNAL \Reloj5hz|contador_5hz~7_combout\ : std_logic;
SIGNAL \Reloj5hz|Equal0~5_combout\ : std_logic;
SIGNAL \Reloj5hz|Equal0~6_combout\ : std_logic;
SIGNAL \Reloj5hz|salida_5hz_interna~0_combout\ : std_logic;
SIGNAL \Reloj5hz|salida_5hz_interna~feeder_combout\ : std_logic;
SIGNAL \Reloj5hz|salida_5hz_interna~q\ : std_logic;
SIGNAL \Reloj5hz|salida_5hz_interna~clkctrl_outclk\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \Input1~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Input2~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Q_temp[0]~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL Q_temp : std_logic_vector(6 DOWNTO 0);
SIGNAL QN_temp : std_logic_vector(6 DOWNTO 0);
SIGNAL \Reloj5hz|contador_5hz\ : std_logic_vector(22 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_sel <= sel;
ww_Input1 <= Input1;
ww_Input2 <= Input2;
Q <= ww_Q;
QN <= ww_QN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reloj5hz|salida_5hz_interna~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reloj5hz|salida_5hz_interna~q\);

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y18_N23
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q_temp(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q_temp(0),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q_temp(0),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Q_temp(0),
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\QN[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QN_temp(0),
	devoe => ww_devoe,
	o => \QN[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\QN[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \QN[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\QN[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \QN[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\QN[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QN_temp(0),
	devoe => ww_devoe,
	o => \QN[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\QN[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QN_temp(0),
	devoe => ww_devoe,
	o => \QN[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\QN[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => QN_temp(0),
	devoe => ww_devoe,
	o => \QN[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\QN[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \QN[6]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk50MHz~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: CLKCTRL_G2
\clk50MHz~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y16_N10
\Reloj5hz|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~0_combout\ = \Reloj5hz|contador_5hz\(0) $ (VCC)
-- \Reloj5hz|Add0~1\ = CARRY(\Reloj5hz|contador_5hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|contador_5hz\(0),
	datad => VCC,
	combout => \Reloj5hz|Add0~0_combout\,
	cout => \Reloj5hz|Add0~1\);

-- Location: FF_X12_Y16_N11
\Reloj5hz|contador_5hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(0));

-- Location: LCCOMB_X12_Y16_N12
\Reloj5hz|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~2_combout\ = (\Reloj5hz|contador_5hz\(1) & (!\Reloj5hz|Add0~1\)) # (!\Reloj5hz|contador_5hz\(1) & ((\Reloj5hz|Add0~1\) # (GND)))
-- \Reloj5hz|Add0~3\ = CARRY((!\Reloj5hz|Add0~1\) # (!\Reloj5hz|contador_5hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|contador_5hz\(1),
	datad => VCC,
	cin => \Reloj5hz|Add0~1\,
	combout => \Reloj5hz|Add0~2_combout\,
	cout => \Reloj5hz|Add0~3\);

-- Location: FF_X12_Y16_N13
\Reloj5hz|contador_5hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(1));

-- Location: LCCOMB_X12_Y16_N14
\Reloj5hz|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~4_combout\ = (\Reloj5hz|contador_5hz\(2) & (\Reloj5hz|Add0~3\ $ (GND))) # (!\Reloj5hz|contador_5hz\(2) & (!\Reloj5hz|Add0~3\ & VCC))
-- \Reloj5hz|Add0~5\ = CARRY((\Reloj5hz|contador_5hz\(2) & !\Reloj5hz|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(2),
	datad => VCC,
	cin => \Reloj5hz|Add0~3\,
	combout => \Reloj5hz|Add0~4_combout\,
	cout => \Reloj5hz|Add0~5\);

-- Location: FF_X12_Y16_N15
\Reloj5hz|contador_5hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(2));

-- Location: LCCOMB_X12_Y16_N16
\Reloj5hz|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~6_combout\ = (\Reloj5hz|contador_5hz\(3) & (!\Reloj5hz|Add0~5\)) # (!\Reloj5hz|contador_5hz\(3) & ((\Reloj5hz|Add0~5\) # (GND)))
-- \Reloj5hz|Add0~7\ = CARRY((!\Reloj5hz|Add0~5\) # (!\Reloj5hz|contador_5hz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(3),
	datad => VCC,
	cin => \Reloj5hz|Add0~5\,
	combout => \Reloj5hz|Add0~6_combout\,
	cout => \Reloj5hz|Add0~7\);

-- Location: FF_X12_Y16_N17
\Reloj5hz|contador_5hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(3));

-- Location: LCCOMB_X12_Y16_N18
\Reloj5hz|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~8_combout\ = (\Reloj5hz|contador_5hz\(4) & (\Reloj5hz|Add0~7\ $ (GND))) # (!\Reloj5hz|contador_5hz\(4) & (!\Reloj5hz|Add0~7\ & VCC))
-- \Reloj5hz|Add0~9\ = CARRY((\Reloj5hz|contador_5hz\(4) & !\Reloj5hz|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(4),
	datad => VCC,
	cin => \Reloj5hz|Add0~7\,
	combout => \Reloj5hz|Add0~8_combout\,
	cout => \Reloj5hz|Add0~9\);

-- Location: FF_X12_Y16_N19
\Reloj5hz|contador_5hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(4));

-- Location: LCCOMB_X12_Y16_N20
\Reloj5hz|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~10_combout\ = (\Reloj5hz|contador_5hz\(5) & (!\Reloj5hz|Add0~9\)) # (!\Reloj5hz|contador_5hz\(5) & ((\Reloj5hz|Add0~9\) # (GND)))
-- \Reloj5hz|Add0~11\ = CARRY((!\Reloj5hz|Add0~9\) # (!\Reloj5hz|contador_5hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(5),
	datad => VCC,
	cin => \Reloj5hz|Add0~9\,
	combout => \Reloj5hz|Add0~10_combout\,
	cout => \Reloj5hz|Add0~11\);

-- Location: FF_X12_Y16_N21
\Reloj5hz|contador_5hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(5));

-- Location: LCCOMB_X12_Y16_N22
\Reloj5hz|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~12_combout\ = (\Reloj5hz|contador_5hz\(6) & (\Reloj5hz|Add0~11\ $ (GND))) # (!\Reloj5hz|contador_5hz\(6) & (!\Reloj5hz|Add0~11\ & VCC))
-- \Reloj5hz|Add0~13\ = CARRY((\Reloj5hz|contador_5hz\(6) & !\Reloj5hz|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(6),
	datad => VCC,
	cin => \Reloj5hz|Add0~11\,
	combout => \Reloj5hz|Add0~12_combout\,
	cout => \Reloj5hz|Add0~13\);

-- Location: LCCOMB_X12_Y16_N24
\Reloj5hz|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~14_combout\ = (\Reloj5hz|contador_5hz\(7) & (!\Reloj5hz|Add0~13\)) # (!\Reloj5hz|contador_5hz\(7) & ((\Reloj5hz|Add0~13\) # (GND)))
-- \Reloj5hz|Add0~15\ = CARRY((!\Reloj5hz|Add0~13\) # (!\Reloj5hz|contador_5hz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(7),
	datad => VCC,
	cin => \Reloj5hz|Add0~13\,
	combout => \Reloj5hz|Add0~14_combout\,
	cout => \Reloj5hz|Add0~15\);

-- Location: FF_X12_Y16_N25
\Reloj5hz|contador_5hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(7));

-- Location: LCCOMB_X12_Y16_N26
\Reloj5hz|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~16_combout\ = (\Reloj5hz|contador_5hz\(8) & (\Reloj5hz|Add0~15\ $ (GND))) # (!\Reloj5hz|contador_5hz\(8) & (!\Reloj5hz|Add0~15\ & VCC))
-- \Reloj5hz|Add0~17\ = CARRY((\Reloj5hz|contador_5hz\(8) & !\Reloj5hz|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(8),
	datad => VCC,
	cin => \Reloj5hz|Add0~15\,
	combout => \Reloj5hz|Add0~16_combout\,
	cout => \Reloj5hz|Add0~17\);

-- Location: LCCOMB_X11_Y15_N0
\Reloj5hz|contador_5hz~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|contador_5hz~6_combout\ = (\Reloj5hz|Add0~16_combout\ & ((!\Reloj5hz|Equal0~6_combout\) # (!\Reloj5hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|Equal0~4_combout\,
	datab => \Reloj5hz|Equal0~6_combout\,
	datad => \Reloj5hz|Add0~16_combout\,
	combout => \Reloj5hz|contador_5hz~6_combout\);

-- Location: FF_X11_Y15_N1
\Reloj5hz|contador_5hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|contador_5hz~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(8));

-- Location: LCCOMB_X12_Y16_N28
\Reloj5hz|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~18_combout\ = (\Reloj5hz|contador_5hz\(9) & (!\Reloj5hz|Add0~17\)) # (!\Reloj5hz|contador_5hz\(9) & ((\Reloj5hz|Add0~17\) # (GND)))
-- \Reloj5hz|Add0~19\ = CARRY((!\Reloj5hz|Add0~17\) # (!\Reloj5hz|contador_5hz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(9),
	datad => VCC,
	cin => \Reloj5hz|Add0~17\,
	combout => \Reloj5hz|Add0~18_combout\,
	cout => \Reloj5hz|Add0~19\);

-- Location: LCCOMB_X12_Y16_N4
\Reloj5hz|contador_5hz~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|contador_5hz~5_combout\ = (\Reloj5hz|Add0~18_combout\ & ((!\Reloj5hz|Equal0~4_combout\) # (!\Reloj5hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|Add0~18_combout\,
	datac => \Reloj5hz|Equal0~6_combout\,
	datad => \Reloj5hz|Equal0~4_combout\,
	combout => \Reloj5hz|contador_5hz~5_combout\);

-- Location: FF_X12_Y16_N5
\Reloj5hz|contador_5hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|contador_5hz~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(9));

-- Location: LCCOMB_X12_Y16_N30
\Reloj5hz|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~20_combout\ = (\Reloj5hz|contador_5hz\(10) & (\Reloj5hz|Add0~19\ $ (GND))) # (!\Reloj5hz|contador_5hz\(10) & (!\Reloj5hz|Add0~19\ & VCC))
-- \Reloj5hz|Add0~21\ = CARRY((\Reloj5hz|contador_5hz\(10) & !\Reloj5hz|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|contador_5hz\(10),
	datad => VCC,
	cin => \Reloj5hz|Add0~19\,
	combout => \Reloj5hz|Add0~20_combout\,
	cout => \Reloj5hz|Add0~21\);

-- Location: FF_X12_Y16_N31
\Reloj5hz|contador_5hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(10));

-- Location: LCCOMB_X12_Y15_N0
\Reloj5hz|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~22_combout\ = (\Reloj5hz|contador_5hz\(11) & (!\Reloj5hz|Add0~21\)) # (!\Reloj5hz|contador_5hz\(11) & ((\Reloj5hz|Add0~21\) # (GND)))
-- \Reloj5hz|Add0~23\ = CARRY((!\Reloj5hz|Add0~21\) # (!\Reloj5hz|contador_5hz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|contador_5hz\(11),
	datad => VCC,
	cin => \Reloj5hz|Add0~21\,
	combout => \Reloj5hz|Add0~22_combout\,
	cout => \Reloj5hz|Add0~23\);

-- Location: LCCOMB_X12_Y15_N30
\Reloj5hz|contador_5hz~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|contador_5hz~4_combout\ = (\Reloj5hz|Add0~22_combout\ & ((!\Reloj5hz|Equal0~6_combout\) # (!\Reloj5hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|Equal0~4_combout\,
	datab => \Reloj5hz|Equal0~6_combout\,
	datad => \Reloj5hz|Add0~22_combout\,
	combout => \Reloj5hz|contador_5hz~4_combout\);

-- Location: FF_X12_Y15_N31
\Reloj5hz|contador_5hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|contador_5hz~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(11));

-- Location: LCCOMB_X12_Y15_N2
\Reloj5hz|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~24_combout\ = (\Reloj5hz|contador_5hz\(12) & (\Reloj5hz|Add0~23\ $ (GND))) # (!\Reloj5hz|contador_5hz\(12) & (!\Reloj5hz|Add0~23\ & VCC))
-- \Reloj5hz|Add0~25\ = CARRY((\Reloj5hz|contador_5hz\(12) & !\Reloj5hz|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(12),
	datad => VCC,
	cin => \Reloj5hz|Add0~23\,
	combout => \Reloj5hz|Add0~24_combout\,
	cout => \Reloj5hz|Add0~25\);

-- Location: FF_X12_Y15_N3
\Reloj5hz|contador_5hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(12));

-- Location: LCCOMB_X12_Y15_N4
\Reloj5hz|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~26_combout\ = (\Reloj5hz|contador_5hz\(13) & (!\Reloj5hz|Add0~25\)) # (!\Reloj5hz|contador_5hz\(13) & ((\Reloj5hz|Add0~25\) # (GND)))
-- \Reloj5hz|Add0~27\ = CARRY((!\Reloj5hz|Add0~25\) # (!\Reloj5hz|contador_5hz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(13),
	datad => VCC,
	cin => \Reloj5hz|Add0~25\,
	combout => \Reloj5hz|Add0~26_combout\,
	cout => \Reloj5hz|Add0~27\);

-- Location: FF_X12_Y15_N5
\Reloj5hz|contador_5hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(13));

-- Location: LCCOMB_X12_Y15_N6
\Reloj5hz|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~28_combout\ = (\Reloj5hz|contador_5hz\(14) & (\Reloj5hz|Add0~27\ $ (GND))) # (!\Reloj5hz|contador_5hz\(14) & (!\Reloj5hz|Add0~27\ & VCC))
-- \Reloj5hz|Add0~29\ = CARRY((\Reloj5hz|contador_5hz\(14) & !\Reloj5hz|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(14),
	datad => VCC,
	cin => \Reloj5hz|Add0~27\,
	combout => \Reloj5hz|Add0~28_combout\,
	cout => \Reloj5hz|Add0~29\);

-- Location: LCCOMB_X11_Y15_N6
\Reloj5hz|contador_5hz~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|contador_5hz~3_combout\ = (\Reloj5hz|Add0~28_combout\ & ((!\Reloj5hz|Equal0~6_combout\) # (!\Reloj5hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|Equal0~4_combout\,
	datab => \Reloj5hz|Equal0~6_combout\,
	datad => \Reloj5hz|Add0~28_combout\,
	combout => \Reloj5hz|contador_5hz~3_combout\);

-- Location: FF_X11_Y15_N7
\Reloj5hz|contador_5hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|contador_5hz~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(14));

-- Location: LCCOMB_X12_Y15_N8
\Reloj5hz|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~30_combout\ = (\Reloj5hz|contador_5hz\(15) & (!\Reloj5hz|Add0~29\)) # (!\Reloj5hz|contador_5hz\(15) & ((\Reloj5hz|Add0~29\) # (GND)))
-- \Reloj5hz|Add0~31\ = CARRY((!\Reloj5hz|Add0~29\) # (!\Reloj5hz|contador_5hz\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(15),
	datad => VCC,
	cin => \Reloj5hz|Add0~29\,
	combout => \Reloj5hz|Add0~30_combout\,
	cout => \Reloj5hz|Add0~31\);

-- Location: FF_X12_Y15_N9
\Reloj5hz|contador_5hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(15));

-- Location: LCCOMB_X12_Y15_N10
\Reloj5hz|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~32_combout\ = (\Reloj5hz|contador_5hz\(16) & (\Reloj5hz|Add0~31\ $ (GND))) # (!\Reloj5hz|contador_5hz\(16) & (!\Reloj5hz|Add0~31\ & VCC))
-- \Reloj5hz|Add0~33\ = CARRY((\Reloj5hz|contador_5hz\(16) & !\Reloj5hz|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|contador_5hz\(16),
	datad => VCC,
	cin => \Reloj5hz|Add0~31\,
	combout => \Reloj5hz|Add0~32_combout\,
	cout => \Reloj5hz|Add0~33\);

-- Location: FF_X12_Y15_N11
\Reloj5hz|contador_5hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(16));

-- Location: LCCOMB_X12_Y15_N12
\Reloj5hz|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~34_combout\ = (\Reloj5hz|contador_5hz\(17) & (!\Reloj5hz|Add0~33\)) # (!\Reloj5hz|contador_5hz\(17) & ((\Reloj5hz|Add0~33\) # (GND)))
-- \Reloj5hz|Add0~35\ = CARRY((!\Reloj5hz|Add0~33\) # (!\Reloj5hz|contador_5hz\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|contador_5hz\(17),
	datad => VCC,
	cin => \Reloj5hz|Add0~33\,
	combout => \Reloj5hz|Add0~34_combout\,
	cout => \Reloj5hz|Add0~35\);

-- Location: FF_X12_Y15_N13
\Reloj5hz|contador_5hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(17));

-- Location: LCCOMB_X12_Y15_N14
\Reloj5hz|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~36_combout\ = (\Reloj5hz|contador_5hz\(18) & (\Reloj5hz|Add0~35\ $ (GND))) # (!\Reloj5hz|contador_5hz\(18) & (!\Reloj5hz|Add0~35\ & VCC))
-- \Reloj5hz|Add0~37\ = CARRY((\Reloj5hz|contador_5hz\(18) & !\Reloj5hz|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(18),
	datad => VCC,
	cin => \Reloj5hz|Add0~35\,
	combout => \Reloj5hz|Add0~36_combout\,
	cout => \Reloj5hz|Add0~37\);

-- Location: LCCOMB_X12_Y15_N28
\Reloj5hz|contador_5hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|contador_5hz~2_combout\ = (\Reloj5hz|Add0~36_combout\ & ((!\Reloj5hz|Equal0~4_combout\) # (!\Reloj5hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|Equal0~6_combout\,
	datac => \Reloj5hz|Add0~36_combout\,
	datad => \Reloj5hz|Equal0~4_combout\,
	combout => \Reloj5hz|contador_5hz~2_combout\);

-- Location: FF_X12_Y15_N29
\Reloj5hz|contador_5hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|contador_5hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(18));

-- Location: LCCOMB_X11_Y15_N12
\Reloj5hz|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Equal0~1_combout\ = (!\Reloj5hz|contador_5hz\(17) & (!\Reloj5hz|contador_5hz\(16) & (!\Reloj5hz|contador_5hz\(15) & \Reloj5hz|contador_5hz\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|contador_5hz\(17),
	datab => \Reloj5hz|contador_5hz\(16),
	datac => \Reloj5hz|contador_5hz\(15),
	datad => \Reloj5hz|contador_5hz\(18),
	combout => \Reloj5hz|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y15_N16
\Reloj5hz|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~38_combout\ = (\Reloj5hz|contador_5hz\(19) & (!\Reloj5hz|Add0~37\)) # (!\Reloj5hz|contador_5hz\(19) & ((\Reloj5hz|Add0~37\) # (GND)))
-- \Reloj5hz|Add0~39\ = CARRY((!\Reloj5hz|Add0~37\) # (!\Reloj5hz|contador_5hz\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|contador_5hz\(19),
	datad => VCC,
	cin => \Reloj5hz|Add0~37\,
	combout => \Reloj5hz|Add0~38_combout\,
	cout => \Reloj5hz|Add0~39\);

-- Location: LCCOMB_X12_Y15_N26
\Reloj5hz|contador_5hz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|contador_5hz~1_combout\ = (\Reloj5hz|Add0~38_combout\ & ((!\Reloj5hz|Equal0~6_combout\) # (!\Reloj5hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|Equal0~4_combout\,
	datab => \Reloj5hz|Equal0~6_combout\,
	datad => \Reloj5hz|Add0~38_combout\,
	combout => \Reloj5hz|contador_5hz~1_combout\);

-- Location: FF_X12_Y15_N27
\Reloj5hz|contador_5hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|contador_5hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(19));

-- Location: LCCOMB_X12_Y15_N18
\Reloj5hz|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~40_combout\ = (\Reloj5hz|contador_5hz\(20) & (\Reloj5hz|Add0~39\ $ (GND))) # (!\Reloj5hz|contador_5hz\(20) & (!\Reloj5hz|Add0~39\ & VCC))
-- \Reloj5hz|Add0~41\ = CARRY((\Reloj5hz|contador_5hz\(20) & !\Reloj5hz|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(20),
	datad => VCC,
	cin => \Reloj5hz|Add0~39\,
	combout => \Reloj5hz|Add0~40_combout\,
	cout => \Reloj5hz|Add0~41\);

-- Location: FF_X12_Y15_N19
\Reloj5hz|contador_5hz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(20));

-- Location: LCCOMB_X12_Y15_N20
\Reloj5hz|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~42_combout\ = (\Reloj5hz|contador_5hz\(21) & (!\Reloj5hz|Add0~41\)) # (!\Reloj5hz|contador_5hz\(21) & ((\Reloj5hz|Add0~41\) # (GND)))
-- \Reloj5hz|Add0~43\ = CARRY((!\Reloj5hz|Add0~41\) # (!\Reloj5hz|contador_5hz\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|contador_5hz\(21),
	datad => VCC,
	cin => \Reloj5hz|Add0~41\,
	combout => \Reloj5hz|Add0~42_combout\,
	cout => \Reloj5hz|Add0~43\);

-- Location: FF_X12_Y15_N21
\Reloj5hz|contador_5hz[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(21));

-- Location: LCCOMB_X12_Y15_N22
\Reloj5hz|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Add0~44_combout\ = \Reloj5hz|Add0~43\ $ (!\Reloj5hz|contador_5hz\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Reloj5hz|contador_5hz\(22),
	cin => \Reloj5hz|Add0~43\,
	combout => \Reloj5hz|Add0~44_combout\);

-- Location: LCCOMB_X12_Y15_N24
\Reloj5hz|contador_5hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|contador_5hz~0_combout\ = (\Reloj5hz|Add0~44_combout\ & ((!\Reloj5hz|Equal0~4_combout\) # (!\Reloj5hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|Equal0~6_combout\,
	datac => \Reloj5hz|Add0~44_combout\,
	datad => \Reloj5hz|Equal0~4_combout\,
	combout => \Reloj5hz|contador_5hz~0_combout\);

-- Location: FF_X12_Y15_N25
\Reloj5hz|contador_5hz[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|contador_5hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(22));

-- Location: LCCOMB_X11_Y15_N20
\Reloj5hz|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Equal0~0_combout\ = (\Reloj5hz|contador_5hz\(22) & (!\Reloj5hz|contador_5hz\(20) & (!\Reloj5hz|contador_5hz\(21) & \Reloj5hz|contador_5hz\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|contador_5hz\(22),
	datab => \Reloj5hz|contador_5hz\(20),
	datac => \Reloj5hz|contador_5hz\(21),
	datad => \Reloj5hz|contador_5hz\(19),
	combout => \Reloj5hz|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y15_N4
\Reloj5hz|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Equal0~2_combout\ = (\Reloj5hz|contador_5hz\(14) & (!\Reloj5hz|contador_5hz\(12) & (\Reloj5hz|contador_5hz\(11) & !\Reloj5hz|contador_5hz\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|contador_5hz\(14),
	datab => \Reloj5hz|contador_5hz\(12),
	datac => \Reloj5hz|contador_5hz\(11),
	datad => \Reloj5hz|contador_5hz\(13),
	combout => \Reloj5hz|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y16_N6
\Reloj5hz|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Equal0~3_combout\ = (!\Reloj5hz|contador_5hz\(10) & (!\Reloj5hz|contador_5hz\(7) & (\Reloj5hz|contador_5hz\(9) & \Reloj5hz|contador_5hz\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|contador_5hz\(10),
	datab => \Reloj5hz|contador_5hz\(7),
	datac => \Reloj5hz|contador_5hz\(9),
	datad => \Reloj5hz|contador_5hz\(8),
	combout => \Reloj5hz|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y15_N10
\Reloj5hz|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Equal0~4_combout\ = (\Reloj5hz|Equal0~1_combout\ & (\Reloj5hz|Equal0~0_combout\ & (\Reloj5hz|Equal0~2_combout\ & \Reloj5hz|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|Equal0~1_combout\,
	datab => \Reloj5hz|Equal0~0_combout\,
	datac => \Reloj5hz|Equal0~2_combout\,
	datad => \Reloj5hz|Equal0~3_combout\,
	combout => \Reloj5hz|Equal0~4_combout\);

-- Location: LCCOMB_X12_Y16_N0
\Reloj5hz|contador_5hz~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|contador_5hz~7_combout\ = (\Reloj5hz|Add0~12_combout\ & ((!\Reloj5hz|Equal0~4_combout\) # (!\Reloj5hz|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|Equal0~6_combout\,
	datac => \Reloj5hz|Add0~12_combout\,
	datad => \Reloj5hz|Equal0~4_combout\,
	combout => \Reloj5hz|contador_5hz~7_combout\);

-- Location: FF_X12_Y16_N1
\Reloj5hz|contador_5hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|contador_5hz~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|contador_5hz\(6));

-- Location: LCCOMB_X12_Y16_N2
\Reloj5hz|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Equal0~5_combout\ = (\Reloj5hz|contador_5hz\(5) & (\Reloj5hz|contador_5hz\(4) & (\Reloj5hz|contador_5hz\(3) & !\Reloj5hz|contador_5hz\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|contador_5hz\(5),
	datab => \Reloj5hz|contador_5hz\(4),
	datac => \Reloj5hz|contador_5hz\(3),
	datad => \Reloj5hz|contador_5hz\(6),
	combout => \Reloj5hz|Equal0~5_combout\);

-- Location: LCCOMB_X12_Y16_N8
\Reloj5hz|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|Equal0~6_combout\ = (\Reloj5hz|contador_5hz\(1) & (\Reloj5hz|contador_5hz\(0) & (\Reloj5hz|contador_5hz\(2) & \Reloj5hz|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reloj5hz|contador_5hz\(1),
	datab => \Reloj5hz|contador_5hz\(0),
	datac => \Reloj5hz|contador_5hz\(2),
	datad => \Reloj5hz|Equal0~5_combout\,
	combout => \Reloj5hz|Equal0~6_combout\);

-- Location: LCCOMB_X11_Y15_N14
\Reloj5hz|salida_5hz_interna~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|salida_5hz_interna~0_combout\ = \Reloj5hz|salida_5hz_interna~q\ $ (((\Reloj5hz|Equal0~6_combout\ & \Reloj5hz|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Reloj5hz|Equal0~6_combout\,
	datac => \Reloj5hz|salida_5hz_interna~q\,
	datad => \Reloj5hz|Equal0~4_combout\,
	combout => \Reloj5hz|salida_5hz_interna~0_combout\);

-- Location: LCCOMB_X11_Y15_N30
\Reloj5hz|salida_5hz_interna~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reloj5hz|salida_5hz_interna~feeder_combout\ = \Reloj5hz|salida_5hz_interna~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Reloj5hz|salida_5hz_interna~0_combout\,
	combout => \Reloj5hz|salida_5hz_interna~feeder_combout\);

-- Location: FF_X11_Y15_N31
\Reloj5hz|salida_5hz_interna\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \Reloj5hz|salida_5hz_interna~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reloj5hz|salida_5hz_interna~q\);

-- Location: CLKCTRL_G0
\Reloj5hz|salida_5hz_interna~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reloj5hz|salida_5hz_interna~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reloj5hz|salida_5hz_interna~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N15
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\Input1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input1,
	o => \Input1~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: LCCOMB_X1_Y11_N12
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Input1~input_o\ & (\sel[1]~input_o\ & \sel[0]~input_o\)) # (!\Input1~input_o\ & ((!\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datac => \Input1~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X0_Y8_N15
\Input2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input2,
	o => \Input2~input_o\);

-- Location: LCCOMB_X1_Y11_N22
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (!\sel[1]~input_o\ & ((\sel[0]~input_o\) # ((\Input1~input_o\ & \Input2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Input1~input_o\,
	datac => \Input2~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X1_Y11_N30
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Input1~input_o\ & ((\Input2~input_o\ & (\sel[1]~input_o\)) # (!\Input2~input_o\ & ((!\sel[0]~input_o\))))) # (!\Input1~input_o\ & (\sel[1]~input_o\ & ((\sel[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Input1~input_o\,
	datac => \Input2~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X1_Y11_N6
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\) # ((\Mux6~1_combout\ & Q_temp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datac => \Mux6~1_combout\,
	datad => Q_temp(0),
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X1_Y11_N28
\Q_temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q_temp[0]~0_combout\ = (\Input1~input_o\) # ((\sel[1]~input_o\ & ((\Input2~input_o\) # (!\sel[0]~input_o\))) # (!\sel[1]~input_o\ & (\Input2~input_o\ & !\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sel[1]~input_o\,
	datab => \Input1~input_o\,
	datac => \Input2~input_o\,
	datad => \sel[0]~input_o\,
	combout => \Q_temp[0]~0_combout\);

-- Location: FF_X1_Y11_N7
\QN_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj5hz|salida_5hz_interna~clkctrl_outclk\,
	d => \Mux13~1_combout\,
	ena => \Q_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => QN_temp(0));

-- Location: LCCOMB_X1_Y11_N0
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~0_combout\) # ((\Mux6~1_combout\ & QN_temp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datac => \Mux6~1_combout\,
	datad => QN_temp(0),
	combout => \Mux6~2_combout\);

-- Location: FF_X1_Y11_N1
\Q_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Reloj5hz|salida_5hz_interna~clkctrl_outclk\,
	d => \Mux6~2_combout\,
	ena => \Q_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q_temp(0));

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_QN(0) <= \QN[0]~output_o\;

ww_QN(1) <= \QN[1]~output_o\;

ww_QN(2) <= \QN[2]~output_o\;

ww_QN(3) <= \QN[3]~output_o\;

ww_QN(4) <= \QN[4]~output_o\;

ww_QN(5) <= \QN[5]~output_o\;

ww_QN(6) <= \QN[6]~output_o\;
END structure;


