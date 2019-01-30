-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "01/29/2019 21:07:24"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DF9GMS IS
    PORT (
	Rst_N : IN std_logic;
	CLK : IN std_logic;
	pulse : OUT std_logic;
	switch : IN std_logic_vector(1 DOWNTO 0);
	read_data : OUT std_logic_vector(15 DOWNTO 0);
	read_enable : IN std_logic;
	chip_select : IN std_logic
	);
END DF9GMS;

-- Design Ports Information
-- pulse	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[0]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[1]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[2]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[3]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[4]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[5]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[6]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[7]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[8]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[9]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[10]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[11]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[12]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[13]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[14]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_data[15]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- read_enable	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chip_select	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst_N	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DF9GMS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Rst_N : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_pulse : std_logic;
SIGNAL ww_switch : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_read_data : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_read_enable : std_logic;
SIGNAL ww_chip_select : std_logic;
SIGNAL \read_enable~input_o\ : std_logic;
SIGNAL \chip_select~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Rst_N~input_o\ : std_logic;
SIGNAL \Count_Div[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Count_Div~2_combout\ : std_logic;
SIGNAL \Count_Div~0_combout\ : std_logic;
SIGNAL \Count_Div~4_combout\ : std_logic;
SIGNAL \Count_Div~5_combout\ : std_logic;
SIGNAL \Count_Div[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Count_Div~3_combout\ : std_logic;
SIGNAL \Count_Div[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Count_Div~1_combout\ : std_logic;
SIGNAL \Count_Div[3]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Tick1us~q\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \State.E1~q\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Count_us[8]~0_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \State.E3~q\ : std_logic;
SIGNAL \State.E0~0_combout\ : std_logic;
SIGNAL \State.E0~q\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \State.E2~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \pulse~reg0_q\ : std_logic;
SIGNAL Count_us : std_logic_vector(14 DOWNTO 0);
SIGNAL Count_Div : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_Count_Div[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_Div[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_Div[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_Div[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_switch[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_switch[0]~input_o\ : std_logic;
SIGNAL ALT_INV_Count_Div : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_Tick1us~q\ : std_logic;
SIGNAL \ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_State.E0~q\ : std_logic;
SIGNAL \ALT_INV_State.E3~q\ : std_logic;
SIGNAL \ALT_INV_State.E2~q\ : std_logic;
SIGNAL \ALT_INV_Equal4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \ALT_INV_State.E1~q\ : std_logic;
SIGNAL \ALT_INV_pulse~reg0_q\ : std_logic;
SIGNAL ALT_INV_Count_us : std_logic_vector(14 DOWNTO 0);

BEGIN

ww_Rst_N <= Rst_N;
ww_CLK <= CLK;
pulse <= ww_pulse;
ww_switch <= switch;
read_data <= ww_read_data;
ww_read_enable <= read_enable;
ww_chip_select <= chip_select;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Count_Div[1]~DUPLICATE_q\ <= NOT \Count_Div[1]~DUPLICATE_q\;
\ALT_INV_Count_Div[2]~DUPLICATE_q\ <= NOT \Count_Div[2]~DUPLICATE_q\;
\ALT_INV_Count_Div[3]~DUPLICATE_q\ <= NOT \Count_Div[3]~DUPLICATE_q\;
\ALT_INV_Count_Div[5]~DUPLICATE_q\ <= NOT \Count_Div[5]~DUPLICATE_q\;
\ALT_INV_switch[1]~input_o\ <= NOT \switch[1]~input_o\;
\ALT_INV_switch[0]~input_o\ <= NOT \switch[0]~input_o\;
ALT_INV_Count_Div(0) <= NOT Count_Div(0);
ALT_INV_Count_Div(1) <= NOT Count_Div(1);
ALT_INV_Count_Div(2) <= NOT Count_Div(2);
ALT_INV_Count_Div(3) <= NOT Count_Div(3);
ALT_INV_Count_Div(4) <= NOT Count_Div(4);
ALT_INV_Count_Div(5) <= NOT Count_Div(5);
\ALT_INV_Tick1us~q\ <= NOT \Tick1us~q\;
\ALT_INV_Selector17~1_combout\ <= NOT \Selector17~1_combout\;
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
\ALT_INV_State.E0~q\ <= NOT \State.E0~q\;
\ALT_INV_State.E3~q\ <= NOT \State.E3~q\;
\ALT_INV_State.E2~q\ <= NOT \State.E2~q\;
\ALT_INV_Equal4~3_combout\ <= NOT \Equal4~3_combout\;
\ALT_INV_Equal4~2_combout\ <= NOT \Equal4~2_combout\;
\ALT_INV_Equal4~1_combout\ <= NOT \Equal4~1_combout\;
\ALT_INV_Equal3~3_combout\ <= NOT \Equal3~3_combout\;
\ALT_INV_Equal3~2_combout\ <= NOT \Equal3~2_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_Equal4~0_combout\ <= NOT \Equal4~0_combout\;
\ALT_INV_State.E1~q\ <= NOT \State.E1~q\;
\ALT_INV_pulse~reg0_q\ <= NOT \pulse~reg0_q\;
ALT_INV_Count_us(10) <= NOT Count_us(10);
ALT_INV_Count_us(9) <= NOT Count_us(9);
ALT_INV_Count_us(3) <= NOT Count_us(3);
ALT_INV_Count_us(2) <= NOT Count_us(2);
ALT_INV_Count_us(4) <= NOT Count_us(4);
ALT_INV_Count_us(14) <= NOT Count_us(14);
ALT_INV_Count_us(6) <= NOT Count_us(6);
ALT_INV_Count_us(7) <= NOT Count_us(7);
ALT_INV_Count_us(8) <= NOT Count_us(8);
ALT_INV_Count_us(11) <= NOT Count_us(11);
ALT_INV_Count_us(5) <= NOT Count_us(5);
ALT_INV_Count_us(0) <= NOT Count_us(0);
ALT_INV_Count_us(12) <= NOT Count_us(12);
ALT_INV_Count_us(13) <= NOT Count_us(13);
ALT_INV_Count_us(1) <= NOT Count_us(1);

-- Location: IOOBUF_X65_Y0_N53
\pulse~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pulse~reg0_q\,
	devoe => ww_devoe,
	o => ww_pulse);

-- Location: IOOBUF_X57_Y0_N2
\read_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(0));

-- Location: IOOBUF_X68_Y11_N39
\read_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(1));

-- Location: IOOBUF_X44_Y0_N2
\read_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(2));

-- Location: IOOBUF_X4_Y0_N53
\read_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(3));

-- Location: IOOBUF_X44_Y0_N19
\read_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(4));

-- Location: IOOBUF_X62_Y0_N42
\read_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(5));

-- Location: IOOBUF_X38_Y0_N53
\read_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(6));

-- Location: IOOBUF_X15_Y0_N53
\read_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(7));

-- Location: IOOBUF_X12_Y0_N36
\read_data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(8));

-- Location: IOOBUF_X12_Y0_N2
\read_data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(9));

-- Location: IOOBUF_X6_Y0_N53
\read_data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(10));

-- Location: IOOBUF_X44_Y0_N53
\read_data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(11));

-- Location: IOOBUF_X42_Y0_N53
\read_data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(12));

-- Location: IOOBUF_X57_Y0_N19
\read_data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(13));

-- Location: IOOBUF_X2_Y61_N93
\read_data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(14));

-- Location: IOOBUF_X68_Y13_N22
\read_data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_read_data(15));

-- Location: IOIBUF_X15_Y0_N1
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G6
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X46_Y0_N35
\Rst_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst_N,
	o => \Rst_N~input_o\);

-- Location: FF_X43_Y2_N58
\Count_Div[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~4_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_Div[1]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y2_N12
\Count_Div~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_Div~2_combout\ = ( Count_Div(3) & ( Count_Div(4) & ( (!Count_Div(5) & ((!\Count_Div[2]~DUPLICATE_q\) # ((!Count_Div(0)) # (!Count_Div(1))))) ) ) ) # ( !Count_Div(3) & ( Count_Div(4) & ( (\Count_Div[2]~DUPLICATE_q\ & (Count_Div(0) & (!Count_Div(5) & 
-- Count_Div(1)))) ) ) ) # ( Count_Div(3) & ( !Count_Div(4) & ( (!\Count_Div[2]~DUPLICATE_q\) # ((!Count_Div(0)) # (!Count_Div(1))) ) ) ) # ( !Count_Div(3) & ( !Count_Div(4) & ( (\Count_Div[2]~DUPLICATE_q\ & (Count_Div(0) & Count_Div(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001111111111110111000000000000100001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count_Div[2]~DUPLICATE_q\,
	datab => ALT_INV_Count_Div(0),
	datac => ALT_INV_Count_Div(5),
	datad => ALT_INV_Count_Div(1),
	datae => ALT_INV_Count_Div(3),
	dataf => ALT_INV_Count_Div(4),
	combout => \Count_Div~2_combout\);

-- Location: FF_X43_Y2_N14
\Count_Div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~2_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_Div(3));

-- Location: LABCELL_X43_Y2_N24
\Count_Div~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_Div~0_combout\ = ( Count_Div(5) & ( Count_Div(4) & ( (!\Count_Div[2]~DUPLICATE_q\ & (!Count_Div(0) & (!\Count_Div[1]~DUPLICATE_q\ & !Count_Div(3)))) ) ) ) # ( !Count_Div(5) & ( Count_Div(4) & ( (\Count_Div[2]~DUPLICATE_q\ & (Count_Div(0) & 
-- (\Count_Div[1]~DUPLICATE_q\ & Count_Div(3)))) ) ) ) # ( Count_Div(5) & ( !Count_Div(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count_Div[2]~DUPLICATE_q\,
	datab => ALT_INV_Count_Div(0),
	datac => \ALT_INV_Count_Div[1]~DUPLICATE_q\,
	datad => ALT_INV_Count_Div(3),
	datae => ALT_INV_Count_Div(5),
	dataf => ALT_INV_Count_Div(4),
	combout => \Count_Div~0_combout\);

-- Location: FF_X43_Y2_N26
\Count_Div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~0_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_Div(5));

-- Location: LABCELL_X43_Y2_N57
\Count_Div~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_Div~4_combout\ = ( Count_Div(1) & ( Count_Div(4) & ( (!Count_Div(0) & !Count_Div(5)) ) ) ) # ( !Count_Div(1) & ( Count_Div(4) & ( (Count_Div(0) & !Count_Div(5)) ) ) ) # ( Count_Div(1) & ( !Count_Div(4) & ( !Count_Div(0) ) ) ) # ( !Count_Div(1) & ( 
-- !Count_Div(4) & ( Count_Div(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000001111000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Count_Div(0),
	datad => ALT_INV_Count_Div(5),
	datae => ALT_INV_Count_Div(1),
	dataf => ALT_INV_Count_Div(4),
	combout => \Count_Div~4_combout\);

-- Location: FF_X43_Y2_N59
\Count_Div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~4_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_Div(1));

-- Location: LABCELL_X43_Y2_N36
\Count_Div~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_Div~5_combout\ = ( !Count_Div(0) & ( Count_Div(4) & ( (!Count_Div(5)) # ((!\Count_Div[2]~DUPLICATE_q\ & (!Count_Div(1) & !Count_Div(3)))) ) ) ) # ( !Count_Div(0) & ( !Count_Div(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count_Div[2]~DUPLICATE_q\,
	datab => ALT_INV_Count_Div(1),
	datac => ALT_INV_Count_Div(5),
	datad => ALT_INV_Count_Div(3),
	datae => ALT_INV_Count_Div(0),
	dataf => ALT_INV_Count_Div(4),
	combout => \Count_Div~5_combout\);

-- Location: FF_X43_Y2_N37
\Count_Div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~5_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_Div(0));

-- Location: FF_X43_Y2_N25
\Count_Div[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~0_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_Div[5]~DUPLICATE_q\);

-- Location: FF_X45_Y2_N56
\Count_Div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~3_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_Div(2));

-- Location: LABCELL_X45_Y2_N54
\Count_Div~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_Div~3_combout\ = ( Count_Div(2) & ( \Count_Div[1]~DUPLICATE_q\ & ( (!Count_Div(0) & ((!Count_Div(4)) # (!\Count_Div[5]~DUPLICATE_q\))) ) ) ) # ( !Count_Div(2) & ( \Count_Div[1]~DUPLICATE_q\ & ( (Count_Div(0) & ((!Count_Div(4)) # 
-- (!\Count_Div[5]~DUPLICATE_q\))) ) ) ) # ( Count_Div(2) & ( !\Count_Div[1]~DUPLICATE_q\ & ( (!Count_Div(4)) # (!\Count_Div[5]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111000000110011001100001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Count_Div(0),
	datac => ALT_INV_Count_Div(4),
	datad => \ALT_INV_Count_Div[5]~DUPLICATE_q\,
	datae => ALT_INV_Count_Div(2),
	dataf => \ALT_INV_Count_Div[1]~DUPLICATE_q\,
	combout => \Count_Div~3_combout\);

-- Location: FF_X45_Y2_N55
\Count_Div[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~3_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_Div[2]~DUPLICATE_q\);

-- Location: LABCELL_X43_Y2_N18
\Count_Div~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_Div~1_combout\ = ( Count_Div(4) & ( \Count_Div[5]~DUPLICATE_q\ & ( (!\Count_Div[2]~DUPLICATE_q\ & (!Count_Div(0) & (!\Count_Div[1]~DUPLICATE_q\ & !Count_Div(3)))) ) ) ) # ( !Count_Div(4) & ( \Count_Div[5]~DUPLICATE_q\ & ( 
-- (\Count_Div[2]~DUPLICATE_q\ & (Count_Div(0) & (\Count_Div[1]~DUPLICATE_q\ & Count_Div(3)))) ) ) ) # ( Count_Div(4) & ( !\Count_Div[5]~DUPLICATE_q\ & ( (!\Count_Div[2]~DUPLICATE_q\) # ((!Count_Div(0)) # ((!\Count_Div[1]~DUPLICATE_q\) # (!Count_Div(3)))) ) 
-- ) ) # ( !Count_Div(4) & ( !\Count_Div[5]~DUPLICATE_q\ & ( (\Count_Div[2]~DUPLICATE_q\ & (Count_Div(0) & (\Count_Div[1]~DUPLICATE_q\ & Count_Div(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111000000000000000011000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count_Div[2]~DUPLICATE_q\,
	datab => ALT_INV_Count_Div(0),
	datac => \ALT_INV_Count_Div[1]~DUPLICATE_q\,
	datad => ALT_INV_Count_Div(3),
	datae => ALT_INV_Count_Div(4),
	dataf => \ALT_INV_Count_Div[5]~DUPLICATE_q\,
	combout => \Count_Div~1_combout\);

-- Location: FF_X43_Y2_N19
\Count_Div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~1_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_Div(4));

-- Location: FF_X43_Y2_N13
\Count_Div[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~2_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_Div[3]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y2_N48
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( Count_Div(2) & ( \Count_Div[1]~DUPLICATE_q\ & ( (Count_Div(4) & \Count_Div[5]~DUPLICATE_q\) ) ) ) # ( !Count_Div(2) & ( \Count_Div[1]~DUPLICATE_q\ & ( (Count_Div(4) & \Count_Div[5]~DUPLICATE_q\) ) ) ) # ( Count_Div(2) & ( 
-- !\Count_Div[1]~DUPLICATE_q\ & ( (Count_Div(4) & \Count_Div[5]~DUPLICATE_q\) ) ) ) # ( !Count_Div(2) & ( !\Count_Div[1]~DUPLICATE_q\ & ( (Count_Div(4) & (\Count_Div[5]~DUPLICATE_q\ & ((Count_Div(0)) # (\Count_Div[3]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count_Div(4),
	datab => \ALT_INV_Count_Div[5]~DUPLICATE_q\,
	datac => \ALT_INV_Count_Div[3]~DUPLICATE_q\,
	datad => ALT_INV_Count_Div(0),
	datae => ALT_INV_Count_Div(2),
	dataf => \ALT_INV_Count_Div[1]~DUPLICATE_q\,
	combout => \LessThan0~0_combout\);

-- Location: FF_X45_Y2_N50
Tick1us : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \LessThan0~0_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tick1us~q\);

-- Location: LABCELL_X45_Y2_N0
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( Count_us(0) ) + ( \Tick1us~q\ ) + ( !VCC ))
-- \Add1~14\ = CARRY(( Count_us(0) ) + ( \Tick1us~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Tick1us~q\,
	datad => ALT_INV_Count_us(0),
	cin => GND,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X46_Y2_N45
\Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = ( !Count_us(2) & ( (Count_us(5) & (Count_us(9) & (!Count_us(3) & !Count_us(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count_us(5),
	datab => ALT_INV_Count_us(9),
	datac => ALT_INV_Count_us(3),
	datad => ALT_INV_Count_us(4),
	dataf => ALT_INV_Count_us(2),
	combout => \Equal4~2_combout\);

-- Location: LABCELL_X45_Y2_N30
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( Count_us(10) ) + ( GND ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( Count_us(10) ) + ( GND ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Count_us(10),
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: LABCELL_X45_Y2_N33
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( Count_us(11) ) + ( GND ) + ( \Add1~58\ ))
-- \Add1~22\ = CARRY(( Count_us(11) ) + ( GND ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count_us(11),
	cin => \Add1~58\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: LABCELL_X46_Y2_N3
\Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = ( \State.E1~q\ & ( !\State.E3~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.E3~q\,
	dataf => \ALT_INV_State.E1~q\,
	combout => \Selector17~1_combout\);

-- Location: IOIBUF_X4_Y61_N52
\switch[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: IOIBUF_X4_Y61_N35
\switch[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: LABCELL_X46_Y2_N12
\Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = ( Count_us(3) & ( Count_us(9) & ( (!\switch[1]~input_o\ & (!Count_us(2) & (!Count_us(10) & \switch[0]~input_o\))) ) ) ) # ( !Count_us(3) & ( Count_us(9) & ( (\switch[1]~input_o\ & (!Count_us(2) & (Count_us(10) & 
-- !\switch[0]~input_o\))) ) ) ) # ( !Count_us(3) & ( !Count_us(9) & ( (Count_us(2) & (!Count_us(10) & (!\switch[1]~input_o\ $ (\switch[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000000000000000000000000100000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch[1]~input_o\,
	datab => ALT_INV_Count_us(2),
	datac => ALT_INV_Count_us(10),
	datad => \ALT_INV_switch[0]~input_o\,
	datae => ALT_INV_Count_us(3),
	dataf => ALT_INV_Count_us(9),
	combout => \Equal3~2_combout\);

-- Location: LABCELL_X45_Y2_N36
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( Count_us(12) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~10\ = CARRY(( Count_us(12) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Count_us(12),
	cin => \Add1~22\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X45_Y2_N39
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( Count_us(13) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~6\ = CARRY(( Count_us(13) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Count_us(13),
	cin => \Add1~10\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X45_Y2_N41
\Count_us[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~5_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(13));

-- Location: LABCELL_X45_Y2_N42
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( Count_us(14) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Count_us(14),
	cin => \Add1~6\,
	sumout => \Add1~37_sumout\);

-- Location: FF_X46_Y2_N23
\Count_us[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add1~37_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	sload => VCC,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(14));

-- Location: LABCELL_X46_Y2_N18
\Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( Count_us(7) & ( Count_us(4) & ( (!\switch[0]~input_o\ & (Count_us(8) & (!Count_us(14) & Count_us(6)))) ) ) ) # ( Count_us(7) & ( !Count_us(4) & ( (\switch[0]~input_o\ & (Count_us(8) & (!Count_us(14) & Count_us(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_switch[0]~input_o\,
	datab => ALT_INV_Count_us(8),
	datac => ALT_INV_Count_us(14),
	datad => ALT_INV_Count_us(6),
	datae => ALT_INV_Count_us(7),
	dataf => ALT_INV_Count_us(4),
	combout => \Equal3~1_combout\);

-- Location: LABCELL_X46_Y2_N42
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( !\State.E3~q\ & ( !\State.E0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_State.E0~q\,
	dataf => \ALT_INV_State.E3~q\,
	combout => \Selector17~0_combout\);

-- Location: LABCELL_X46_Y2_N54
\Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( Count_us(5) & ( (!\switch[1]~input_o\ & !Count_us(11)) ) ) # ( !Count_us(5) & ( (\switch[1]~input_o\ & (!\switch[0]~input_o\ $ (Count_us(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000011001100000000001111001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_switch[1]~input_o\,
	datac => \ALT_INV_switch[0]~input_o\,
	datad => ALT_INV_Count_us(11),
	dataf => ALT_INV_Count_us(5),
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X46_Y2_N6
\Selector17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = ( \Equal3~0_combout\ & ( \Equal4~0_combout\ & ( ((\Selector17~1_combout\ & ((!\Equal3~2_combout\) # (!\Equal3~1_combout\)))) # (\Selector17~0_combout\) ) ) ) # ( !\Equal3~0_combout\ & ( \Equal4~0_combout\ & ( 
-- (\Selector17~0_combout\) # (\Selector17~1_combout\) ) ) ) # ( \Equal3~0_combout\ & ( !\Equal4~0_combout\ & ( (\Selector17~0_combout\) # (\Selector17~1_combout\) ) ) ) # ( !\Equal3~0_combout\ & ( !\Equal4~0_combout\ & ( (\Selector17~0_combout\) # 
-- (\Selector17~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010101111111110101010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector17~1_combout\,
	datab => \ALT_INV_Equal3~2_combout\,
	datac => \ALT_INV_Equal3~1_combout\,
	datad => \ALT_INV_Selector17~0_combout\,
	datae => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \Selector17~2_combout\);

-- Location: FF_X46_Y2_N41
\State.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Selector17~2_combout\,
	clrn => \Rst_N~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.E1~q\);

-- Location: LABCELL_X46_Y2_N57
\Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = ( \Equal3~2_combout\ & ( (\Equal3~1_combout\ & (\Equal4~0_combout\ & \Equal3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal3~1_combout\,
	datac => \ALT_INV_Equal4~0_combout\,
	datad => \ALT_INV_Equal3~0_combout\,
	dataf => \ALT_INV_Equal3~2_combout\,
	combout => \Equal3~3_combout\);

-- Location: LABCELL_X46_Y2_N0
\Count_us[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_us[8]~0_combout\ = ( \Equal3~3_combout\ & ( (!\State.E3~q\ & ((!\State.E2~q\ & (!\State.E1~q\)) # (\State.E2~q\ & ((!\Equal4~3_combout\))))) ) ) # ( !\Equal3~3_combout\ & ( (!\State.E3~q\ & ((!\Equal4~3_combout\) # (!\State.E2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000010001000110000001000100011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.E1~q\,
	datab => \ALT_INV_State.E3~q\,
	datac => \ALT_INV_Equal4~3_combout\,
	datad => \ALT_INV_State.E2~q\,
	dataf => \ALT_INV_Equal3~3_combout\,
	combout => \Count_us[8]~0_combout\);

-- Location: FF_X45_Y2_N35
\Count_us[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~21_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(11));

-- Location: FF_X46_Y2_N32
\Count_us[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add1~9_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	sload => VCC,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(12));

-- Location: LABCELL_X46_Y2_N51
\Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = ( !Count_us(1) & ( (!Count_us(12) & (!Count_us(13) & !Count_us(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Count_us(12),
	datac => ALT_INV_Count_us(13),
	datad => ALT_INV_Count_us(0),
	dataf => ALT_INV_Count_us(1),
	combout => \Equal4~0_combout\);

-- Location: LABCELL_X46_Y2_N33
\Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = ( !Count_us(6) & ( (Count_us(14) & (Count_us(11) & (!Count_us(8) & !Count_us(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count_us(14),
	datab => ALT_INV_Count_us(11),
	datac => ALT_INV_Count_us(8),
	datad => ALT_INV_Count_us(7),
	dataf => ALT_INV_Count_us(6),
	combout => \Equal4~1_combout\);

-- Location: LABCELL_X46_Y2_N24
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \Equal4~1_combout\ & ( (\State.E2~q\ & (\Equal4~2_combout\ & (Count_us(10) & \Equal4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.E2~q\,
	datab => \ALT_INV_Equal4~2_combout\,
	datac => ALT_INV_Count_us(10),
	datad => \ALT_INV_Equal4~0_combout\,
	dataf => \ALT_INV_Equal4~1_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X46_Y2_N25
\State.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Selector19~0_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.E3~q\);

-- Location: LABCELL_X46_Y2_N30
\State.E0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \State.E0~0_combout\ = ( !\State.E3~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_State.E3~q\,
	combout => \State.E0~0_combout\);

-- Location: FF_X45_Y2_N47
\State.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \State.E0~0_combout\,
	clrn => \Rst_N~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.E0~q\);

-- Location: FF_X45_Y2_N2
\Count_us[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~13_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(0));

-- Location: LABCELL_X45_Y2_N3
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( Count_us(1) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~2\ = CARRY(( Count_us(1) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Count_us(1),
	cin => \Add1~14\,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: FF_X46_Y2_N44
\Count_us[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add1~1_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	sload => VCC,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(1));

-- Location: LABCELL_X45_Y2_N6
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( Count_us(2) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~46\ = CARRY(( Count_us(2) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Count_us(2),
	cin => \Add1~2\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X46_Y2_N8
\Count_us[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add1~45_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	sload => VCC,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(2));

-- Location: LABCELL_X45_Y2_N9
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( Count_us(3) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( Count_us(3) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Count_us(3),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X46_Y2_N14
\Count_us[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add1~49_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	sload => VCC,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(3));

-- Location: LABCELL_X45_Y2_N12
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( Count_us(4) ) + ( GND ) + ( \Add1~50\ ))
-- \Add1~42\ = CARRY(( Count_us(4) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Count_us(4),
	cin => \Add1~50\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X45_Y2_N14
\Count_us[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~41_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(4));

-- Location: LABCELL_X45_Y2_N15
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( Count_us(5) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~18\ = CARRY(( Count_us(5) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Count_us(5),
	cin => \Add1~42\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X46_Y2_N5
\Count_us[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add1~17_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	sload => VCC,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(5));

-- Location: LABCELL_X45_Y2_N18
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( Count_us(6) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~34\ = CARRY(( Count_us(6) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Count_us(6),
	cin => \Add1~18\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X46_Y2_N11
\Count_us[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add1~33_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	sload => VCC,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(6));

-- Location: LABCELL_X45_Y2_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( Count_us(7) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~30\ = CARRY(( Count_us(7) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Count_us(7),
	cin => \Add1~34\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X45_Y2_N23
\Count_us[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~29_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(7));

-- Location: LABCELL_X45_Y2_N24
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( Count_us(8) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~26\ = CARRY(( Count_us(8) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Count_us(8),
	cin => \Add1~30\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X46_Y2_N17
\Count_us[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add1~25_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	sload => VCC,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(8));

-- Location: LABCELL_X45_Y2_N27
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( Count_us(9) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~54\ = CARRY(( Count_us(9) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Count_us(9),
	cin => \Add1~26\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: FF_X45_Y2_N29
\Count_us[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~53_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(9));

-- Location: FF_X45_Y2_N32
\Count_us[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add1~57_sumout\,
	clrn => \Rst_N~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(10));

-- Location: LABCELL_X46_Y2_N48
\Equal4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = ( \Equal4~0_combout\ & ( (Count_us(10) & (\Equal4~1_combout\ & \Equal4~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count_us(10),
	datac => \ALT_INV_Equal4~1_combout\,
	datad => \ALT_INV_Equal4~2_combout\,
	dataf => \ALT_INV_Equal4~0_combout\,
	combout => \Equal4~3_combout\);

-- Location: LABCELL_X46_Y2_N27
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \State.E1~q\ & ( ((\State.E2~q\ & !\Equal4~3_combout\)) # (\Equal3~3_combout\) ) ) # ( !\State.E1~q\ & ( (\State.E2~q\ & !\Equal4~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.E2~q\,
	datac => \ALT_INV_Equal4~3_combout\,
	datad => \ALT_INV_Equal3~3_combout\,
	dataf => \ALT_INV_State.E1~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X46_Y2_N29
\State.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Selector18~0_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.E2~q\);

-- Location: LABCELL_X46_Y2_N36
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \pulse~reg0_q\ & ( \State.E1~q\ & ( (!\Equal3~3_combout\ & ((!\State.E2~q\) # (!\Equal4~3_combout\))) ) ) ) # ( \pulse~reg0_q\ & ( !\State.E1~q\ & ( (!\State.E2~q\) # (!\Equal4~3_combout\) ) ) ) # ( !\pulse~reg0_q\ & ( 
-- !\State.E1~q\ & ( (!\State.E2~q\ & !\State.E3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000111111111010101000000000000000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.E2~q\,
	datab => \ALT_INV_State.E3~q\,
	datac => \ALT_INV_Equal3~3_combout\,
	datad => \ALT_INV_Equal4~3_combout\,
	datae => \ALT_INV_pulse~reg0_q\,
	dataf => \ALT_INV_State.E1~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X46_Y2_N37
\pulse~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Selector15~0_combout\,
	clrn => \Rst_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse~reg0_q\);

-- Location: IOIBUF_X4_Y61_N1
\read_enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_read_enable,
	o => \read_enable~input_o\);

-- Location: IOIBUF_X4_Y61_N18
\chip_select~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_chip_select,
	o => \chip_select~input_o\);

-- Location: LABCELL_X65_Y14_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


