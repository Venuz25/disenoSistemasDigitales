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

-- DATE "06/26/2024 00:50:35"

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

ENTITY 	ping_pong IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	button1 : IN std_logic;
	button2 : IN std_logic;
	leds : OUT std_logic_vector(7 DOWNTO 0);
	player1_display : OUT std_logic_vector(6 DOWNTO 0);
	player2_display : OUT std_logic_vector(6 DOWNTO 0)
	);
END ping_pong;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player1_display[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player1_display[1]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player1_display[2]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player1_display[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player1_display[4]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player1_display[5]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player1_display[6]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player2_display[0]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player2_display[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player2_display[2]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player2_display[3]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player2_display[4]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player2_display[5]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- player2_display[6]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button2	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button1	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ping_pong IS
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
SIGNAL ww_button1 : std_logic;
SIGNAL ww_button2 : std_logic;
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_player1_display : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_player2_display : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \player1_display[0]~output_o\ : std_logic;
SIGNAL \player1_display[1]~output_o\ : std_logic;
SIGNAL \player1_display[2]~output_o\ : std_logic;
SIGNAL \player1_display[3]~output_o\ : std_logic;
SIGNAL \player1_display[4]~output_o\ : std_logic;
SIGNAL \player1_display[5]~output_o\ : std_logic;
SIGNAL \player1_display[6]~output_o\ : std_logic;
SIGNAL \player2_display[0]~output_o\ : std_logic;
SIGNAL \player2_display[1]~output_o\ : std_logic;
SIGNAL \player2_display[2]~output_o\ : std_logic;
SIGNAL \player2_display[3]~output_o\ : std_logic;
SIGNAL \player2_display[4]~output_o\ : std_logic;
SIGNAL \player2_display[5]~output_o\ : std_logic;
SIGNAL \player2_display[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \button1~input_o\ : std_logic;
SIGNAL \button2~input_o\ : std_logic;
SIGNAL \game_active~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \counter~11_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \counter~10_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \counter~9_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \counter~8_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \counter~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \counter~2_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \counter~1_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \counter~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \player1_score[0]~4_combout\ : std_logic;
SIGNAL \count~9_combout\ : std_logic;
SIGNAL \player2_score[0]~5_combout\ : std_logic;
SIGNAL \player2_score[3]~0_combout\ : std_logic;
SIGNAL \player2_score[3]~1_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \player2_score[2]~3_combout\ : std_logic;
SIGNAL \player2_score[2]~2_combout\ : std_logic;
SIGNAL \player2_score[3]~4_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \count[7]~11_combout\ : std_logic;
SIGNAL \count~8_combout\ : std_logic;
SIGNAL \count~7_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \player1_score[3]~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \player1_score[2]~2_combout\ : std_logic;
SIGNAL \player1_score[2]~1_combout\ : std_logic;
SIGNAL \player1_score[3]~3_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \game_active~1_combout\ : std_logic;
SIGNAL \game_active~2_combout\ : std_logic;
SIGNAL \game_active~3_combout\ : std_logic;
SIGNAL \game_active~q\ : std_logic;
SIGNAL \count[7]~3_combout\ : std_logic;
SIGNAL \count[7]~10_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \direction~0_combout\ : std_logic;
SIGNAL \direction~1_combout\ : std_logic;
SIGNAL \direction~q\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \count[0]~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(7 DOWNTO 0);
SIGNAL player1_score : std_logic_vector(3 DOWNTO 0);
SIGNAL player2_score : std_logic_vector(3 DOWNTO 0);
SIGNAL counter : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(7 DOWNTO 7);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_button1 <= button1;
ww_button2 <= button2;
leds <= ww_leds;
player1_display <= ww_player1_display;
player2_display <= ww_player2_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
ALT_INV_count(7) <= NOT count(7);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X21_Y0_N9
\leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(0),
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(1),
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(2),
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(3),
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\leds[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(4),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\leds[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(5),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\leds[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(6),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\leds[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_count(7),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\player1_display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \player1_display[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\player1_display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \player1_display[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\player1_display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \player1_display[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\player1_display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \player1_display[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\player1_display[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \player1_display[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\player1_display[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \player1_display[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\player1_display[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \player1_display[6]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\player2_display[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \player2_display[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\player2_display[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \player2_display[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\player2_display[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \player2_display[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\player2_display[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \player2_display[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\player2_display[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \player2_display[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\player2_display[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \player2_display[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\player2_display[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \player2_display[6]~output_o\);

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

-- Location: IOIBUF_X34_Y2_N22
\button1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button1,
	o => \button1~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\button2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button2,
	o => \button2~input_o\);

-- Location: LCCOMB_X29_Y6_N30
\game_active~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \game_active~0_combout\ = (\button1~input_o\ & ((\button2~input_o\) # (\direction~q\ $ (!\game_active~q\)))) # (!\button1~input_o\ & (\button2~input_o\ & (\direction~q\ $ (\game_active~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \direction~q\,
	datac => \button2~input_o\,
	datad => \game_active~q\,
	combout => \game_active~0_combout\);

-- Location: LCCOMB_X30_Y7_N8
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = counter(0) $ (VCC)
-- \Add2~1\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: IOIBUF_X28_Y24_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X30_Y7_N9
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X30_Y7_N10
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (counter(1) & (!\Add2~1\)) # (!counter(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X30_Y7_N11
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X30_Y7_N12
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (counter(2) & (\Add2~3\ $ (GND))) # (!counter(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((counter(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X30_Y7_N13
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X30_Y7_N14
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (counter(3) & (!\Add2~5\)) # (!counter(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: FF_X30_Y7_N15
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X30_Y7_N16
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (counter(4) & (\Add2~7\ $ (GND))) # (!counter(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((counter(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X30_Y7_N17
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X30_Y4_N30
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (counter(3) & (counter(2) & (counter(1) & counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => counter(2),
	datac => counter(1),
	datad => counter(4),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X30_Y4_N4
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (counter(0) & \Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datac => \Equal0~6_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X30_Y7_N18
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (counter(5) & (!\Add2~9\)) # (!counter(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X30_Y7_N19
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X30_Y7_N20
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (counter(6) & (\Add2~11\ $ (GND))) # (!counter(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((counter(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X30_Y7_N2
\counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~11_combout\ = (\Add2~12_combout\ & (((!\Equal0~8_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~8_combout\,
	datad => \Add2~12_combout\,
	combout => \counter~11_combout\);

-- Location: FF_X30_Y7_N3
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X30_Y7_N22
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (counter(7) & (!\Add2~13\)) # (!counter(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X30_Y7_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X30_Y7_N24
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (counter(8) & (\Add2~15\ $ (GND))) # (!counter(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((counter(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X30_Y7_N25
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X30_Y4_N0
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!counter(7) & (!counter(6) & (counter(5) & !counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(6),
	datac => counter(5),
	datad => counter(8),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X30_Y7_N26
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (counter(9) & (!\Add2~17\)) # (!counter(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X30_Y7_N27
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X30_Y7_N28
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (counter(10) & (\Add2~19\ $ (GND))) # (!counter(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((counter(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X30_Y7_N29
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X30_Y7_N30
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (counter(11) & (!\Add2~21\)) # (!counter(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X30_Y7_N6
\counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~10_combout\ = (\Add2~22_combout\ & (((!\Equal0~8_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Add2~22_combout\,
	datad => \Equal0~8_combout\,
	combout => \counter~10_combout\);

-- Location: FF_X30_Y7_N7
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X30_Y6_N0
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (counter(12) & (\Add2~23\ $ (GND))) # (!counter(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((counter(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X30_Y7_N4
\counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~9_combout\ = (\Add2~24_combout\ & (((!\Equal0~8_combout\) # (!\Equal0~5_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~8_combout\,
	datad => \Add2~24_combout\,
	combout => \counter~9_combout\);

-- Location: FF_X30_Y7_N5
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X30_Y6_N2
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (counter(13) & (!\Add2~25\)) # (!counter(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X29_Y6_N10
\counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~8_combout\ = (\Add2~26_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~8_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add2~26_combout\,
	combout => \counter~8_combout\);

-- Location: FF_X29_Y6_N11
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X30_Y6_N4
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (counter(14) & (\Add2~27\ $ (GND))) # (!counter(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((counter(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X29_Y6_N28
\counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (\Add2~28_combout\ & (((!\Equal0~4_combout\) # (!\Equal0~8_combout\)) # (!\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~4_combout\,
	datad => \Add2~28_combout\,
	combout => \counter~7_combout\);

-- Location: FF_X29_Y6_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X30_Y6_N6
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (counter(15) & (!\Add2~29\)) # (!counter(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: FF_X30_Y6_N7
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X30_Y6_N8
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (counter(16) & (\Add2~31\ $ (GND))) # (!counter(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((counter(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X29_Y6_N26
\counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (\Add2~32_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~8_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~8_combout\,
	datac => \Add2~32_combout\,
	datad => \Equal0~5_combout\,
	combout => \counter~6_combout\);

-- Location: FF_X29_Y6_N27
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X30_Y6_N10
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (counter(17) & (!\Add2~33\)) # (!counter(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X30_Y6_N11
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X30_Y6_N12
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (counter(18) & (\Add2~35\ $ (GND))) # (!counter(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((counter(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X29_Y6_N24
\counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\Add2~36_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~8_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~8_combout\,
	datac => \Add2~36_combout\,
	datad => \Equal0~5_combout\,
	combout => \counter~5_combout\);

-- Location: FF_X29_Y6_N25
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X30_Y6_N14
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (counter(19) & (!\Add2~37\)) # (!counter(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X29_Y6_N6
\counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\Add2~38_combout\ & (((!\Equal0~5_combout\) # (!\Equal0~8_combout\)) # (!\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~8_combout\,
	datac => \Add2~38_combout\,
	datad => \Equal0~5_combout\,
	combout => \counter~4_combout\);

-- Location: FF_X29_Y6_N7
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X30_Y6_N16
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (counter(20) & (\Add2~39\ $ (GND))) # (!counter(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((counter(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X31_Y6_N20
\counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~3_combout\ = (!\Equal0~7_combout\ & \Add2~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datac => \Add2~40_combout\,
	combout => \counter~3_combout\);

-- Location: FF_X31_Y6_N21
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X30_Y6_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!counter(17) & (counter(19) & (counter(20) & counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => counter(19),
	datac => counter(20),
	datad => counter(18),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X30_Y6_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!counter(15) & (counter(14) & (counter(16) & counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(14),
	datac => counter(16),
	datad => counter(13),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X30_Y6_N18
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (counter(21) & (!\Add2~41\)) # (!counter(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X29_Y6_N14
\counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~2_combout\ = (!\Equal0~7_combout\ & \Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add2~42_combout\,
	combout => \counter~2_combout\);

-- Location: FF_X29_Y6_N15
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X30_Y6_N20
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (counter(22) & (\Add2~43\ $ (GND))) # (!counter(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((counter(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X29_Y6_N12
\counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~1_combout\ = (\Add2~44_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~44_combout\,
	datad => \Equal0~7_combout\,
	combout => \counter~1_combout\);

-- Location: FF_X29_Y6_N13
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X30_Y6_N22
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (counter(23) & (!\Add2~45\)) # (!counter(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: FF_X30_Y6_N23
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add2~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X30_Y6_N24
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = counter(24) $ (!\Add2~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	cin => \Add2~47\,
	combout => \Add2~48_combout\);

-- Location: LCCOMB_X29_Y6_N2
\counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter~0_combout\ = (!\Equal0~7_combout\ & \Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~7_combout\,
	datad => \Add2~48_combout\,
	combout => \counter~0_combout\);

-- Location: FF_X29_Y6_N3
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X29_Y6_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (counter(22) & (counter(24) & (counter(21) & !counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datab => counter(24),
	datac => counter(21),
	datad => counter(23),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X30_Y7_N0
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (counter(11) & (counter(12) & (!counter(9) & !counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => counter(12),
	datac => counter(9),
	datad => counter(10),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X30_Y6_N26
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X31_Y6_N14
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (counter(0) & (\Equal0~6_combout\ & (\Equal0~4_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \Equal0~6_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X29_Y4_N12
\player1_score[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1_score[0]~4_combout\ = !player1_score(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => player1_score(0),
	combout => \player1_score[0]~4_combout\);

-- Location: LCCOMB_X31_Y6_N12
\count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~9_combout\ = ((\direction~q\ & (!count(7))) # (!\direction~q\ & ((count(5))))) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(5),
	datac => \process_0~0_combout\,
	datad => \direction~q\,
	combout => \count~9_combout\);

-- Location: LCCOMB_X30_Y4_N20
\player2_score[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \player2_score[0]~5_combout\ = !player2_score(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => player2_score(0),
	combout => \player2_score[0]~5_combout\);

-- Location: LCCOMB_X30_Y4_N2
\player2_score[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \player2_score[3]~0_combout\ = (\game_active~q\ & (\Equal0~5_combout\ & (\Equal0~8_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_active~q\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \player2_score[3]~0_combout\);

-- Location: LCCOMB_X30_Y4_N12
\player2_score[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \player2_score[3]~1_combout\ = (!\button1~input_o\ & (\direction~q\ & (!\Equal2~0_combout\ & \player2_score[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \direction~q\,
	datac => \Equal2~0_combout\,
	datad => \player2_score[3]~0_combout\,
	combout => \player2_score[3]~1_combout\);

-- Location: FF_X30_Y4_N21
\player2_score[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \player2_score[0]~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \player2_score[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player2_score(0));

-- Location: LCCOMB_X30_Y4_N26
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = player2_score(1) $ (player2_score(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => player2_score(1),
	datad => player2_score(0),
	combout => \Mux12~1_combout\);

-- Location: FF_X30_Y4_N27
\player2_score[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux12~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \player2_score[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player2_score(1));

-- Location: LCCOMB_X30_Y4_N6
\player2_score[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \player2_score[2]~3_combout\ = (player2_score(1) & player2_score(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => player2_score(1),
	datad => player2_score(0),
	combout => \player2_score[2]~3_combout\);

-- Location: LCCOMB_X30_Y4_N28
\player2_score[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \player2_score[2]~2_combout\ = player2_score(2) $ (((player2_score(1) & (player2_score(0) & \player2_score[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player2_score(1),
	datab => player2_score(0),
	datac => player2_score(2),
	datad => \player2_score[3]~1_combout\,
	combout => \player2_score[2]~2_combout\);

-- Location: FF_X30_Y4_N29
\player2_score[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \player2_score[2]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player2_score(2));

-- Location: LCCOMB_X30_Y4_N22
\player2_score[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \player2_score[3]~4_combout\ = player2_score(3) $ (((\player2_score[2]~3_combout\ & (player2_score(2) & \player2_score[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player2_score[2]~3_combout\,
	datab => player2_score(2),
	datac => player2_score(3),
	datad => \player2_score[3]~1_combout\,
	combout => \player2_score[3]~4_combout\);

-- Location: FF_X30_Y4_N23
\player2_score[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \player2_score[3]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player2_score(3));

-- Location: LCCOMB_X30_Y4_N10
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (player2_score(3) & (player2_score(0) & (!player2_score(1) & !player2_score(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player2_score(3),
	datab => player2_score(0),
	datac => player2_score(1),
	datad => player2_score(2),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X31_Y6_N26
\count[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~11_combout\ = (\Equal0~7_combout\ & ((\Equal3~0_combout\) # ((\Equal4~0_combout\) # (\count[7]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \Equal0~7_combout\,
	datad => \count[7]~3_combout\,
	combout => \count[7]~11_combout\);

-- Location: FF_X31_Y6_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \count[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X31_Y6_N18
\count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~8_combout\ = ((\direction~q\ & (count(6))) # (!\direction~q\ & ((count(4))))) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datab => count(4),
	datac => \process_0~0_combout\,
	datad => \direction~q\,
	combout => \count~8_combout\);

-- Location: FF_X31_Y6_N19
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \count[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X31_Y6_N8
\count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~7_combout\ = ((\direction~q\ & ((count(5)))) # (!\direction~q\ & (count(3)))) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(5),
	datac => \process_0~0_combout\,
	datad => \direction~q\,
	combout => \count~7_combout\);

-- Location: FF_X31_Y6_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \count[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X31_Y6_N16
\count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~5_combout\ = ((\direction~q\ & ((count(3)))) # (!\direction~q\ & (count(1)))) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \direction~q\,
	datac => \process_0~0_combout\,
	datad => count(3),
	combout => \count~5_combout\);

-- Location: FF_X31_Y6_N17
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \count[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X31_Y6_N6
\count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~6_combout\ = ((\direction~q\ & (count(4))) # (!\direction~q\ & ((count(2))))) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction~q\,
	datab => count(4),
	datac => \process_0~0_combout\,
	datad => count(2),
	combout => \count~6_combout\);

-- Location: FF_X31_Y6_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \count[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X31_Y6_N4
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!count(3) & (!count(5) & (!count(4) & !count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(5),
	datac => count(4),
	datad => count(6),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X31_Y6_N2
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!count(1) & (\Equal1~0_combout\ & !count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datac => \Equal1~0_combout\,
	datad => count(2),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X31_Y6_N10
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ((!\Equal1~1_combout\) # (!count(7))) # (!count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => count(7),
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X29_Y4_N0
\player1_score[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1_score[3]~0_combout\ = (!\direction~q\ & (!\button2~input_o\ & (!\Equal1~2_combout\ & \player2_score[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction~q\,
	datab => \button2~input_o\,
	datac => \Equal1~2_combout\,
	datad => \player2_score[3]~0_combout\,
	combout => \player1_score[3]~0_combout\);

-- Location: FF_X29_Y4_N13
\player1_score[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \player1_score[0]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \player1_score[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1_score(0));

-- Location: LCCOMB_X29_Y4_N14
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = player1_score(1) $ (player1_score(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => player1_score(1),
	datad => player1_score(0),
	combout => \Mux5~1_combout\);

-- Location: FF_X29_Y4_N15
\player1_score[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \player1_score[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1_score(1));

-- Location: LCCOMB_X29_Y4_N10
\player1_score[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1_score[2]~2_combout\ = (player1_score(1) & player1_score(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => player1_score(1),
	datad => player1_score(0),
	combout => \player1_score[2]~2_combout\);

-- Location: LCCOMB_X29_Y4_N8
\player1_score[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1_score[2]~1_combout\ = player1_score(2) $ (((player1_score(0) & (player1_score(1) & \player1_score[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1_score(0),
	datab => player1_score(1),
	datac => player1_score(2),
	datad => \player1_score[3]~0_combout\,
	combout => \player1_score[2]~1_combout\);

-- Location: FF_X29_Y4_N9
\player1_score[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \player1_score[2]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1_score(2));

-- Location: LCCOMB_X29_Y4_N6
\player1_score[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \player1_score[3]~3_combout\ = player1_score(3) $ (((\player1_score[2]~2_combout\ & (player1_score(2) & \player1_score[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \player1_score[2]~2_combout\,
	datab => player1_score(2),
	datac => player1_score(3),
	datad => \player1_score[3]~0_combout\,
	combout => \player1_score[3]~3_combout\);

-- Location: FF_X29_Y4_N7
\player1_score[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \player1_score[3]~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => player1_score(3));

-- Location: LCCOMB_X29_Y4_N30
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (player1_score(3) & (!player1_score(2) & (!player1_score(1) & player1_score(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1_score(3),
	datab => player1_score(2),
	datac => player1_score(1),
	datad => player1_score(0),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X29_Y6_N22
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\Equal3~0_combout\ & !\Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal3~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X29_Y6_N8
\game_active~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \game_active~1_combout\ = (\Equal1~1_combout\ & ((count(0) & (!\direction~q\ & count(7))) # (!count(0) & (\direction~q\ & !count(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => \direction~q\,
	datac => \Equal1~1_combout\,
	datad => count(7),
	combout => \game_active~1_combout\);

-- Location: LCCOMB_X29_Y6_N18
\game_active~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \game_active~2_combout\ = (\game_active~q\ & ((!\Equal0~7_combout\) # (!\game_active~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \game_active~q\,
	datac => \game_active~1_combout\,
	datad => \Equal0~7_combout\,
	combout => \game_active~2_combout\);

-- Location: LCCOMB_X29_Y6_N20
\game_active~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \game_active~3_combout\ = (\Equal0~7_combout\ & (\process_0~0_combout\ & ((\game_active~0_combout\) # (\game_active~2_combout\)))) # (!\Equal0~7_combout\ & (((\game_active~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \game_active~0_combout\,
	datab => \Equal0~7_combout\,
	datac => \process_0~0_combout\,
	datad => \game_active~2_combout\,
	combout => \game_active~3_combout\);

-- Location: FF_X29_Y6_N21
game_active : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \game_active~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \game_active~q\);

-- Location: LCCOMB_X31_Y6_N24
\count[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~3_combout\ = (\game_active~q\ & ((\direction~q\ & (\Equal2~0_combout\)) # (!\direction~q\ & ((\Equal1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction~q\,
	datab => \Equal2~0_combout\,
	datac => \game_active~q\,
	datad => \Equal1~2_combout\,
	combout => \count[7]~3_combout\);

-- Location: LCCOMB_X31_Y6_N30
\count[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[7]~10_combout\ = (\count[7]~3_combout\ & (\process_0~0_combout\ & ((\direction~q\) # (!count(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction~q\,
	datab => \count[7]~3_combout\,
	datac => \process_0~0_combout\,
	datad => count(6),
	combout => \count[7]~10_combout\);

-- Location: FF_X31_Y6_N31
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[7]~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \count[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X31_Y6_N28
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (count(0)) # ((count(7)) # (!\Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => count(7),
	datad => \Equal1~1_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X29_Y6_N0
\direction~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \direction~0_combout\ = (\player2_score[3]~0_combout\ & ((\direction~q\) # ((\button2~input_o\ & !\Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button2~input_o\,
	datab => \direction~q\,
	datac => \Equal1~2_combout\,
	datad => \player2_score[3]~0_combout\,
	combout => \direction~0_combout\);

-- Location: LCCOMB_X29_Y6_N4
\direction~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \direction~1_combout\ = (\direction~q\ & (((\Equal2~0_combout\) # (!\direction~0_combout\)) # (!\button1~input_o\))) # (!\direction~q\ & (((\direction~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datab => \Equal2~0_combout\,
	datac => \direction~q\,
	datad => \direction~0_combout\,
	combout => \direction~1_combout\);

-- Location: FF_X29_Y6_N5
direction : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \direction~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \direction~q\);

-- Location: LCCOMB_X31_Y6_N22
\count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~4_combout\ = ((\direction~q\ & ((count(2)))) # (!\direction~q\ & (count(0)))) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direction~q\,
	datab => count(0),
	datac => \process_0~0_combout\,
	datad => count(2),
	combout => \count~4_combout\);

-- Location: FF_X31_Y6_N23
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \count[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X31_Y6_N0
\count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~2_combout\ = (\Equal4~0_combout\) # ((\Equal3~0_combout\) # ((count(1) & \direction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \direction~q\,
	datac => \Equal4~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \count[0]~2_combout\);

-- Location: FF_X31_Y6_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[0]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \count[7]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X29_Y4_N4
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!player1_score(3) & (!player1_score(1) & (player1_score(2) $ (player1_score(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1_score(3),
	datab => player1_score(1),
	datac => player1_score(2),
	datad => player1_score(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X29_Y4_N18
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (player1_score(1) $ (!player1_score(0))) # (!player1_score(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => player1_score(1),
	datac => player1_score(2),
	datad => player1_score(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X29_Y4_N20
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (player1_score(1) & (!player1_score(2) & !player1_score(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => player1_score(1),
	datac => player1_score(2),
	datad => player1_score(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X29_Y4_N2
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!player1_score(3) & ((player1_score(1) & (player1_score(2) & player1_score(0))) # (!player1_score(1) & (player1_score(2) $ (player1_score(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1_score(3),
	datab => player1_score(1),
	datac => player1_score(2),
	datad => player1_score(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X29_Y4_N28
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (player1_score(0)) # ((!player1_score(1) & player1_score(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => player1_score(1),
	datac => player1_score(2),
	datad => player1_score(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X29_Y4_N22
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!player1_score(3) & ((player1_score(1) & ((player1_score(0)) # (!player1_score(2)))) # (!player1_score(1) & (!player1_score(2) & player1_score(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1_score(3),
	datab => player1_score(1),
	datac => player1_score(2),
	datad => player1_score(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X29_Y4_N16
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (player1_score(3)) # ((player1_score(1) & ((!player1_score(0)) # (!player1_score(2)))) # (!player1_score(1) & (player1_score(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player1_score(3),
	datab => player1_score(1),
	datac => player1_score(2),
	datad => player1_score(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X30_Y4_N16
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!player2_score(1) & (!player2_score(3) & (player2_score(0) $ (player2_score(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player2_score(1),
	datab => player2_score(0),
	datac => player2_score(3),
	datad => player2_score(2),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X29_Y4_N26
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (player2_score(2) & (player2_score(1) $ (player2_score(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player2_score(1),
	datab => player2_score(0),
	datad => player2_score(2),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X30_Y4_N18
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!player2_score(0) & (player2_score(1) & !player2_score(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => player2_score(0),
	datac => player2_score(1),
	datad => player2_score(2),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X30_Y4_N8
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!player2_score(3) & ((player2_score(1) & (player2_score(0) & player2_score(2))) # (!player2_score(1) & (player2_score(0) $ (player2_score(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player2_score(1),
	datab => player2_score(0),
	datac => player2_score(3),
	datad => player2_score(2),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X29_Y4_N24
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (player2_score(0)) # ((!player2_score(1) & player2_score(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player2_score(1),
	datab => player2_score(0),
	datad => player2_score(2),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X30_Y4_N14
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!player2_score(3) & ((player2_score(1) & ((player2_score(0)) # (!player2_score(2)))) # (!player2_score(1) & (player2_score(0) & !player2_score(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player2_score(1),
	datab => player2_score(0),
	datac => player2_score(3),
	datad => player2_score(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X30_Y4_N24
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (player2_score(3)) # ((player2_score(1) & ((!player2_score(2)) # (!player2_score(0)))) # (!player2_score(1) & ((player2_score(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => player2_score(1),
	datab => player2_score(0),
	datac => player2_score(3),
	datad => player2_score(2),
	combout => \Mux7~0_combout\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_player1_display(0) <= \player1_display[0]~output_o\;

ww_player1_display(1) <= \player1_display[1]~output_o\;

ww_player1_display(2) <= \player1_display[2]~output_o\;

ww_player1_display(3) <= \player1_display[3]~output_o\;

ww_player1_display(4) <= \player1_display[4]~output_o\;

ww_player1_display(5) <= \player1_display[5]~output_o\;

ww_player1_display(6) <= \player1_display[6]~output_o\;

ww_player2_display(0) <= \player2_display[0]~output_o\;

ww_player2_display(1) <= \player2_display[1]~output_o\;

ww_player2_display(2) <= \player2_display[2]~output_o\;

ww_player2_display(3) <= \player2_display[3]~output_o\;

ww_player2_display(4) <= \player2_display[4]~output_o\;

ww_player2_display(5) <= \player2_display[5]~output_o\;

ww_player2_display(6) <= \player2_display[6]~output_o\;
END structure;


