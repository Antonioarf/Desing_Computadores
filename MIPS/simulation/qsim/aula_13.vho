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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "04/30/2023 16:33:07"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	aula_13 IS
    PORT (
	CLOCK_50 : IN std_logic;
	EscritaReg3 : IN std_logic;
	OP_ULA : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	dados_out : OUT std_logic_vector(31 DOWNTO 0);
	ULA_OUT : OUT std_logic_vector(31 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(31 DOWNTO 0)
	);
END aula_13;

ARCHITECTURE structure OF aula_13 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_EscritaReg3 : std_logic;
SIGNAL ww_OP_ULA : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dados_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULA_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \EscritaReg3~input_o\ : std_logic;
SIGNAL \dados_out[0]~output_o\ : std_logic;
SIGNAL \dados_out[1]~output_o\ : std_logic;
SIGNAL \dados_out[2]~output_o\ : std_logic;
SIGNAL \dados_out[3]~output_o\ : std_logic;
SIGNAL \dados_out[4]~output_o\ : std_logic;
SIGNAL \dados_out[5]~output_o\ : std_logic;
SIGNAL \dados_out[6]~output_o\ : std_logic;
SIGNAL \dados_out[7]~output_o\ : std_logic;
SIGNAL \dados_out[8]~output_o\ : std_logic;
SIGNAL \dados_out[9]~output_o\ : std_logic;
SIGNAL \dados_out[10]~output_o\ : std_logic;
SIGNAL \dados_out[11]~output_o\ : std_logic;
SIGNAL \dados_out[12]~output_o\ : std_logic;
SIGNAL \dados_out[13]~output_o\ : std_logic;
SIGNAL \dados_out[14]~output_o\ : std_logic;
SIGNAL \dados_out[15]~output_o\ : std_logic;
SIGNAL \dados_out[16]~output_o\ : std_logic;
SIGNAL \dados_out[17]~output_o\ : std_logic;
SIGNAL \dados_out[18]~output_o\ : std_logic;
SIGNAL \dados_out[19]~output_o\ : std_logic;
SIGNAL \dados_out[20]~output_o\ : std_logic;
SIGNAL \dados_out[21]~output_o\ : std_logic;
SIGNAL \dados_out[22]~output_o\ : std_logic;
SIGNAL \dados_out[23]~output_o\ : std_logic;
SIGNAL \dados_out[24]~output_o\ : std_logic;
SIGNAL \dados_out[25]~output_o\ : std_logic;
SIGNAL \dados_out[26]~output_o\ : std_logic;
SIGNAL \dados_out[27]~output_o\ : std_logic;
SIGNAL \dados_out[28]~output_o\ : std_logic;
SIGNAL \dados_out[29]~output_o\ : std_logic;
SIGNAL \dados_out[30]~output_o\ : std_logic;
SIGNAL \dados_out[31]~output_o\ : std_logic;
SIGNAL \ULA_OUT[0]~output_o\ : std_logic;
SIGNAL \ULA_OUT[1]~output_o\ : std_logic;
SIGNAL \ULA_OUT[2]~output_o\ : std_logic;
SIGNAL \ULA_OUT[3]~output_o\ : std_logic;
SIGNAL \ULA_OUT[4]~output_o\ : std_logic;
SIGNAL \ULA_OUT[5]~output_o\ : std_logic;
SIGNAL \ULA_OUT[6]~output_o\ : std_logic;
SIGNAL \ULA_OUT[7]~output_o\ : std_logic;
SIGNAL \ULA_OUT[8]~output_o\ : std_logic;
SIGNAL \ULA_OUT[9]~output_o\ : std_logic;
SIGNAL \ULA_OUT[10]~output_o\ : std_logic;
SIGNAL \ULA_OUT[11]~output_o\ : std_logic;
SIGNAL \ULA_OUT[12]~output_o\ : std_logic;
SIGNAL \ULA_OUT[13]~output_o\ : std_logic;
SIGNAL \ULA_OUT[14]~output_o\ : std_logic;
SIGNAL \ULA_OUT[15]~output_o\ : std_logic;
SIGNAL \ULA_OUT[16]~output_o\ : std_logic;
SIGNAL \ULA_OUT[17]~output_o\ : std_logic;
SIGNAL \ULA_OUT[18]~output_o\ : std_logic;
SIGNAL \ULA_OUT[19]~output_o\ : std_logic;
SIGNAL \ULA_OUT[20]~output_o\ : std_logic;
SIGNAL \ULA_OUT[21]~output_o\ : std_logic;
SIGNAL \ULA_OUT[22]~output_o\ : std_logic;
SIGNAL \ULA_OUT[23]~output_o\ : std_logic;
SIGNAL \ULA_OUT[24]~output_o\ : std_logic;
SIGNAL \ULA_OUT[25]~output_o\ : std_logic;
SIGNAL \ULA_OUT[26]~output_o\ : std_logic;
SIGNAL \ULA_OUT[27]~output_o\ : std_logic;
SIGNAL \ULA_OUT[28]~output_o\ : std_logic;
SIGNAL \ULA_OUT[29]~output_o\ : std_logic;
SIGNAL \ULA_OUT[30]~output_o\ : std_logic;
SIGNAL \ULA_OUT[31]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \PC_OUT[9]~output_o\ : std_logic;
SIGNAL \PC_OUT[10]~output_o\ : std_logic;
SIGNAL \PC_OUT[11]~output_o\ : std_logic;
SIGNAL \PC_OUT[12]~output_o\ : std_logic;
SIGNAL \PC_OUT[13]~output_o\ : std_logic;
SIGNAL \PC_OUT[14]~output_o\ : std_logic;
SIGNAL \PC_OUT[15]~output_o\ : std_logic;
SIGNAL \PC_OUT[16]~output_o\ : std_logic;
SIGNAL \PC_OUT[17]~output_o\ : std_logic;
SIGNAL \PC_OUT[18]~output_o\ : std_logic;
SIGNAL \PC_OUT[19]~output_o\ : std_logic;
SIGNAL \PC_OUT[20]~output_o\ : std_logic;
SIGNAL \PC_OUT[21]~output_o\ : std_logic;
SIGNAL \PC_OUT[22]~output_o\ : std_logic;
SIGNAL \PC_OUT[23]~output_o\ : std_logic;
SIGNAL \PC_OUT[24]~output_o\ : std_logic;
SIGNAL \PC_OUT[25]~output_o\ : std_logic;
SIGNAL \PC_OUT[26]~output_o\ : std_logic;
SIGNAL \PC_OUT[27]~output_o\ : std_logic;
SIGNAL \PC_OUT[28]~output_o\ : std_logic;
SIGNAL \PC_OUT[29]~output_o\ : std_logic;
SIGNAL \PC_OUT[30]~output_o\ : std_logic;
SIGNAL \PC_OUT[31]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \REG_PC|DOUT[2]~0_combout\ : std_logic;
SIGNAL \INC_PC|Add0~1_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~2\ : std_logic;
SIGNAL \INC_PC|Add0~17_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~18\ : std_logic;
SIGNAL \INC_PC|Add0~9_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~10\ : std_logic;
SIGNAL \INC_PC|Add0~13_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~14\ : std_logic;
SIGNAL \INC_PC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \OP_ULA~input_o\ : std_logic;
SIGNAL \ULA|Add0~130_cout\ : std_logic;
SIGNAL \ULA|Add0~1_sumout\ : std_logic;
SIGNAL \ULA|Add0~2\ : std_logic;
SIGNAL \ULA|Add0~5_sumout\ : std_logic;
SIGNAL \ULA|Add0~6\ : std_logic;
SIGNAL \ULA|Add0~9_sumout\ : std_logic;
SIGNAL \ULA|Add0~10\ : std_logic;
SIGNAL \ULA|Add0~13_sumout\ : std_logic;
SIGNAL \ULA|Add0~14\ : std_logic;
SIGNAL \ULA|Add0~17_sumout\ : std_logic;
SIGNAL \ULA|Add0~18\ : std_logic;
SIGNAL \ULA|Add0~21_sumout\ : std_logic;
SIGNAL \ULA|Add0~22\ : std_logic;
SIGNAL \ULA|Add0~25_sumout\ : std_logic;
SIGNAL \ULA|Add0~26\ : std_logic;
SIGNAL \ULA|Add0~29_sumout\ : std_logic;
SIGNAL \ULA|Add0~30\ : std_logic;
SIGNAL \ULA|Add0~33_sumout\ : std_logic;
SIGNAL \ULA|Add0~34\ : std_logic;
SIGNAL \ULA|Add0~37_sumout\ : std_logic;
SIGNAL \ULA|Add0~38\ : std_logic;
SIGNAL \ULA|Add0~41_sumout\ : std_logic;
SIGNAL \ULA|Add0~42\ : std_logic;
SIGNAL \ULA|Add0~45_sumout\ : std_logic;
SIGNAL \ULA|Add0~46\ : std_logic;
SIGNAL \ULA|Add0~49_sumout\ : std_logic;
SIGNAL \ULA|Add0~50\ : std_logic;
SIGNAL \ULA|Add0~53_sumout\ : std_logic;
SIGNAL \ULA|Add0~54\ : std_logic;
SIGNAL \ULA|Add0~57_sumout\ : std_logic;
SIGNAL \ULA|Add0~58\ : std_logic;
SIGNAL \ULA|Add0~61_sumout\ : std_logic;
SIGNAL \ULA|Add0~62\ : std_logic;
SIGNAL \ULA|Add0~65_sumout\ : std_logic;
SIGNAL \ULA|Add0~66\ : std_logic;
SIGNAL \ULA|Add0~69_sumout\ : std_logic;
SIGNAL \ULA|Add0~70\ : std_logic;
SIGNAL \ULA|Add0~73_sumout\ : std_logic;
SIGNAL \ULA|Add0~74\ : std_logic;
SIGNAL \ULA|Add0~77_sumout\ : std_logic;
SIGNAL \ULA|Add0~78\ : std_logic;
SIGNAL \ULA|Add0~81_sumout\ : std_logic;
SIGNAL \ULA|Add0~82\ : std_logic;
SIGNAL \ULA|Add0~85_sumout\ : std_logic;
SIGNAL \ULA|Add0~86\ : std_logic;
SIGNAL \ULA|Add0~89_sumout\ : std_logic;
SIGNAL \ULA|Add0~90\ : std_logic;
SIGNAL \ULA|Add0~93_sumout\ : std_logic;
SIGNAL \ULA|Add0~94\ : std_logic;
SIGNAL \ULA|Add0~97_sumout\ : std_logic;
SIGNAL \ULA|Add0~98\ : std_logic;
SIGNAL \ULA|Add0~101_sumout\ : std_logic;
SIGNAL \ULA|Add0~102\ : std_logic;
SIGNAL \ULA|Add0~105_sumout\ : std_logic;
SIGNAL \ULA|Add0~106\ : std_logic;
SIGNAL \ULA|Add0~109_sumout\ : std_logic;
SIGNAL \ULA|Add0~110\ : std_logic;
SIGNAL \ULA|Add0~113_sumout\ : std_logic;
SIGNAL \ULA|Add0~114\ : std_logic;
SIGNAL \ULA|Add0~117_sumout\ : std_logic;
SIGNAL \ULA|Add0~118\ : std_logic;
SIGNAL \ULA|Add0~121_sumout\ : std_logic;
SIGNAL \ULA|Add0~122\ : std_logic;
SIGNAL \ULA|Add0~125_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~6\ : std_logic;
SIGNAL \INC_PC|Add0~21_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~22\ : std_logic;
SIGNAL \INC_PC|Add0~25_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~26\ : std_logic;
SIGNAL \INC_PC|Add0~29_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~30\ : std_logic;
SIGNAL \INC_PC|Add0~33_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~34\ : std_logic;
SIGNAL \INC_PC|Add0~37_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~38\ : std_logic;
SIGNAL \INC_PC|Add0~41_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~42\ : std_logic;
SIGNAL \INC_PC|Add0~45_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~46\ : std_logic;
SIGNAL \INC_PC|Add0~49_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~50\ : std_logic;
SIGNAL \INC_PC|Add0~53_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~54\ : std_logic;
SIGNAL \INC_PC|Add0~57_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~58\ : std_logic;
SIGNAL \INC_PC|Add0~61_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~62\ : std_logic;
SIGNAL \INC_PC|Add0~65_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~66\ : std_logic;
SIGNAL \INC_PC|Add0~69_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~70\ : std_logic;
SIGNAL \INC_PC|Add0~73_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~74\ : std_logic;
SIGNAL \INC_PC|Add0~77_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~78\ : std_logic;
SIGNAL \INC_PC|Add0~81_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~82\ : std_logic;
SIGNAL \INC_PC|Add0~85_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~86\ : std_logic;
SIGNAL \INC_PC|Add0~89_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~90\ : std_logic;
SIGNAL \INC_PC|Add0~93_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~94\ : std_logic;
SIGNAL \INC_PC|Add0~97_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~98\ : std_logic;
SIGNAL \INC_PC|Add0~101_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~102\ : std_logic;
SIGNAL \INC_PC|Add0~105_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~106\ : std_logic;
SIGNAL \INC_PC|Add0~109_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~110\ : std_logic;
SIGNAL \INC_PC|Add0~113_sumout\ : std_logic;
SIGNAL \REG_PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \REG_PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ALT_INV_OP_ULA~input_o\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_EscritaReg3 <= EscritaReg3;
ww_OP_ULA <= OP_ULA;
ww_KEY <= KEY;
dados_out <= ww_dados_out;
ULA_OUT <= ww_ULA_OUT;
PC_OUT <= ww_PC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\REG_PC|ALT_INV_DOUT\(31) <= NOT \REG_PC|DOUT\(31);
\REG_PC|ALT_INV_DOUT\(30) <= NOT \REG_PC|DOUT\(30);
\REG_PC|ALT_INV_DOUT\(29) <= NOT \REG_PC|DOUT\(29);
\REG_PC|ALT_INV_DOUT\(28) <= NOT \REG_PC|DOUT\(28);
\REG_PC|ALT_INV_DOUT\(27) <= NOT \REG_PC|DOUT\(27);
\REG_PC|ALT_INV_DOUT\(26) <= NOT \REG_PC|DOUT\(26);
\REG_PC|ALT_INV_DOUT\(25) <= NOT \REG_PC|DOUT\(25);
\REG_PC|ALT_INV_DOUT\(24) <= NOT \REG_PC|DOUT\(24);
\REG_PC|ALT_INV_DOUT\(23) <= NOT \REG_PC|DOUT\(23);
\REG_PC|ALT_INV_DOUT\(22) <= NOT \REG_PC|DOUT\(22);
\REG_PC|ALT_INV_DOUT\(21) <= NOT \REG_PC|DOUT\(21);
\REG_PC|ALT_INV_DOUT\(20) <= NOT \REG_PC|DOUT\(20);
\REG_PC|ALT_INV_DOUT\(19) <= NOT \REG_PC|DOUT\(19);
\REG_PC|ALT_INV_DOUT\(18) <= NOT \REG_PC|DOUT\(18);
\REG_PC|ALT_INV_DOUT\(17) <= NOT \REG_PC|DOUT\(17);
\REG_PC|ALT_INV_DOUT\(16) <= NOT \REG_PC|DOUT\(16);
\REG_PC|ALT_INV_DOUT\(15) <= NOT \REG_PC|DOUT\(15);
\REG_PC|ALT_INV_DOUT\(14) <= NOT \REG_PC|DOUT\(14);
\REG_PC|ALT_INV_DOUT\(13) <= NOT \REG_PC|DOUT\(13);
\REG_PC|ALT_INV_DOUT\(12) <= NOT \REG_PC|DOUT\(12);
\REG_PC|ALT_INV_DOUT\(11) <= NOT \REG_PC|DOUT\(11);
\REG_PC|ALT_INV_DOUT\(10) <= NOT \REG_PC|DOUT\(10);
\REG_PC|ALT_INV_DOUT\(9) <= NOT \REG_PC|DOUT\(9);
\REG_PC|ALT_INV_DOUT\(8) <= NOT \REG_PC|DOUT\(8);
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\REG_PC|ALT_INV_DOUT\(2) <= NOT \REG_PC|DOUT\(2);
\REG_PC|ALT_INV_DOUT\(4) <= NOT \REG_PC|DOUT\(4);
\REG_PC|ALT_INV_DOUT\(6) <= NOT \REG_PC|DOUT\(6);
\REG_PC|ALT_INV_DOUT\(5) <= NOT \REG_PC|DOUT\(5);
\REG_PC|ALT_INV_DOUT\(3) <= NOT \REG_PC|DOUT\(3);
\REG_PC|ALT_INV_DOUT\(7) <= NOT \REG_PC|DOUT\(7);
\ALT_INV_OP_ULA~input_o\ <= NOT \OP_ULA~input_o\;
\INC_PC|ALT_INV_Add0~1_sumout\ <= NOT \INC_PC|Add0~1_sumout\;

\dados_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => \dados_out[0]~output_o\);

\dados_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~7_combout\,
	devoe => ww_devoe,
	o => \dados_out[1]~output_o\);

\dados_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => \dados_out[2]~output_o\);

\dados_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~5_combout\,
	devoe => ww_devoe,
	o => \dados_out[3]~output_o\);

\dados_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~0_combout\,
	devoe => ww_devoe,
	o => \dados_out[4]~output_o\);

\dados_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \dados_out[5]~output_o\);

\dados_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => \dados_out[6]~output_o\);

\dados_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~3_combout\,
	devoe => ww_devoe,
	o => \dados_out[7]~output_o\);

\dados_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[8]~output_o\);

\dados_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[9]~output_o\);

\dados_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[10]~output_o\);

\dados_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \dados_out[11]~output_o\);

\dados_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \dados_out[12]~output_o\);

\dados_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[13]~output_o\);

\dados_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \dados_out[14]~output_o\);

\dados_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[15]~output_o\);

\dados_out[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \dados_out[16]~output_o\);

\dados_out[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[17]~output_o\);

\dados_out[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[18]~output_o\);

\dados_out[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \dados_out[19]~output_o\);

\dados_out[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[20]~output_o\);

\dados_out[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[21]~output_o\);

\dados_out[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \dados_out[22]~output_o\);

\dados_out[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[23]~output_o\);

\dados_out[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \dados_out[24]~output_o\);

\dados_out[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[25]~output_o\);

\dados_out[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[26]~output_o\);

\dados_out[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[27]~output_o\);

\dados_out[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[28]~output_o\);

\dados_out[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[29]~output_o\);

\dados_out[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[30]~output_o\);

\dados_out[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dados_out[31]~output_o\);

\ULA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~1_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[0]~output_o\);

\ULA_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~5_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[1]~output_o\);

\ULA_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~9_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[2]~output_o\);

\ULA_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~13_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[3]~output_o\);

\ULA_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~17_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[4]~output_o\);

\ULA_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~21_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[5]~output_o\);

\ULA_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~25_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[6]~output_o\);

\ULA_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~29_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[7]~output_o\);

\ULA_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~33_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[8]~output_o\);

\ULA_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~37_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[9]~output_o\);

\ULA_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~41_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[10]~output_o\);

\ULA_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~45_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[11]~output_o\);

\ULA_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~49_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[12]~output_o\);

\ULA_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~53_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[13]~output_o\);

\ULA_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~57_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[14]~output_o\);

\ULA_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~61_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[15]~output_o\);

\ULA_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~65_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[16]~output_o\);

\ULA_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~69_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[17]~output_o\);

\ULA_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~73_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[18]~output_o\);

\ULA_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~77_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[19]~output_o\);

\ULA_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~81_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[20]~output_o\);

\ULA_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~85_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[21]~output_o\);

\ULA_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~89_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[22]~output_o\);

\ULA_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~93_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[23]~output_o\);

\ULA_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~97_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[24]~output_o\);

\ULA_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~101_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[25]~output_o\);

\ULA_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~105_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[26]~output_o\);

\ULA_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~109_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[27]~output_o\);

\ULA_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~113_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[28]~output_o\);

\ULA_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~117_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[29]~output_o\);

\ULA_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~121_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[30]~output_o\);

\ULA_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|Add0~125_sumout\,
	devoe => ww_devoe,
	o => \ULA_OUT[31]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\PC_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(9),
	devoe => ww_devoe,
	o => \PC_OUT[9]~output_o\);

\PC_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(10),
	devoe => ww_devoe,
	o => \PC_OUT[10]~output_o\);

\PC_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(11),
	devoe => ww_devoe,
	o => \PC_OUT[11]~output_o\);

\PC_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(12),
	devoe => ww_devoe,
	o => \PC_OUT[12]~output_o\);

\PC_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(13),
	devoe => ww_devoe,
	o => \PC_OUT[13]~output_o\);

\PC_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(14),
	devoe => ww_devoe,
	o => \PC_OUT[14]~output_o\);

\PC_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(15),
	devoe => ww_devoe,
	o => \PC_OUT[15]~output_o\);

\PC_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(16),
	devoe => ww_devoe,
	o => \PC_OUT[16]~output_o\);

\PC_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(17),
	devoe => ww_devoe,
	o => \PC_OUT[17]~output_o\);

\PC_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(18),
	devoe => ww_devoe,
	o => \PC_OUT[18]~output_o\);

\PC_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(19),
	devoe => ww_devoe,
	o => \PC_OUT[19]~output_o\);

\PC_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(20),
	devoe => ww_devoe,
	o => \PC_OUT[20]~output_o\);

\PC_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(21),
	devoe => ww_devoe,
	o => \PC_OUT[21]~output_o\);

\PC_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(22),
	devoe => ww_devoe,
	o => \PC_OUT[22]~output_o\);

\PC_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(23),
	devoe => ww_devoe,
	o => \PC_OUT[23]~output_o\);

\PC_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(24),
	devoe => ww_devoe,
	o => \PC_OUT[24]~output_o\);

\PC_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(25),
	devoe => ww_devoe,
	o => \PC_OUT[25]~output_o\);

\PC_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(26),
	devoe => ww_devoe,
	o => \PC_OUT[26]~output_o\);

\PC_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(27),
	devoe => ww_devoe,
	o => \PC_OUT[27]~output_o\);

\PC_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(28),
	devoe => ww_devoe,
	o => \PC_OUT[28]~output_o\);

\PC_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(29),
	devoe => ww_devoe,
	o => \PC_OUT[29]~output_o\);

\PC_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(30),
	devoe => ww_devoe,
	o => \PC_OUT[30]~output_o\);

\PC_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG_PC|DOUT\(31),
	devoe => ww_devoe,
	o => \PC_OUT[31]~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\REG_PC|DOUT[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG_PC|DOUT[2]~0_combout\ = !\REG_PC|DOUT\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	combout => \REG_PC|DOUT[2]~0_combout\);

\REG_PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \REG_PC|DOUT[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(2));

\INC_PC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~1_sumout\ = SUM(( \REG_PC|DOUT\(2) ) + ( \REG_PC|DOUT\(3) ) + ( !VCC ))
-- \INC_PC|Add0~2\ = CARRY(( \REG_PC|DOUT\(2) ) + ( \REG_PC|DOUT\(3) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(2),
	dataf => \REG_PC|ALT_INV_DOUT\(3),
	cin => GND,
	sumout => \INC_PC|Add0~1_sumout\,
	cout => \INC_PC|Add0~2\);

\REG_PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(3));

\INC_PC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~17_sumout\ = SUM(( \REG_PC|DOUT\(4) ) + ( GND ) + ( \INC_PC|Add0~2\ ))
-- \INC_PC|Add0~18\ = CARRY(( \REG_PC|DOUT\(4) ) + ( GND ) + ( \INC_PC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(4),
	cin => \INC_PC|Add0~2\,
	sumout => \INC_PC|Add0~17_sumout\,
	cout => \INC_PC|Add0~18\);

\REG_PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(4));

\INC_PC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~9_sumout\ = SUM(( \REG_PC|DOUT\(5) ) + ( GND ) + ( \INC_PC|Add0~18\ ))
-- \INC_PC|Add0~10\ = CARRY(( \REG_PC|DOUT\(5) ) + ( GND ) + ( \INC_PC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(5),
	cin => \INC_PC|Add0~18\,
	sumout => \INC_PC|Add0~9_sumout\,
	cout => \INC_PC|Add0~10\);

\REG_PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(5));

\INC_PC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~13_sumout\ = SUM(( \REG_PC|DOUT\(6) ) + ( GND ) + ( \INC_PC|Add0~10\ ))
-- \INC_PC|Add0~14\ = CARRY(( \REG_PC|DOUT\(6) ) + ( GND ) + ( \INC_PC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(6),
	cin => \INC_PC|Add0~10\,
	sumout => \INC_PC|Add0~13_sumout\,
	cout => \INC_PC|Add0~14\);

\REG_PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(6));

\INC_PC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~5_sumout\ = SUM(( \REG_PC|DOUT\(7) ) + ( GND ) + ( \INC_PC|Add0~14\ ))
-- \INC_PC|Add0~6\ = CARRY(( \REG_PC|DOUT\(7) ) + ( GND ) + ( \INC_PC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(7),
	cin => \INC_PC|Add0~14\,
	sumout => \INC_PC|Add0~5_sumout\,
	cout => \INC_PC|Add0~6\);

\REG_PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(7));

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( !\REG_PC|DOUT\(4) & ( (!\REG_PC|DOUT\(7) & ((!\REG_PC|DOUT\(6) & (\REG_PC|DOUT\(2))) # (\REG_PC|DOUT\(6) & (((!\INC_PC|Add0~1_sumout\ & !\REG_PC|DOUT\(5))))))) ) ) # ( \REG_PC|DOUT\(4) & ( (!\REG_PC|DOUT\(7) & 
-- ((!\REG_PC|DOUT\(6) & (!\REG_PC|DOUT\(2) & ((\REG_PC|DOUT\(5))))) # (\REG_PC|DOUT\(6) & (!\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(2) $ (\REG_PC|DOUT\(5))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0111010001000100001000001001100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datac => \REG_PC|ALT_INV_DOUT\(3),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	datae => \REG_PC|ALT_INV_DOUT\(4),
	dataf => \REG_PC|ALT_INV_DOUT\(7),
	datag => \INC_PC|ALT_INV_Add0~1_sumout\,
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = ( !\REG_PC|DOUT\(2) & ( \REG_PC|DOUT\(7) & ( (\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(6) & !\REG_PC|DOUT\(5))) ) ) ) # ( \REG_PC|DOUT\(2) & ( !\REG_PC|DOUT\(7) & ( (\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(6) & !\REG_PC|DOUT\(4))) ) ) ) # ( 
-- !\REG_PC|DOUT\(2) & ( !\REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT\(4) & (!\REG_PC|DOUT\(6) $ (((!\REG_PC|DOUT\(3)) # (!\REG_PC|DOUT\(5)))))) # (\REG_PC|DOUT\(4) & (!\REG_PC|DOUT\(6) & (!\REG_PC|DOUT\(3) $ (!\REG_PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010001101000010000000100000001000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(3),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datac => \REG_PC|ALT_INV_DOUT\(4),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	datae => \REG_PC|ALT_INV_DOUT\(2),
	dataf => \REG_PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ( \REG_PC|DOUT\(4) & ( \REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT\(5) & (!\REG_PC|DOUT\(6) & (\REG_PC|DOUT\(3) & !\REG_PC|DOUT\(2)))) ) ) ) # ( !\REG_PC|DOUT\(4) & ( \REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT\(5) & (!\REG_PC|DOUT\(6) & 
-- (\REG_PC|DOUT\(3) & !\REG_PC|DOUT\(2)))) ) ) ) # ( \REG_PC|DOUT\(4) & ( !\REG_PC|DOUT\(7) & ( (\REG_PC|DOUT\(5) & ((!\REG_PC|DOUT\(3) & ((\REG_PC|DOUT\(2)))) # (\REG_PC|DOUT\(3) & (\REG_PC|DOUT\(6) & !\REG_PC|DOUT\(2))))) ) ) ) # ( !\REG_PC|DOUT\(4) & ( 
-- !\REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT\(5) & ((!\REG_PC|DOUT\(6) & (\REG_PC|DOUT\(3))) # (\REG_PC|DOUT\(6) & ((!\REG_PC|DOUT\(2)))))) # (\REG_PC|DOUT\(5) & (\REG_PC|DOUT\(6) & (!\REG_PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000011000000000010101000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(5),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datac => \REG_PC|ALT_INV_DOUT\(3),
	datad => \REG_PC|ALT_INV_DOUT\(2),
	datae => \REG_PC|ALT_INV_DOUT\(4),
	dataf => \REG_PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = ( !\REG_PC|DOUT\(2) & ( \REG_PC|DOUT\(7) & ( (\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(6) & (!\REG_PC|DOUT\(5) & !\REG_PC|DOUT\(4)))) ) ) ) # ( \REG_PC|DOUT\(2) & ( !\REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT\(3) & (((\REG_PC|DOUT\(5) & 
-- \REG_PC|DOUT\(4))))) # (\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(6) & ((!\REG_PC|DOUT\(4))))) ) ) ) # ( !\REG_PC|DOUT\(2) & ( !\REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT\(6) & ((!\REG_PC|DOUT\(4) & (\REG_PC|DOUT\(3))) # (\REG_PC|DOUT\(4) & ((\REG_PC|DOUT\(5)))))) # 
-- (\REG_PC|DOUT\(6) & (!\REG_PC|DOUT\(4) $ (((\REG_PC|DOUT\(3) & \REG_PC|DOUT\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011000001101010001000000101001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(3),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datac => \REG_PC|ALT_INV_DOUT\(5),
	datad => \REG_PC|ALT_INV_DOUT\(4),
	datae => \REG_PC|ALT_INV_DOUT\(2),
	dataf => \REG_PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = ( !\REG_PC|DOUT\(6) & ( \REG_PC|DOUT\(4) & ( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(2) & \REG_PC|DOUT\(5)))) ) ) ) # ( \REG_PC|DOUT\(6) & ( !\REG_PC|DOUT\(4) & ( (!\REG_PC|DOUT\(7) & (\REG_PC|DOUT\(2) & 
-- (!\REG_PC|DOUT\(3) $ (!\REG_PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000100000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(2),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	datae => \REG_PC|ALT_INV_DOUT\(6),
	dataf => \REG_PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( \REG_PC|DOUT\(6) & ( \REG_PC|DOUT\(7) ) ) # ( !\REG_PC|DOUT\(6) & ( \REG_PC|DOUT\(7) & ( ((\REG_PC|DOUT\(3) & ((!\REG_PC|DOUT\(2)) # (\REG_PC|DOUT\(4))))) # (\REG_PC|DOUT\(5)) ) ) ) # ( \REG_PC|DOUT\(6) & ( !\REG_PC|DOUT\(7) & ( 
-- (!\REG_PC|DOUT\(2) & (!\REG_PC|DOUT\(4) & ((!\REG_PC|DOUT\(3)) # (!\REG_PC|DOUT\(5))))) ) ) ) # ( !\REG_PC|DOUT\(6) & ( !\REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT\(2) & (!\REG_PC|DOUT\(5) $ (((\REG_PC|DOUT\(3) & !\REG_PC|DOUT\(4)))))) # (\REG_PC|DOUT\(2) & 
-- (!\REG_PC|DOUT\(3) $ ((!\REG_PC|DOUT\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001111000110100101000001000000000100011111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(4),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	datae => \REG_PC|ALT_INV_DOUT\(6),
	dataf => \REG_PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\REG_PC|DOUT\(6) & ( !\REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT\(4) & ((!\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(5) & \REG_PC|DOUT\(2))) # (\REG_PC|DOUT\(3) & ((!\REG_PC|DOUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(5),
	datab => \REG_PC|ALT_INV_DOUT\(4),
	datac => \REG_PC|ALT_INV_DOUT\(3),
	datad => \REG_PC|ALT_INV_DOUT\(2),
	datae => \REG_PC|ALT_INV_DOUT\(6),
	dataf => \REG_PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = ( !\REG_PC|DOUT\(4) & ( \REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT\(6) & (\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(5) & !\REG_PC|DOUT\(2)))) ) ) ) # ( \REG_PC|DOUT\(4) & ( !\REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT\(3) & (\REG_PC|DOUT\(5) & 
-- \REG_PC|DOUT\(2))) ) ) ) # ( !\REG_PC|DOUT\(4) & ( !\REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT\(6) & (\REG_PC|DOUT\(3) & (\REG_PC|DOUT\(5) & \REG_PC|DOUT\(2)))) # (\REG_PC|DOUT\(6) & (!\REG_PC|DOUT\(2) & ((!\REG_PC|DOUT\(3)) # (!\REG_PC|DOUT\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000010000000000000110000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(6),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(5),
	datad => \REG_PC|ALT_INV_DOUT\(2),
	datae => \REG_PC|ALT_INV_DOUT\(4),
	dataf => \REG_PC|ALT_INV_DOUT\(7),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\REG_PC|DOUT\(6) & ( !\REG_PC|DOUT\(4) & ( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(2) & !\REG_PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(2),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	datae => \REG_PC|ALT_INV_DOUT\(6),
	dataf => \REG_PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~2_combout\);

\OP_ULA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP_ULA,
	o => \OP_ULA~input_o\);

\ULA|Add0~130\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~130_cout\ = CARRY(( !\OP_ULA~input_o\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_OP_ULA~input_o\,
	cin => GND,
	cout => \ULA|Add0~130_cout\);

\ULA|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~1_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~130_cout\ ))
-- \ULA|Add0~2\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~130_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~130_cout\,
	sumout => \ULA|Add0~1_sumout\,
	cout => \ULA|Add0~2\);

\ULA|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~5_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( !\ROM|memROM~2_combout\ $ (\OP_ULA~input_o\) ) + ( \ULA|Add0~2\ ))
-- \ULA|Add0~6\ = CARRY(( \ROM|memROM~2_combout\ ) + ( !\ROM|memROM~2_combout\ $ (\OP_ULA~input_o\) ) + ( \ULA|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~2\,
	sumout => \ULA|Add0~5_sumout\,
	cout => \ULA|Add0~6\);

\ULA|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~9_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~6\ ))
-- \ULA|Add0~10\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~6\,
	sumout => \ULA|Add0~9_sumout\,
	cout => \ULA|Add0~10\);

\ULA|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~13_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~10\ ))
-- \ULA|Add0~14\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~10\,
	sumout => \ULA|Add0~13_sumout\,
	cout => \ULA|Add0~14\);

\ULA|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~17_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~14\ ))
-- \ULA|Add0~18\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~14\,
	sumout => \ULA|Add0~17_sumout\,
	cout => \ULA|Add0~18\);

\ULA|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~21_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~18\ ))
-- \ULA|Add0~22\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~18\,
	sumout => \ULA|Add0~21_sumout\,
	cout => \ULA|Add0~22\);

\ULA|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~25_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~22\ ))
-- \ULA|Add0~26\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~22\,
	sumout => \ULA|Add0~25_sumout\,
	cout => \ULA|Add0~26\);

\ULA|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~29_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~26\ ))
-- \ULA|Add0~30\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~26\,
	sumout => \ULA|Add0~29_sumout\,
	cout => \ULA|Add0~30\);

\ULA|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~33_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~30\ ))
-- \ULA|Add0~34\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~30\,
	sumout => \ULA|Add0~33_sumout\,
	cout => \ULA|Add0~34\);

\ULA|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~37_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~34\ ))
-- \ULA|Add0~38\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~34\,
	sumout => \ULA|Add0~37_sumout\,
	cout => \ULA|Add0~38\);

\ULA|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~41_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~38\ ))
-- \ULA|Add0~42\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~38\,
	sumout => \ULA|Add0~41_sumout\,
	cout => \ULA|Add0~42\);

\ULA|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~45_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~42\ ))
-- \ULA|Add0~46\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~42\,
	sumout => \ULA|Add0~45_sumout\,
	cout => \ULA|Add0~46\);

\ULA|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~49_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~46\ ))
-- \ULA|Add0~50\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~46\,
	sumout => \ULA|Add0~49_sumout\,
	cout => \ULA|Add0~50\);

\ULA|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~53_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~50\ ))
-- \ULA|Add0~54\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~50\,
	sumout => \ULA|Add0~53_sumout\,
	cout => \ULA|Add0~54\);

\ULA|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~57_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~54\ ))
-- \ULA|Add0~58\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~54\,
	sumout => \ULA|Add0~57_sumout\,
	cout => \ULA|Add0~58\);

\ULA|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~61_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~58\ ))
-- \ULA|Add0~62\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~58\,
	sumout => \ULA|Add0~61_sumout\,
	cout => \ULA|Add0~62\);

\ULA|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~65_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~62\ ))
-- \ULA|Add0~66\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~62\,
	sumout => \ULA|Add0~65_sumout\,
	cout => \ULA|Add0~66\);

\ULA|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~69_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~66\ ))
-- \ULA|Add0~70\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~66\,
	sumout => \ULA|Add0~69_sumout\,
	cout => \ULA|Add0~70\);

\ULA|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~73_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~70\ ))
-- \ULA|Add0~74\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~70\,
	sumout => \ULA|Add0~73_sumout\,
	cout => \ULA|Add0~74\);

\ULA|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~77_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~74\ ))
-- \ULA|Add0~78\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~74\,
	sumout => \ULA|Add0~77_sumout\,
	cout => \ULA|Add0~78\);

\ULA|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~81_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~78\ ))
-- \ULA|Add0~82\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~78\,
	sumout => \ULA|Add0~81_sumout\,
	cout => \ULA|Add0~82\);

\ULA|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~85_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~82\ ))
-- \ULA|Add0~86\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~82\,
	sumout => \ULA|Add0~85_sumout\,
	cout => \ULA|Add0~86\);

\ULA|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~89_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~86\ ))
-- \ULA|Add0~90\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~86\,
	sumout => \ULA|Add0~89_sumout\,
	cout => \ULA|Add0~90\);

\ULA|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~93_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~90\ ))
-- \ULA|Add0~94\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~90\,
	sumout => \ULA|Add0~93_sumout\,
	cout => \ULA|Add0~94\);

\ULA|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~97_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~94\ ))
-- \ULA|Add0~98\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~94\,
	sumout => \ULA|Add0~97_sumout\,
	cout => \ULA|Add0~98\);

\ULA|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~101_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~98\ ))
-- \ULA|Add0~102\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~98\,
	sumout => \ULA|Add0~101_sumout\,
	cout => \ULA|Add0~102\);

\ULA|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~105_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~102\ ))
-- \ULA|Add0~106\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~102\,
	sumout => \ULA|Add0~105_sumout\,
	cout => \ULA|Add0~106\);

\ULA|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~109_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~106\ ))
-- \ULA|Add0~110\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~106\,
	sumout => \ULA|Add0~109_sumout\,
	cout => \ULA|Add0~110\);

\ULA|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~113_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~110\ ))
-- \ULA|Add0~114\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~110\,
	sumout => \ULA|Add0~113_sumout\,
	cout => \ULA|Add0~114\);

\ULA|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~117_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~114\ ))
-- \ULA|Add0~118\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~114\,
	sumout => \ULA|Add0~117_sumout\,
	cout => \ULA|Add0~118\);

\ULA|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~121_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~118\ ))
-- \ULA|Add0~122\ = CARRY(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~118\,
	sumout => \ULA|Add0~121_sumout\,
	cout => \ULA|Add0~122\);

\ULA|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|Add0~125_sumout\ = SUM(( GND ) + ( !\OP_ULA~input_o\ ) + ( \ULA|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_OP_ULA~input_o\,
	cin => \ULA|Add0~122\,
	sumout => \ULA|Add0~125_sumout\);

\INC_PC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~21_sumout\ = SUM(( \REG_PC|DOUT\(8) ) + ( GND ) + ( \INC_PC|Add0~6\ ))
-- \INC_PC|Add0~22\ = CARRY(( \REG_PC|DOUT\(8) ) + ( GND ) + ( \INC_PC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(8),
	cin => \INC_PC|Add0~6\,
	sumout => \INC_PC|Add0~21_sumout\,
	cout => \INC_PC|Add0~22\);

\REG_PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(8));

\INC_PC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~25_sumout\ = SUM(( \REG_PC|DOUT\(9) ) + ( GND ) + ( \INC_PC|Add0~22\ ))
-- \INC_PC|Add0~26\ = CARRY(( \REG_PC|DOUT\(9) ) + ( GND ) + ( \INC_PC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(9),
	cin => \INC_PC|Add0~22\,
	sumout => \INC_PC|Add0~25_sumout\,
	cout => \INC_PC|Add0~26\);

\REG_PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(9));

\INC_PC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~29_sumout\ = SUM(( \REG_PC|DOUT\(10) ) + ( GND ) + ( \INC_PC|Add0~26\ ))
-- \INC_PC|Add0~30\ = CARRY(( \REG_PC|DOUT\(10) ) + ( GND ) + ( \INC_PC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(10),
	cin => \INC_PC|Add0~26\,
	sumout => \INC_PC|Add0~29_sumout\,
	cout => \INC_PC|Add0~30\);

\REG_PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(10));

\INC_PC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~33_sumout\ = SUM(( \REG_PC|DOUT\(11) ) + ( GND ) + ( \INC_PC|Add0~30\ ))
-- \INC_PC|Add0~34\ = CARRY(( \REG_PC|DOUT\(11) ) + ( GND ) + ( \INC_PC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(11),
	cin => \INC_PC|Add0~30\,
	sumout => \INC_PC|Add0~33_sumout\,
	cout => \INC_PC|Add0~34\);

\REG_PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(11));

\INC_PC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~37_sumout\ = SUM(( \REG_PC|DOUT\(12) ) + ( GND ) + ( \INC_PC|Add0~34\ ))
-- \INC_PC|Add0~38\ = CARRY(( \REG_PC|DOUT\(12) ) + ( GND ) + ( \INC_PC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(12),
	cin => \INC_PC|Add0~34\,
	sumout => \INC_PC|Add0~37_sumout\,
	cout => \INC_PC|Add0~38\);

\REG_PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(12));

\INC_PC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~41_sumout\ = SUM(( \REG_PC|DOUT\(13) ) + ( GND ) + ( \INC_PC|Add0~38\ ))
-- \INC_PC|Add0~42\ = CARRY(( \REG_PC|DOUT\(13) ) + ( GND ) + ( \INC_PC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(13),
	cin => \INC_PC|Add0~38\,
	sumout => \INC_PC|Add0~41_sumout\,
	cout => \INC_PC|Add0~42\);

\REG_PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(13));

\INC_PC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~45_sumout\ = SUM(( \REG_PC|DOUT\(14) ) + ( GND ) + ( \INC_PC|Add0~42\ ))
-- \INC_PC|Add0~46\ = CARRY(( \REG_PC|DOUT\(14) ) + ( GND ) + ( \INC_PC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(14),
	cin => \INC_PC|Add0~42\,
	sumout => \INC_PC|Add0~45_sumout\,
	cout => \INC_PC|Add0~46\);

\REG_PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(14));

\INC_PC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~49_sumout\ = SUM(( \REG_PC|DOUT\(15) ) + ( GND ) + ( \INC_PC|Add0~46\ ))
-- \INC_PC|Add0~50\ = CARRY(( \REG_PC|DOUT\(15) ) + ( GND ) + ( \INC_PC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(15),
	cin => \INC_PC|Add0~46\,
	sumout => \INC_PC|Add0~49_sumout\,
	cout => \INC_PC|Add0~50\);

\REG_PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(15));

\INC_PC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~53_sumout\ = SUM(( \REG_PC|DOUT\(16) ) + ( GND ) + ( \INC_PC|Add0~50\ ))
-- \INC_PC|Add0~54\ = CARRY(( \REG_PC|DOUT\(16) ) + ( GND ) + ( \INC_PC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(16),
	cin => \INC_PC|Add0~50\,
	sumout => \INC_PC|Add0~53_sumout\,
	cout => \INC_PC|Add0~54\);

\REG_PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(16));

\INC_PC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~57_sumout\ = SUM(( \REG_PC|DOUT\(17) ) + ( GND ) + ( \INC_PC|Add0~54\ ))
-- \INC_PC|Add0~58\ = CARRY(( \REG_PC|DOUT\(17) ) + ( GND ) + ( \INC_PC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(17),
	cin => \INC_PC|Add0~54\,
	sumout => \INC_PC|Add0~57_sumout\,
	cout => \INC_PC|Add0~58\);

\REG_PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(17));

\INC_PC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~61_sumout\ = SUM(( \REG_PC|DOUT\(18) ) + ( GND ) + ( \INC_PC|Add0~58\ ))
-- \INC_PC|Add0~62\ = CARRY(( \REG_PC|DOUT\(18) ) + ( GND ) + ( \INC_PC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(18),
	cin => \INC_PC|Add0~58\,
	sumout => \INC_PC|Add0~61_sumout\,
	cout => \INC_PC|Add0~62\);

\REG_PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~61_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(18));

\INC_PC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~65_sumout\ = SUM(( \REG_PC|DOUT\(19) ) + ( GND ) + ( \INC_PC|Add0~62\ ))
-- \INC_PC|Add0~66\ = CARRY(( \REG_PC|DOUT\(19) ) + ( GND ) + ( \INC_PC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(19),
	cin => \INC_PC|Add0~62\,
	sumout => \INC_PC|Add0~65_sumout\,
	cout => \INC_PC|Add0~66\);

\REG_PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~65_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(19));

\INC_PC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~69_sumout\ = SUM(( \REG_PC|DOUT\(20) ) + ( GND ) + ( \INC_PC|Add0~66\ ))
-- \INC_PC|Add0~70\ = CARRY(( \REG_PC|DOUT\(20) ) + ( GND ) + ( \INC_PC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(20),
	cin => \INC_PC|Add0~66\,
	sumout => \INC_PC|Add0~69_sumout\,
	cout => \INC_PC|Add0~70\);

\REG_PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~69_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(20));

\INC_PC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~73_sumout\ = SUM(( \REG_PC|DOUT\(21) ) + ( GND ) + ( \INC_PC|Add0~70\ ))
-- \INC_PC|Add0~74\ = CARRY(( \REG_PC|DOUT\(21) ) + ( GND ) + ( \INC_PC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(21),
	cin => \INC_PC|Add0~70\,
	sumout => \INC_PC|Add0~73_sumout\,
	cout => \INC_PC|Add0~74\);

\REG_PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~73_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(21));

\INC_PC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~77_sumout\ = SUM(( \REG_PC|DOUT\(22) ) + ( GND ) + ( \INC_PC|Add0~74\ ))
-- \INC_PC|Add0~78\ = CARRY(( \REG_PC|DOUT\(22) ) + ( GND ) + ( \INC_PC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(22),
	cin => \INC_PC|Add0~74\,
	sumout => \INC_PC|Add0~77_sumout\,
	cout => \INC_PC|Add0~78\);

\REG_PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~77_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(22));

\INC_PC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~81_sumout\ = SUM(( \REG_PC|DOUT\(23) ) + ( GND ) + ( \INC_PC|Add0~78\ ))
-- \INC_PC|Add0~82\ = CARRY(( \REG_PC|DOUT\(23) ) + ( GND ) + ( \INC_PC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(23),
	cin => \INC_PC|Add0~78\,
	sumout => \INC_PC|Add0~81_sumout\,
	cout => \INC_PC|Add0~82\);

\REG_PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~81_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(23));

\INC_PC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~85_sumout\ = SUM(( \REG_PC|DOUT\(24) ) + ( GND ) + ( \INC_PC|Add0~82\ ))
-- \INC_PC|Add0~86\ = CARRY(( \REG_PC|DOUT\(24) ) + ( GND ) + ( \INC_PC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(24),
	cin => \INC_PC|Add0~82\,
	sumout => \INC_PC|Add0~85_sumout\,
	cout => \INC_PC|Add0~86\);

\REG_PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~85_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(24));

\INC_PC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~89_sumout\ = SUM(( \REG_PC|DOUT\(25) ) + ( GND ) + ( \INC_PC|Add0~86\ ))
-- \INC_PC|Add0~90\ = CARRY(( \REG_PC|DOUT\(25) ) + ( GND ) + ( \INC_PC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(25),
	cin => \INC_PC|Add0~86\,
	sumout => \INC_PC|Add0~89_sumout\,
	cout => \INC_PC|Add0~90\);

\REG_PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~89_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(25));

\INC_PC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~93_sumout\ = SUM(( \REG_PC|DOUT\(26) ) + ( GND ) + ( \INC_PC|Add0~90\ ))
-- \INC_PC|Add0~94\ = CARRY(( \REG_PC|DOUT\(26) ) + ( GND ) + ( \INC_PC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(26),
	cin => \INC_PC|Add0~90\,
	sumout => \INC_PC|Add0~93_sumout\,
	cout => \INC_PC|Add0~94\);

\REG_PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~93_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(26));

\INC_PC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~97_sumout\ = SUM(( \REG_PC|DOUT\(27) ) + ( GND ) + ( \INC_PC|Add0~94\ ))
-- \INC_PC|Add0~98\ = CARRY(( \REG_PC|DOUT\(27) ) + ( GND ) + ( \INC_PC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(27),
	cin => \INC_PC|Add0~94\,
	sumout => \INC_PC|Add0~97_sumout\,
	cout => \INC_PC|Add0~98\);

\REG_PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~97_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(27));

\INC_PC|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~101_sumout\ = SUM(( \REG_PC|DOUT\(28) ) + ( GND ) + ( \INC_PC|Add0~98\ ))
-- \INC_PC|Add0~102\ = CARRY(( \REG_PC|DOUT\(28) ) + ( GND ) + ( \INC_PC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(28),
	cin => \INC_PC|Add0~98\,
	sumout => \INC_PC|Add0~101_sumout\,
	cout => \INC_PC|Add0~102\);

\REG_PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~101_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(28));

\INC_PC|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~105_sumout\ = SUM(( \REG_PC|DOUT\(29) ) + ( GND ) + ( \INC_PC|Add0~102\ ))
-- \INC_PC|Add0~106\ = CARRY(( \REG_PC|DOUT\(29) ) + ( GND ) + ( \INC_PC|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(29),
	cin => \INC_PC|Add0~102\,
	sumout => \INC_PC|Add0~105_sumout\,
	cout => \INC_PC|Add0~106\);

\REG_PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~105_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(29));

\INC_PC|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~109_sumout\ = SUM(( \REG_PC|DOUT\(30) ) + ( GND ) + ( \INC_PC|Add0~106\ ))
-- \INC_PC|Add0~110\ = CARRY(( \REG_PC|DOUT\(30) ) + ( GND ) + ( \INC_PC|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(30),
	cin => \INC_PC|Add0~106\,
	sumout => \INC_PC|Add0~109_sumout\,
	cout => \INC_PC|Add0~110\);

\REG_PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~109_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(30));

\INC_PC|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~113_sumout\ = SUM(( \REG_PC|DOUT\(31) ) + ( GND ) + ( \INC_PC|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(31),
	cin => \INC_PC|Add0~110\,
	sumout => \INC_PC|Add0~113_sumout\);

\REG_PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \INC_PC|Add0~113_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(31));

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\EscritaReg3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EscritaReg3,
	o => \EscritaReg3~input_o\);

ww_dados_out(0) <= \dados_out[0]~output_o\;

ww_dados_out(1) <= \dados_out[1]~output_o\;

ww_dados_out(2) <= \dados_out[2]~output_o\;

ww_dados_out(3) <= \dados_out[3]~output_o\;

ww_dados_out(4) <= \dados_out[4]~output_o\;

ww_dados_out(5) <= \dados_out[5]~output_o\;

ww_dados_out(6) <= \dados_out[6]~output_o\;

ww_dados_out(7) <= \dados_out[7]~output_o\;

ww_dados_out(8) <= \dados_out[8]~output_o\;

ww_dados_out(9) <= \dados_out[9]~output_o\;

ww_dados_out(10) <= \dados_out[10]~output_o\;

ww_dados_out(11) <= \dados_out[11]~output_o\;

ww_dados_out(12) <= \dados_out[12]~output_o\;

ww_dados_out(13) <= \dados_out[13]~output_o\;

ww_dados_out(14) <= \dados_out[14]~output_o\;

ww_dados_out(15) <= \dados_out[15]~output_o\;

ww_dados_out(16) <= \dados_out[16]~output_o\;

ww_dados_out(17) <= \dados_out[17]~output_o\;

ww_dados_out(18) <= \dados_out[18]~output_o\;

ww_dados_out(19) <= \dados_out[19]~output_o\;

ww_dados_out(20) <= \dados_out[20]~output_o\;

ww_dados_out(21) <= \dados_out[21]~output_o\;

ww_dados_out(22) <= \dados_out[22]~output_o\;

ww_dados_out(23) <= \dados_out[23]~output_o\;

ww_dados_out(24) <= \dados_out[24]~output_o\;

ww_dados_out(25) <= \dados_out[25]~output_o\;

ww_dados_out(26) <= \dados_out[26]~output_o\;

ww_dados_out(27) <= \dados_out[27]~output_o\;

ww_dados_out(28) <= \dados_out[28]~output_o\;

ww_dados_out(29) <= \dados_out[29]~output_o\;

ww_dados_out(30) <= \dados_out[30]~output_o\;

ww_dados_out(31) <= \dados_out[31]~output_o\;

ww_ULA_OUT(0) <= \ULA_OUT[0]~output_o\;

ww_ULA_OUT(1) <= \ULA_OUT[1]~output_o\;

ww_ULA_OUT(2) <= \ULA_OUT[2]~output_o\;

ww_ULA_OUT(3) <= \ULA_OUT[3]~output_o\;

ww_ULA_OUT(4) <= \ULA_OUT[4]~output_o\;

ww_ULA_OUT(5) <= \ULA_OUT[5]~output_o\;

ww_ULA_OUT(6) <= \ULA_OUT[6]~output_o\;

ww_ULA_OUT(7) <= \ULA_OUT[7]~output_o\;

ww_ULA_OUT(8) <= \ULA_OUT[8]~output_o\;

ww_ULA_OUT(9) <= \ULA_OUT[9]~output_o\;

ww_ULA_OUT(10) <= \ULA_OUT[10]~output_o\;

ww_ULA_OUT(11) <= \ULA_OUT[11]~output_o\;

ww_ULA_OUT(12) <= \ULA_OUT[12]~output_o\;

ww_ULA_OUT(13) <= \ULA_OUT[13]~output_o\;

ww_ULA_OUT(14) <= \ULA_OUT[14]~output_o\;

ww_ULA_OUT(15) <= \ULA_OUT[15]~output_o\;

ww_ULA_OUT(16) <= \ULA_OUT[16]~output_o\;

ww_ULA_OUT(17) <= \ULA_OUT[17]~output_o\;

ww_ULA_OUT(18) <= \ULA_OUT[18]~output_o\;

ww_ULA_OUT(19) <= \ULA_OUT[19]~output_o\;

ww_ULA_OUT(20) <= \ULA_OUT[20]~output_o\;

ww_ULA_OUT(21) <= \ULA_OUT[21]~output_o\;

ww_ULA_OUT(22) <= \ULA_OUT[22]~output_o\;

ww_ULA_OUT(23) <= \ULA_OUT[23]~output_o\;

ww_ULA_OUT(24) <= \ULA_OUT[24]~output_o\;

ww_ULA_OUT(25) <= \ULA_OUT[25]~output_o\;

ww_ULA_OUT(26) <= \ULA_OUT[26]~output_o\;

ww_ULA_OUT(27) <= \ULA_OUT[27]~output_o\;

ww_ULA_OUT(28) <= \ULA_OUT[28]~output_o\;

ww_ULA_OUT(29) <= \ULA_OUT[29]~output_o\;

ww_ULA_OUT(30) <= \ULA_OUT[30]~output_o\;

ww_ULA_OUT(31) <= \ULA_OUT[31]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_PC_OUT(9) <= \PC_OUT[9]~output_o\;

ww_PC_OUT(10) <= \PC_OUT[10]~output_o\;

ww_PC_OUT(11) <= \PC_OUT[11]~output_o\;

ww_PC_OUT(12) <= \PC_OUT[12]~output_o\;

ww_PC_OUT(13) <= \PC_OUT[13]~output_o\;

ww_PC_OUT(14) <= \PC_OUT[14]~output_o\;

ww_PC_OUT(15) <= \PC_OUT[15]~output_o\;

ww_PC_OUT(16) <= \PC_OUT[16]~output_o\;

ww_PC_OUT(17) <= \PC_OUT[17]~output_o\;

ww_PC_OUT(18) <= \PC_OUT[18]~output_o\;

ww_PC_OUT(19) <= \PC_OUT[19]~output_o\;

ww_PC_OUT(20) <= \PC_OUT[20]~output_o\;

ww_PC_OUT(21) <= \PC_OUT[21]~output_o\;

ww_PC_OUT(22) <= \PC_OUT[22]~output_o\;

ww_PC_OUT(23) <= \PC_OUT[23]~output_o\;

ww_PC_OUT(24) <= \PC_OUT[24]~output_o\;

ww_PC_OUT(25) <= \PC_OUT[25]~output_o\;

ww_PC_OUT(26) <= \PC_OUT[26]~output_o\;

ww_PC_OUT(27) <= \PC_OUT[27]~output_o\;

ww_PC_OUT(28) <= \PC_OUT[28]~output_o\;

ww_PC_OUT(29) <= \PC_OUT[29]~output_o\;

ww_PC_OUT(30) <= \PC_OUT[30]~output_o\;

ww_PC_OUT(31) <= \PC_OUT[31]~output_o\;
END structure;


