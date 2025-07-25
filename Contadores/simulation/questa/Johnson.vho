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

-- DATE "06/12/2024 23:03:55"

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

ENTITY 	Johnson IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	output : BUFFER std_logic_vector(4 DOWNTO 0);
	display : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Johnson;

-- Design Ports Information
-- output[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[2]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[4]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[5]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- display[6]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Johnson IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_output : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_display : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \display[0]~output_o\ : std_logic;
SIGNAL \display[1]~output_o\ : std_logic;
SIGNAL \display[2]~output_o\ : std_logic;
SIGNAL \display[3]~output_o\ : std_logic;
SIGNAL \display[4]~output_o\ : std_logic;
SIGNAL \display[5]~output_o\ : std_logic;
SIGNAL \display[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \startup_counter[10]~44\ : std_logic;
SIGNAL \startup_counter[11]~45_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \startup_counter[11]~46\ : std_logic;
SIGNAL \startup_counter[12]~47_combout\ : std_logic;
SIGNAL \startup_counter[12]~48\ : std_logic;
SIGNAL \startup_counter[13]~49_combout\ : std_logic;
SIGNAL \startup_counter[13]~50\ : std_logic;
SIGNAL \startup_counter[14]~51_combout\ : std_logic;
SIGNAL \startup_counter[14]~52\ : std_logic;
SIGNAL \startup_counter[15]~53_combout\ : std_logic;
SIGNAL \startup_counter[15]~54\ : std_logic;
SIGNAL \startup_counter[16]~55_combout\ : std_logic;
SIGNAL \startup_counter[16]~56\ : std_logic;
SIGNAL \startup_counter[17]~57_combout\ : std_logic;
SIGNAL \startup_counter[17]~58\ : std_logic;
SIGNAL \startup_counter[18]~59_combout\ : std_logic;
SIGNAL \startup_counter[18]~60\ : std_logic;
SIGNAL \startup_counter[19]~61_combout\ : std_logic;
SIGNAL \startup_counter[19]~62\ : std_logic;
SIGNAL \startup_counter[20]~63_combout\ : std_logic;
SIGNAL \startup_counter[20]~64\ : std_logic;
SIGNAL \startup_counter[21]~65_combout\ : std_logic;
SIGNAL \startup_counter[21]~66\ : std_logic;
SIGNAL \startup_counter[22]~67_combout\ : std_logic;
SIGNAL \startup_counter[22]~68\ : std_logic;
SIGNAL \startup_counter[23]~69_combout\ : std_logic;
SIGNAL \startup_counter[23]~70\ : std_logic;
SIGNAL \startup_counter[24]~71_combout\ : std_logic;
SIGNAL \startup_counter[24]~72\ : std_logic;
SIGNAL \startup_counter[25]~73_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \startup_counter[0]~75_combout\ : std_logic;
SIGNAL \startup_counter[1]~25_combout\ : std_logic;
SIGNAL \startup_counter[1]~26\ : std_logic;
SIGNAL \startup_counter[2]~27_combout\ : std_logic;
SIGNAL \startup_counter[2]~28\ : std_logic;
SIGNAL \startup_counter[3]~29_combout\ : std_logic;
SIGNAL \startup_counter[3]~30\ : std_logic;
SIGNAL \startup_counter[4]~31_combout\ : std_logic;
SIGNAL \startup_counter[4]~32\ : std_logic;
SIGNAL \startup_counter[5]~33_combout\ : std_logic;
SIGNAL \startup_counter[5]~34\ : std_logic;
SIGNAL \startup_counter[6]~35_combout\ : std_logic;
SIGNAL \startup_counter[6]~36\ : std_logic;
SIGNAL \startup_counter[7]~37_combout\ : std_logic;
SIGNAL \startup_counter[7]~38\ : std_logic;
SIGNAL \startup_counter[8]~39_combout\ : std_logic;
SIGNAL \startup_counter[8]~40\ : std_logic;
SIGNAL \startup_counter[9]~41_combout\ : std_logic;
SIGNAL \startup_counter[9]~42\ : std_logic;
SIGNAL \startup_counter[10]~43_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \counter[0]~26_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \counter[1]~25_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \counter[2]~24_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \counter[3]~23_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \counter[4]~22_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \counter[5]~21_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \counter[6]~17_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \counter[7]~2_combout\ : std_logic;
SIGNAL \counter[7]~20_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \counter[8]~19_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \counter[9]~18_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \counter[10]~16_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \counter[11]~15_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \counter[12]~14_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \counter[13]~13_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \counter[14]~11_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \counter[15]~10_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \counter[16]~12_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \counter[17]~9_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \counter[18]~8_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \counter[19]~7_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \counter[20]~6_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \counter[21]~5_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \counter[22]~3_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \counter[23]~1_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \counter[24]~4_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \counter[25]~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \count[4]~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL count : std_logic_vector(4 DOWNTO 0);
SIGNAL startup_counter : std_logic_vector(25 DOWNTO 0);
SIGNAL counter : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(2 DOWNTO 1);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
output <= ww_output;
display <= ww_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
ALT_INV_count(2) <= NOT count(2);
ALT_INV_count(1) <= NOT count(1);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X32_Y0_N23
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(4),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~2_combout\,
	devoe => ww_devoe,
	o => \display[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \display[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux9~1_combout\,
	devoe => ww_devoe,
	o => \display[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \display[3]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\display[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \display[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\display[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \display[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\display[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~2_combout\,
	devoe => ww_devoe,
	o => \display[6]~output_o\);

-- Location: IOIBUF_X34_Y12_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y4_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (count(2) & (((count(0) & !count(1))) # (!count(3)))) # (!count(2) & ((count(0)) # ((count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(1),
	datad => count(3),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X23_Y4_N12
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\Mux1~0_combout\ & count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~0_combout\,
	datad => count(4),
	combout => \Mux1~1_combout\);

-- Location: IOIBUF_X32_Y0_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X24_Y4_N26
\startup_counter[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[10]~43_combout\ = (startup_counter(10) & (!\startup_counter[9]~42\)) # (!startup_counter(10) & ((\startup_counter[9]~42\) # (GND)))
-- \startup_counter[10]~44\ = CARRY((!\startup_counter[9]~42\) # (!startup_counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(10),
	datad => VCC,
	cin => \startup_counter[9]~42\,
	combout => \startup_counter[10]~43_combout\,
	cout => \startup_counter[10]~44\);

-- Location: LCCOMB_X24_Y4_N28
\startup_counter[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[11]~45_combout\ = (startup_counter(11) & (\startup_counter[10]~44\ $ (GND))) # (!startup_counter(11) & (!\startup_counter[10]~44\ & VCC))
-- \startup_counter[11]~46\ = CARRY((startup_counter(11) & !\startup_counter[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(11),
	datad => VCC,
	cin => \startup_counter[10]~44\,
	combout => \startup_counter[11]~45_combout\,
	cout => \startup_counter[11]~46\);

-- Location: LCCOMB_X24_Y3_N28
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!startup_counter(21) & (!startup_counter(20) & ((!startup_counter(18)) # (!startup_counter(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(19),
	datab => startup_counter(21),
	datac => startup_counter(20),
	datad => startup_counter(18),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X23_Y3_N26
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\LessThan0~7_combout\ & ((\LessThan0~5_combout\) # ((\LessThan0~4_combout\) # (!startup_counter(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => startup_counter(22),
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: FF_X24_Y4_N29
\startup_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[11]~45_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(11));

-- Location: LCCOMB_X24_Y4_N30
\startup_counter[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[12]~47_combout\ = (startup_counter(12) & (!\startup_counter[11]~46\)) # (!startup_counter(12) & ((\startup_counter[11]~46\) # (GND)))
-- \startup_counter[12]~48\ = CARRY((!\startup_counter[11]~46\) # (!startup_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(12),
	datad => VCC,
	cin => \startup_counter[11]~46\,
	combout => \startup_counter[12]~47_combout\,
	cout => \startup_counter[12]~48\);

-- Location: FF_X24_Y4_N31
\startup_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[12]~47_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(12));

-- Location: LCCOMB_X24_Y3_N0
\startup_counter[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[13]~49_combout\ = (startup_counter(13) & (\startup_counter[12]~48\ $ (GND))) # (!startup_counter(13) & (!\startup_counter[12]~48\ & VCC))
-- \startup_counter[13]~50\ = CARRY((startup_counter(13) & !\startup_counter[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(13),
	datad => VCC,
	cin => \startup_counter[12]~48\,
	combout => \startup_counter[13]~49_combout\,
	cout => \startup_counter[13]~50\);

-- Location: FF_X24_Y3_N1
\startup_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[13]~49_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(13));

-- Location: LCCOMB_X24_Y3_N2
\startup_counter[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[14]~51_combout\ = (startup_counter(14) & (!\startup_counter[13]~50\)) # (!startup_counter(14) & ((\startup_counter[13]~50\) # (GND)))
-- \startup_counter[14]~52\ = CARRY((!\startup_counter[13]~50\) # (!startup_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(14),
	datad => VCC,
	cin => \startup_counter[13]~50\,
	combout => \startup_counter[14]~51_combout\,
	cout => \startup_counter[14]~52\);

-- Location: FF_X24_Y3_N3
\startup_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[14]~51_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(14));

-- Location: LCCOMB_X24_Y3_N4
\startup_counter[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[15]~53_combout\ = (startup_counter(15) & (\startup_counter[14]~52\ $ (GND))) # (!startup_counter(15) & (!\startup_counter[14]~52\ & VCC))
-- \startup_counter[15]~54\ = CARRY((startup_counter(15) & !\startup_counter[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(15),
	datad => VCC,
	cin => \startup_counter[14]~52\,
	combout => \startup_counter[15]~53_combout\,
	cout => \startup_counter[15]~54\);

-- Location: FF_X24_Y3_N5
\startup_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[15]~53_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(15));

-- Location: LCCOMB_X24_Y3_N6
\startup_counter[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[16]~55_combout\ = (startup_counter(16) & (!\startup_counter[15]~54\)) # (!startup_counter(16) & ((\startup_counter[15]~54\) # (GND)))
-- \startup_counter[16]~56\ = CARRY((!\startup_counter[15]~54\) # (!startup_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(16),
	datad => VCC,
	cin => \startup_counter[15]~54\,
	combout => \startup_counter[16]~55_combout\,
	cout => \startup_counter[16]~56\);

-- Location: FF_X24_Y3_N7
\startup_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[16]~55_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(16));

-- Location: LCCOMB_X24_Y3_N8
\startup_counter[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[17]~57_combout\ = (startup_counter(17) & (\startup_counter[16]~56\ $ (GND))) # (!startup_counter(17) & (!\startup_counter[16]~56\ & VCC))
-- \startup_counter[17]~58\ = CARRY((startup_counter(17) & !\startup_counter[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(17),
	datad => VCC,
	cin => \startup_counter[16]~56\,
	combout => \startup_counter[17]~57_combout\,
	cout => \startup_counter[17]~58\);

-- Location: FF_X24_Y3_N9
\startup_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[17]~57_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(17));

-- Location: LCCOMB_X24_Y3_N10
\startup_counter[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[18]~59_combout\ = (startup_counter(18) & (!\startup_counter[17]~58\)) # (!startup_counter(18) & ((\startup_counter[17]~58\) # (GND)))
-- \startup_counter[18]~60\ = CARRY((!\startup_counter[17]~58\) # (!startup_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(18),
	datad => VCC,
	cin => \startup_counter[17]~58\,
	combout => \startup_counter[18]~59_combout\,
	cout => \startup_counter[18]~60\);

-- Location: FF_X24_Y3_N11
\startup_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[18]~59_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(18));

-- Location: LCCOMB_X24_Y3_N12
\startup_counter[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[19]~61_combout\ = (startup_counter(19) & (\startup_counter[18]~60\ $ (GND))) # (!startup_counter(19) & (!\startup_counter[18]~60\ & VCC))
-- \startup_counter[19]~62\ = CARRY((startup_counter(19) & !\startup_counter[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(19),
	datad => VCC,
	cin => \startup_counter[18]~60\,
	combout => \startup_counter[19]~61_combout\,
	cout => \startup_counter[19]~62\);

-- Location: FF_X24_Y3_N13
\startup_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[19]~61_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(19));

-- Location: LCCOMB_X24_Y3_N14
\startup_counter[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[20]~63_combout\ = (startup_counter(20) & (!\startup_counter[19]~62\)) # (!startup_counter(20) & ((\startup_counter[19]~62\) # (GND)))
-- \startup_counter[20]~64\ = CARRY((!\startup_counter[19]~62\) # (!startup_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(20),
	datad => VCC,
	cin => \startup_counter[19]~62\,
	combout => \startup_counter[20]~63_combout\,
	cout => \startup_counter[20]~64\);

-- Location: FF_X24_Y3_N15
\startup_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[20]~63_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(20));

-- Location: LCCOMB_X24_Y3_N16
\startup_counter[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[21]~65_combout\ = (startup_counter(21) & (\startup_counter[20]~64\ $ (GND))) # (!startup_counter(21) & (!\startup_counter[20]~64\ & VCC))
-- \startup_counter[21]~66\ = CARRY((startup_counter(21) & !\startup_counter[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(21),
	datad => VCC,
	cin => \startup_counter[20]~64\,
	combout => \startup_counter[21]~65_combout\,
	cout => \startup_counter[21]~66\);

-- Location: FF_X24_Y3_N17
\startup_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[21]~65_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(21));

-- Location: LCCOMB_X24_Y3_N18
\startup_counter[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[22]~67_combout\ = (startup_counter(22) & (!\startup_counter[21]~66\)) # (!startup_counter(22) & ((\startup_counter[21]~66\) # (GND)))
-- \startup_counter[22]~68\ = CARRY((!\startup_counter[21]~66\) # (!startup_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(22),
	datad => VCC,
	cin => \startup_counter[21]~66\,
	combout => \startup_counter[22]~67_combout\,
	cout => \startup_counter[22]~68\);

-- Location: FF_X24_Y3_N19
\startup_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[22]~67_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(22));

-- Location: LCCOMB_X24_Y3_N20
\startup_counter[23]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[23]~69_combout\ = (startup_counter(23) & (\startup_counter[22]~68\ $ (GND))) # (!startup_counter(23) & (!\startup_counter[22]~68\ & VCC))
-- \startup_counter[23]~70\ = CARRY((startup_counter(23) & !\startup_counter[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(23),
	datad => VCC,
	cin => \startup_counter[22]~68\,
	combout => \startup_counter[23]~69_combout\,
	cout => \startup_counter[23]~70\);

-- Location: FF_X24_Y3_N21
\startup_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[23]~69_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(23));

-- Location: LCCOMB_X24_Y3_N22
\startup_counter[24]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[24]~71_combout\ = (startup_counter(24) & (!\startup_counter[23]~70\)) # (!startup_counter(24) & ((\startup_counter[23]~70\) # (GND)))
-- \startup_counter[24]~72\ = CARRY((!\startup_counter[23]~70\) # (!startup_counter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(24),
	datad => VCC,
	cin => \startup_counter[23]~70\,
	combout => \startup_counter[24]~71_combout\,
	cout => \startup_counter[24]~72\);

-- Location: FF_X24_Y3_N23
\startup_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[24]~71_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(24));

-- Location: LCCOMB_X24_Y3_N24
\startup_counter[25]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[25]~73_combout\ = \startup_counter[24]~72\ $ (!startup_counter(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => startup_counter(25),
	cin => \startup_counter[24]~72\,
	combout => \startup_counter[25]~73_combout\);

-- Location: FF_X24_Y3_N25
\startup_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[25]~73_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(25));

-- Location: LCCOMB_X24_Y3_N30
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!startup_counter(25) & (!startup_counter(24) & !startup_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(25),
	datac => startup_counter(24),
	datad => startup_counter(23),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X23_Y3_N8
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\LessThan0~5_combout\) # (!startup_counter(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~5_combout\,
	datad => startup_counter(22),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X23_Y4_N16
\startup_counter[0]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[0]~75_combout\ = startup_counter(0) $ (((\LessThan0~7_combout\ & ((\LessThan0~6_combout\) # (\LessThan0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \LessThan0~6_combout\,
	datac => startup_counter(0),
	datad => \LessThan0~4_combout\,
	combout => \startup_counter[0]~75_combout\);

-- Location: FF_X23_Y4_N17
\startup_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[0]~75_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(0));

-- Location: LCCOMB_X24_Y4_N8
\startup_counter[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[1]~25_combout\ = (startup_counter(0) & (startup_counter(1) $ (VCC))) # (!startup_counter(0) & (startup_counter(1) & VCC))
-- \startup_counter[1]~26\ = CARRY((startup_counter(0) & startup_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(0),
	datab => startup_counter(1),
	datad => VCC,
	combout => \startup_counter[1]~25_combout\,
	cout => \startup_counter[1]~26\);

-- Location: FF_X24_Y4_N9
\startup_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[1]~25_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(1));

-- Location: LCCOMB_X24_Y4_N10
\startup_counter[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[2]~27_combout\ = (startup_counter(2) & (!\startup_counter[1]~26\)) # (!startup_counter(2) & ((\startup_counter[1]~26\) # (GND)))
-- \startup_counter[2]~28\ = CARRY((!\startup_counter[1]~26\) # (!startup_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(2),
	datad => VCC,
	cin => \startup_counter[1]~26\,
	combout => \startup_counter[2]~27_combout\,
	cout => \startup_counter[2]~28\);

-- Location: FF_X24_Y4_N11
\startup_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[2]~27_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(2));

-- Location: LCCOMB_X24_Y4_N12
\startup_counter[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[3]~29_combout\ = (startup_counter(3) & (\startup_counter[2]~28\ $ (GND))) # (!startup_counter(3) & (!\startup_counter[2]~28\ & VCC))
-- \startup_counter[3]~30\ = CARRY((startup_counter(3) & !\startup_counter[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(3),
	datad => VCC,
	cin => \startup_counter[2]~28\,
	combout => \startup_counter[3]~29_combout\,
	cout => \startup_counter[3]~30\);

-- Location: FF_X24_Y4_N13
\startup_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[3]~29_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(3));

-- Location: LCCOMB_X24_Y4_N14
\startup_counter[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[4]~31_combout\ = (startup_counter(4) & (!\startup_counter[3]~30\)) # (!startup_counter(4) & ((\startup_counter[3]~30\) # (GND)))
-- \startup_counter[4]~32\ = CARRY((!\startup_counter[3]~30\) # (!startup_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(4),
	datad => VCC,
	cin => \startup_counter[3]~30\,
	combout => \startup_counter[4]~31_combout\,
	cout => \startup_counter[4]~32\);

-- Location: FF_X24_Y4_N15
\startup_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[4]~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(4));

-- Location: LCCOMB_X24_Y4_N16
\startup_counter[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[5]~33_combout\ = (startup_counter(5) & (\startup_counter[4]~32\ $ (GND))) # (!startup_counter(5) & (!\startup_counter[4]~32\ & VCC))
-- \startup_counter[5]~34\ = CARRY((startup_counter(5) & !\startup_counter[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(5),
	datad => VCC,
	cin => \startup_counter[4]~32\,
	combout => \startup_counter[5]~33_combout\,
	cout => \startup_counter[5]~34\);

-- Location: FF_X24_Y4_N17
\startup_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[5]~33_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(5));

-- Location: LCCOMB_X24_Y4_N18
\startup_counter[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[6]~35_combout\ = (startup_counter(6) & (!\startup_counter[5]~34\)) # (!startup_counter(6) & ((\startup_counter[5]~34\) # (GND)))
-- \startup_counter[6]~36\ = CARRY((!\startup_counter[5]~34\) # (!startup_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(6),
	datad => VCC,
	cin => \startup_counter[5]~34\,
	combout => \startup_counter[6]~35_combout\,
	cout => \startup_counter[6]~36\);

-- Location: FF_X24_Y4_N19
\startup_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[6]~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(6));

-- Location: LCCOMB_X24_Y4_N20
\startup_counter[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[7]~37_combout\ = (startup_counter(7) & (\startup_counter[6]~36\ $ (GND))) # (!startup_counter(7) & (!\startup_counter[6]~36\ & VCC))
-- \startup_counter[7]~38\ = CARRY((startup_counter(7) & !\startup_counter[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(7),
	datad => VCC,
	cin => \startup_counter[6]~36\,
	combout => \startup_counter[7]~37_combout\,
	cout => \startup_counter[7]~38\);

-- Location: FF_X24_Y4_N21
\startup_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[7]~37_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(7));

-- Location: LCCOMB_X24_Y4_N22
\startup_counter[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[8]~39_combout\ = (startup_counter(8) & (!\startup_counter[7]~38\)) # (!startup_counter(8) & ((\startup_counter[7]~38\) # (GND)))
-- \startup_counter[8]~40\ = CARRY((!\startup_counter[7]~38\) # (!startup_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(8),
	datad => VCC,
	cin => \startup_counter[7]~38\,
	combout => \startup_counter[8]~39_combout\,
	cout => \startup_counter[8]~40\);

-- Location: FF_X24_Y4_N23
\startup_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[8]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(8));

-- Location: LCCOMB_X24_Y4_N24
\startup_counter[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \startup_counter[9]~41_combout\ = (startup_counter(9) & (\startup_counter[8]~40\ $ (GND))) # (!startup_counter(9) & (!\startup_counter[8]~40\ & VCC))
-- \startup_counter[9]~42\ = CARRY((startup_counter(9) & !\startup_counter[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => startup_counter(9),
	datad => VCC,
	cin => \startup_counter[8]~40\,
	combout => \startup_counter[9]~41_combout\,
	cout => \startup_counter[9]~42\);

-- Location: FF_X24_Y4_N25
\startup_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[9]~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(9));

-- Location: FF_X24_Y4_N27
\startup_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \startup_counter[10]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => startup_counter(10));

-- Location: LCCOMB_X24_Y4_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!startup_counter(6) & !startup_counter(7))) # (!startup_counter(9))) # (!startup_counter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(8),
	datab => startup_counter(6),
	datac => startup_counter(7),
	datad => startup_counter(9),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y4_N6
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!startup_counter(10) & (!startup_counter(13) & (!startup_counter(12) & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(10),
	datab => startup_counter(13),
	datac => startup_counter(12),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y4_N4
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((!startup_counter(12) & (!startup_counter(13) & !startup_counter(11)))) # (!startup_counter(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(12),
	datab => startup_counter(13),
	datac => startup_counter(14),
	datad => startup_counter(11),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X24_Y3_N26
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!startup_counter(16) & (!startup_counter(15) & (!startup_counter(20) & !startup_counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => startup_counter(16),
	datab => startup_counter(15),
	datac => startup_counter(20),
	datad => startup_counter(21),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y4_N2
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!startup_counter(17) & (\LessThan0~0_combout\ & ((\LessThan0~2_combout\) # (\LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => startup_counter(17),
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X23_Y2_N6
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = counter(0) $ (VCC)
-- \Add1~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X24_Y1_N14
\counter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~26_combout\ = (\LessThan0~8_combout\ & (counter(0))) # (!\LessThan0~8_combout\ & ((\Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datac => counter(0),
	datad => \Add1~0_combout\,
	combout => \counter[0]~26_combout\);

-- Location: FF_X24_Y1_N15
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X23_Y2_N8
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (counter(1) & (!\Add1~1\)) # (!counter(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X24_Y1_N0
\counter[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~25_combout\ = (\LessThan0~8_combout\ & (counter(1))) # (!\LessThan0~8_combout\ & ((\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datac => counter(1),
	datad => \Add1~2_combout\,
	combout => \counter[1]~25_combout\);

-- Location: FF_X24_Y1_N1
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~25_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X23_Y2_N10
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (counter(2) & (\Add1~3\ $ (GND))) # (!counter(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((counter(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X22_Y1_N22
\counter[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~24_combout\ = (\LessThan0~8_combout\ & ((counter(2)))) # (!\LessThan0~8_combout\ & (\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datac => counter(2),
	datad => \LessThan0~8_combout\,
	combout => \counter[2]~24_combout\);

-- Location: FF_X22_Y1_N23
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X23_Y2_N12
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (counter(3) & (!\Add1~5\)) # (!counter(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X23_Y2_N4
\counter[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~23_combout\ = (\LessThan0~8_combout\ & ((counter(3)))) # (!\LessThan0~8_combout\ & (\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datac => counter(3),
	datad => \LessThan0~8_combout\,
	combout => \counter[3]~23_combout\);

-- Location: FF_X23_Y2_N5
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~23_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X23_Y2_N14
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (counter(4) & (\Add1~7\ $ (GND))) # (!counter(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((counter(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X23_Y2_N2
\counter[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~22_combout\ = (\LessThan0~8_combout\ & ((counter(4)))) # (!\LessThan0~8_combout\ & (\Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~8_combout\,
	datac => counter(4),
	datad => \LessThan0~8_combout\,
	combout => \counter[4]~22_combout\);

-- Location: FF_X23_Y2_N3
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X23_Y2_N16
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (counter(5) & (!\Add1~9\)) # (!counter(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X23_Y2_N0
\counter[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~21_combout\ = (\LessThan0~8_combout\ & ((counter(5)))) # (!\LessThan0~8_combout\ & (\Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~10_combout\,
	datac => counter(5),
	datad => \LessThan0~8_combout\,
	combout => \counter[5]~21_combout\);

-- Location: FF_X23_Y2_N1
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~21_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X22_Y1_N12
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (counter(5) & (counter(2) & (counter(3) & counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datab => counter(2),
	datac => counter(3),
	datad => counter(4),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X23_Y2_N18
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (counter(6) & (\Add1~11\ $ (GND))) # (!counter(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((counter(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X22_Y2_N20
\counter[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~17_combout\ = (\LessThan0~8_combout\ & ((counter(6)))) # (!\LessThan0~8_combout\ & (\Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~12_combout\,
	datac => counter(6),
	datad => \LessThan0~8_combout\,
	combout => \counter[6]~17_combout\);

-- Location: FF_X22_Y2_N21
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~17_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X23_Y2_N20
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (counter(7) & (!\Add1~13\)) # (!counter(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X24_Y1_N18
\counter[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~2_combout\ = (!\Equal0~8_combout\ & (((!\LessThan0~4_combout\ & !\LessThan0~6_combout\)) # (!\LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~7_combout\,
	datab => \LessThan0~4_combout\,
	datac => \Equal0~8_combout\,
	datad => \LessThan0~6_combout\,
	combout => \counter[7]~2_combout\);

-- Location: LCCOMB_X24_Y1_N30
\counter[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~20_combout\ = (\LessThan0~8_combout\ & ((counter(7)) # ((\Add1~14_combout\ & \counter[7]~2_combout\)))) # (!\LessThan0~8_combout\ & (\Add1~14_combout\ & ((\counter[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \Add1~14_combout\,
	datac => counter(7),
	datad => \counter[7]~2_combout\,
	combout => \counter[7]~20_combout\);

-- Location: FF_X24_Y1_N31
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X23_Y2_N22
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (counter(8) & (\Add1~15\ $ (GND))) # (!counter(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((counter(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X22_Y2_N30
\counter[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~19_combout\ = (\LessThan0~8_combout\ & ((counter(8)))) # (!\LessThan0~8_combout\ & (\Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => counter(8),
	datad => \LessThan0~8_combout\,
	combout => \counter[8]~19_combout\);

-- Location: FF_X22_Y2_N31
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X23_Y2_N24
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (counter(9) & (!\Add1~17\)) # (!counter(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X22_Y1_N14
\counter[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~18_combout\ = (\LessThan0~8_combout\ & (counter(9))) # (!\LessThan0~8_combout\ & ((\Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datac => counter(9),
	datad => \Add1~18_combout\,
	combout => \counter[9]~18_combout\);

-- Location: FF_X22_Y1_N15
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X22_Y1_N16
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!counter(8) & (!counter(7) & (!counter(9) & counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => counter(7),
	datac => counter(9),
	datad => counter(6),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X24_Y1_N4
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (counter(0) & counter(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	datad => counter(1),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X23_Y2_N26
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (counter(10) & (\Add1~19\ $ (GND))) # (!counter(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((counter(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: LCCOMB_X22_Y1_N0
\counter[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[10]~16_combout\ = (\LessThan0~8_combout\ & ((counter(10)))) # (!\LessThan0~8_combout\ & (\Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~20_combout\,
	datac => counter(10),
	datad => \LessThan0~8_combout\,
	combout => \counter[10]~16_combout\);

-- Location: FF_X22_Y1_N1
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X23_Y2_N28
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (counter(11) & (!\Add1~21\)) # (!counter(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: LCCOMB_X22_Y1_N2
\counter[11]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[11]~15_combout\ = (\LessThan0~8_combout\ & (counter(11))) # (!\LessThan0~8_combout\ & ((\Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datac => counter(11),
	datad => \Add1~22_combout\,
	combout => \counter[11]~15_combout\);

-- Location: FF_X22_Y1_N3
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~15_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X23_Y2_N30
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (counter(12) & (\Add1~23\ $ (GND))) # (!counter(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((counter(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X24_Y1_N28
\counter[12]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[12]~14_combout\ = (\LessThan0~8_combout\ & ((counter(12)) # ((\Add1~24_combout\ & \counter[7]~2_combout\)))) # (!\LessThan0~8_combout\ & (\Add1~24_combout\ & ((\counter[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \Add1~24_combout\,
	datac => counter(12),
	datad => \counter[7]~2_combout\,
	combout => \counter[12]~14_combout\);

-- Location: FF_X24_Y1_N29
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X23_Y1_N0
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (counter(13) & (!\Add1~25\)) # (!counter(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: LCCOMB_X24_Y1_N10
\counter[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[13]~13_combout\ = (\LessThan0~8_combout\ & ((counter(13)) # ((\counter[7]~2_combout\ & \Add1~26_combout\)))) # (!\LessThan0~8_combout\ & (\counter[7]~2_combout\ & ((\Add1~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \counter[7]~2_combout\,
	datac => counter(13),
	datad => \Add1~26_combout\,
	combout => \counter[13]~13_combout\);

-- Location: FF_X24_Y1_N11
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~13_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X22_Y1_N10
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (counter(12) & (!counter(11) & (counter(13) & !counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => counter(11),
	datac => counter(13),
	datad => counter(10),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X23_Y1_N2
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (counter(14) & (\Add1~27\ $ (GND))) # (!counter(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((counter(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: LCCOMB_X24_Y1_N24
\counter[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[14]~11_combout\ = (\LessThan0~8_combout\ & ((counter(14)) # ((\counter[7]~2_combout\ & \Add1~28_combout\)))) # (!\LessThan0~8_combout\ & (\counter[7]~2_combout\ & ((\Add1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \counter[7]~2_combout\,
	datac => counter(14),
	datad => \Add1~28_combout\,
	combout => \counter[14]~11_combout\);

-- Location: FF_X24_Y1_N25
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X23_Y1_N4
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (counter(15) & (!\Add1~29\)) # (!counter(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X24_Y1_N22
\counter[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[15]~10_combout\ = (\LessThan0~8_combout\ & ((counter(15)) # ((\Add1~30_combout\ & \counter[7]~2_combout\)))) # (!\LessThan0~8_combout\ & (\Add1~30_combout\ & ((\counter[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \Add1~30_combout\,
	datac => counter(15),
	datad => \counter[7]~2_combout\,
	combout => \counter[15]~10_combout\);

-- Location: FF_X24_Y1_N23
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X23_Y1_N6
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (counter(16) & (\Add1~31\ $ (GND))) # (!counter(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((counter(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: LCCOMB_X24_Y1_N26
\counter[16]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[16]~12_combout\ = (\LessThan0~8_combout\ & (counter(16))) # (!\LessThan0~8_combout\ & ((\Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datac => counter(16),
	datad => \Add1~32_combout\,
	combout => \counter[16]~12_combout\);

-- Location: FF_X24_Y1_N27
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X23_Y1_N8
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (counter(17) & (!\Add1~33\)) # (!counter(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: LCCOMB_X23_Y1_N30
\counter[17]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[17]~9_combout\ = (\LessThan0~8_combout\ & ((counter(17)) # ((\Add1~34_combout\ & \counter[7]~2_combout\)))) # (!\LessThan0~8_combout\ & (\Add1~34_combout\ & ((\counter[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \Add1~34_combout\,
	datac => counter(17),
	datad => \counter[7]~2_combout\,
	combout => \counter[17]~9_combout\);

-- Location: FF_X23_Y1_N31
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X23_Y1_N10
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (counter(18) & (\Add1~35\ $ (GND))) # (!counter(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((counter(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X22_Y1_N6
\counter[18]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[18]~8_combout\ = (\LessThan0~8_combout\ & (counter(18))) # (!\LessThan0~8_combout\ & ((\Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datac => counter(18),
	datad => \Add1~36_combout\,
	combout => \counter[18]~8_combout\);

-- Location: FF_X22_Y1_N7
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X23_Y1_N12
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (counter(19) & (!\Add1~37\)) # (!counter(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: LCCOMB_X24_Y1_N16
\counter[19]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[19]~7_combout\ = (\LessThan0~8_combout\ & ((counter(19)) # ((\counter[7]~2_combout\ & \Add1~38_combout\)))) # (!\LessThan0~8_combout\ & (\counter[7]~2_combout\ & ((\Add1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \counter[7]~2_combout\,
	datac => counter(19),
	datad => \Add1~38_combout\,
	combout => \counter[19]~7_combout\);

-- Location: FF_X24_Y1_N17
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[19]~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X23_Y1_N14
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (counter(20) & (\Add1~39\ $ (GND))) # (!counter(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((counter(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: LCCOMB_X23_Y1_N28
\counter[20]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~6_combout\ = (\LessThan0~8_combout\ & ((counter(20)) # ((\Add1~40_combout\ & \counter[7]~2_combout\)))) # (!\LessThan0~8_combout\ & (\Add1~40_combout\ & ((\counter[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \Add1~40_combout\,
	datac => counter(20),
	datad => \counter[7]~2_combout\,
	combout => \counter[20]~6_combout\);

-- Location: FF_X23_Y1_N29
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[20]~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X23_Y1_N16
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (counter(21) & (!\Add1~41\)) # (!counter(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X23_Y1_N26
\counter[21]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[21]~5_combout\ = (\LessThan0~8_combout\ & ((counter(21)) # ((\Add1~42_combout\ & \counter[7]~2_combout\)))) # (!\LessThan0~8_combout\ & (\Add1~42_combout\ & ((\counter[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \Add1~42_combout\,
	datac => counter(21),
	datad => \counter[7]~2_combout\,
	combout => \counter[21]~5_combout\);

-- Location: FF_X23_Y1_N27
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[21]~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X23_Y1_N18
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (counter(22) & (\Add1~43\ $ (GND))) # (!counter(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((counter(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: LCCOMB_X22_Y1_N28
\counter[22]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[22]~3_combout\ = (\LessThan0~8_combout\ & ((counter(22)) # ((\counter[7]~2_combout\ & \Add1~44_combout\)))) # (!\LessThan0~8_combout\ & (\counter[7]~2_combout\ & ((\Add1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \counter[7]~2_combout\,
	datac => counter(22),
	datad => \Add1~44_combout\,
	combout => \counter[22]~3_combout\);

-- Location: FF_X22_Y1_N29
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[22]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X23_Y1_N20
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (counter(23) & (!\Add1~45\)) # (!counter(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: LCCOMB_X22_Y1_N30
\counter[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[23]~1_combout\ = (\LessThan0~8_combout\ & (((counter(23))))) # (!\LessThan0~8_combout\ & (!\Equal0~8_combout\ & ((\Add1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \Equal0~8_combout\,
	datac => counter(23),
	datad => \Add1~46_combout\,
	combout => \counter[23]~1_combout\);

-- Location: FF_X22_Y1_N31
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[23]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X23_Y1_N22
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (counter(24) & (\Add1~47\ $ (GND))) # (!counter(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((counter(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X22_Y1_N26
\counter[24]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[24]~4_combout\ = (\LessThan0~8_combout\ & (counter(24))) # (!\LessThan0~8_combout\ & ((\Add1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datac => counter(24),
	datad => \Add1~48_combout\,
	combout => \counter[24]~4_combout\);

-- Location: FF_X22_Y1_N27
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[24]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X23_Y1_N24
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = \Add1~49\ $ (counter(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(25),
	cin => \Add1~49\,
	combout => \Add1~50_combout\);

-- Location: LCCOMB_X22_Y1_N24
\counter[25]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[25]~0_combout\ = (\LessThan0~8_combout\ & (((counter(25))))) # (!\LessThan0~8_combout\ & (!\Equal0~8_combout\ & ((\Add1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \Equal0~8_combout\,
	datac => counter(25),
	datad => \Add1~50_combout\,
	combout => \counter[25]~0_combout\);

-- Location: FF_X22_Y1_N25
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[25]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X22_Y1_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!counter(24) & (counter(25) & (counter(23) & counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datab => counter(25),
	datac => counter(23),
	datad => counter(22),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X22_Y1_N8
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!counter(18) & (counter(20) & (counter(21) & counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(20),
	datac => counter(21),
	datad => counter(19),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X24_Y1_N20
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (counter(15) & (counter(14) & (!counter(16) & counter(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(14),
	datac => counter(16),
	datad => counter(17),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X22_Y1_N20
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X22_Y1_N18
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~6_combout\ & (\Equal0~5_combout\ & (\Equal0~7_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X23_Y4_N22
\count[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[4]~0_combout\ = (\Equal0~8_combout\ & (((!\LessThan0~4_combout\ & !\LessThan0~6_combout\)) # (!\LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~6_combout\,
	datad => \Equal0~8_combout\,
	combout => \count[4]~0_combout\);

-- Location: FF_X23_Y4_N13
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X23_Y4_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (count(0) & (count(1) & ((count(3)) # (!count(4))))) # (!count(0) & (count(3) & ((count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(0),
	datac => count(1),
	datad => count(4),
	combout => \Mux3~0_combout\);

-- Location: FF_X23_Y4_N1
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => ALT_INV_count(2),
	ena => \count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X23_Y4_N26
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (count(0) & (count(2) & (count(1)))) # (!count(0) & (count(4) & ((count(2)) # (!count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(1),
	datad => count(4),
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X23_Y4_N6
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux5~1_combout\ & count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux5~1_combout\,
	datad => count(3),
	combout => \Mux2~0_combout\);

-- Location: FF_X23_Y4_N7
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X23_Y4_N18
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (count(2) & (((!count(3))) # (!count(4)))) # (!count(2) & ((count(1)) # ((!count(4) & count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(4),
	datac => count(1),
	datad => count(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X23_Y4_N2
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!count(0) & !\Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: FF_X23_Y4_N3
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X22_Y4_N4
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (count(4) & (count(3) & ((count(2))))) # (!count(4) & (count(0) & ((count(2)) # (!count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(3),
	datac => count(0),
	datad => count(2),
	combout => \Mux4~0_combout\);

-- Location: FF_X22_Y4_N5
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => ALT_INV_count(1),
	ena => \count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X22_Y4_N16
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (count(2) & (((!count(0))) # (!count(1)))) # (!count(2) & ((count(3)) # ((count(1) & !count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X22_Y4_N30
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (count(3) & ((count(1) & (count(2) & count(0))) # (!count(1) & ((!count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X22_Y4_N26
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (count(4) & ((\Mux11~0_combout\))) # (!count(4) & (!\Mux11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux11~1_combout\,
	datac => \Mux11~0_combout\,
	datad => count(4),
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X23_Y4_N30
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (count(0) & (!count(4) & ((count(1)) # (!count(2))))) # (!count(0) & ((count(2) & ((count(4)))) # (!count(2) & (!count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(1),
	datad => count(4),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X23_Y4_N28
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((count(4) & ((count(3)) # (!count(2)))) # (!count(4) & ((!count(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(4),
	datac => \Mux10~0_combout\,
	datad => count(3),
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X22_Y4_N28
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (count(1) & (((!count(3))) # (!count(2)))) # (!count(1) & ((count(0)) # (count(2) $ (count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X22_Y4_N6
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (count(4) & ((\Mux9~0_combout\))) # (!count(4) & (\Mux11~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => \Mux11~1_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X22_Y4_N12
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (count(3) & ((count(0) & ((!count(2)))) # (!count(0) & (!count(4))))) # (!count(3) & ((count(4)) # ((count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(3),
	datac => count(0),
	datad => count(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X22_Y4_N10
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!\Mux8~0_combout\ & (count(0) $ (!count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => count(1),
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X22_Y4_N20
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (count(1) & ((count(4)) # (count(2) $ (count(3))))) # (!count(1) & ((count(2)) # (count(3) $ (count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(3),
	datac => count(1),
	datad => count(4),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X22_Y4_N18
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (!\Mux7~0_combout\ & (count(0) $ (!count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => count(1),
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X22_Y4_N24
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (count(4) & ((count(1)) # ((!count(3))))) # (!count(4) & (count(1) & (count(0) $ (!count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X22_Y4_N22
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (count(2) & (\Mux6~0_combout\ & count(3))) # (!count(2) & (!\Mux6~0_combout\ & !count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \Mux6~0_combout\,
	datac => count(3),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X23_Y4_N8
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!count(2) & (!count(4) & (count(0) & !count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(4),
	datac => count(0),
	datad => count(3),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X23_Y4_N24
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~0_combout\) # ((\Mux5~1_combout\ & count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux5~0_combout\,
	datac => \Mux5~1_combout\,
	datad => count(3),
	combout => \Mux5~2_combout\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_display(0) <= \display[0]~output_o\;

ww_display(1) <= \display[1]~output_o\;

ww_display(2) <= \display[2]~output_o\;

ww_display(3) <= \display[3]~output_o\;

ww_display(4) <= \display[4]~output_o\;

ww_display(5) <= \display[5]~output_o\;

ww_display(6) <= \display[6]~output_o\;
END structure;


