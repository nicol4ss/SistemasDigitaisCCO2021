-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/15/2021 11:33:47"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	nota IS
    PORT (
	n1 : IN std_logic_vector(3 DOWNTO 0);
	n2 : IN std_logic_vector(3 DOWNTO 0);
	n3 : IN std_logic_vector(3 DOWNTO 0);
	n4 : IN std_logic_vector(3 DOWNTO 0);
	passou : OUT std_logic;
	exame : OUT std_logic;
	reprovou : OUT std_logic
	);
END nota;

-- Design Ports Information
-- passou	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- exame	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reprovou	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n4[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n4[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[3]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[2]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n4[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n4[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n3[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n2[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n1[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF nota IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_n1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_n4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_passou : std_logic;
SIGNAL ww_exame : std_logic;
SIGNAL ww_reprovou : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \n1[3]~input_o\ : std_logic;
SIGNAL \n3[3]~input_o\ : std_logic;
SIGNAL \n2[3]~input_o\ : std_logic;
SIGNAL \n3[2]~input_o\ : std_logic;
SIGNAL \n1[2]~input_o\ : std_logic;
SIGNAL \n2[2]~input_o\ : std_logic;
SIGNAL \n1[1]~input_o\ : std_logic;
SIGNAL \n2[1]~input_o\ : std_logic;
SIGNAL \n3[1]~input_o\ : std_logic;
SIGNAL \n3[0]~input_o\ : std_logic;
SIGNAL \n2[0]~input_o\ : std_logic;
SIGNAL \n1[0]~input_o\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \n4[3]~input_o\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \n4[2]~input_o\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \n4[1]~input_o\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \n4[0]~input_o\ : std_logic;
SIGNAL \Add1~22_cout\ : std_logic;
SIGNAL \Add1~18_cout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \exame~0_combout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \exame~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_n1[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_n2[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_n3[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_n4[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_n1[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_n2[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_n3[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_n4[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_n1[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_n2[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_n3[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_n1[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_n2[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_n3[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_n4[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_n4[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_exame~1_combout\ : std_logic;
SIGNAL \ALT_INV_exame~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;

BEGIN

ww_n1 <= n1;
ww_n2 <= n2;
ww_n3 <= n3;
ww_n4 <= n4;
passou <= ww_passou;
exame <= ww_exame;
reprovou <= ww_reprovou;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_n1[0]~input_o\ <= NOT \n1[0]~input_o\;
\ALT_INV_n2[0]~input_o\ <= NOT \n2[0]~input_o\;
\ALT_INV_n3[0]~input_o\ <= NOT \n3[0]~input_o\;
\ALT_INV_n4[0]~input_o\ <= NOT \n4[0]~input_o\;
\ALT_INV_n1[1]~input_o\ <= NOT \n1[1]~input_o\;
\ALT_INV_n2[1]~input_o\ <= NOT \n2[1]~input_o\;
\ALT_INV_n3[1]~input_o\ <= NOT \n3[1]~input_o\;
\ALT_INV_n4[1]~input_o\ <= NOT \n4[1]~input_o\;
\ALT_INV_n1[2]~input_o\ <= NOT \n1[2]~input_o\;
\ALT_INV_n2[2]~input_o\ <= NOT \n2[2]~input_o\;
\ALT_INV_n3[2]~input_o\ <= NOT \n3[2]~input_o\;
\ALT_INV_n1[3]~input_o\ <= NOT \n1[3]~input_o\;
\ALT_INV_n2[3]~input_o\ <= NOT \n2[3]~input_o\;
\ALT_INV_n3[3]~input_o\ <= NOT \n3[3]~input_o\;
\ALT_INV_n4[2]~input_o\ <= NOT \n4[2]~input_o\;
\ALT_INV_n4[3]~input_o\ <= NOT \n4[3]~input_o\;
\ALT_INV_exame~1_combout\ <= NOT \exame~1_combout\;
\ALT_INV_exame~0_combout\ <= NOT \exame~0_combout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;

-- Location: IOOBUF_X89_Y9_N39
\passou~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_exame~0_combout\,
	devoe => ww_devoe,
	o => ww_passou);

-- Location: IOOBUF_X89_Y38_N5
\exame~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_exame~1_combout\,
	devoe => ww_devoe,
	o => ww_exame);

-- Location: IOOBUF_X89_Y38_N39
\reprovou~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan2~0_combout\,
	devoe => ww_devoe,
	o => ww_reprovou);

-- Location: IOIBUF_X89_Y35_N78
\n1[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(3),
	o => \n1[3]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\n3[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(3),
	o => \n3[3]~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\n2[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(3),
	o => \n2[3]~input_o\);

-- Location: IOIBUF_X88_Y81_N19
\n3[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(2),
	o => \n3[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\n1[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(2),
	o => \n1[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\n2[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(2),
	o => \n2[2]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\n1[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(1),
	o => \n1[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\n2[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(1),
	o => \n2[1]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\n3[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(1),
	o => \n3[1]~input_o\);

-- Location: IOIBUF_X88_Y81_N36
\n3[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n3(0),
	o => \n3[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\n2[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n2(0),
	o => \n2[0]~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\n1[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n1(0),
	o => \n1[0]~input_o\);

-- Location: LABCELL_X88_Y37_N30
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( !\n3[0]~input_o\ $ (!\n2[0]~input_o\ $ (\n1[0]~input_o\)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~22\ = CARRY(( !\n3[0]~input_o\ $ (!\n2[0]~input_o\ $ (\n1[0]~input_o\)) ) + ( !VCC ) + ( !VCC ))
-- \Add0~23\ = SHARE((!\n3[0]~input_o\ & (\n2[0]~input_o\ & \n1[0]~input_o\)) # (\n3[0]~input_o\ & ((\n1[0]~input_o\) # (\n2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n3[0]~input_o\,
	datac => \ALT_INV_n2[0]~input_o\,
	datad => \ALT_INV_n1[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\,
	shareout => \Add0~23\);

-- Location: LABCELL_X88_Y37_N33
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( !\n1[1]~input_o\ $ (!\n2[1]~input_o\ $ (\n3[1]~input_o\)) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( !\n1[1]~input_o\ $ (!\n2[1]~input_o\ $ (\n3[1]~input_o\)) ) + ( \Add0~23\ ) + ( \Add0~22\ ))
-- \Add0~19\ = SHARE((!\n1[1]~input_o\ & (\n2[1]~input_o\ & \n3[1]~input_o\)) # (\n1[1]~input_o\ & ((\n3[1]~input_o\) # (\n2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n1[1]~input_o\,
	datac => \ALT_INV_n2[1]~input_o\,
	datad => \ALT_INV_n3[1]~input_o\,
	cin => \Add0~22\,
	sharein => \Add0~23\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\,
	shareout => \Add0~19\);

-- Location: LABCELL_X88_Y37_N36
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( !\n3[2]~input_o\ $ (!\n1[2]~input_o\ $ (\n2[2]~input_o\)) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( !\n3[2]~input_o\ $ (!\n1[2]~input_o\ $ (\n2[2]~input_o\)) ) + ( \Add0~19\ ) + ( \Add0~18\ ))
-- \Add0~15\ = SHARE((!\n3[2]~input_o\ & (\n1[2]~input_o\ & \n2[2]~input_o\)) # (\n3[2]~input_o\ & ((\n2[2]~input_o\) # (\n1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n3[2]~input_o\,
	datac => \ALT_INV_n1[2]~input_o\,
	datad => \ALT_INV_n2[2]~input_o\,
	cin => \Add0~18\,
	sharein => \Add0~19\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\,
	shareout => \Add0~15\);

-- Location: LABCELL_X88_Y37_N39
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( !\n1[3]~input_o\ $ (!\n3[3]~input_o\ $ (\n2[3]~input_o\)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~6\ = CARRY(( !\n1[3]~input_o\ $ (!\n3[3]~input_o\ $ (\n2[3]~input_o\)) ) + ( \Add0~15\ ) + ( \Add0~14\ ))
-- \Add0~7\ = SHARE((!\n1[3]~input_o\ & (\n3[3]~input_o\ & \n2[3]~input_o\)) # (\n1[3]~input_o\ & ((\n2[3]~input_o\) # (\n3[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n1[3]~input_o\,
	datac => \ALT_INV_n3[3]~input_o\,
	datad => \ALT_INV_n2[3]~input_o\,
	cin => \Add0~14\,
	sharein => \Add0~15\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\,
	shareout => \Add0~7\);

-- Location: LABCELL_X88_Y37_N42
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( GND ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( GND ) + ( \Add0~7\ ) + ( \Add0~6\ ))
-- \Add0~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Add0~6\,
	sharein => \Add0~7\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\,
	shareout => \Add0~11\);

-- Location: IOIBUF_X89_Y35_N95
\n4[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n4(3),
	o => \n4[3]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\n4[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n4(2),
	o => \n4[2]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\n4[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n4(1),
	o => \n4[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\n4[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n4(0),
	o => \n4[0]~input_o\);

-- Location: LABCELL_X88_Y37_N0
\Add1~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~22_cout\ = CARRY(( \Add0~21_sumout\ ) + ( \n4[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~21_sumout\,
	datac => \ALT_INV_n4[0]~input_o\,
	cin => GND,
	cout => \Add1~22_cout\);

-- Location: LABCELL_X88_Y37_N3
\Add1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~18_cout\ = CARRY(( \n4[1]~input_o\ ) + ( \Add0~17_sumout\ ) + ( \Add1~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_n4[1]~input_o\,
	cin => \Add1~22_cout\,
	cout => \Add1~18_cout\);

-- Location: LABCELL_X88_Y37_N6
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \Add0~13_sumout\ ) + ( \n4[2]~input_o\ ) + ( \Add1~18_cout\ ))
-- \Add1~14\ = CARRY(( \Add0~13_sumout\ ) + ( \n4[2]~input_o\ ) + ( \Add1~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_n4[2]~input_o\,
	datac => \ALT_INV_Add0~13_sumout\,
	cin => \Add1~18_cout\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X88_Y37_N9
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \Add0~5_sumout\ ) + ( \n4[3]~input_o\ ) + ( \Add1~14\ ))
-- \Add1~6\ = CARRY(( \Add0~5_sumout\ ) + ( \n4[3]~input_o\ ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_n4[3]~input_o\,
	datac => \ALT_INV_Add0~5_sumout\,
	cin => \Add1~14\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X88_Y37_N12
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \Add0~9_sumout\ ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \Add0~9_sumout\ ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add0~9_sumout\,
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X88_Y37_N45
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( GND ) + ( \Add0~11\ ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Add0~10\,
	sharein => \Add0~11\,
	sumout => \Add0~1_sumout\);

-- Location: LABCELL_X88_Y37_N15
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \Add0~1_sumout\ ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~1_sumout\,
	cin => \Add1~10\,
	sumout => \Add1~1_sumout\);

-- Location: LABCELL_X88_Y37_N48
\exame~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \exame~0_combout\ = ( \Add1~5_sumout\ & ( (!\Add1~9_sumout\ & !\Add1~1_sumout\) ) ) # ( !\Add1~5_sumout\ & ( !\Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000110011000000000011111111000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add1~9_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	datae => \ALT_INV_Add1~5_sumout\,
	combout => \exame~0_combout\);

-- Location: LABCELL_X88_Y37_N54
\exame~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \exame~1_combout\ = ( \Add1~13_sumout\ & ( (!\Add1~5_sumout\ $ (\Add1~9_sumout\)) # (\Add1~1_sumout\) ) ) # ( !\Add1~13_sumout\ & ( ((!\Add1~9_sumout\) # (\Add1~1_sumout\)) # (\Add1~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011110110111101101111011011110110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~5_sumout\,
	datab => \ALT_INV_Add1~1_sumout\,
	datac => \ALT_INV_Add1~9_sumout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \exame~1_combout\);

-- Location: LABCELL_X88_Y37_N57
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( \Add1~13_sumout\ & ( (!\Add1~5_sumout\ & (!\Add1~1_sumout\ & !\Add1~9_sumout\)) ) ) # ( !\Add1~13_sumout\ & ( (!\Add1~1_sumout\ & !\Add1~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000010100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~5_sumout\,
	datac => \ALT_INV_Add1~1_sumout\,
	datad => \ALT_INV_Add1~9_sumout\,
	dataf => \ALT_INV_Add1~13_sumout\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X29_Y16_N0
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


