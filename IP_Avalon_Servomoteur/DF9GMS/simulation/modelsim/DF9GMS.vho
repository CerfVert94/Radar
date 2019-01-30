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

-- DATE "01/30/2019 03:36:08"

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
	RST_n : IN std_logic;
	CLK : IN std_logic;
	pulse : BUFFER std_logic;
	address : IN std_logic;
	write_data : IN std_logic_vector(7 DOWNTO 0);
	write_n : IN std_logic;
	chip_select : IN std_logic
	);
END DF9GMS;

-- Design Ports Information
-- pulse	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_n	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_n	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chip_select	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[0]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[1]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[2]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[3]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[4]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[5]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[6]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- write_data[7]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_RST_n : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_pulse : std_logic;
SIGNAL ww_address : std_logic;
SIGNAL ww_write_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_write_n : std_logic;
SIGNAL ww_chip_select : std_logic;
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \RST_n~input_o\ : std_logic;
SIGNAL \State.E3~DUPLICATE_q\ : std_logic;
SIGNAL \write_data[0]~input_o\ : std_logic;
SIGNAL \write_data[1]~input_o\ : std_logic;
SIGNAL \write_data[2]~input_o\ : std_logic;
SIGNAL \write_data[3]~input_o\ : std_logic;
SIGNAL \write_data[4]~input_o\ : std_logic;
SIGNAL \write_data[5]~input_o\ : std_logic;
SIGNAL \write_data[6]~input_o\ : std_logic;
SIGNAL \write_data[7]~input_o\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~31\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~34\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~35\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~23\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[69]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~29_sumout\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~42_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~34\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~38\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[69]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[67]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[66]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[65]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[64]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[63]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_18~29_sumout\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~30_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~34\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~38\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~42\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[77]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[76]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[76]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[75]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~41_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[74]~78_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[73]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~9_sumout\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~30_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~34\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~38\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~42\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_19~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[78]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[78]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[84]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~41_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[83]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[83]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[82]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[81]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~9_sumout\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~42_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~34\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~38\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[96]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[95]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[94]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[94]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[93]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[92]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[91]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[90]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~25_sumout\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~42_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~38\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~34\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[102]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[101]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[100]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[99]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~37_sumout\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~42_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~38\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~34\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[114]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[113]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[112]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[111]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[110]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[109]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~37_sumout\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~42_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~38\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~34\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[118]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[117]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~37_sumout\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~42_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~38\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~34\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[129]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~91_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~37_sumout\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~42_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~38\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~34\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~1_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Duty_Cycle[6]~2_combout\ : std_logic;
SIGNAL \address~input_o\ : std_logic;
SIGNAL \chip_select~input_o\ : std_logic;
SIGNAL \write_n~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Duty_Cycle[5]~1_combout\ : std_logic;
SIGNAL \Count_us[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Count_Div~2_combout\ : std_logic;
SIGNAL \Count_Div~1_combout\ : std_logic;
SIGNAL \Count_Div~3_combout\ : std_logic;
SIGNAL \Count_Div~5_combout\ : std_logic;
SIGNAL \Count_Div[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Count_Div~4_combout\ : std_logic;
SIGNAL \Count_Div~0_combout\ : std_logic;
SIGNAL \Count_Div[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Count_Div[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Count_Div[4]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Tick1us~q\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Count_us[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~57_sumout\ : std_logic;
SIGNAL \Count_us[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~58\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Count_us[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~54\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Count_us[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Duty_Cycle[7]~3_combout\ : std_logic;
SIGNAL \Count_us[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[139]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[139]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~103_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~105_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~37_sumout\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~42_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~38\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~34\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~30\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~26\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~1_sumout\ : std_logic;
SIGNAL \Duty_Cycle[1]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[150]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[150]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[149]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~104_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~106_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[144]~107_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~37_sumout\ : std_logic;
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~42_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~38_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~34_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~30_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~1_sumout\ : std_logic;
SIGNAL \Duty_Cycle[0]~4_combout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Count_us[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Count_us[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Count_us[11]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Count_us[14]~DUPLICATE_q\ : std_logic;
SIGNAL \Count_us[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Duty_Cycle[8]~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Duty_Cycle[2]~6_combout\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Duty_Cycle[4]~7_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \State.E2~q\ : std_logic;
SIGNAL \Count_us[13]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \State.E2~DUPLICATE_q\ : std_logic;
SIGNAL \Count_us[14]~0_combout\ : std_logic;
SIGNAL \Count_us[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \State.E3~q\ : std_logic;
SIGNAL \State.E0~0_combout\ : std_logic;
SIGNAL \State.E0~q\ : std_logic;
SIGNAL \Count_us[12]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \State.E1~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \pulse~reg0_q\ : std_logic;
SIGNAL Count_us : std_logic_vector(14 DOWNTO 0);
SIGNAL Duty_Cycle : std_logic_vector(11 DOWNTO 0);
SIGNAL Count_Div : std_logic_vector(5 DOWNTO 0);
SIGNAL ALT_INV_Count_us : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_Count_Div[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_Div[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_Div[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_Div[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_State.E3~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_State.E2~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[9]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[14]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Count_us[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_chip_select~input_o\ : std_logic;
SIGNAL \ALT_INV_write_n~input_o\ : std_logic;
SIGNAL \ALT_INV_address~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[144]~107_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[145]~106_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[135]~105_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~104_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[136]~103_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[126]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[147]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[127]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[138]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[128]~91_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[118]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[108]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[128]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[104]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[94]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~78_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[94]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[123]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[113]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[103]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[93]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[83]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[73]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[63]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[83]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[103]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[123]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[102]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[149]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[139]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[129]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[119]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[109]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[99]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[119]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[139]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[86]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[95]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[78]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[78]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[131]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[111]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[91]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[150]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[150]~0_combout\ : std_logic;
SIGNAL ALT_INV_Count_Div : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_Tick1us~q\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_State.E0~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector18~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL ALT_INV_Duty_Cycle : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_State.E3~q\ : std_logic;
SIGNAL \ALT_INV_State.E2~q\ : std_logic;
SIGNAL \ALT_INV_State.E1~q\ : std_logic;
SIGNAL \ALT_INV_pulse~reg0_q\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[1]~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~41_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~41_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[0]~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~37_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~33_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[4]~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[3]~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[2]~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[6]~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Mult0~26\ : std_logic;
SIGNAL \ALT_INV_Mult0~25\ : std_logic;
SIGNAL \ALT_INV_Mult0~24\ : std_logic;
SIGNAL \ALT_INV_Mult0~23\ : std_logic;
SIGNAL \ALT_INV_Mult0~22\ : std_logic;
SIGNAL \ALT_INV_Mult0~21\ : std_logic;
SIGNAL \ALT_INV_Mult0~20\ : std_logic;
SIGNAL \ALT_INV_Mult0~19\ : std_logic;
SIGNAL \ALT_INV_Mult0~18\ : std_logic;
SIGNAL \ALT_INV_Mult0~17\ : std_logic;
SIGNAL \ALT_INV_Mult0~16\ : std_logic;
SIGNAL \ALT_INV_Mult0~15\ : std_logic;
SIGNAL \ALT_INV_Mult0~14\ : std_logic;
SIGNAL \ALT_INV_Mult0~13\ : std_logic;
SIGNAL \ALT_INV_Mult0~12\ : std_logic;
SIGNAL \ALT_INV_Mult0~11\ : std_logic;
SIGNAL \ALT_INV_Mult0~10\ : std_logic;
SIGNAL \ALT_INV_Mult0~9\ : std_logic;
SIGNAL \ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[7]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;

BEGIN

ww_RST_n <= RST_n;
ww_CLK <= CLK;
pulse <= ww_pulse;
ww_address <= address;
ww_write_data <= write_data;
ww_write_n <= write_n;
ww_chip_select <= chip_select;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~8_AX_bus\ <= (\write_data[7]~input_o\ & \write_data[6]~input_o\ & \write_data[5]~input_o\ & \write_data[4]~input_o\ & \write_data[3]~input_o\ & \write_data[2]~input_o\ & \write_data[1]~input_o\ & \write_data[0]~input_o\);

\Mult0~8_AY_bus\ <= (vcc & vcc & vcc & vcc & vcc & gnd & vcc & gnd & gnd & gnd & gnd);

\Mult0~8_resulta\ <= \Mult0~8_RESULTA_bus\(0);
\Mult0~9\ <= \Mult0~8_RESULTA_bus\(1);
\Mult0~10\ <= \Mult0~8_RESULTA_bus\(2);
\Mult0~11\ <= \Mult0~8_RESULTA_bus\(3);
\Mult0~12\ <= \Mult0~8_RESULTA_bus\(4);
\Mult0~13\ <= \Mult0~8_RESULTA_bus\(5);
\Mult0~14\ <= \Mult0~8_RESULTA_bus\(6);
\Mult0~15\ <= \Mult0~8_RESULTA_bus\(7);
\Mult0~16\ <= \Mult0~8_RESULTA_bus\(8);
\Mult0~17\ <= \Mult0~8_RESULTA_bus\(9);
\Mult0~18\ <= \Mult0~8_RESULTA_bus\(10);
\Mult0~19\ <= \Mult0~8_RESULTA_bus\(11);
\Mult0~20\ <= \Mult0~8_RESULTA_bus\(12);
\Mult0~21\ <= \Mult0~8_RESULTA_bus\(13);
\Mult0~22\ <= \Mult0~8_RESULTA_bus\(14);
\Mult0~23\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);
ALT_INV_Count_us(2) <= NOT Count_us(2);
ALT_INV_Count_us(3) <= NOT Count_us(3);
ALT_INV_Count_us(4) <= NOT Count_us(4);
ALT_INV_Count_us(5) <= NOT Count_us(5);
ALT_INV_Count_us(6) <= NOT Count_us(6);
ALT_INV_Count_us(8) <= NOT Count_us(8);
ALT_INV_Count_us(9) <= NOT Count_us(9);
ALT_INV_Count_us(10) <= NOT Count_us(10);
ALT_INV_Count_us(11) <= NOT Count_us(11);
ALT_INV_Count_us(14) <= NOT Count_us(14);
ALT_INV_Count_us(12) <= NOT Count_us(12);
ALT_INV_Count_us(13) <= NOT Count_us(13);
ALT_INV_Count_us(0) <= NOT Count_us(0);
ALT_INV_Count_us(1) <= NOT Count_us(1);
ALT_INV_Count_us(7) <= NOT Count_us(7);
\ALT_INV_Count_Div[0]~DUPLICATE_q\ <= NOT \Count_Div[0]~DUPLICATE_q\;
\ALT_INV_Count_Div[2]~DUPLICATE_q\ <= NOT \Count_Div[2]~DUPLICATE_q\;
\ALT_INV_Count_Div[4]~DUPLICATE_q\ <= NOT \Count_Div[4]~DUPLICATE_q\;
\ALT_INV_Count_Div[5]~DUPLICATE_q\ <= NOT \Count_Div[5]~DUPLICATE_q\;
\ALT_INV_State.E3~DUPLICATE_q\ <= NOT \State.E3~DUPLICATE_q\;
\ALT_INV_State.E2~DUPLICATE_q\ <= NOT \State.E2~DUPLICATE_q\;
\ALT_INV_Count_us[2]~DUPLICATE_q\ <= NOT \Count_us[2]~DUPLICATE_q\;
\ALT_INV_Count_us[3]~DUPLICATE_q\ <= NOT \Count_us[3]~DUPLICATE_q\;
\ALT_INV_Count_us[4]~DUPLICATE_q\ <= NOT \Count_us[4]~DUPLICATE_q\;
\ALT_INV_Count_us[5]~DUPLICATE_q\ <= NOT \Count_us[5]~DUPLICATE_q\;
\ALT_INV_Count_us[6]~DUPLICATE_q\ <= NOT \Count_us[6]~DUPLICATE_q\;
\ALT_INV_Count_us[8]~DUPLICATE_q\ <= NOT \Count_us[8]~DUPLICATE_q\;
\ALT_INV_Count_us[9]~DUPLICATE_q\ <= NOT \Count_us[9]~DUPLICATE_q\;
\ALT_INV_Count_us[11]~DUPLICATE_q\ <= NOT \Count_us[11]~DUPLICATE_q\;
\ALT_INV_Count_us[14]~DUPLICATE_q\ <= NOT \Count_us[14]~DUPLICATE_q\;
\ALT_INV_Count_us[12]~DUPLICATE_q\ <= NOT \Count_us[12]~DUPLICATE_q\;
\ALT_INV_Count_us[13]~DUPLICATE_q\ <= NOT \Count_us[13]~DUPLICATE_q\;
\ALT_INV_Count_us[0]~DUPLICATE_q\ <= NOT \Count_us[0]~DUPLICATE_q\;
\ALT_INV_Count_us[1]~DUPLICATE_q\ <= NOT \Count_us[1]~DUPLICATE_q\;
\ALT_INV_Count_us[7]~DUPLICATE_q\ <= NOT \Count_us[7]~DUPLICATE_q\;
\ALT_INV_chip_select~input_o\ <= NOT \chip_select~input_o\;
\ALT_INV_write_n~input_o\ <= NOT \write_n~input_o\;
\ALT_INV_address~input_o\ <= NOT \address~input_o\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[144]~107_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[144]~107_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[145]~106_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[145]~106_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[135]~105_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[135]~105_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~104_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[146]~104_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[136]~103_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[136]~103_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[126]~102_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[126]~102_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~101_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[146]~101_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[147]~100_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[147]~100_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~99_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[137]~99_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[127]~98_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[127]~98_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~97_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[117]~97_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~96_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[137]~96_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~95_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[64]~95_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~94_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[64]~94_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~93_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[148]~93_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[138]~92_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[138]~92_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[128]~91_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[128]~91_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[118]~90_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[118]~90_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[108]~89_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[108]~89_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[128]~88_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[128]~88_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~87_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[148]~87_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~86_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[66]~86_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~85_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[66]~85_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~84_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[68]~84_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~83_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[68]~83_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~82_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[114]~82_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[104]~81_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[104]~81_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[94]~80_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[94]~80_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~79_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[84]~79_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~78_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[74]~78_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~77_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[64]~77_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~76_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[74]~76_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[94]~75_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[94]~75_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~74_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[114]~74_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[123]~73_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[123]~73_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[113]~72_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[113]~72_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[103]~71_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[103]~71_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[93]~70_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[93]~70_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[83]~69_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[83]~69_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[73]~68_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[73]~68_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[63]~67_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[63]~67_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[83]~66_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[83]~66_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[103]~65_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[103]~65_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[123]~64_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[123]~64_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~63_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[132]~63_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~62_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[122]~62_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~61_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[112]~61_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[102]~60_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[102]~60_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~59_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[92]~59_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~58_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[82]~58_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~57_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[72]~57_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~56_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[92]~56_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~55_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[112]~55_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~54_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[132]~54_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[149]~53_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[149]~53_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[139]~52_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[139]~52_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[129]~51_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[129]~51_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[119]~50_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[119]~50_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[109]~49_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[109]~49_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[99]~48_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[99]~48_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[119]~47_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[119]~47_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[139]~46_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[139]~46_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~45_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[87]~45_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~44_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[77]~44_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~43_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[67]~43_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~42_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[67]~42_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~41_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[87]~41_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~40_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[96]~40_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[86]~39_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[86]~39_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~38_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[76]~38_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~37_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[66]~37_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~36_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[76]~36_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~35_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[96]~35_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~34_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[105]~34_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[95]~33_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[95]~33_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~32_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[85]~32_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~31_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[75]~31_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~30_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[65]~30_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~29_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[65]~29_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~28_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[85]~28_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~27_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[105]~27_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~26_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[70]~26_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~25_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[70]~25_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~24_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[69]~24_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~23_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[69]~23_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[78]~22_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[78]~22_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~21_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[68]~21_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[78]~20_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[78]~20_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~19_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[141]~19_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[131]~18_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[131]~18_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~17_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[121]~17_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[111]~16_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[111]~16_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~15_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[101]~15_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[91]~14_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[91]~14_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~13_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[81]~13_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[101]~12_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~11_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[121]~11_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~10_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[141]~10_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[150]~9_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[150]~9_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~8_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[140]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~7_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[130]~7_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~6_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[120]~6_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~5_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[110]~5_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~4_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[100]~4_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~3_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[90]~3_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~2_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[110]~2_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~1_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[130]~1_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[150]~0_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[150]~0_combout\;
ALT_INV_Count_Div(0) <= NOT Count_Div(0);
ALT_INV_Count_Div(1) <= NOT Count_Div(1);
ALT_INV_Count_Div(2) <= NOT Count_Div(2);
ALT_INV_Count_Div(3) <= NOT Count_Div(3);
ALT_INV_Count_Div(4) <= NOT Count_Div(4);
ALT_INV_Count_Div(5) <= NOT Count_Div(5);
\ALT_INV_Tick1us~q\ <= NOT \Tick1us~q\;
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_State.E0~q\ <= NOT \State.E0~q\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Selector18~0_combout\ <= NOT \Selector18~0_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
ALT_INV_Duty_Cycle(4) <= NOT Duty_Cycle(4);
ALT_INV_Duty_Cycle(3) <= NOT Duty_Cycle(3);
ALT_INV_Duty_Cycle(2) <= NOT Duty_Cycle(2);
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
ALT_INV_Duty_Cycle(1) <= NOT Duty_Cycle(1);
ALT_INV_Duty_Cycle(0) <= NOT Duty_Cycle(0);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
ALT_INV_Duty_Cycle(7) <= NOT Duty_Cycle(7);
ALT_INV_Duty_Cycle(6) <= NOT Duty_Cycle(6);
ALT_INV_Duty_Cycle(5) <= NOT Duty_Cycle(5);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_Duty_Cycle(10) <= NOT Duty_Cycle(10);
ALT_INV_Duty_Cycle(9) <= NOT Duty_Cycle(9);
ALT_INV_Duty_Cycle(8) <= NOT Duty_Cycle(8);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_Duty_Cycle(11) <= NOT Duty_Cycle(11);
\ALT_INV_Selector19~0_combout\ <= NOT \Selector19~0_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_State.E3~q\ <= NOT \State.E3~q\;
\ALT_INV_State.E2~q\ <= NOT \State.E2~q\;
\ALT_INV_State.E1~q\ <= NOT \State.E1~q\;
\ALT_INV_pulse~reg0_q\ <= NOT \pulse~reg0_q\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~37_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~37_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~33_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~37_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~37_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~33_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~33_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~37_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~37_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~37_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~37_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~33_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~33_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~33_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~37_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~37_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[1]~33_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~33_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~41_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~41_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~37_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~37_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~37_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~37_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~41_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~41_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~33_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~33_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~33_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~33_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[0]~29_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~37_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~37_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~37_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~37_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~29_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~33_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~33_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~33_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~33_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~29_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~29_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~33_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~33_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[4]~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[3]~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[2]~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[6]~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~9_sumout\;
\ALT_INV_Mult0~26\ <= NOT \Mult0~26\;
\ALT_INV_Mult0~25\ <= NOT \Mult0~25\;
\ALT_INV_Mult0~24\ <= NOT \Mult0~24\;
\ALT_INV_Mult0~23\ <= NOT \Mult0~23\;
\ALT_INV_Mult0~22\ <= NOT \Mult0~22\;
\ALT_INV_Mult0~21\ <= NOT \Mult0~21\;
\ALT_INV_Mult0~20\ <= NOT \Mult0~20\;
\ALT_INV_Mult0~19\ <= NOT \Mult0~19\;
\ALT_INV_Mult0~18\ <= NOT \Mult0~18\;
\ALT_INV_Mult0~17\ <= NOT \Mult0~17\;
\ALT_INV_Mult0~16\ <= NOT \Mult0~16\;
\ALT_INV_Mult0~15\ <= NOT \Mult0~15\;
\ALT_INV_Mult0~14\ <= NOT \Mult0~14\;
\ALT_INV_Mult0~13\ <= NOT \Mult0~13\;
\ALT_INV_Mult0~12\ <= NOT \Mult0~12\;
\ALT_INV_Mult0~11\ <= NOT \Mult0~11\;
\ALT_INV_Mult0~10\ <= NOT \Mult0~10\;
\ALT_INV_Mult0~9\ <= NOT \Mult0~9\;
\ALT_INV_Mult0~8_resulta\ <= NOT \Mult0~8_resulta\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[7]~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~5_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_7~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_8~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_9~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_5~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_6~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_18~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_19~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_10~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_11~1_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;

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
\RST_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_n,
	o => \RST_n~input_o\);

-- Location: FF_X49_Y1_N59
\State.E3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Selector19~0_combout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.E3~DUPLICATE_q\);

-- Location: IOIBUF_X51_Y0_N18
\write_data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(0),
	o => \write_data[0]~input_o\);

-- Location: IOIBUF_X55_Y0_N75
\write_data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(1),
	o => \write_data[1]~input_o\);

-- Location: IOIBUF_X51_Y0_N35
\write_data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(2),
	o => \write_data[2]~input_o\);

-- Location: IOIBUF_X55_Y0_N58
\write_data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(3),
	o => \write_data[3]~input_o\);

-- Location: IOIBUF_X53_Y0_N52
\write_data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(4),
	o => \write_data[4]~input_o\);

-- Location: IOIBUF_X51_Y0_N52
\write_data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(5),
	o => \write_data[5]~input_o\);

-- Location: IOIBUF_X55_Y0_N41
\write_data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(6),
	o => \write_data[6]~input_o\);

-- Location: IOIBUF_X53_Y0_N35
\write_data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_data(7),
	o => \write_data[7]~input_o\);

-- Location: DSP_X52_Y3_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 11,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_full",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X51_Y3_N0
\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~29_sumout\ = SUM(( \Mult0~19\ ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~30\ = CARRY(( \Mult0~19\ ) + ( !VCC ) + ( !VCC ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~31\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~19\,
	cin => GND,
	sharein => GND,
	sumout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~29_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~30\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~31\);

-- Location: LABCELL_X51_Y3_N3
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~33_sumout\ = SUM(( !\Mult0~20\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~31\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~30\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~34\ = CARRY(( !\Mult0~20\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~31\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~30\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~35\ = SHARE(\Mult0~20\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~20\,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~30\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~31\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~33_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~34\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~35\);

-- Location: LABCELL_X51_Y3_N6
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~17_sumout\ = SUM(( \Mult0~21\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~35\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~34\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~18\ = CARRY(( \Mult0~21\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~35\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~34\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mult0~21\,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~34\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~35\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~18\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~19\);

-- Location: LABCELL_X51_Y3_N9
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~21_sumout\ = SUM(( !\Mult0~22\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~19\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~18\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~22\ = CARRY(( !\Mult0~22\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~19\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~18\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~23\ = SHARE(\Mult0~22\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~22\,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~18\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~19\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~22\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~23\);

-- Location: LABCELL_X51_Y3_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~25_sumout\ = SUM(( \Mult0~23\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~23\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~22\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~26\ = CARRY(( \Mult0~23\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~23\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~22\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~27\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~23\,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~22\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~23\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~26\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~27\);

-- Location: LABCELL_X51_Y3_N15
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~13_sumout\ = SUM(( \Mult0~24\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~27\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~26\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~14\ = CARRY(( \Mult0~24\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~27\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~26\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~24\,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~26\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~27\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~14\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~15\);

-- Location: LABCELL_X51_Y3_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_sumout\ = SUM(( !\Mult0~25\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~14\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ = CARRY(( !\Mult0~25\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~15\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~14\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = SHARE(\Mult0~25\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~25\,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~14\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~15\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LABCELL_X51_Y3_N21
\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~5_sumout\ = SUM(( \Mult0~26\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~6\ = CARRY(( \Mult0~26\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ ))
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~7\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~26\,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~6\,
	shareout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~7\);

-- Location: LABCELL_X51_Y3_N24
\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ = SUM(( VCC ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~7\ ) + ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~6\,
	sharein => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~7\,
	sumout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\);

-- Location: MLABCELL_X50_Y3_N3
\Div0|auto_generated|divider|divider|StageOut[69]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[69]~23_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_sumout\ & ( !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[6]~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[69]~23_combout\);

-- Location: LABCELL_X51_Y3_N42
\Div0|auto_generated|divider|divider|StageOut[70]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~25_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[7]~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~25_combout\);

-- Location: MLABCELL_X50_Y3_N9
\Div0|auto_generated|divider|divider|StageOut[70]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~26_combout\ = ( \Mult0~26\ & ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	dataf => \ALT_INV_Mult0~26\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~26_combout\);

-- Location: LABCELL_X51_Y3_N30
\Div0|auto_generated|divider|divider|StageOut[68]~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~83_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~13_sumout\ & ( !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~83_combout\);

-- Location: MLABCELL_X50_Y3_N6
\Div0|auto_generated|divider|divider|StageOut[68]~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~84_combout\ = ( \Mult0~24\ & ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	dataf => \ALT_INV_Mult0~24\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~84_combout\);

-- Location: MLABCELL_X50_Y3_N48
\Div0|auto_generated|divider|divider|StageOut[66]~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~86_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & \Mult0~22\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	datac => \ALT_INV_Mult0~22\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~86_combout\);

-- Location: LABCELL_X51_Y3_N54
\Div0|auto_generated|divider|divider|StageOut[66]~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~85_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~21_sumout\ & ( !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[3]~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~85_combout\);

-- Location: LABCELL_X51_Y3_N57
\Div0|auto_generated|divider|divider|StageOut[64]~94\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~94_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~33_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[1]~33_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~94_combout\);

-- Location: MLABCELL_X50_Y3_N57
\Div0|auto_generated|divider|divider|StageOut[64]~95\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~95_combout\ = ( \Mult0~20\ & ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	dataf => \ALT_INV_Mult0~20\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~95_combout\);

-- Location: MLABCELL_X50_Y3_N12
\Div0|auto_generated|divider|divider|op_18~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~42_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_18~42_cout\);

-- Location: MLABCELL_X50_Y3_N15
\Div0|auto_generated|divider|divider|op_18~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~29_sumout\ = SUM(( \Mult0~18\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_18~42_cout\ ))
-- \Div0|auto_generated|divider|divider|op_18~30\ = CARRY(( \Mult0~18\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_18~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~18\,
	cin => \Div0|auto_generated|divider|divider|op_18~42_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_18~29_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_18~30\);

-- Location: MLABCELL_X50_Y3_N18
\Div0|auto_generated|divider|divider|op_18~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~33_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~29_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & (\Mult0~19\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_18~30\ ))
-- \Div0|auto_generated|divider|divider|op_18~34\ = CARRY(( (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~29_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & (\Mult0~19\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_18~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	datac => \ALT_INV_Mult0~19\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[0]~29_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_18~30\,
	sumout => \Div0|auto_generated|divider|divider|op_18~33_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_18~34\);

-- Location: MLABCELL_X50_Y3_N21
\Div0|auto_generated|divider|divider|op_18~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~37_sumout\ = SUM(( (\Div0|auto_generated|divider|divider|StageOut[64]~95_combout\) # (\Div0|auto_generated|divider|divider|StageOut[64]~94_combout\) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_18~34\ 
-- ))
-- \Div0|auto_generated|divider|divider|op_18~38\ = CARRY(( (\Div0|auto_generated|divider|divider|StageOut[64]~95_combout\) # (\Div0|auto_generated|divider|divider|StageOut[64]~94_combout\) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_18~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~94_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~95_combout\,
	cin => \Div0|auto_generated|divider|divider|op_18~34\,
	sumout => \Div0|auto_generated|divider|divider|op_18~37_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_18~38\);

-- Location: MLABCELL_X50_Y3_N24
\Div0|auto_generated|divider|divider|op_18~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~17_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & (\Mult0~21\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_18~38\ ))
-- \Div0|auto_generated|divider|divider|op_18~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~17_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & (\Mult0~21\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_18~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	datac => \ALT_INV_Mult0~21\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[2]~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_18~38\,
	sumout => \Div0|auto_generated|divider|divider|op_18~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_18~18\);

-- Location: MLABCELL_X50_Y3_N27
\Div0|auto_generated|divider|divider|op_18~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~21_sumout\ = SUM(( (\Div0|auto_generated|divider|divider|StageOut[66]~85_combout\) # (\Div0|auto_generated|divider|divider|StageOut[66]~86_combout\) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_18~18\ 
-- ))
-- \Div0|auto_generated|divider|divider|op_18~22\ = CARRY(( (\Div0|auto_generated|divider|divider|StageOut[66]~85_combout\) # (\Div0|auto_generated|divider|divider|StageOut[66]~86_combout\) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_18~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~86_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~85_combout\,
	cin => \Div0|auto_generated|divider|divider|op_18~18\,
	sumout => \Div0|auto_generated|divider|divider|op_18~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_18~22\);

-- Location: MLABCELL_X50_Y3_N30
\Div0|auto_generated|divider|divider|op_18~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~25_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~25_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & (\Mult0~23\)) ) + ( \Div0|auto_generated|divider|divider|op_18~22\ ))
-- \Div0|auto_generated|divider|divider|op_18~26\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~25_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & (\Mult0~23\)) ) + ( \Div0|auto_generated|divider|divider|op_18~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	datac => \ALT_INV_Mult0~23\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[4]~25_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_18~22\,
	sumout => \Div0|auto_generated|divider|divider|op_18~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_18~26\);

-- Location: MLABCELL_X50_Y3_N33
\Div0|auto_generated|divider|divider|op_18~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~9_sumout\ = SUM(( VCC ) + ( (\Div0|auto_generated|divider|divider|StageOut[68]~84_combout\) # (\Div0|auto_generated|divider|divider|StageOut[68]~83_combout\) ) + ( \Div0|auto_generated|divider|divider|op_18~26\ 
-- ))
-- \Div0|auto_generated|divider|divider|op_18~10\ = CARRY(( VCC ) + ( (\Div0|auto_generated|divider|divider|StageOut[68]~84_combout\) # (\Div0|auto_generated|divider|divider|StageOut[68]~83_combout\) ) + ( \Div0|auto_generated|divider|divider|op_18~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~83_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~84_combout\,
	cin => \Div0|auto_generated|divider|divider|op_18~26\,
	sumout => \Div0|auto_generated|divider|divider|op_18~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_18~10\);

-- Location: MLABCELL_X50_Y3_N36
\Div0|auto_generated|divider|divider|op_18~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~13_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & (\Mult0~25\)) ) + ( \Div0|auto_generated|divider|divider|op_18~10\ ))
-- \Div0|auto_generated|divider|divider|op_18~14\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & (\Mult0~25\)) ) + ( \Div0|auto_generated|divider|divider|op_18~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	datac => \ALT_INV_Mult0~25\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[6]~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_18~10\,
	sumout => \Div0|auto_generated|divider|divider|op_18~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_18~14\);

-- Location: MLABCELL_X50_Y3_N39
\Div0|auto_generated|divider|divider|op_18~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~6_cout\ = CARRY(( VCC ) + ( (\Div0|auto_generated|divider|divider|StageOut[70]~26_combout\) # (\Div0|auto_generated|divider|divider|StageOut[70]~25_combout\) ) + ( \Div0|auto_generated|divider|divider|op_18~14\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~25_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[70]~26_combout\,
	cin => \Div0|auto_generated|divider|divider|op_18~14\,
	cout => \Div0|auto_generated|divider|divider|op_18~6_cout\);

-- Location: MLABCELL_X50_Y3_N42
\Div0|auto_generated|divider|divider|op_18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_18~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_18~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_18~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_18~1_sumout\);

-- Location: LABCELL_X51_Y3_N48
\Div0|auto_generated|divider|divider|StageOut[69]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[69]~24_combout\ = ( \Mult0~25\ & ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	dataf => \ALT_INV_Mult0~25\,
	combout => \Div0|auto_generated|divider|divider|StageOut[69]~24_combout\);

-- Location: LABCELL_X51_Y3_N45
\Div0|auto_generated|divider|divider|StageOut[68]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~21_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~13_sumout\ & ( (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\) # (\Mult0~24\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~13_sumout\ & ( (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & \Mult0~24\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	datad => \ALT_INV_Mult0~24\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~21_combout\);

-- Location: LABCELL_X51_Y3_N39
\Div0|auto_generated|divider|divider|StageOut[67]~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~42_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~25_sumout\ & ( !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[4]~25_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~42_combout\);

-- Location: LABCELL_X51_Y3_N51
\Div0|auto_generated|divider|divider|StageOut[67]~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[67]~43_combout\ = (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & \Mult0~23\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	datad => \ALT_INV_Mult0~23\,
	combout => \Div0|auto_generated|divider|divider|StageOut[67]~43_combout\);

-- Location: LABCELL_X51_Y3_N33
\Div0|auto_generated|divider|divider|StageOut[66]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[66]~37_combout\ = ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~21_sumout\ & ( (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\) # (\Mult0~22\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~21_sumout\ & ( (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & \Mult0~22\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	datac => \ALT_INV_Mult0~22\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[3]~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[66]~37_combout\);

-- Location: MLABCELL_X50_Y3_N51
\Div0|auto_generated|divider|divider|StageOut[65]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~29_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[2]~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~29_combout\);

-- Location: MLABCELL_X50_Y3_N0
\Div0|auto_generated|divider|divider|StageOut[65]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[65]~30_combout\ = ( \Mult0~21\ & ( \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	dataf => \ALT_INV_Mult0~21\,
	combout => \Div0|auto_generated|divider|divider|StageOut[65]~30_combout\);

-- Location: LABCELL_X51_Y3_N36
\Div0|auto_generated|divider|divider|StageOut[64]~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[64]~77_combout\ = ( \Mult0~20\ & ( (\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~33_sumout\) # (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\) ) ) # ( !\Mult0~20\ & ( 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[1]~33_sumout\,
	dataf => \ALT_INV_Mult0~20\,
	combout => \Div0|auto_generated|divider|divider|StageOut[64]~77_combout\);

-- Location: MLABCELL_X50_Y3_N54
\Div0|auto_generated|divider|divider|StageOut[63]~67\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[63]~67_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~29_sumout\))) # 
-- (\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ & (\Mult0~19\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	datac => \ALT_INV_Mult0~19\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[0]~29_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[63]~67_combout\);

-- Location: LABCELL_X49_Y3_N12
\Div0|auto_generated|divider|divider|op_19~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_19~30_cout\);

-- Location: LABCELL_X49_Y3_N15
\Div0|auto_generated|divider|divider|op_19~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~9_sumout\ = SUM(( \Mult0~17\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_19~30_cout\ ))
-- \Div0|auto_generated|divider|divider|op_19~10\ = CARRY(( \Mult0~17\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_19~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~17\,
	cin => \Div0|auto_generated|divider|divider|op_19~30_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_19~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_19~10\);

-- Location: LABCELL_X49_Y3_N18
\Div0|auto_generated|divider|divider|op_19~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~33_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~29_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (\Mult0~18\)) ) + ( 
-- VCC ) + ( \Div0|auto_generated|divider|divider|op_19~10\ ))
-- \Div0|auto_generated|divider|divider|op_19~34\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~29_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (\Mult0~18\)) ) + ( VCC 
-- ) + ( \Div0|auto_generated|divider|divider|op_19~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \ALT_INV_Mult0~18\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_18~29_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_19~10\,
	sumout => \Div0|auto_generated|divider|divider|op_19~33_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_19~34\);

-- Location: LABCELL_X49_Y3_N21
\Div0|auto_generated|divider|divider|op_19~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~37_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[63]~67_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_19~34\ ))
-- \Div0|auto_generated|divider|divider|op_19~38\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[63]~67_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_19~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[63]~67_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_18~33_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_19~34\,
	sumout => \Div0|auto_generated|divider|divider|op_19~37_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_19~38\);

-- Location: LABCELL_X49_Y3_N24
\Div0|auto_generated|divider|divider|op_19~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~41_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[64]~77_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_19~38\ ))
-- \Div0|auto_generated|divider|divider|op_19~42\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[64]~77_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_19~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~77_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_18~37_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_19~38\,
	sumout => \Div0|auto_generated|divider|divider|op_19~41_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_19~42\);

-- Location: LABCELL_X49_Y3_N27
\Div0|auto_generated|divider|divider|op_19~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~17_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_18~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[65]~30_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[65]~29_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_19~42\ ))
-- \Div0|auto_generated|divider|divider|op_19~18\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_18~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[65]~30_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[65]~29_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_19~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~29_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_18~17_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~30_combout\,
	cin => \Div0|auto_generated|divider|divider|op_19~42\,
	sumout => \Div0|auto_generated|divider|divider|op_19~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_19~18\);

-- Location: LABCELL_X49_Y3_N30
\Div0|auto_generated|divider|divider|op_19~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[66]~37_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_19~18\ ))
-- \Div0|auto_generated|divider|divider|op_19~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[66]~37_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_19~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~37_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_18~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_19~18\,
	sumout => \Div0|auto_generated|divider|divider|op_19~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_19~22\);

-- Location: LABCELL_X49_Y3_N33
\Div0|auto_generated|divider|divider|op_19~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~25_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (\Div0|auto_generated|divider|divider|op_18~25_sumout\)) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[67]~43_combout\) # (\Div0|auto_generated|divider|divider|StageOut[67]~42_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_19~22\ ))
-- \Div0|auto_generated|divider|divider|op_19~26\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (\Div0|auto_generated|divider|divider|op_18~25_sumout\)) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[67]~43_combout\) # (\Div0|auto_generated|divider|divider|StageOut[67]~42_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_19~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_18~25_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~42_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~43_combout\,
	cin => \Div0|auto_generated|divider|divider|op_19~22\,
	sumout => \Div0|auto_generated|divider|divider|op_19~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_19~26\);

-- Location: LABCELL_X49_Y3_N36
\Div0|auto_generated|divider|divider|op_19~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~13_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[68]~21_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_19~26\ ))
-- \Div0|auto_generated|divider|divider|op_19~14\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[68]~21_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_19~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~21_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_18~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_19~26\,
	sumout => \Div0|auto_generated|divider|divider|op_19~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_19~14\);

-- Location: LABCELL_X49_Y3_N39
\Div0|auto_generated|divider|divider|op_19~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~6_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_18~13_sumout\)))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[69]~24_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[69]~23_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_19~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~23_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_18~13_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[69]~24_combout\,
	cin => \Div0|auto_generated|divider|divider|op_19~14\,
	cout => \Div0|auto_generated|divider|divider|op_19~6_cout\);

-- Location: LABCELL_X49_Y3_N42
\Div0|auto_generated|divider|divider|op_19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_19~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_19~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_19~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_19~1_sumout\);

-- Location: LABCELL_X49_Y3_N6
\Div0|auto_generated|divider|divider|StageOut[77]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[77]~44_combout\ = (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (\Div0|auto_generated|divider|divider|op_18~25_sumout\)) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[67]~42_combout\) # (\Div0|auto_generated|divider|divider|StageOut[67]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101110111010001110111011101000111011101110100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_18~25_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~43_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[67]~42_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[77]~44_combout\);

-- Location: LABCELL_X49_Y3_N0
\Div0|auto_generated|divider|divider|StageOut[76]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[76]~36_combout\ = (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & \Div0|auto_generated|divider|divider|op_18~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_18~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[76]~36_combout\);

-- Location: LABCELL_X49_Y3_N3
\Div0|auto_generated|divider|divider|StageOut[76]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[76]~38_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[66]~37_combout\ & ( \Div0|auto_generated|divider|divider|op_18~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[66]~37_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[76]~38_combout\);

-- Location: LABCELL_X49_Y3_N9
\Div0|auto_generated|divider|divider|StageOut[75]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[75]~31_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[65]~29_combout\ & ( (\Div0|auto_generated|divider|divider|op_18~17_sumout\) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|StageOut[65]~29_combout\ & ( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (\Div0|auto_generated|divider|divider|op_18~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[65]~30_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_18~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~30_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[65]~29_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[75]~31_combout\);

-- Location: LABCELL_X49_Y1_N18
\Div0|auto_generated|divider|divider|StageOut[74]~76\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~76_combout\ = ( !\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_18~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~37_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~76_combout\);

-- Location: LABCELL_X43_Y3_N24
\Div0|auto_generated|divider|divider|StageOut[74]~78\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[74]~78_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[64]~77_combout\ & ( \Div0|auto_generated|divider|divider|op_18~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[64]~77_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[74]~78_combout\);

-- Location: LABCELL_X49_Y3_N57
\Div0|auto_generated|divider|divider|StageOut[73]~68\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[73]~68_combout\ = ( \Div0|auto_generated|divider|divider|op_18~33_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_18~1_sumout\) # (\Div0|auto_generated|divider|divider|StageOut[63]~67_combout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_18~33_sumout\ & ( (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[63]~67_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[63]~67_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_18~33_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[73]~68_combout\);

-- Location: LABCELL_X49_Y3_N54
\Div0|auto_generated|divider|divider|StageOut[72]~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~57_combout\ = (!\Div0|auto_generated|divider|divider|op_18~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_18~29_sumout\))) # (\Div0|auto_generated|divider|divider|op_18~1_sumout\ & (\Mult0~18\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	datac => \ALT_INV_Mult0~18\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_18~29_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~57_combout\);

-- Location: LABCELL_X48_Y3_N18
\Div0|auto_generated|divider|divider|op_3~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~30_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_3~30_cout\);

-- Location: LABCELL_X48_Y3_N21
\Div0|auto_generated|divider|divider|op_3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~9_sumout\ = SUM(( \Mult0~16\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_3~30_cout\ ))
-- \Div0|auto_generated|divider|divider|op_3~10\ = CARRY(( \Mult0~16\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_3~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~16\,
	cin => \Div0|auto_generated|divider|divider|op_3~30_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_3~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~10\);

-- Location: LABCELL_X48_Y3_N24
\Div0|auto_generated|divider|divider|op_3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & (\Mult0~17\)) ) + ( 
-- VCC ) + ( \Div0|auto_generated|divider|divider|op_3~10\ ))
-- \Div0|auto_generated|divider|divider|op_3~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & (\Mult0~17\)) ) + ( VCC ) 
-- + ( \Div0|auto_generated|divider|divider|op_3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datab => \ALT_INV_Mult0~17\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_19~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_3~10\,
	sumout => \Div0|auto_generated|divider|divider|op_3~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~14\);

-- Location: LABCELL_X48_Y3_N27
\Div0|auto_generated|divider|divider|op_3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~33_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[72]~57_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_3~14\ ))
-- \Div0|auto_generated|divider|divider|op_3~34\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[72]~57_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~57_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_19~33_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_3~14\,
	sumout => \Div0|auto_generated|divider|divider|op_3~33_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~34\);

-- Location: LABCELL_X48_Y3_N30
\Div0|auto_generated|divider|divider|op_3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~37_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[73]~68_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_3~34\ ))
-- \Div0|auto_generated|divider|divider|op_3~38\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[73]~68_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[73]~68_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_19~37_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_3~34\,
	sumout => \Div0|auto_generated|divider|divider|op_3~37_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~38\);

-- Location: LABCELL_X48_Y3_N33
\Div0|auto_generated|divider|divider|op_3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~41_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_19~41_sumout\)))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[74]~78_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[74]~76_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_3~38\ ))
-- \Div0|auto_generated|divider|divider|op_3~42\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_19~41_sumout\)))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[74]~78_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[74]~76_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~76_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_19~41_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~78_combout\,
	cin => \Div0|auto_generated|divider|divider|op_3~38\,
	sumout => \Div0|auto_generated|divider|divider|op_3~41_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~42\);

-- Location: LABCELL_X48_Y3_N36
\Div0|auto_generated|divider|divider|op_3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[75]~31_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_3~42\ ))
-- \Div0|auto_generated|divider|divider|op_3~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[75]~31_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~31_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_19~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_3~42\,
	sumout => \Div0|auto_generated|divider|divider|op_3~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~22\);

-- Location: LABCELL_X48_Y3_N39
\Div0|auto_generated|divider|divider|op_3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & (\Div0|auto_generated|divider|divider|op_19~21_sumout\)) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[76]~38_combout\) # (\Div0|auto_generated|divider|divider|StageOut[76]~36_combout\)))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_3~22\ ))
-- \Div0|auto_generated|divider|divider|op_3~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & (\Div0|auto_generated|divider|divider|op_19~21_sumout\)) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[76]~38_combout\) # (\Div0|auto_generated|divider|divider|StageOut[76]~36_combout\)))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_19~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~36_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~38_combout\,
	cin => \Div0|auto_generated|divider|divider|op_3~22\,
	sumout => \Div0|auto_generated|divider|divider|op_3~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~26\);

-- Location: LABCELL_X48_Y3_N42
\Div0|auto_generated|divider|divider|op_3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~17_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~25_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[77]~44_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_3~26\ ))
-- \Div0|auto_generated|divider|divider|op_3~18\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_19~25_sumout\))) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[77]~44_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~44_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_19~25_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_3~26\,
	sumout => \Div0|auto_generated|divider|divider|op_3~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~18\);

-- Location: LABCELL_X49_Y3_N48
\Div0|auto_generated|divider|divider|StageOut[78]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[78]~20_combout\ = ( \Div0|auto_generated|divider|divider|op_18~9_sumout\ & ( !\Div0|auto_generated|divider|divider|op_18~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_18~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[78]~20_combout\);

-- Location: LABCELL_X49_Y3_N51
\Div0|auto_generated|divider|divider|StageOut[78]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[78]~22_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[68]~21_combout\ & ( \Div0|auto_generated|divider|divider|op_18~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[68]~21_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[78]~22_combout\);

-- Location: LABCELL_X48_Y3_N45
\Div0|auto_generated|divider|divider|op_3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~6_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & (\Div0|auto_generated|divider|divider|op_19~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[78]~22_combout\) # (\Div0|auto_generated|divider|divider|StageOut[78]~20_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_19~13_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[78]~20_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[78]~22_combout\,
	cin => \Div0|auto_generated|divider|divider|op_3~18\,
	cout => \Div0|auto_generated|divider|divider|op_3~6_cout\);

-- Location: LABCELL_X48_Y3_N48
\Div0|auto_generated|divider|divider|op_3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_3~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_3~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_3~1_sumout\);

-- Location: LABCELL_X48_Y3_N54
\Div0|auto_generated|divider|divider|StageOut[87]~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~41_combout\ = ( \Div0|auto_generated|divider|divider|op_19~25_sumout\ & ( !\Div0|auto_generated|divider|divider|op_19~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_19~25_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~41_combout\);

-- Location: LABCELL_X48_Y3_N57
\Div0|auto_generated|divider|divider|StageOut[87]~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~45_combout\ = (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[77]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[77]~44_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~45_combout\);

-- Location: LABCELL_X48_Y3_N15
\Div0|auto_generated|divider|divider|StageOut[86]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~39_combout\ = ( \Div0|auto_generated|divider|divider|op_19~21_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\) # ((\Div0|auto_generated|divider|divider|StageOut[76]~38_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[76]~36_combout\)) ) ) # ( !\Div0|auto_generated|divider|divider|op_19~21_sumout\ & ( (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[76]~38_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[76]~36_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010110101111111111111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~36_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[76]~38_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_19~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~39_combout\);

-- Location: LABCELL_X48_Y3_N6
\Div0|auto_generated|divider|divider|StageOut[85]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~28_combout\ = (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & \Div0|auto_generated|divider|divider|op_19~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_19~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~28_combout\);

-- Location: LABCELL_X48_Y3_N9
\Div0|auto_generated|divider|divider|StageOut[85]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~32_combout\ = (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[75]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[75]~31_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~32_combout\);

-- Location: LABCELL_X48_Y3_N12
\Div0|auto_generated|divider|divider|StageOut[84]~79\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[84]~79_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[74]~76_combout\ & ( (\Div0|auto_generated|divider|divider|op_19~41_sumout\) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|StageOut[74]~76_combout\ & ( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & (\Div0|auto_generated|divider|divider|op_19~41_sumout\)) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[74]~78_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_19~41_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~78_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[74]~76_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[84]~79_combout\);

-- Location: LABCELL_X45_Y3_N36
\Div0|auto_generated|divider|divider|StageOut[83]~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[83]~66_combout\ = ( !\Div0|auto_generated|divider|divider|op_19~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_19~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_19~37_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[83]~66_combout\);

-- Location: LABCELL_X38_Y3_N36
\Div0|auto_generated|divider|divider|StageOut[83]~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[83]~69_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[73]~68_combout\ & ( \Div0|auto_generated|divider|divider|op_19~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[73]~68_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[83]~69_combout\);

-- Location: LABCELL_X48_Y3_N3
\Div0|auto_generated|divider|divider|StageOut[82]~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[82]~58_combout\ = ( \Div0|auto_generated|divider|divider|op_19~33_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_19~1_sumout\) # (\Div0|auto_generated|divider|divider|StageOut[72]~57_combout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_19~33_sumout\ & ( (\Div0|auto_generated|divider|divider|op_19~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[72]~57_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[72]~57_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_19~33_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[82]~58_combout\);

-- Location: LABCELL_X48_Y3_N0
\Div0|auto_generated|divider|divider|StageOut[81]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[81]~13_combout\ = ( \Mult0~17\ & ( (\Div0|auto_generated|divider|divider|op_19~9_sumout\) # (\Div0|auto_generated|divider|divider|op_19~1_sumout\) ) ) # ( !\Mult0~17\ & ( 
-- (!\Div0|auto_generated|divider|divider|op_19~1_sumout\ & \Div0|auto_generated|divider|divider|op_19~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_19~9_sumout\,
	dataf => \ALT_INV_Mult0~17\,
	combout => \Div0|auto_generated|divider|divider|StageOut[81]~13_combout\);

-- Location: MLABCELL_X47_Y3_N0
\Div0|auto_generated|divider|divider|op_4~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~42_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_4~42_cout\);

-- Location: MLABCELL_X47_Y3_N3
\Div0|auto_generated|divider|divider|op_4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~25_sumout\ = SUM(( \Mult0~15\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~42_cout\ ))
-- \Div0|auto_generated|divider|divider|op_4~26\ = CARRY(( \Mult0~15\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~15\,
	cin => \Div0|auto_generated|divider|divider|op_4~42_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_4~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~26\);

-- Location: MLABCELL_X47_Y3_N6
\Div0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (\Mult0~16\)) ) + ( VCC ) 
-- + ( \Div0|auto_generated|divider|divider|op_4~26\ ))
-- \Div0|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (\Mult0~16\)) ) + ( VCC ) + ( 
-- \Div0|auto_generated|divider|divider|op_4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \ALT_INV_Mult0~16\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~26\,
	sumout => \Div0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~10\);

-- Location: MLABCELL_X47_Y3_N9
\Div0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[81]~13_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~10\ ))
-- \Div0|auto_generated|divider|divider|op_4~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[81]~13_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~13_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~10\,
	sumout => \Div0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~14\);

-- Location: MLABCELL_X47_Y3_N12
\Div0|auto_generated|divider|divider|op_4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~29_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[82]~58_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))
-- \Div0|auto_generated|divider|divider|op_4~30\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[82]~58_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~58_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_3~33_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~14\,
	sumout => \Div0|auto_generated|divider|divider|op_4~29_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~30\);

-- Location: MLABCELL_X47_Y3_N15
\Div0|auto_generated|divider|divider|op_4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~33_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (\Div0|auto_generated|divider|divider|op_3~37_sumout\)) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[83]~69_combout\) # (\Div0|auto_generated|divider|divider|StageOut[83]~66_combout\)))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~30\ ))
-- \Div0|auto_generated|divider|divider|op_4~34\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (\Div0|auto_generated|divider|divider|op_3~37_sumout\)) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[83]~69_combout\) # (\Div0|auto_generated|divider|divider|StageOut[83]~66_combout\)))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~37_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[83]~66_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[83]~69_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~30\,
	sumout => \Div0|auto_generated|divider|divider|op_4~33_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~34\);

-- Location: MLABCELL_X47_Y3_N18
\Div0|auto_generated|divider|divider|op_4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~37_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~41_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[84]~79_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_4~34\ ))
-- \Div0|auto_generated|divider|divider|op_4~38\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~41_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[84]~79_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~79_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~41_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~34\,
	sumout => \Div0|auto_generated|divider|divider|op_4~37_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~38\);

-- Location: MLABCELL_X47_Y3_N21
\Div0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_3~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[85]~32_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[85]~28_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~38\ ))
-- \Div0|auto_generated|divider|divider|op_4~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_3~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[85]~32_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[85]~28_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~28_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~21_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~32_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~38\,
	sumout => \Div0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~18\);

-- Location: MLABCELL_X47_Y3_N24
\Div0|auto_generated|divider|divider|op_4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~21_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~25_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[86]~39_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_4~18\ ))
-- \Div0|auto_generated|divider|divider|op_4~22\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~25_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[86]~39_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[86]~39_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~18\,
	sumout => \Div0|auto_generated|divider|divider|op_4~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_4~22\);

-- Location: MLABCELL_X47_Y3_N27
\Div0|auto_generated|divider|divider|op_4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (\Div0|auto_generated|divider|divider|op_3~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[87]~45_combout\) # (\Div0|auto_generated|divider|divider|StageOut[87]~41_combout\)))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~41_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[87]~45_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~22\,
	cout => \Div0|auto_generated|divider|divider|op_4~6_cout\);

-- Location: MLABCELL_X47_Y3_N30
\Div0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_4~1_sumout\);

-- Location: MLABCELL_X47_Y3_N36
\Div0|auto_generated|divider|divider|StageOut[96]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~35_combout\ = ( \Div0|auto_generated|divider|divider|op_3~25_sumout\ & ( !\Div0|auto_generated|divider|divider|op_3~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~35_combout\);

-- Location: MLABCELL_X47_Y3_N39
\Div0|auto_generated|divider|divider|StageOut[96]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[96]~40_combout\ = (\Div0|auto_generated|divider|divider|StageOut[86]~39_combout\ & \Div0|auto_generated|divider|divider|op_3~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[86]~39_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[96]~40_combout\);

-- Location: MLABCELL_X47_Y3_N54
\Div0|auto_generated|divider|divider|StageOut[95]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[95]~33_combout\ = ( \Div0|auto_generated|divider|divider|op_3~21_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\) # ((\Div0|auto_generated|divider|divider|StageOut[85]~32_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[85]~28_combout\)) ) ) # ( !\Div0|auto_generated|divider|divider|op_3~21_sumout\ & ( (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[85]~32_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[85]~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~28_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[85]~32_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[95]~33_combout\);

-- Location: LABCELL_X45_Y3_N6
\Div0|auto_generated|divider|divider|StageOut[94]~75\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[94]~75_combout\ = ( !\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_3~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~41_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[94]~75_combout\);

-- Location: LABCELL_X46_Y3_N36
\Div0|auto_generated|divider|divider|StageOut[94]~80\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[94]~80_combout\ = ( \Div0|auto_generated|divider|divider|op_3~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[84]~79_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[84]~79_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[94]~80_combout\);

-- Location: MLABCELL_X47_Y3_N57
\Div0|auto_generated|divider|divider|StageOut[93]~70\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[93]~70_combout\ = ( \Div0|auto_generated|divider|divider|op_3~37_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\) # ((\Div0|auto_generated|divider|divider|StageOut[83]~66_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[83]~69_combout\)) ) ) # ( !\Div0|auto_generated|divider|divider|op_3~37_sumout\ & ( (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[83]~66_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[83]~69_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[83]~69_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[83]~66_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~37_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[93]~70_combout\);

-- Location: MLABCELL_X47_Y3_N42
\Div0|auto_generated|divider|divider|StageOut[92]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[92]~56_combout\ = (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & \Div0|auto_generated|divider|divider|op_3~33_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~33_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[92]~56_combout\);

-- Location: MLABCELL_X47_Y3_N45
\Div0|auto_generated|divider|divider|StageOut[92]~59\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[92]~59_combout\ = (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[82]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[82]~58_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[92]~59_combout\);

-- Location: MLABCELL_X47_Y3_N51
\Div0|auto_generated|divider|divider|StageOut[91]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[91]~14_combout\ = ( \Div0|auto_generated|divider|divider|op_3~13_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\) # (\Div0|auto_generated|divider|divider|StageOut[81]~13_combout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_3~13_sumout\ & ( (\Div0|auto_generated|divider|divider|StageOut[81]~13_combout\ & \Div0|auto_generated|divider|divider|op_3~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[81]~13_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[91]~14_combout\);

-- Location: MLABCELL_X47_Y3_N48
\Div0|auto_generated|divider|divider|StageOut[90]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[90]~3_combout\ = ( \Mult0~16\ & ( (\Div0|auto_generated|divider|divider|op_3~9_sumout\) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\) ) ) # ( !\Mult0~16\ & ( 
-- (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & \Div0|auto_generated|divider|divider|op_3~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	dataf => \ALT_INV_Mult0~16\,
	combout => \Div0|auto_generated|divider|divider|StageOut[90]~3_combout\);

-- Location: LABCELL_X49_Y4_N12
\Div0|auto_generated|divider|divider|op_5~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~42_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_5~42_cout\);

-- Location: LABCELL_X49_Y4_N15
\Div0|auto_generated|divider|divider|op_5~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~37_sumout\ = SUM(( \Mult0~14\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~42_cout\ ))
-- \Div0|auto_generated|divider|divider|op_5~38\ = CARRY(( \Mult0~14\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~14\,
	cin => \Div0|auto_generated|divider|divider|op_5~42_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~37_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~38\);

-- Location: LABCELL_X49_Y4_N18
\Div0|auto_generated|divider|divider|op_5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~21_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~25_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Mult0~15\)) 
-- ) + ( \Div0|auto_generated|divider|divider|op_5~38\ ))
-- \Div0|auto_generated|divider|divider|op_5~22\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~25_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Mult0~15\)) ) + 
-- ( \Div0|auto_generated|divider|divider|op_5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \ALT_INV_Mult0~15\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~25_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~38\,
	sumout => \Div0|auto_generated|divider|divider|op_5~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~22\);

-- Location: LABCELL_X49_Y4_N21
\Div0|auto_generated|divider|divider|op_5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~9_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[90]~3_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))
-- \Div0|auto_generated|divider|divider|op_5~10\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[90]~3_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~3_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~22\,
	sumout => \Div0|auto_generated|divider|divider|op_5~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~10\);

-- Location: LABCELL_X49_Y4_N24
\Div0|auto_generated|divider|divider|op_5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[91]~14_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))
-- \Div0|auto_generated|divider|divider|op_5~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[91]~14_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[91]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~10\,
	sumout => \Div0|auto_generated|divider|divider|op_5~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~14\);

-- Location: LABCELL_X49_Y4_N27
\Div0|auto_generated|divider|divider|op_5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~29_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[92]~59_combout\) # (\Div0|auto_generated|divider|divider|StageOut[92]~56_combout\)))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~14\ ))
-- \Div0|auto_generated|divider|divider|op_5~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~29_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[92]~59_combout\) # (\Div0|auto_generated|divider|divider|StageOut[92]~56_combout\)))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~29_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~56_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~59_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~14\,
	sumout => \Div0|auto_generated|divider|divider|op_5~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~26\);

-- Location: LABCELL_X49_Y4_N30
\Div0|auto_generated|divider|divider|op_5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~29_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[93]~70_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~26\ ))
-- \Div0|auto_generated|divider|divider|op_5~30\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[93]~70_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[93]~70_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~33_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~26\,
	sumout => \Div0|auto_generated|divider|divider|op_5~29_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~30\);

-- Location: LABCELL_X49_Y4_N33
\Div0|auto_generated|divider|divider|op_5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~33_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~37_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[94]~80_combout\) # (\Div0|auto_generated|divider|divider|StageOut[94]~75_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_5~30\ ))
-- \Div0|auto_generated|divider|divider|op_5~34\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~37_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[94]~80_combout\) # (\Div0|auto_generated|divider|divider|StageOut[94]~75_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~37_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[94]~75_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[94]~80_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~30\,
	sumout => \Div0|auto_generated|divider|divider|op_5~33_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~34\);

-- Location: LABCELL_X49_Y4_N36
\Div0|auto_generated|divider|divider|op_5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[95]~33_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~34\ ))
-- \Div0|auto_generated|divider|divider|op_5~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_4~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[95]~33_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[95]~33_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_5~34\,
	sumout => \Div0|auto_generated|divider|divider|op_5~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_5~18\);

-- Location: LABCELL_X49_Y4_N39
\Div0|auto_generated|divider|divider|op_5~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~21_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[96]~40_combout\) # (\Div0|auto_generated|divider|divider|StageOut[96]~35_combout\)))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~21_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~35_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[96]~40_combout\,
	cin => \Div0|auto_generated|divider|divider|op_5~18\,
	cout => \Div0|auto_generated|divider|divider|op_5~6_cout\);

-- Location: LABCELL_X49_Y4_N42
\Div0|auto_generated|divider|divider|op_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_5~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_5~1_sumout\);

-- Location: LABCELL_X49_Y4_N3
\Div0|auto_generated|divider|divider|StageOut[105]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~27_combout\ = (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \Div0|auto_generated|divider|divider|op_4~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~27_combout\);

-- Location: LABCELL_X49_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[105]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~34_combout\ = (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[95]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[95]~33_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~34_combout\);

-- Location: LABCELL_X46_Y2_N57
\Div0|auto_generated|divider|divider|StageOut[104]~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~81_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[94]~75_combout\ & ( \Div0|auto_generated|divider|divider|op_4~1_sumout\ ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[94]~75_combout\ 
-- & ( \Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[94]~80_combout\ ) ) ) # ( \Div0|auto_generated|divider|divider|StageOut[94]~75_combout\ & ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( 
-- \Div0|auto_generated|divider|divider|op_4~37_sumout\ ) ) ) # ( !\Div0|auto_generated|divider|divider|StageOut[94]~75_combout\ & ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_4~37_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_4~37_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[94]~80_combout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[94]~75_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~81_combout\);

-- Location: LABCELL_X53_Y4_N51
\Div0|auto_generated|divider|divider|StageOut[103]~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~65_combout\ = ( \Div0|auto_generated|divider|divider|op_4~33_sumout\ & ( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~33_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~65_combout\);

-- Location: LABCELL_X49_Y4_N9
\Div0|auto_generated|divider|divider|StageOut[103]~71\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~71_combout\ = (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[93]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[93]~70_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~71_combout\);

-- Location: LABCELL_X49_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[102]~60\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[102]~60_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[92]~56_combout\ & ( (\Div0|auto_generated|divider|divider|op_4~29_sumout\) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|StageOut[92]~56_combout\ & ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & (\Div0|auto_generated|divider|divider|op_4~29_sumout\)) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[92]~59_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~29_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~59_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[92]~56_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[102]~60_combout\);

-- Location: LABCELL_X49_Y4_N54
\Div0|auto_generated|divider|divider|StageOut[101]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~12_combout\ = (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \Div0|auto_generated|divider|divider|op_4~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~12_combout\);

-- Location: LABCELL_X49_Y4_N57
\Div0|auto_generated|divider|divider|StageOut[101]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[101]~15_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[91]~14_combout\ & ( \Div0|auto_generated|divider|divider|op_4~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[91]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[101]~15_combout\);

-- Location: LABCELL_X49_Y4_N51
\Div0|auto_generated|divider|divider|StageOut[100]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[100]~4_combout\ = ( \Div0|auto_generated|divider|divider|op_4~9_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_4~1_sumout\) # (\Div0|auto_generated|divider|divider|StageOut[90]~3_combout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_4~9_sumout\ & ( (\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[90]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[90]~3_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[100]~4_combout\);

-- Location: LABCELL_X49_Y4_N48
\Div0|auto_generated|divider|divider|StageOut[99]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[99]~48_combout\ = ( \Mult0~15\ & ( (\Div0|auto_generated|divider|divider|op_4~25_sumout\) # (\Div0|auto_generated|divider|divider|op_4~1_sumout\) ) ) # ( !\Mult0~15\ & ( 
-- (!\Div0|auto_generated|divider|divider|op_4~1_sumout\ & \Div0|auto_generated|divider|divider|op_4~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~25_sumout\,
	dataf => \ALT_INV_Mult0~15\,
	combout => \Div0|auto_generated|divider|divider|StageOut[99]~48_combout\);

-- Location: MLABCELL_X50_Y4_N18
\Div0|auto_generated|divider|divider|op_6~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~42_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_6~42_cout\);

-- Location: MLABCELL_X50_Y4_N21
\Div0|auto_generated|divider|divider|op_6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~37_sumout\ = SUM(( \Mult0~13\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~42_cout\ ))
-- \Div0|auto_generated|divider|divider|op_6~38\ = CARRY(( \Mult0~13\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~13\,
	cin => \Div0|auto_generated|divider|divider|op_6~42_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~37_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~38\);

-- Location: MLABCELL_X50_Y4_N24
\Div0|auto_generated|divider|divider|op_6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~33_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Mult0~14\)) 
-- ) + ( \Div0|auto_generated|divider|divider|op_6~38\ ))
-- \Div0|auto_generated|divider|divider|op_6~34\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Mult0~14\)) ) + 
-- ( \Div0|auto_generated|divider|divider|op_6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \ALT_INV_Mult0~14\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~37_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~38\,
	sumout => \Div0|auto_generated|divider|divider|op_6~33_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~34\);

-- Location: MLABCELL_X50_Y4_N27
\Div0|auto_generated|divider|divider|op_6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~21_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[99]~48_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_6~34\ ))
-- \Div0|auto_generated|divider|divider|op_6~22\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[99]~48_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[99]~48_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~34\,
	sumout => \Div0|auto_generated|divider|divider|op_6~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~22\);

-- Location: MLABCELL_X50_Y4_N30
\Div0|auto_generated|divider|divider|op_6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[100]~4_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))
-- \Div0|auto_generated|divider|divider|op_6~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[100]~4_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_6~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~22\,
	sumout => \Div0|auto_generated|divider|divider|op_6~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~10\);

-- Location: MLABCELL_X50_Y4_N33
\Div0|auto_generated|divider|divider|op_6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~13_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[101]~15_combout\) # (\Div0|auto_generated|divider|divider|StageOut[101]~12_combout\)))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))
-- \Div0|auto_generated|divider|divider|op_6~14\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[101]~15_combout\) # (\Div0|auto_generated|divider|divider|StageOut[101]~12_combout\)))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~15_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~10\,
	sumout => \Div0|auto_generated|divider|divider|op_6~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~14\);

-- Location: MLABCELL_X50_Y4_N36
\Div0|auto_generated|divider|divider|op_6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~25_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~25_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[102]~60_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))
-- \Div0|auto_generated|divider|divider|op_6~26\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~25_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[102]~60_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[102]~60_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~14\,
	sumout => \Div0|auto_generated|divider|divider|op_6~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~26\);

-- Location: MLABCELL_X50_Y4_N39
\Div0|auto_generated|divider|divider|op_6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~29_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~29_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[103]~71_combout\) # (\Div0|auto_generated|divider|divider|StageOut[103]~65_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~26\ ))
-- \Div0|auto_generated|divider|divider|op_6~30\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~29_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[103]~71_combout\) # (\Div0|auto_generated|divider|divider|StageOut[103]~65_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~29_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[103]~65_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[103]~71_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~26\,
	sumout => \Div0|auto_generated|divider|divider|op_6~29_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~30\);

-- Location: MLABCELL_X50_Y4_N42
\Div0|auto_generated|divider|divider|op_6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~17_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[104]~81_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_6~30\ ))
-- \Div0|auto_generated|divider|divider|op_6~18\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_5~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[104]~81_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[104]~81_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~33_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_6~30\,
	sumout => \Div0|auto_generated|divider|divider|op_6~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_6~18\);

-- Location: MLABCELL_X50_Y4_N45
\Div0|auto_generated|divider|divider|op_6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~6_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[105]~34_combout\) # (\Div0|auto_generated|divider|divider|StageOut[105]~27_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~17_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~27_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[105]~34_combout\,
	cin => \Div0|auto_generated|divider|divider|op_6~18\,
	cout => \Div0|auto_generated|divider|divider|op_6~6_cout\);

-- Location: MLABCELL_X50_Y4_N48
\Div0|auto_generated|divider|divider|op_6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_6~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_6~1_sumout\);

-- Location: LABCELL_X51_Y2_N39
\Div0|auto_generated|divider|divider|StageOut[114]~74\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~74_combout\ = ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_5~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_5~33_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~74_combout\);

-- Location: LABCELL_X49_Y1_N6
\Div0|auto_generated|divider|divider|StageOut[114]~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[114]~82_combout\ = ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[104]~81_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[104]~81_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[114]~82_combout\);

-- Location: MLABCELL_X50_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[113]~72\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[113]~72_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[103]~71_combout\ & ( (\Div0|auto_generated|divider|divider|op_5~29_sumout\) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|StageOut[103]~71_combout\ & ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~29_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[103]~65_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~29_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[103]~65_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[103]~71_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[113]~72_combout\);

-- Location: MLABCELL_X50_Y4_N54
\Div0|auto_generated|divider|divider|StageOut[112]~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~55_combout\ = ( \Div0|auto_generated|divider|divider|op_5~25_sumout\ & ( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~25_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~55_combout\);

-- Location: MLABCELL_X50_Y4_N57
\Div0|auto_generated|divider|divider|StageOut[112]~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[112]~61_combout\ = (\Div0|auto_generated|divider|divider|StageOut[102]~60_combout\ & \Div0|auto_generated|divider|divider|op_5~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[102]~60_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[112]~61_combout\);

-- Location: MLABCELL_X50_Y4_N9
\Div0|auto_generated|divider|divider|StageOut[111]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[111]~16_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[101]~12_combout\ & ( (\Div0|auto_generated|divider|divider|op_5~13_sumout\) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|StageOut[101]~12_combout\ & ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & (\Div0|auto_generated|divider|divider|op_5~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[101]~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~13_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~15_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[101]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[111]~16_combout\);

-- Location: MLABCELL_X50_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[110]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~2_combout\ = (!\Div0|auto_generated|divider|divider|op_5~1_sumout\ & \Div0|auto_generated|divider|divider|op_5~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~2_combout\);

-- Location: MLABCELL_X50_Y4_N3
\Div0|auto_generated|divider|divider|StageOut[110]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[110]~5_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[100]~4_combout\ & ( \Div0|auto_generated|divider|divider|op_5~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[100]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[110]~5_combout\);

-- Location: MLABCELL_X50_Y4_N15
\Div0|auto_generated|divider|divider|StageOut[109]~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[109]~49_combout\ = ( \Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\) # (\Div0|auto_generated|divider|divider|StageOut[99]~48_combout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_5~21_sumout\ & ( (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[99]~48_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[99]~48_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[109]~49_combout\);

-- Location: MLABCELL_X50_Y4_N12
\Div0|auto_generated|divider|divider|StageOut[108]~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~89_combout\ = ( \Div0|auto_generated|divider|divider|op_5~37_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_5~1_sumout\) # (\Mult0~14\) ) ) # ( !\Div0|auto_generated|divider|divider|op_5~37_sumout\ 
-- & ( (\Div0|auto_generated|divider|divider|op_5~1_sumout\ & \Mult0~14\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	datac => \ALT_INV_Mult0~14\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_5~37_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~89_combout\);

-- Location: MLABCELL_X50_Y2_N18
\Div0|auto_generated|divider|divider|op_7~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~42_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_7~42_cout\);

-- Location: MLABCELL_X50_Y2_N21
\Div0|auto_generated|divider|divider|op_7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~37_sumout\ = SUM(( \Mult0~12\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~42_cout\ ))
-- \Div0|auto_generated|divider|divider|op_7~38\ = CARRY(( \Mult0~12\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_7~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~12\,
	cin => \Div0|auto_generated|divider|divider|op_7~42_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_7~37_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~38\);

-- Location: MLABCELL_X50_Y2_N24
\Div0|auto_generated|divider|divider|op_7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~33_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mult0~13\)) ) + ( VCC 
-- ) + ( \Div0|auto_generated|divider|divider|op_7~38\ ))
-- \Div0|auto_generated|divider|divider|op_7~34\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mult0~13\)) ) + ( VCC ) + 
-- ( \Div0|auto_generated|divider|divider|op_7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \ALT_INV_Mult0~13\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~37_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~38\,
	sumout => \Div0|auto_generated|divider|divider|op_7~33_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~34\);

-- Location: MLABCELL_X50_Y2_N27
\Div0|auto_generated|divider|divider|op_7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~29_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[108]~89_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_7~34\ ))
-- \Div0|auto_generated|divider|divider|op_7~30\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[108]~89_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[108]~89_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~33_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~34\,
	sumout => \Div0|auto_generated|divider|divider|op_7~29_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~30\);

-- Location: MLABCELL_X50_Y2_N30
\Div0|auto_generated|divider|divider|op_7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~17_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[109]~49_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_7~30\ ))
-- \Div0|auto_generated|divider|divider|op_7~18\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[109]~49_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[109]~49_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~30\,
	sumout => \Div0|auto_generated|divider|divider|op_7~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~18\);

-- Location: MLABCELL_X50_Y2_N33
\Div0|auto_generated|divider|divider|op_7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~5_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|op_6~9_sumout\)) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[110]~5_combout\) # (\Div0|auto_generated|divider|divider|StageOut[110]~2_combout\)))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~18\ ))
-- \Div0|auto_generated|divider|divider|op_7~6\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|op_6~9_sumout\)) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[110]~5_combout\) # (\Div0|auto_generated|divider|divider|StageOut[110]~2_combout\)))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~5_combout\,
	cin => \Div0|auto_generated|divider|divider|op_7~18\,
	sumout => \Div0|auto_generated|divider|divider|op_7~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~6\);

-- Location: MLABCELL_X50_Y2_N36
\Div0|auto_generated|divider|divider|op_7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~9_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[111]~16_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_7~6\ ))
-- \Div0|auto_generated|divider|divider|op_7~10\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[111]~16_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[111]~16_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~6\,
	sumout => \Div0|auto_generated|divider|divider|op_7~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~10\);

-- Location: MLABCELL_X50_Y2_N39
\Div0|auto_generated|divider|divider|op_7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~21_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_6~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[112]~61_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[112]~55_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_7~10\ ))
-- \Div0|auto_generated|divider|divider|op_7~22\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_6~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[112]~61_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[112]~55_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~55_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~61_combout\,
	cin => \Div0|auto_generated|divider|divider|op_7~10\,
	sumout => \Div0|auto_generated|divider|divider|op_7~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~22\);

-- Location: MLABCELL_X50_Y2_N42
\Div0|auto_generated|divider|divider|op_7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~25_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~29_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[113]~72_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_7~22\ ))
-- \Div0|auto_generated|divider|divider|op_7~26\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~29_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[113]~72_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[113]~72_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_7~22\,
	sumout => \Div0|auto_generated|divider|divider|op_7~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_7~26\);

-- Location: MLABCELL_X50_Y2_N45
\Div0|auto_generated|divider|divider|op_7~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~14_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|op_6~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[114]~82_combout\) # (\Div0|auto_generated|divider|divider|StageOut[114]~74_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_6~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~74_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[114]~82_combout\,
	cin => \Div0|auto_generated|divider|divider|op_7~26\,
	cout => \Div0|auto_generated|divider|divider|op_7~14_cout\);

-- Location: MLABCELL_X50_Y2_N48
\Div0|auto_generated|divider|divider|op_7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_7~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~14_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_7~1_sumout\);

-- Location: MLABCELL_X50_Y2_N15
\Div0|auto_generated|divider|divider|StageOut[123]~64\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~64_combout\ = ( \Div0|auto_generated|divider|divider|op_6~29_sumout\ & ( !\Div0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~29_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~64_combout\);

-- Location: MLABCELL_X50_Y2_N12
\Div0|auto_generated|divider|divider|StageOut[123]~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~73_combout\ = (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[113]~72_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[113]~72_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~73_combout\);

-- Location: MLABCELL_X50_Y2_N0
\Div0|auto_generated|divider|divider|StageOut[122]~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~62_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[112]~55_combout\ & ( (\Div0|auto_generated|divider|divider|op_6~25_sumout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|StageOut[112]~55_combout\ & ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~25_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[112]~61_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~61_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~25_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[112]~55_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~62_combout\);

-- Location: MLABCELL_X50_Y2_N6
\Div0|auto_generated|divider|divider|StageOut[121]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~11_combout\ = (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & \Div0|auto_generated|divider|divider|op_6~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~11_combout\);

-- Location: MLABCELL_X50_Y2_N9
\Div0|auto_generated|divider|divider|StageOut[121]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~17_combout\ = (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[111]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[111]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~17_combout\);

-- Location: MLABCELL_X50_Y2_N3
\Div0|auto_generated|divider|divider|StageOut[120]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~6_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[110]~2_combout\ & ( (\Div0|auto_generated|divider|divider|op_6~9_sumout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|StageOut[110]~2_combout\ & ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Div0|auto_generated|divider|divider|op_6~9_sumout\)) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[110]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~5_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[110]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~6_combout\);

-- Location: LABCELL_X51_Y2_N3
\Div0|auto_generated|divider|divider|StageOut[119]~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~47_combout\ = ( !\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_6~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~21_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~47_combout\);

-- Location: LABCELL_X51_Y2_N42
\Div0|auto_generated|divider|divider|StageOut[119]~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~50_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[109]~49_combout\ & ( \Div0|auto_generated|divider|divider|op_6~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[109]~49_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~50_combout\);

-- Location: MLABCELL_X50_Y2_N57
\Div0|auto_generated|divider|divider|StageOut[118]~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[118]~90_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[108]~89_combout\ & ( (\Div0|auto_generated|divider|divider|op_6~33_sumout\) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|StageOut[108]~89_combout\ & ( (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & \Div0|auto_generated|divider|divider|op_6~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_6~33_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[108]~89_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[118]~90_combout\);

-- Location: MLABCELL_X50_Y2_N54
\Div0|auto_generated|divider|divider|StageOut[117]~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[117]~97_combout\ = (!\Div0|auto_generated|divider|divider|op_6~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_6~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_6~1_sumout\ & (\Mult0~13\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	datac => \ALT_INV_Mult0~13\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_6~37_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[117]~97_combout\);

-- Location: LABCELL_X49_Y2_N12
\Div0|auto_generated|divider|divider|op_8~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~42_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_8~42_cout\);

-- Location: LABCELL_X49_Y2_N15
\Div0|auto_generated|divider|divider|op_8~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~37_sumout\ = SUM(( \Mult0~11\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_8~42_cout\ ))
-- \Div0|auto_generated|divider|divider|op_8~38\ = CARRY(( \Mult0~11\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_8~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~11\,
	cin => \Div0|auto_generated|divider|divider|op_8~42_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_8~37_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_8~38\);

-- Location: LABCELL_X49_Y2_N18
\Div0|auto_generated|divider|divider|op_8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~33_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mult0~12\)) ) + ( VCC 
-- ) + ( \Div0|auto_generated|divider|divider|op_8~38\ ))
-- \Div0|auto_generated|divider|divider|op_8~34\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mult0~12\)) ) + ( VCC ) + 
-- ( \Div0|auto_generated|divider|divider|op_8~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \ALT_INV_Mult0~12\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_7~37_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~38\,
	sumout => \Div0|auto_generated|divider|divider|op_8~33_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_8~34\);

-- Location: LABCELL_X49_Y2_N21
\Div0|auto_generated|divider|divider|op_8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~29_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[117]~97_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_8~34\ ))
-- \Div0|auto_generated|divider|divider|op_8~30\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[117]~97_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~97_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~34\,
	sumout => \Div0|auto_generated|divider|divider|op_8~29_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_8~30\);

-- Location: LABCELL_X49_Y2_N24
\Div0|auto_generated|divider|divider|op_8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~25_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~29_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[118]~90_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_8~30\ ))
-- \Div0|auto_generated|divider|divider|op_8~26\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~29_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[118]~90_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[118]~90_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~30\,
	sumout => \Div0|auto_generated|divider|divider|op_8~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_8~26\);

-- Location: LABCELL_X49_Y2_N27
\Div0|auto_generated|divider|divider|op_8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~17_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\Div0|auto_generated|divider|divider|op_7~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[119]~50_combout\) # (\Div0|auto_generated|divider|divider|StageOut[119]~47_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_8~26\ ))
-- \Div0|auto_generated|divider|divider|op_8~18\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\Div0|auto_generated|divider|divider|op_7~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[119]~50_combout\) # (\Div0|auto_generated|divider|divider|StageOut[119]~47_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[119]~47_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[119]~50_combout\,
	cin => \Div0|auto_generated|divider|divider|op_8~26\,
	sumout => \Div0|auto_generated|divider|divider|op_8~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_8~18\);

-- Location: LABCELL_X49_Y2_N30
\Div0|auto_generated|divider|divider|op_8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~5_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[120]~6_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_8~18\ ))
-- \Div0|auto_generated|divider|divider|op_8~6\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[120]~6_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~6_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~18\,
	sumout => \Div0|auto_generated|divider|divider|op_8~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_8~6\);

-- Location: LABCELL_X49_Y2_N33
\Div0|auto_generated|divider|divider|op_8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_7~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[121]~17_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[121]~11_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_8~6\ ))
-- \Div0|auto_generated|divider|divider|op_8~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_7~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[121]~17_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[121]~11_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~11_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~17_combout\,
	cin => \Div0|auto_generated|divider|divider|op_8~6\,
	sumout => \Div0|auto_generated|divider|divider|op_8~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_8~10\);

-- Location: LABCELL_X49_Y2_N36
\Div0|auto_generated|divider|divider|op_8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~21_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[122]~62_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_8~10\ ))
-- \Div0|auto_generated|divider|divider|op_8~22\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[122]~62_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~62_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_8~10\,
	sumout => \Div0|auto_generated|divider|divider|op_8~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_8~22\);

-- Location: LABCELL_X49_Y2_N39
\Div0|auto_generated|divider|divider|op_8~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~14_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_7~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[123]~73_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[123]~64_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[123]~64_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~25_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[123]~73_combout\,
	cin => \Div0|auto_generated|divider|divider|op_8~22\,
	cout => \Div0|auto_generated|divider|divider|op_8~14_cout\);

-- Location: LABCELL_X49_Y2_N42
\Div0|auto_generated|divider|divider|op_8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_8~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_8~14_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_8~1_sumout\);

-- Location: LABCELL_X51_Y2_N15
\Div0|auto_generated|divider|divider|StageOut[132]~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[132]~54_combout\ = ( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Div0|auto_generated|divider|divider|op_7~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[132]~54_combout\);

-- Location: LABCELL_X51_Y2_N18
\Div0|auto_generated|divider|divider|StageOut[132]~63\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[132]~63_combout\ = ( \Div0|auto_generated|divider|divider|op_7~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[122]~62_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[122]~62_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[132]~63_combout\);

-- Location: LABCELL_X49_Y2_N9
\Div0|auto_generated|divider|divider|StageOut[131]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~18_combout\ = (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_7~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[121]~11_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[121]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100111111000111010011111100011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~17_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[121]~11_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~18_combout\);

-- Location: LABCELL_X49_Y2_N48
\Div0|auto_generated|divider|divider|StageOut[130]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~1_combout\ = ( \Div0|auto_generated|divider|divider|op_7~5_sumout\ & ( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~1_combout\);

-- Location: LABCELL_X49_Y2_N51
\Div0|auto_generated|divider|divider|StageOut[130]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~7_combout\ = (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[120]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[120]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~7_combout\);

-- Location: LABCELL_X49_Y2_N6
\Div0|auto_generated|divider|divider|StageOut[129]~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[129]~51_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[119]~47_combout\ & ( (\Div0|auto_generated|divider|divider|op_7~17_sumout\) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|StageOut[119]~47_combout\ & ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\Div0|auto_generated|divider|divider|op_7~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[119]~50_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[119]~50_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[119]~47_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[129]~51_combout\);

-- Location: LABCELL_X49_Y2_N0
\Div0|auto_generated|divider|divider|StageOut[128]~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~88_combout\ = (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & \Div0|auto_generated|divider|divider|op_7~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~29_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~88_combout\);

-- Location: LABCELL_X49_Y2_N3
\Div0|auto_generated|divider|divider|StageOut[128]~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~91_combout\ = (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[118]~90_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[118]~90_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~91_combout\);

-- Location: LABCELL_X49_Y2_N57
\Div0|auto_generated|divider|divider|StageOut[127]~98\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~98_combout\ = ( \Div0|auto_generated|divider|divider|op_7~33_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_7~1_sumout\) # (\Div0|auto_generated|divider|divider|StageOut[117]~97_combout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_7~33_sumout\ & ( (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[117]~97_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[117]~97_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_7~33_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~98_combout\);

-- Location: LABCELL_X49_Y2_N54
\Div0|auto_generated|divider|divider|StageOut[126]~102\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~102_combout\ = (!\Div0|auto_generated|divider|divider|op_7~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_7~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_7~1_sumout\ & (\Mult0~12\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	datac => \ALT_INV_Mult0~12\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_7~37_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~102_combout\);

-- Location: LABCELL_X48_Y2_N24
\Div0|auto_generated|divider|divider|op_9~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~42_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_9~42_cout\);

-- Location: LABCELL_X48_Y2_N27
\Div0|auto_generated|divider|divider|op_9~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~37_sumout\ = SUM(( \Mult0~10\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_9~42_cout\ ))
-- \Div0|auto_generated|divider|divider|op_9~38\ = CARRY(( \Mult0~10\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_9~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~10\,
	cin => \Div0|auto_generated|divider|divider|op_9~42_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_9~37_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~38\);

-- Location: LABCELL_X48_Y2_N30
\Div0|auto_generated|divider|divider|op_9~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~33_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\Mult0~11\)) ) + ( VCC 
-- ) + ( \Div0|auto_generated|divider|divider|op_9~38\ ))
-- \Div0|auto_generated|divider|divider|op_9~34\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\Mult0~11\)) ) + ( VCC ) + 
-- ( \Div0|auto_generated|divider|divider|op_9~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \ALT_INV_Mult0~11\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_9~38\,
	sumout => \Div0|auto_generated|divider|divider|op_9~33_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~34\);

-- Location: LABCELL_X48_Y2_N33
\Div0|auto_generated|divider|divider|op_9~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~29_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[126]~102_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_9~34\ ))
-- \Div0|auto_generated|divider|divider|op_9~30\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[126]~102_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_9~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[126]~102_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_9~34\,
	sumout => \Div0|auto_generated|divider|divider|op_9~29_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~30\);

-- Location: LABCELL_X48_Y2_N36
\Div0|auto_generated|divider|divider|op_9~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~25_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~29_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[127]~98_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_9~30\ ))
-- \Div0|auto_generated|divider|divider|op_9~26\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~29_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[127]~98_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_9~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[127]~98_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_9~30\,
	sumout => \Div0|auto_generated|divider|divider|op_9~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~26\);

-- Location: LABCELL_X48_Y2_N39
\Div0|auto_generated|divider|divider|op_9~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~21_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_8~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[128]~91_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[128]~88_combout\))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_9~26\ ))
-- \Div0|auto_generated|divider|divider|op_9~22\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_8~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[128]~91_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[128]~88_combout\))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_9~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[128]~88_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[128]~91_combout\,
	cin => \Div0|auto_generated|divider|divider|op_9~26\,
	sumout => \Div0|auto_generated|divider|divider|op_9~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~22\);

-- Location: LABCELL_X48_Y2_N42
\Div0|auto_generated|divider|divider|op_9~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[129]~51_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_9~22\ ))
-- \Div0|auto_generated|divider|divider|op_9~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[129]~51_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_9~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[129]~51_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_9~22\,
	sumout => \Div0|auto_generated|divider|divider|op_9~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~18\);

-- Location: LABCELL_X48_Y2_N45
\Div0|auto_generated|divider|divider|op_9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~5_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\Div0|auto_generated|divider|divider|op_8~5_sumout\)) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[130]~7_combout\) # (\Div0|auto_generated|divider|divider|StageOut[130]~1_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_9~18\ ))
-- \Div0|auto_generated|divider|divider|op_9~6\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & (\Div0|auto_generated|divider|divider|op_8~5_sumout\)) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[130]~7_combout\) # (\Div0|auto_generated|divider|divider|StageOut[130]~1_combout\)))) ) + ( \Div0|auto_generated|divider|divider|op_9~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~1_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~7_combout\,
	cin => \Div0|auto_generated|divider|divider|op_9~18\,
	sumout => \Div0|auto_generated|divider|divider|op_9~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~6\);

-- Location: LABCELL_X48_Y2_N48
\Div0|auto_generated|divider|divider|op_9~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~9_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[131]~18_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_9~6\ ))
-- \Div0|auto_generated|divider|divider|op_9~10\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_8~9_sumout\))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[131]~18_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_9~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[131]~18_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_9~6\,
	sumout => \Div0|auto_generated|divider|divider|op_9~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_9~10\);

-- Location: LABCELL_X48_Y2_N51
\Div0|auto_generated|divider|divider|op_9~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~14_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_8~21_sumout\)))) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[132]~63_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[132]~54_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_9~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~54_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_8~21_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[132]~63_combout\,
	cin => \Div0|auto_generated|divider|divider|op_9~10\,
	cout => \Div0|auto_generated|divider|divider|op_9~14_cout\);

-- Location: LABCELL_X48_Y2_N54
\Div0|auto_generated|divider|divider|op_9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_9~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_9~14_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_9~1_sumout\);

-- Location: MLABCELL_X47_Y1_N0
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_9~1_sumout\ ) + ( VCC ) + ( !VCC ))
-- \Add0~30\ = CARRY(( !\Div0|auto_generated|divider|divider|op_9~1_sumout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	cin => GND,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: MLABCELL_X47_Y1_N3
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_8~1_sumout\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( !\Div0|auto_generated|divider|divider|op_8~1_sumout\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: MLABCELL_X47_Y1_N6
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ ) + ( VCC ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( !\Div0|auto_generated|divider|divider|op_7~1_sumout\ ) + ( VCC ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_7~1_sumout\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: MLABCELL_X47_Y1_N9
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_6~1_sumout\ ) + ( VCC ) + ( \Add0~38\ ))
-- \Add0~18\ = CARRY(( !\Div0|auto_generated|divider|divider|op_6~1_sumout\ ) + ( VCC ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_6~1_sumout\,
	cin => \Add0~38\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: MLABCELL_X47_Y1_N12
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ ) + ( VCC ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( !\Div0|auto_generated|divider|divider|op_5~1_sumout\ ) + ( VCC ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_5~1_sumout\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X49_Y1_N21
\Duty_Cycle[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Duty_Cycle[6]~2_combout\ = ( !\Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~21_sumout\,
	combout => \Duty_Cycle[6]~2_combout\);

-- Location: IOIBUF_X4_Y61_N35
\address~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address,
	o => \address~input_o\);

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

-- Location: IOIBUF_X4_Y61_N52
\write_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_n,
	o => \write_n~input_o\);

-- Location: MLABCELL_X8_Y57_N0
\process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ( \write_n~input_o\ & ( (\address~input_o\ & \chip_select~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_address~input_o\,
	datac => \ALT_INV_chip_select~input_o\,
	dataf => \ALT_INV_write_n~input_o\,
	combout => \process_0~0_combout\);

-- Location: FF_X49_Y1_N23
\Duty_Cycle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Duty_Cycle[6]~2_combout\,
	clrn => \RST_n~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Duty_Cycle(6));

-- Location: LABCELL_X49_Y1_N30
\Duty_Cycle[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Duty_Cycle[5]~1_combout\ = ( !\Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add0~17_sumout\,
	combout => \Duty_Cycle[5]~1_combout\);

-- Location: FF_X49_Y1_N32
\Duty_Cycle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Duty_Cycle[5]~1_combout\,
	clrn => \RST_n~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Duty_Cycle(5));

-- Location: FF_X48_Y1_N17
\Count_us[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[5]~DUPLICATE_q\);

-- Location: FF_X46_Y1_N19
\Count_Div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_Div(5));

-- Location: LABCELL_X46_Y1_N30
\Count_Div~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_Div~2_combout\ = ( Count_Div(3) & ( Count_Div(5) & ( (!Count_Div(4) & ((!Count_Div(1)) # ((!\Count_Div[0]~DUPLICATE_q\) # (!Count_Div(2))))) ) ) ) # ( !Count_Div(3) & ( Count_Div(5) & ( (Count_Div(1) & (\Count_Div[0]~DUPLICATE_q\ & (Count_Div(2) & 
-- !Count_Div(4)))) ) ) ) # ( Count_Div(3) & ( !Count_Div(5) & ( (!Count_Div(1)) # ((!\Count_Div[0]~DUPLICATE_q\) # (!Count_Div(2))) ) ) ) # ( !Count_Div(3) & ( !Count_Div(5) & ( (Count_Div(1) & (\Count_Div[0]~DUPLICATE_q\ & Count_Div(2))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111111101111111000000001000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count_Div(1),
	datab => \ALT_INV_Count_Div[0]~DUPLICATE_q\,
	datac => ALT_INV_Count_Div(2),
	datad => ALT_INV_Count_Div(4),
	datae => ALT_INV_Count_Div(3),
	dataf => ALT_INV_Count_Div(5),
	combout => \Count_Div~2_combout\);

-- Location: FF_X46_Y1_N32
\Count_Div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~2_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_Div(3));

-- Location: LABCELL_X46_Y1_N12
\Count_Div~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_Div~1_combout\ = ( Count_Div(4) & ( Count_Div(5) & ( (!Count_Div(1) & (!\Count_Div[0]~DUPLICATE_q\ & (!Count_Div(2) & !Count_Div(3)))) ) ) ) # ( !Count_Div(4) & ( Count_Div(5) & ( (Count_Div(1) & (\Count_Div[0]~DUPLICATE_q\ & (Count_Div(2) & 
-- Count_Div(3)))) ) ) ) # ( Count_Div(4) & ( !Count_Div(5) & ( (!Count_Div(1)) # ((!\Count_Div[0]~DUPLICATE_q\) # ((!Count_Div(2)) # (!Count_Div(3)))) ) ) ) # ( !Count_Div(4) & ( !Count_Div(5) & ( (Count_Div(1) & (\Count_Div[0]~DUPLICATE_q\ & (Count_Div(2) 
-- & Count_Div(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111111111111000000000000000011000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count_Div(1),
	datab => \ALT_INV_Count_Div[0]~DUPLICATE_q\,
	datac => ALT_INV_Count_Div(2),
	datad => ALT_INV_Count_Div(3),
	datae => ALT_INV_Count_Div(4),
	dataf => ALT_INV_Count_Div(5),
	combout => \Count_Div~1_combout\);

-- Location: FF_X46_Y1_N14
\Count_Div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~1_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_Div(4));

-- Location: LABCELL_X46_Y1_N24
\Count_Div~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_Div~3_combout\ = ( Count_Div(2) & ( Count_Div(5) & ( (!Count_Div(4) & ((!\Count_Div[0]~DUPLICATE_q\) # (!Count_Div(1)))) ) ) ) # ( !Count_Div(2) & ( Count_Div(5) & ( (\Count_Div[0]~DUPLICATE_q\ & (Count_Div(1) & !Count_Div(4))) ) ) ) # ( 
-- Count_Div(2) & ( !Count_Div(5) & ( (!\Count_Div[0]~DUPLICATE_q\) # (!Count_Div(1)) ) ) ) # ( !Count_Div(2) & ( !Count_Div(5) & ( (\Count_Div[0]~DUPLICATE_q\ & Count_Div(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111001111110000000011000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Count_Div[0]~DUPLICATE_q\,
	datac => ALT_INV_Count_Div(1),
	datad => ALT_INV_Count_Div(4),
	datae => ALT_INV_Count_Div(2),
	dataf => ALT_INV_Count_Div(5),
	combout => \Count_Div~3_combout\);

-- Location: FF_X46_Y1_N26
\Count_Div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~3_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_Div(2));

-- Location: FF_X46_Y1_N7
\Count_Div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~5_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_Div(0));

-- Location: LABCELL_X46_Y1_N6
\Count_Div~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_Div~5_combout\ = ( !Count_Div(0) & ( Count_Div(3) & ( (!\Count_Div[5]~DUPLICATE_q\) # (!Count_Div(4)) ) ) ) # ( !Count_Div(0) & ( !Count_Div(3) & ( (!\Count_Div[5]~DUPLICATE_q\) # ((!Count_Div(4)) # ((!Count_Div(2) & !Count_Div(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111000000000000000000011111111111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count_Div(2),
	datab => ALT_INV_Count_Div(1),
	datac => \ALT_INV_Count_Div[5]~DUPLICATE_q\,
	datad => ALT_INV_Count_Div(4),
	datae => ALT_INV_Count_Div(0),
	dataf => ALT_INV_Count_Div(3),
	combout => \Count_Div~5_combout\);

-- Location: FF_X46_Y1_N8
\Count_Div[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~5_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_Div[0]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y1_N51
\Count_Div~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_Div~4_combout\ = ( Count_Div(1) & ( \Count_Div[5]~DUPLICATE_q\ & ( (!\Count_Div[0]~DUPLICATE_q\ & !Count_Div(4)) ) ) ) # ( !Count_Div(1) & ( \Count_Div[5]~DUPLICATE_q\ & ( (\Count_Div[0]~DUPLICATE_q\ & !Count_Div(4)) ) ) ) # ( Count_Div(1) & ( 
-- !\Count_Div[5]~DUPLICATE_q\ & ( !\Count_Div[0]~DUPLICATE_q\ ) ) ) # ( !Count_Div(1) & ( !\Count_Div[5]~DUPLICATE_q\ & ( \Count_Div[0]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010000010100001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count_Div[0]~DUPLICATE_q\,
	datac => ALT_INV_Count_Div(4),
	datae => ALT_INV_Count_Div(1),
	dataf => \ALT_INV_Count_Div[5]~DUPLICATE_q\,
	combout => \Count_Div~4_combout\);

-- Location: FF_X45_Y1_N52
\Count_Div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~4_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_Div(1));

-- Location: LABCELL_X46_Y1_N18
\Count_Div~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_Div~0_combout\ = ( Count_Div(5) & ( Count_Div(3) & ( !Count_Div(4) ) ) ) # ( !Count_Div(5) & ( Count_Div(3) & ( (Count_Div(1) & (\Count_Div[0]~DUPLICATE_q\ & (Count_Div(2) & Count_Div(4)))) ) ) ) # ( Count_Div(5) & ( !Count_Div(3) & ( 
-- (!Count_Div(4)) # ((!Count_Div(1) & (!\Count_Div[0]~DUPLICATE_q\ & !Count_Div(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111000000000000000000000011111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count_Div(1),
	datab => \ALT_INV_Count_Div[0]~DUPLICATE_q\,
	datac => ALT_INV_Count_Div(2),
	datad => ALT_INV_Count_Div(4),
	datae => ALT_INV_Count_Div(5),
	dataf => ALT_INV_Count_Div(3),
	combout => \Count_Div~0_combout\);

-- Location: FF_X46_Y1_N20
\Count_Div[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_Div[5]~DUPLICATE_q\);

-- Location: FF_X46_Y1_N25
\Count_Div[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~3_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_Div[2]~DUPLICATE_q\);

-- Location: FF_X46_Y1_N13
\Count_Div[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Count_Div~1_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_Div[4]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y1_N51
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( Count_Div(0) & ( \Count_Div[4]~DUPLICATE_q\ & ( \Count_Div[5]~DUPLICATE_q\ ) ) ) # ( !Count_Div(0) & ( \Count_Div[4]~DUPLICATE_q\ & ( (\Count_Div[5]~DUPLICATE_q\ & (((Count_Div(1)) # (\Count_Div[2]~DUPLICATE_q\)) # 
-- (Count_Div(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count_Div[5]~DUPLICATE_q\,
	datab => ALT_INV_Count_Div(3),
	datac => \ALT_INV_Count_Div[2]~DUPLICATE_q\,
	datad => ALT_INV_Count_Div(1),
	datae => ALT_INV_Count_Div(0),
	dataf => \ALT_INV_Count_Div[4]~DUPLICATE_q\,
	combout => \LessThan0~0_combout\);

-- Location: FF_X47_Y1_N52
Tick1us : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \LessThan0~0_combout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tick1us~q\);

-- Location: LABCELL_X48_Y1_N0
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( \Count_us[0]~DUPLICATE_q\ ) + ( \Tick1us~q\ ) + ( !VCC ))
-- \Add2~10\ = CARRY(( \Count_us[0]~DUPLICATE_q\ ) + ( \Tick1us~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Tick1us~q\,
	datad => \ALT_INV_Count_us[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: FF_X48_Y1_N2
\Count_us[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[0]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N3
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( Count_us(1) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~6\ = CARRY(( Count_us(1) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Count_us(1),
	cin => \Add2~10\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: FF_X48_Y1_N5
\Count_us[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(1));

-- Location: LABCELL_X48_Y1_N6
\Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~57_sumout\ = SUM(( \Count_us[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~6\ ))
-- \Add2~58\ = CARRY(( \Count_us[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Count_us[2]~DUPLICATE_q\,
	cin => \Add2~6\,
	sumout => \Add2~57_sumout\,
	cout => \Add2~58\);

-- Location: FF_X48_Y1_N7
\Count_us[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[2]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N9
\Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( \Count_us[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~58\ ))
-- \Add2~54\ = CARRY(( \Count_us[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Count_us[3]~DUPLICATE_q\,
	cin => \Add2~58\,
	sumout => \Add2~53_sumout\,
	cout => \Add2~54\);

-- Location: FF_X48_Y1_N11
\Count_us[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[3]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N12
\Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( \Count_us[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~54\ ))
-- \Add2~50\ = CARRY(( \Count_us[4]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Count_us[4]~DUPLICATE_q\,
	cin => \Add2~54\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: FF_X48_Y1_N14
\Count_us[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[4]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N15
\Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( \Count_us[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~50\ ))
-- \Add2~46\ = CARRY(( \Count_us[5]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Count_us[5]~DUPLICATE_q\,
	cin => \Add2~50\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: FF_X48_Y1_N16
\Count_us[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~45_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(5));

-- Location: MLABCELL_X47_Y1_N15
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ ) + ( VCC ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ ) + ( VCC ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X46_Y1_N57
\Duty_Cycle[7]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Duty_Cycle[7]~3_combout\ = ( !\Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add0~25_sumout\,
	combout => \Duty_Cycle[7]~3_combout\);

-- Location: FF_X49_Y1_N2
\Duty_Cycle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Duty_Cycle[7]~3_combout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Duty_Cycle(7));

-- Location: FF_X48_Y1_N20
\Count_us[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[6]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N18
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( \Count_us[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~42\ = CARRY(( \Count_us[6]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Count_us[6]~DUPLICATE_q\,
	cin => \Add2~46\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: FF_X48_Y1_N19
\Count_us[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~41_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(6));

-- Location: LABCELL_X49_Y1_N3
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( Count_us(7) & ( Count_us(6) & ( (!Duty_Cycle(6) & (!Duty_Cycle(7) & (!Duty_Cycle(5) $ (!Count_us(5))))) ) ) ) # ( !Count_us(7) & ( Count_us(6) & ( (!Duty_Cycle(6) & (Duty_Cycle(7) & (!Duty_Cycle(5) $ (!Count_us(5))))) ) ) ) # ( 
-- Count_us(7) & ( !Count_us(6) & ( (Duty_Cycle(6) & (!Duty_Cycle(7) & (!Duty_Cycle(5) $ (!Count_us(5))))) ) ) ) # ( !Count_us(7) & ( !Count_us(6) & ( (Duty_Cycle(6) & (Duty_Cycle(7) & (!Duty_Cycle(5) $ (!Count_us(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000101000000000000000000001010000010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Duty_Cycle(6),
	datab => ALT_INV_Duty_Cycle(5),
	datac => ALT_INV_Count_us(5),
	datad => ALT_INV_Duty_Cycle(7),
	datae => ALT_INV_Count_us(7),
	dataf => ALT_INV_Count_us(6),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X48_Y2_N21
\Div0|auto_generated|divider|divider|StageOut[141]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~10_combout\ = ( \Div0|auto_generated|divider|divider|op_8~9_sumout\ & ( !\Div0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_8~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~10_combout\);

-- Location: LABCELL_X48_Y2_N18
\Div0|auto_generated|divider|divider|StageOut[141]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~19_combout\ = (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[131]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[131]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~19_combout\);

-- Location: LABCELL_X48_Y2_N3
\Div0|auto_generated|divider|divider|StageOut[140]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~8_combout\ = ( \Div0|auto_generated|divider|divider|op_8~5_sumout\ & ( ((!\Div0|auto_generated|divider|divider|op_8~1_sumout\) # (\Div0|auto_generated|divider|divider|StageOut[130]~1_combout\)) # 
-- (\Div0|auto_generated|divider|divider|StageOut[130]~7_combout\) ) ) # ( !\Div0|auto_generated|divider|divider|op_8~5_sumout\ & ( (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[130]~1_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[130]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[130]~1_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_8~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~8_combout\);

-- Location: LABCELL_X48_Y2_N15
\Div0|auto_generated|divider|divider|StageOut[139]~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[139]~46_combout\ = (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & \Div0|auto_generated|divider|divider|op_8~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_8~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[139]~46_combout\);

-- Location: LABCELL_X48_Y2_N12
\Div0|auto_generated|divider|divider|StageOut[139]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[139]~52_combout\ = (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[129]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[129]~51_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[139]~52_combout\);

-- Location: LABCELL_X48_Y2_N0
\Div0|auto_generated|divider|divider|StageOut[138]~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~92_combout\ = ( \Div0|auto_generated|divider|divider|op_8~25_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\) # ((\Div0|auto_generated|divider|divider|StageOut[128]~91_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[128]~88_combout\)) ) ) # ( !\Div0|auto_generated|divider|divider|op_8~25_sumout\ & ( (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & ((\Div0|auto_generated|divider|divider|StageOut[128]~91_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[128]~88_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001111001111111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[128]~88_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[128]~91_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_8~25_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~92_combout\);

-- Location: LABCELL_X51_Y2_N30
\Div0|auto_generated|divider|divider|StageOut[137]~96\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~96_combout\ = ( \Div0|auto_generated|divider|divider|op_8~29_sumout\ & ( !\Div0|auto_generated|divider|divider|op_8~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_8~29_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~96_combout\);

-- Location: LABCELL_X45_Y2_N39
\Div0|auto_generated|divider|divider|StageOut[137]~99\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~99_combout\ = ( \Div0|auto_generated|divider|divider|op_8~1_sumout\ & ( \Div0|auto_generated|divider|divider|StageOut[127]~98_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[127]~98_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~99_combout\);

-- Location: LABCELL_X48_Y2_N9
\Div0|auto_generated|divider|divider|StageOut[136]~103\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~103_combout\ = ( \Div0|auto_generated|divider|divider|op_8~33_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_8~1_sumout\) # (\Div0|auto_generated|divider|divider|StageOut[126]~102_combout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_8~33_sumout\ & ( (\Div0|auto_generated|divider|divider|op_8~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[126]~102_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[126]~102_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_8~33_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~103_combout\);

-- Location: LABCELL_X48_Y2_N6
\Div0|auto_generated|divider|divider|StageOut[135]~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~105_combout\ = ( \Mult0~11\ & ( (\Div0|auto_generated|divider|divider|op_8~37_sumout\) # (\Div0|auto_generated|divider|divider|op_8~1_sumout\) ) ) # ( !\Mult0~11\ & ( 
-- (!\Div0|auto_generated|divider|divider|op_8~1_sumout\ & \Div0|auto_generated|divider|divider|op_8~37_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_8~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_8~37_sumout\,
	dataf => \ALT_INV_Mult0~11\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~105_combout\);

-- Location: MLABCELL_X47_Y2_N0
\Div0|auto_generated|divider|divider|op_10~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~42_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_10~42_cout\);

-- Location: MLABCELL_X47_Y2_N3
\Div0|auto_generated|divider|divider|op_10~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~37_sumout\ = SUM(( \Mult0~9\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_10~42_cout\ ))
-- \Div0|auto_generated|divider|divider|op_10~38\ = CARRY(( \Mult0~9\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_10~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mult0~9\,
	cin => \Div0|auto_generated|divider|divider|op_10~42_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_10~37_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~38\);

-- Location: MLABCELL_X47_Y2_N6
\Div0|auto_generated|divider|divider|op_10~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~33_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\Mult0~10\)) ) + ( 
-- VCC ) + ( \Div0|auto_generated|divider|divider|op_10~38\ ))
-- \Div0|auto_generated|divider|divider|op_10~34\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\Mult0~10\)) ) + ( VCC ) + 
-- ( \Div0|auto_generated|divider|divider|op_10~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \ALT_INV_Mult0~10\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_10~38\,
	sumout => \Div0|auto_generated|divider|divider|op_10~33_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~34\);

-- Location: MLABCELL_X47_Y2_N9
\Div0|auto_generated|divider|divider|op_10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~29_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[135]~105_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_10~34\ ))
-- \Div0|auto_generated|divider|divider|op_10~30\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[135]~105_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_10~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[135]~105_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_10~34\,
	sumout => \Div0|auto_generated|divider|divider|op_10~29_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~30\);

-- Location: MLABCELL_X47_Y2_N12
\Div0|auto_generated|divider|divider|op_10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~25_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~29_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[136]~103_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_10~30\ ))
-- \Div0|auto_generated|divider|divider|op_10~26\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~29_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[136]~103_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[136]~103_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_10~30\,
	sumout => \Div0|auto_generated|divider|divider|op_10~25_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~26\);

-- Location: MLABCELL_X47_Y2_N15
\Div0|auto_generated|divider|divider|op_10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~21_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_9~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[137]~99_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[137]~96_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_10~26\ ))
-- \Div0|auto_generated|divider|divider|op_10~22\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_9~25_sumout\)))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[137]~99_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[137]~96_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~96_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~99_combout\,
	cin => \Div0|auto_generated|divider|divider|op_10~26\,
	sumout => \Div0|auto_generated|divider|divider|op_10~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~22\);

-- Location: MLABCELL_X47_Y2_N18
\Div0|auto_generated|divider|divider|op_10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~17_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[138]~92_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_10~22\ ))
-- \Div0|auto_generated|divider|divider|op_10~18\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[138]~92_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[138]~92_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_10~22\,
	sumout => \Div0|auto_generated|divider|divider|op_10~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~18\);

-- Location: MLABCELL_X47_Y2_N21
\Div0|auto_generated|divider|divider|op_10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~13_sumout\ = SUM(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_9~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[139]~52_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[139]~46_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_10~18\ ))
-- \Div0|auto_generated|divider|divider|op_10~14\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_9~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[139]~52_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[139]~46_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[139]~46_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[139]~52_combout\,
	cin => \Div0|auto_generated|divider|divider|op_10~18\,
	sumout => \Div0|auto_generated|divider|divider|op_10~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~14\);

-- Location: MLABCELL_X47_Y2_N24
\Div0|auto_generated|divider|divider|op_10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~9_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[140]~8_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_10~14\ ))
-- \Div0|auto_generated|divider|divider|op_10~10\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~5_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[140]~8_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_10~14\,
	sumout => \Div0|auto_generated|divider|divider|op_10~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_10~10\);

-- Location: MLABCELL_X47_Y2_N27
\Div0|auto_generated|divider|divider|op_10~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~6_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_9~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[141]~19_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[141]~10_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111000101100000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_9~9_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[141]~19_combout\,
	cin => \Div0|auto_generated|divider|divider|op_10~10\,
	cout => \Div0|auto_generated|divider|divider|op_10~6_cout\);

-- Location: MLABCELL_X47_Y2_N30
\Div0|auto_generated|divider|divider|op_10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_10~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_10~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_10~1_sumout\);

-- Location: LABCELL_X46_Y2_N0
\Duty_Cycle[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Duty_Cycle[1]~5_combout\ = ( !\Div0|auto_generated|divider|divider|op_10~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	combout => \Duty_Cycle[1]~5_combout\);

-- Location: FF_X47_Y1_N31
\Duty_Cycle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Duty_Cycle[1]~5_combout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Duty_Cycle(1));

-- Location: LABCELL_X46_Y2_N12
\Div0|auto_generated|divider|divider|StageOut[150]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[150]~0_combout\ = ( \Div0|auto_generated|divider|divider|op_9~5_sumout\ & ( !\Div0|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_9~5_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[150]~0_combout\);

-- Location: MLABCELL_X47_Y2_N48
\Div0|auto_generated|divider|divider|StageOut[150]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[150]~9_combout\ = (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[140]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[140]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[150]~9_combout\);

-- Location: MLABCELL_X47_Y2_N57
\Div0|auto_generated|divider|divider|StageOut[149]~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[149]~53_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[139]~52_combout\ & ( (\Div0|auto_generated|divider|divider|op_9~17_sumout\) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|StageOut[139]~52_combout\ & ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\Div0|auto_generated|divider|divider|op_9~17_sumout\)) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[139]~46_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_9~17_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[139]~46_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[139]~52_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[149]~53_combout\);

-- Location: LABCELL_X46_Y2_N15
\Div0|auto_generated|divider|divider|StageOut[148]~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[148]~87_combout\ = (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & \Div0|auto_generated|divider|divider|op_9~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_9~21_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[148]~87_combout\);

-- Location: MLABCELL_X47_Y2_N51
\Div0|auto_generated|divider|divider|StageOut[148]~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[148]~93_combout\ = (\Div0|auto_generated|divider|divider|StageOut[138]~92_combout\ & \Div0|auto_generated|divider|divider|op_9~1_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[138]~92_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[148]~93_combout\);

-- Location: MLABCELL_X47_Y2_N54
\Div0|auto_generated|divider|divider|StageOut[147]~100\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~100_combout\ = ( \Div0|auto_generated|divider|divider|StageOut[137]~96_combout\ & ( (\Div0|auto_generated|divider|divider|op_9~25_sumout\) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|StageOut[137]~96_combout\ & ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~25_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[137]~99_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~99_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_9~25_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[137]~96_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~100_combout\);

-- Location: MLABCELL_X47_Y2_N39
\Div0|auto_generated|divider|divider|StageOut[146]~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~101_combout\ = ( \Div0|auto_generated|divider|divider|op_9~29_sumout\ & ( !\Div0|auto_generated|divider|divider|op_9~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_9~29_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~101_combout\);

-- Location: MLABCELL_X47_Y2_N36
\Div0|auto_generated|divider|divider|StageOut[146]~104\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~104_combout\ = (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[136]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[136]~103_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~104_combout\);

-- Location: MLABCELL_X47_Y2_N45
\Div0|auto_generated|divider|divider|StageOut[145]~106\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~106_combout\ = ( \Div0|auto_generated|divider|divider|op_9~33_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_9~1_sumout\) # (\Div0|auto_generated|divider|divider|StageOut[135]~105_combout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_9~33_sumout\ & ( (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & \Div0|auto_generated|divider|divider|StageOut[135]~105_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[135]~105_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_9~33_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~106_combout\);

-- Location: MLABCELL_X47_Y2_N42
\Div0|auto_generated|divider|divider|StageOut[144]~107\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[144]~107_combout\ = (!\Div0|auto_generated|divider|divider|op_9~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_9~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_9~1_sumout\ & (\Mult0~10\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_9~1_sumout\,
	datac => \ALT_INV_Mult0~10\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_9~37_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[144]~107_combout\);

-- Location: LABCELL_X46_Y2_N18
\Div0|auto_generated|divider|divider|op_11~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~42_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_11~42_cout\);

-- Location: LABCELL_X46_Y2_N21
\Div0|auto_generated|divider|divider|op_11~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~38_cout\ = CARRY(( \Mult0~8_resulta\ ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_11~42_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~8_resulta\,
	cin => \Div0|auto_generated|divider|divider|op_11~42_cout\,
	cout => \Div0|auto_generated|divider|divider|op_11~38_cout\);

-- Location: LABCELL_X46_Y2_N24
\Div0|auto_generated|divider|divider|op_11~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~34_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_10~37_sumout\))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\Mult0~9\)) ) + ( 
-- VCC ) + ( \Div0|auto_generated|divider|divider|op_11~38_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \ALT_INV_Mult0~9\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_10~37_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_11~38_cout\,
	cout => \Div0|auto_generated|divider|divider|op_11~34_cout\);

-- Location: LABCELL_X46_Y2_N27
\Div0|auto_generated|divider|divider|op_11~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~30_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_10~33_sumout\))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[144]~107_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_11~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[144]~107_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_10~33_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_11~34_cout\,
	cout => \Div0|auto_generated|divider|divider|op_11~30_cout\);

-- Location: LABCELL_X46_Y2_N30
\Div0|auto_generated|divider|divider|op_11~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~26_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_10~29_sumout\))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[145]~106_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_11~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[145]~106_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_10~29_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_11~30_cout\,
	cout => \Div0|auto_generated|divider|divider|op_11~26_cout\);

-- Location: LABCELL_X46_Y2_N33
\Div0|auto_generated|divider|divider|op_11~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~22_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (\Div0|auto_generated|divider|divider|op_10~25_sumout\)) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[146]~104_combout\) # (\Div0|auto_generated|divider|divider|StageOut[146]~101_combout\)))) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_11~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000010011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_10~25_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~101_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[146]~104_combout\,
	cin => \Div0|auto_generated|divider|divider|op_11~26_cout\,
	cout => \Div0|auto_generated|divider|divider|op_11~22_cout\);

-- Location: LABCELL_X46_Y2_N36
\Div0|auto_generated|divider|divider|op_11~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~18_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_10~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[147]~100_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_11~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[147]~100_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_10~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_11~22_cout\,
	cout => \Div0|auto_generated|divider|divider|op_11~18_cout\);

-- Location: LABCELL_X46_Y2_N39
\Div0|auto_generated|divider|divider|op_11~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~14_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_10~17_sumout\)))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[148]~93_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[148]~87_combout\))) ) + ( \Div0|auto_generated|divider|divider|op_11~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111001001010000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~87_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_10~17_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[148]~93_combout\,
	cin => \Div0|auto_generated|divider|divider|op_11~18_cout\,
	cout => \Div0|auto_generated|divider|divider|op_11~14_cout\);

-- Location: LABCELL_X46_Y2_N42
\Div0|auto_generated|divider|divider|op_11~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~10_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_10~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[149]~53_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_11~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[149]~53_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_10~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_11~14_cout\,
	cout => \Div0|auto_generated|divider|divider|op_11~10_cout\);

-- Location: LABCELL_X46_Y2_N45
\Div0|auto_generated|divider|divider|op_11~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_10~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_10~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_10~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[150]~9_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[150]~0_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_11~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_10~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[150]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_10~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[150]~9_combout\,
	cin => \Div0|auto_generated|divider|divider|op_11~10_cout\,
	cout => \Div0|auto_generated|divider|divider|op_11~6_cout\);

-- Location: LABCELL_X46_Y2_N48
\Div0|auto_generated|divider|divider|op_11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_11~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_11~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_11~1_sumout\);

-- Location: LABCELL_X46_Y1_N3
\Duty_Cycle[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Duty_Cycle[0]~4_combout\ = ( !\Div0|auto_generated|divider|divider|op_11~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_11~1_sumout\,
	combout => \Duty_Cycle[0]~4_combout\);

-- Location: FF_X46_Y1_N4
\Duty_Cycle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Duty_Cycle[0]~4_combout\,
	clrn => \RST_n~input_o\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Duty_Cycle(0));

-- Location: LABCELL_X48_Y1_N21
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( \Count_us[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~2\ = CARRY(( \Count_us[7]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Count_us[7]~DUPLICATE_q\,
	cin => \Add2~42\,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X48_Y1_N24
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( \Count_us[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~38\ = CARRY(( \Count_us[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Count_us[8]~DUPLICATE_q\,
	cin => \Add2~2\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: FF_X48_Y1_N26
\Count_us[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[8]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N27
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( \Count_us[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~38\ ))
-- \Add2~34\ = CARRY(( \Count_us[9]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Count_us[9]~DUPLICATE_q\,
	cin => \Add2~38\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: FF_X48_Y1_N29
\Count_us[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[9]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N30
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( Count_us(10) ) + ( GND ) + ( \Add2~34\ ))
-- \Add2~30\ = CARRY(( Count_us(10) ) + ( GND ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Count_us(10),
	cin => \Add2~34\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: FF_X48_Y1_N31
\Count_us[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~29_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(10));

-- Location: LABCELL_X48_Y1_N33
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( \Count_us[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~30\ ))
-- \Add2~26\ = CARRY(( \Count_us[11]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Count_us[11]~DUPLICATE_q\,
	cin => \Add2~30\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: FF_X48_Y1_N35
\Count_us[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[11]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N36
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( \Count_us[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~26\ ))
-- \Add2~18\ = CARRY(( \Count_us[12]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Count_us[12]~DUPLICATE_q\,
	cin => \Add2~26\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: LABCELL_X48_Y1_N39
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( Count_us(13) ) + ( GND ) + ( \Add2~18\ ))
-- \Add2~14\ = CARRY(( Count_us(13) ) + ( GND ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Count_us(13),
	cin => \Add2~18\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: FF_X48_Y1_N41
\Count_us[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(13));

-- Location: LABCELL_X48_Y1_N42
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( \Count_us[14]~DUPLICATE_q\ ) + ( GND ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Count_us[14]~DUPLICATE_q\,
	cin => \Add2~14\,
	sumout => \Add2~21_sumout\);

-- Location: FF_X48_Y1_N44
\Count_us[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[14]~DUPLICATE_q\);

-- Location: FF_X48_Y1_N4
\Count_us[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~5_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[1]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y1_N39
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Count_us[1]~DUPLICATE_q\ & ( (Duty_Cycle(1) & (!\Count_us[14]~DUPLICATE_q\ & (!Duty_Cycle(0) $ (\Count_us[0]~DUPLICATE_q\)))) ) ) # ( !\Count_us[1]~DUPLICATE_q\ & ( (!Duty_Cycle(1) & (!\Count_us[14]~DUPLICATE_q\ & (!Duty_Cycle(0) $ 
-- (\Count_us[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000100000000010000001000000000100000100000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Duty_Cycle(1),
	datab => ALT_INV_Duty_Cycle(0),
	datac => \ALT_INV_Count_us[14]~DUPLICATE_q\,
	datad => \ALT_INV_Count_us[0]~DUPLICATE_q\,
	dataf => \ALT_INV_Count_us[1]~DUPLICATE_q\,
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X47_Y1_N18
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_3~1_sumout\ ) + ( VCC ) + ( \Add0~26\ ))
-- \Add0~6\ = CARRY(( !\Div0|auto_generated|divider|divider|op_3~1_sumout\ ) + ( VCC ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	cin => \Add0~26\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X47_Y1_N21
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_19~1_sumout\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( !\Div0|auto_generated|divider|divider|op_19~1_sumout\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_19~1_sumout\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X47_Y1_N35
\Duty_Cycle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add0~9_sumout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Duty_Cycle(9));

-- Location: MLABCELL_X47_Y1_N24
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_18~1_sumout\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( !\Div0|auto_generated|divider|divider|op_18~1_sumout\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_18~1_sumout\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X47_Y1_N37
\Duty_Cycle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add0~13_sumout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Duty_Cycle(10));

-- Location: MLABCELL_X47_Y1_N33
\Duty_Cycle[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Duty_Cycle[8]~0_combout\ = !\Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	combout => \Duty_Cycle[8]~0_combout\);

-- Location: FF_X47_Y1_N59
\Duty_Cycle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Duty_Cycle[8]~0_combout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Duty_Cycle(8));

-- Location: MLABCELL_X47_Y1_N42
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \Count_us[9]~DUPLICATE_q\ & ( \Count_us[8]~DUPLICATE_q\ & ( (Duty_Cycle(9) & (!Duty_Cycle(8) & (!Duty_Cycle(10) $ (Count_us(10))))) ) ) ) # ( !\Count_us[9]~DUPLICATE_q\ & ( \Count_us[8]~DUPLICATE_q\ & ( (!Duty_Cycle(9) & 
-- (!Duty_Cycle(8) & (!Duty_Cycle(10) $ (Count_us(10))))) ) ) ) # ( \Count_us[9]~DUPLICATE_q\ & ( !\Count_us[8]~DUPLICATE_q\ & ( (Duty_Cycle(9) & (Duty_Cycle(8) & (!Duty_Cycle(10) $ (Count_us(10))))) ) ) ) # ( !\Count_us[9]~DUPLICATE_q\ & ( 
-- !\Count_us[8]~DUPLICATE_q\ & ( (!Duty_Cycle(9) & (Duty_Cycle(8) & (!Duty_Cycle(10) $ (Count_us(10))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000010000000000100000110000010000000000100000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Duty_Cycle(9),
	datab => ALT_INV_Duty_Cycle(10),
	datac => ALT_INV_Count_us(10),
	datad => ALT_INV_Duty_Cycle(8),
	datae => \ALT_INV_Count_us[9]~DUPLICATE_q\,
	dataf => \ALT_INV_Count_us[8]~DUPLICATE_q\,
	combout => \Equal0~1_combout\);

-- Location: FF_X47_Y1_N47
\Duty_Cycle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add0~33_sumout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Duty_Cycle(3));

-- Location: MLABCELL_X47_Y1_N36
\Duty_Cycle[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Duty_Cycle[2]~6_combout\ = !\Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~29_sumout\,
	combout => \Duty_Cycle[2]~6_combout\);

-- Location: FF_X47_Y1_N41
\Duty_Cycle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Duty_Cycle[2]~6_combout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Duty_Cycle(2));

-- Location: FF_X48_Y1_N8
\Count_us[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~57_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(2));

-- Location: MLABCELL_X47_Y1_N51
\Duty_Cycle[4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Duty_Cycle[4]~7_combout\ = ( !\Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \Duty_Cycle[4]~7_combout\);

-- Location: FF_X47_Y1_N56
\Duty_Cycle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Duty_Cycle[4]~7_combout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Duty_Cycle(4));

-- Location: MLABCELL_X47_Y1_N54
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( Duty_Cycle(4) & ( \Count_us[3]~DUPLICATE_q\ & ( (Duty_Cycle(3) & (!\Count_us[4]~DUPLICATE_q\ & (!Duty_Cycle(2) $ (!Count_us(2))))) ) ) ) # ( !Duty_Cycle(4) & ( \Count_us[3]~DUPLICATE_q\ & ( (Duty_Cycle(3) & 
-- (\Count_us[4]~DUPLICATE_q\ & (!Duty_Cycle(2) $ (!Count_us(2))))) ) ) ) # ( Duty_Cycle(4) & ( !\Count_us[3]~DUPLICATE_q\ & ( (!Duty_Cycle(3) & (!\Count_us[4]~DUPLICATE_q\ & (!Duty_Cycle(2) $ (!Count_us(2))))) ) ) ) # ( !Duty_Cycle(4) & ( 
-- !\Count_us[3]~DUPLICATE_q\ & ( (!Duty_Cycle(3) & (\Count_us[4]~DUPLICATE_q\ & (!Duty_Cycle(2) $ (!Count_us(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000001010000000000000000000000101000001010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Duty_Cycle(3),
	datab => ALT_INV_Duty_Cycle(2),
	datac => ALT_INV_Count_us(2),
	datad => \ALT_INV_Count_us[4]~DUPLICATE_q\,
	datae => ALT_INV_Duty_Cycle(4),
	dataf => \ALT_INV_Count_us[3]~DUPLICATE_q\,
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X48_Y1_N48
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( \Equal0~0_combout\ & ( \Equal0~4_combout\ & ( (\Equal0~2_combout\ & (\State.E1~q\ & (\Equal0~3_combout\ & \Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \ALT_INV_State.E1~q\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~1_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_Equal0~4_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X48_Y1_N10
\Count_us[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~53_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(3));

-- Location: FF_X48_Y1_N13
\Count_us[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~49_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(4));

-- Location: LABCELL_X49_Y1_N12
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( !\Count_us[2]~DUPLICATE_q\ & ( Count_us(5) & ( (!Count_us(3) & (!Count_us(4) & !Count_us(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Count_us(3),
	datac => ALT_INV_Count_us(4),
	datad => ALT_INV_Count_us(6),
	datae => \ALT_INV_Count_us[2]~DUPLICATE_q\,
	dataf => ALT_INV_Count_us(5),
	combout => \Equal1~2_combout\);

-- Location: FF_X48_Y1_N28
\Count_us[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~33_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(9));

-- Location: FF_X48_Y1_N34
\Count_us[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~25_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(11));

-- Location: FF_X48_Y1_N43
\Count_us[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~21_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(14));

-- Location: FF_X48_Y1_N25
\Count_us[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~37_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(8));

-- Location: LABCELL_X49_Y1_N36
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( !Count_us(8) & ( (Count_us(9) & (Count_us(11) & (Count_us(10) & Count_us(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count_us(9),
	datab => ALT_INV_Count_us(11),
	datac => ALT_INV_Count_us(10),
	datad => ALT_INV_Count_us(14),
	dataf => ALT_INV_Count_us(8),
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X49_Y1_N24
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( !Count_us(1) & ( (\Equal1~2_combout\ & (!Count_us(7) & \Equal1~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~2_combout\,
	datac => ALT_INV_Count_us(7),
	datad => \ALT_INV_Equal1~1_combout\,
	dataf => ALT_INV_Count_us(1),
	combout => \Equal1~3_combout\);

-- Location: FF_X49_Y1_N49
\State.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Selector18~1_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.E2~q\);

-- Location: FF_X48_Y1_N1
\Count_us[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~9_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(0));

-- Location: FF_X48_Y1_N40
\Count_us[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~13_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[13]~DUPLICATE_q\);

-- Location: LABCELL_X49_Y1_N51
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\Count_us[13]~DUPLICATE_q\ & ( (!Count_us(0) & !Count_us(12)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Count_us(0),
	datad => ALT_INV_Count_us(12),
	dataf => \ALT_INV_Count_us[13]~DUPLICATE_q\,
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X49_Y1_N48
\Selector18~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = ( \Equal1~0_combout\ & ( ((!\Equal1~3_combout\ & \State.E2~q\)) # (\Selector18~0_combout\) ) ) # ( !\Equal1~0_combout\ & ( (\State.E2~q\) # (\Selector18~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Selector18~0_combout\,
	datac => \ALT_INV_Equal1~3_combout\,
	datad => \ALT_INV_State.E2~q\,
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: FF_X49_Y1_N50
\State.E2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Selector18~1_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.E2~DUPLICATE_q\);

-- Location: LABCELL_X48_Y1_N54
\Count_us[14]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Count_us[14]~0_combout\ = ( \Selector18~0_combout\ & ( (!\State.E3~DUPLICATE_q\ & (!\Selector19~0_combout\ & \State.E2~DUPLICATE_q\)) ) ) # ( !\Selector18~0_combout\ & ( (!\State.E3~DUPLICATE_q\ & !\Selector19~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_State.E3~DUPLICATE_q\,
	datac => \ALT_INV_Selector19~0_combout\,
	datad => \ALT_INV_State.E2~DUPLICATE_q\,
	dataf => \ALT_INV_Selector18~0_combout\,
	combout => \Count_us[14]~0_combout\);

-- Location: FF_X48_Y1_N23
\Count_us[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[7]~DUPLICATE_q\);

-- Location: FF_X48_Y1_N22
\Count_us[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~1_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(7));

-- Location: LABCELL_X49_Y1_N45
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \Equal1~1_combout\ & ( \Equal1~2_combout\ & ( (!Count_us(7) & (\State.E2~q\ & (!\Count_us[1]~DUPLICATE_q\ & \Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count_us(7),
	datab => \ALT_INV_State.E2~q\,
	datac => \ALT_INV_Count_us[1]~DUPLICATE_q\,
	datad => \ALT_INV_Equal1~0_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X49_Y1_N58
\State.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Selector19~0_combout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.E3~q\);

-- Location: LABCELL_X49_Y1_N39
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

-- Location: FF_X49_Y1_N41
\State.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \State.E0~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.E0~q\);

-- Location: FF_X48_Y1_N38
\Count_us[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Count_us[12]~DUPLICATE_q\);

-- Location: FF_X48_Y1_N37
\Count_us[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Add2~17_sumout\,
	clrn => \RST_n~input_o\,
	sclr => \ALT_INV_State.E0~q\,
	ena => \Count_us[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Count_us(12));

-- Location: MLABCELL_X47_Y1_N27
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~1_sumout\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~1_sumout\,
	cin => \Add0~14\,
	sumout => \Add0~1_sumout\);

-- Location: FF_X49_Y1_N8
\Duty_Cycle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \Add0~1_sumout\,
	clrn => \RST_n~input_o\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Duty_Cycle(11));

-- Location: LABCELL_X49_Y1_N27
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\Count_us[13]~DUPLICATE_q\ & ( (!Count_us(12) & (!Duty_Cycle(11) $ (Count_us(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Count_us(12),
	datac => ALT_INV_Duty_Cycle(11),
	datad => ALT_INV_Count_us(11),
	dataf => \ALT_INV_Count_us[13]~DUPLICATE_q\,
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X47_Y1_N30
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( \Equal0~2_combout\ & ( (\Equal0~1_combout\ & (\Equal0~4_combout\ & \Equal0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_Equal0~4_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~5_combout\);

-- Location: MLABCELL_X47_Y1_N48
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \Equal0~5_combout\ & ( (!\State.E3~DUPLICATE_q\ & ((!\State.E0~q\) # ((!\Equal0~0_combout\ & \State.E1~q\)))) ) ) # ( !\Equal0~5_combout\ & ( (!\State.E3~DUPLICATE_q\ & ((!\State.E0~q\) # (\State.E1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011110000110000001111000011000000111000001100000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_State.E0~q\,
	datac => \ALT_INV_State.E3~DUPLICATE_q\,
	datad => \ALT_INV_State.E1~q\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X47_Y1_N49
\State.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Selector17~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \State.E1~q\);

-- Location: LABCELL_X49_Y1_N54
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \pulse~reg0_q\ & ( \State.E2~DUPLICATE_q\ & ( (!\Selector18~0_combout\ & !\Selector19~0_combout\) ) ) ) # ( \pulse~reg0_q\ & ( !\State.E2~DUPLICATE_q\ & ( (!\State.E1~q\ & ((!\State.E3~q\) # ((!\Selector18~0_combout\ & 
-- !\Selector19~0_combout\)))) # (\State.E1~q\ & (!\Selector18~0_combout\ & ((!\Selector19~0_combout\)))) ) ) ) # ( !\pulse~reg0_q\ & ( !\State.E2~DUPLICATE_q\ & ( (!\State.E1~q\ & !\State.E3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000111011001010000000000000000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_State.E1~q\,
	datab => \ALT_INV_Selector18~0_combout\,
	datac => \ALT_INV_State.E3~q\,
	datad => \ALT_INV_Selector19~0_combout\,
	datae => \ALT_INV_pulse~reg0_q\,
	dataf => \ALT_INV_State.E2~DUPLICATE_q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X49_Y1_N55
\pulse~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \Selector15~0_combout\,
	clrn => \RST_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulse~reg0_q\);

-- Location: MLABCELL_X6_Y34_N0
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


