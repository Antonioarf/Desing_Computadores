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

-- DATE "05/17/2023 11:52:32"

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
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	OP_ULA : OUT std_logic_vector(2 DOWNTO 0);
	ROM_OUT : OUT std_logic_vector(31 DOWNTO 0);
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_OP_ULA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ROM_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ULA_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(31 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \OP_ULA[0]~output_o\ : std_logic;
SIGNAL \OP_ULA[1]~output_o\ : std_logic;
SIGNAL \OP_ULA[2]~output_o\ : std_logic;
SIGNAL \ROM_OUT[0]~output_o\ : std_logic;
SIGNAL \ROM_OUT[1]~output_o\ : std_logic;
SIGNAL \ROM_OUT[2]~output_o\ : std_logic;
SIGNAL \ROM_OUT[3]~output_o\ : std_logic;
SIGNAL \ROM_OUT[4]~output_o\ : std_logic;
SIGNAL \ROM_OUT[5]~output_o\ : std_logic;
SIGNAL \ROM_OUT[6]~output_o\ : std_logic;
SIGNAL \ROM_OUT[7]~output_o\ : std_logic;
SIGNAL \ROM_OUT[8]~output_o\ : std_logic;
SIGNAL \ROM_OUT[9]~output_o\ : std_logic;
SIGNAL \ROM_OUT[10]~output_o\ : std_logic;
SIGNAL \ROM_OUT[11]~output_o\ : std_logic;
SIGNAL \ROM_OUT[12]~output_o\ : std_logic;
SIGNAL \ROM_OUT[13]~output_o\ : std_logic;
SIGNAL \ROM_OUT[14]~output_o\ : std_logic;
SIGNAL \ROM_OUT[15]~output_o\ : std_logic;
SIGNAL \ROM_OUT[16]~output_o\ : std_logic;
SIGNAL \ROM_OUT[17]~output_o\ : std_logic;
SIGNAL \ROM_OUT[18]~output_o\ : std_logic;
SIGNAL \ROM_OUT[19]~output_o\ : std_logic;
SIGNAL \ROM_OUT[20]~output_o\ : std_logic;
SIGNAL \ROM_OUT[21]~output_o\ : std_logic;
SIGNAL \ROM_OUT[22]~output_o\ : std_logic;
SIGNAL \ROM_OUT[23]~output_o\ : std_logic;
SIGNAL \ROM_OUT[24]~output_o\ : std_logic;
SIGNAL \ROM_OUT[25]~output_o\ : std_logic;
SIGNAL \ROM_OUT[26]~output_o\ : std_logic;
SIGNAL \ROM_OUT[27]~output_o\ : std_logic;
SIGNAL \ROM_OUT[28]~output_o\ : std_logic;
SIGNAL \ROM_OUT[29]~output_o\ : std_logic;
SIGNAL \ROM_OUT[30]~output_o\ : std_logic;
SIGNAL \ROM_OUT[31]~output_o\ : std_logic;
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \INC_PC|Add0~22\ : std_logic;
SIGNAL \INC_PC|Add0~6\ : std_logic;
SIGNAL \INC_PC|Add0~10\ : std_logic;
SIGNAL \INC_PC|Add0~13_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \INC_PC|Add0~5_sumout\ : std_logic;
SIGNAL \INC_PC|Add0~21_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~118_cout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~6\ : std_logic;
SIGNAL \soma_pc_etx|Add0~10\ : std_logic;
SIGNAL \soma_pc_etx|Add0~13_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[5]~44_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~9_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[4]~48_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \decoder_instru|Equal0~0_combout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~5_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[3]~52_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \decoder_instru|Equal2~0_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \decoder_instru|Equal6~0_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1191_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~38_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1192_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~294_q\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \bancoRegistradores|Equal1~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[0]~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1193_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1062_combout\ : std_logic;
SIGNAL \decoder_ula|mux_dec_ula|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \bancoRegistradores|Equal0~0_combout\ : std_logic;
SIGNAL \decoder_instru|saida[3]~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~295_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1194_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1066_combout\ : std_logic;
SIGNAL \ULA|ULA1|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~39_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[1]~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~296_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1195_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1070_combout\ : std_logic;
SIGNAL \ULA|ULA2|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|Somador|saida~combout\ : std_logic;
SIGNAL \ULA|ULA2|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~40_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[2]~2_combout\ : std_logic;
SIGNAL \ULA|ULA2|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~297_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1196_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1074_combout\ : std_logic;
SIGNAL \ULA|ULA3|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA3|MUX_Selecao|saida_MUX~2_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~41_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[3]~3_combout\ : std_logic;
SIGNAL \ULA|ULA3|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|Somador|cOut~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|Somador|cOut~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~298_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1197_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1078_combout\ : std_logic;
SIGNAL \ULA|ULA4|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA4|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~42_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[4]~4_combout\ : std_logic;
SIGNAL \ULA|ULA4|Somador|cOut~combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~299_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1198_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1082_combout\ : std_logic;
SIGNAL \ULA|ULA5|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA5|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA5|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA5|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~43_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[5]~5_combout\ : std_logic;
SIGNAL \ULA|ULA5|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~300_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1199_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1086_combout\ : std_logic;
SIGNAL \ULA|ULA6|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA6|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA6|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA6|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~44_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[6]~6_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~301_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1200_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1090_combout\ : std_logic;
SIGNAL \ULA|ULA7|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA7|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA7|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~45_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[7]~7_combout\ : std_logic;
SIGNAL \ULA|ULA7|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~302_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1201_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1094_combout\ : std_logic;
SIGNAL \ULA|ULA8|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~46_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[8]~8_combout\ : std_logic;
SIGNAL \ULA|ULA8|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|Somador|cOut~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|Somador|cOut~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~303_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1202_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1098_combout\ : std_logic;
SIGNAL \ULA|ULA9|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA9|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~47_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[9]~9_combout\ : std_logic;
SIGNAL \ULA|ULA9|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~304_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1203_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1102_combout\ : std_logic;
SIGNAL \ULA|ULA10|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA10|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA10|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA10|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~48_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[10]~10_combout\ : std_logic;
SIGNAL \ULA|ULA10|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~305_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1204_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1106_combout\ : std_logic;
SIGNAL \ULA|ULA11|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA11|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA11|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~49_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[11]~11_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~306_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1205_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1110_combout\ : std_logic;
SIGNAL \ULA|ULA12|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA12|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA12|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA12|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~50_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[12]~12_combout\ : std_logic;
SIGNAL \ULA|ULA12|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~307_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1206_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1114_combout\ : std_logic;
SIGNAL \ULA|ULA13|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA13|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA13|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~51_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[13]~13_combout\ : std_logic;
SIGNAL \ULA|ULA13|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA13|Somador|cOut~0_combout\ : std_logic;
SIGNAL \ULA|ULA13|Somador|cOut~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~308_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1207_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1118_combout\ : std_logic;
SIGNAL \ULA|ULA14|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA14|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~52_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[14]~14_combout\ : std_logic;
SIGNAL \ULA|ULA14|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~309_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1208_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1122_combout\ : std_logic;
SIGNAL \ULA|ULA15|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~53_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[15]~15_combout\ : std_logic;
SIGNAL \ULA|ULA15|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~310_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1209_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1126_combout\ : std_logic;
SIGNAL \ULA|ULA16|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA16|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA16|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA16|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~54_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[16]~16_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~311_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1210_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1130_combout\ : std_logic;
SIGNAL \ULA|ULA17|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA17|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA17|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA17|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~55_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[17]~17_combout\ : std_logic;
SIGNAL \ULA|ULA17|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~312_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1211_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1134_combout\ : std_logic;
SIGNAL \ULA|ULA18|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA18|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA18|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~56_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[18]~18_combout\ : std_logic;
SIGNAL \ULA|ULA18|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA18|Somador|cOut~0_combout\ : std_logic;
SIGNAL \ULA|ULA18|Somador|cOut~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~313_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1212_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1138_combout\ : std_logic;
SIGNAL \ULA|ULA19|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~57_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[19]~19_combout\ : std_logic;
SIGNAL \ULA|ULA19|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~314_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1213_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1142_combout\ : std_logic;
SIGNAL \ULA|ULA20|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA20|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA20|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA20|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~58_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[20]~20_combout\ : std_logic;
SIGNAL \ULA|ULA20|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~315_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1214_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1146_combout\ : std_logic;
SIGNAL \ULA|ULA21|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA21|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA21|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA21|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~59_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[21]~21_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~316_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1215_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1150_combout\ : std_logic;
SIGNAL \ULA|ULA22|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA22|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA22|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA22|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~60_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[22]~22_combout\ : std_logic;
SIGNAL \ULA|ULA22|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~317_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1216_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1154_combout\ : std_logic;
SIGNAL \ULA|ULA23|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~61_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[23]~23_combout\ : std_logic;
SIGNAL \ULA|ULA23|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|Somador|cOut~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|Somador|cOut~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~318_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1217_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1158_combout\ : std_logic;
SIGNAL \ULA|ULA24|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~62_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[24]~24_combout\ : std_logic;
SIGNAL \ULA|ULA24|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~319_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1218_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1162_combout\ : std_logic;
SIGNAL \ULA|ULA25|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~63_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[25]~25_combout\ : std_logic;
SIGNAL \ULA|ULA25|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~320_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1219_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1166_combout\ : std_logic;
SIGNAL \ULA|ULA26|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA26|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA26|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA26|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~64_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[26]~26_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~321_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1220_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1170_combout\ : std_logic;
SIGNAL \ULA|ULA27|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA27|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA27|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA27|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~65_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[27]~27_combout\ : std_logic;
SIGNAL \ULA|ULA27|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~322_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1221_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1174_combout\ : std_logic;
SIGNAL \ULA|ULA28|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~66_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[28]~28_combout\ : std_logic;
SIGNAL \ULA|ULA28|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|Somador|cOut~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|Somador|cOut~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~323_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1222_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1178_combout\ : std_logic;
SIGNAL \ULA|ULA29|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA29|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~67_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[29]~29_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~324_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1223_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1182_combout\ : std_logic;
SIGNAL \ULA|ULA30|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA30|Somador|saida~combout\ : std_logic;
SIGNAL \ULA|ULA30|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA30|MUX_Selecao|saida_MUX~2_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~68_q\ : std_logic;
SIGNAL \bancoRegistradores|saidaA[30]~30_combout\ : std_logic;
SIGNAL \ULA|ULA30|Somador|cOut~combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~69_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~325_q\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1186_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1224_combout\ : std_logic;
SIGNAL \bancoRegistradores|registrador~1187_combout\ : std_logic;
SIGNAL \ULA|ULA31|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|Somador|saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \INC_PC|Add0~14\ : std_logic;
SIGNAL \INC_PC|Add0~17_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~14\ : std_logic;
SIGNAL \soma_pc_etx|Add0~17_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[6]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \INC_PC|Add0~18\ : std_logic;
SIGNAL \INC_PC|Add0~1_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~18\ : std_logic;
SIGNAL \soma_pc_etx|Add0~1_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[7]~56_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \decoder_ula|saida_funct[0]~1_combout\ : std_logic;
SIGNAL \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \decoder_ula|saida_funct[1]~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_Selecao|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_inverte|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_Selecao|saida_MUX~4_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_Selecao|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_Selecao|saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \DEC_0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \DEC_0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \DEC_0|rascSaida7seg[1]~2_combout\ : std_logic;
SIGNAL \DEC_0|rascSaida7seg[2]~3_combout\ : std_logic;
SIGNAL \DEC_0|rascSaida7seg[3]~4_combout\ : std_logic;
SIGNAL \DEC_0|rascSaida7seg[4]~5_combout\ : std_logic;
SIGNAL \DEC_0|rascSaida7seg[5]~6_combout\ : std_logic;
SIGNAL \DEC_0|rascSaida7seg[6]~7_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \DEC_1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DEC_1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DEC_1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \DEC_1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DEC_1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DEC_1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DEC_1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \INC_PC|Add0~2\ : std_logic;
SIGNAL \INC_PC|Add0~29_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~2\ : std_logic;
SIGNAL \soma_pc_etx|Add0~25_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[8]~3_combout\ : std_logic;
SIGNAL \INC_PC|Add0~30\ : std_logic;
SIGNAL \INC_PC|Add0~37_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~26\ : std_logic;
SIGNAL \soma_pc_etx|Add0~33_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[9]~5_combout\ : std_logic;
SIGNAL \INC_PC|Add0~38\ : std_logic;
SIGNAL \INC_PC|Add0~33_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~34\ : std_logic;
SIGNAL \soma_pc_etx|Add0~29_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[10]~4_combout\ : std_logic;
SIGNAL \INC_PC|Add0~34\ : std_logic;
SIGNAL \INC_PC|Add0~25_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~30\ : std_logic;
SIGNAL \soma_pc_etx|Add0~21_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[11]~2_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[8]~7_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[10]~8_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[9]~9_combout\ : std_logic;
SIGNAL \DEC_2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[11]~10_combout\ : std_logic;
SIGNAL \DEC_2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DEC_2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DEC_2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DEC_2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DEC_2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DEC_2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \INC_PC|Add0~26\ : std_logic;
SIGNAL \INC_PC|Add0~45_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~22\ : std_logic;
SIGNAL \soma_pc_etx|Add0~41_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[12]~7_combout\ : std_logic;
SIGNAL \INC_PC|Add0~46\ : std_logic;
SIGNAL \INC_PC|Add0~53_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~42\ : std_logic;
SIGNAL \soma_pc_etx|Add0~49_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[13]~9_combout\ : std_logic;
SIGNAL \INC_PC|Add0~54\ : std_logic;
SIGNAL \INC_PC|Add0~49_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~50\ : std_logic;
SIGNAL \soma_pc_etx|Add0~45_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[14]~8_combout\ : std_logic;
SIGNAL \INC_PC|Add0~50\ : std_logic;
SIGNAL \INC_PC|Add0~41_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~46\ : std_logic;
SIGNAL \soma_pc_etx|Add0~37_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[15]~6_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[12]~11_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[14]~12_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[13]~13_combout\ : std_logic;
SIGNAL \DEC_3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[15]~14_combout\ : std_logic;
SIGNAL \DEC_3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DEC_3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DEC_3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DEC_3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DEC_3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DEC_3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \INC_PC|Add0~42\ : std_logic;
SIGNAL \INC_PC|Add0~61_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~38\ : std_logic;
SIGNAL \soma_pc_etx|Add0~57_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[16]~36_combout\ : std_logic;
SIGNAL \INC_PC|Add0~62\ : std_logic;
SIGNAL \INC_PC|Add0~69_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~58\ : std_logic;
SIGNAL \soma_pc_etx|Add0~65_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[17]~10_combout\ : std_logic;
SIGNAL \INC_PC|Add0~70\ : std_logic;
SIGNAL \INC_PC|Add0~65_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~66\ : std_logic;
SIGNAL \soma_pc_etx|Add0~61_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[18]~32_combout\ : std_logic;
SIGNAL \INC_PC|Add0~66\ : std_logic;
SIGNAL \INC_PC|Add0~57_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~62\ : std_logic;
SIGNAL \soma_pc_etx|Add0~53_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[19]~40_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[16]~15_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[18]~16_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[17]~17_combout\ : std_logic;
SIGNAL \DEC_4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \DEC_4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DEC_4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[19]~18_combout\ : std_logic;
SIGNAL \DEC_4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DEC_4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DEC_4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DEC_4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \INC_PC|Add0~58\ : std_logic;
SIGNAL \INC_PC|Add0~77_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~54\ : std_logic;
SIGNAL \soma_pc_etx|Add0~73_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[20]~11_combout\ : std_logic;
SIGNAL \INC_PC|Add0~78\ : std_logic;
SIGNAL \INC_PC|Add0~85_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~74\ : std_logic;
SIGNAL \soma_pc_etx|Add0~81_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[21]~24_combout\ : std_logic;
SIGNAL \INC_PC|Add0~86\ : std_logic;
SIGNAL \INC_PC|Add0~81_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~82\ : std_logic;
SIGNAL \soma_pc_etx|Add0~77_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[22]~12_combout\ : std_logic;
SIGNAL \INC_PC|Add0~82\ : std_logic;
SIGNAL \INC_PC|Add0~73_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~78\ : std_logic;
SIGNAL \soma_pc_etx|Add0~69_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[23]~28_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[20]~19_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[22]~20_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[21]~21_combout\ : std_logic;
SIGNAL \DEC_5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[23]~22_combout\ : std_logic;
SIGNAL \DEC_5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \DEC_5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \DEC_5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \DEC_5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \DEC_5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \DEC_5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \INC_PC|Add0~74\ : std_logic;
SIGNAL \INC_PC|Add0~89_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~70\ : std_logic;
SIGNAL \soma_pc_etx|Add0~85_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[24]~13_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[24]~23_combout\ : std_logic;
SIGNAL \INC_PC|Add0~90\ : std_logic;
SIGNAL \INC_PC|Add0~93_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~86\ : std_logic;
SIGNAL \soma_pc_etx|Add0~89_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[25]~14_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[25]~24_combout\ : std_logic;
SIGNAL \INC_PC|Add0~94\ : std_logic;
SIGNAL \INC_PC|Add0~97_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~90\ : std_logic;
SIGNAL \soma_pc_etx|Add0~93_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[26]~20_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[26]~25_combout\ : std_logic;
SIGNAL \INC_PC|Add0~98\ : std_logic;
SIGNAL \INC_PC|Add0~101_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~94\ : std_logic;
SIGNAL \soma_pc_etx|Add0~97_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[27]~15_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[27]~26_combout\ : std_logic;
SIGNAL \INC_PC|Add0~102\ : std_logic;
SIGNAL \INC_PC|Add0~105_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~98\ : std_logic;
SIGNAL \soma_pc_etx|Add0~101_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[28]~16_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[28]~27_combout\ : std_logic;
SIGNAL \INC_PC|Add0~106\ : std_logic;
SIGNAL \INC_PC|Add0~109_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~102\ : std_logic;
SIGNAL \soma_pc_etx|Add0~105_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[29]~17_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[29]~28_combout\ : std_logic;
SIGNAL \INC_PC|Add0~110\ : std_logic;
SIGNAL \INC_PC|Add0~113_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~106\ : std_logic;
SIGNAL \soma_pc_etx|Add0~109_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[30]~18_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[30]~29_combout\ : std_logic;
SIGNAL \INC_PC|Add0~114\ : std_logic;
SIGNAL \INC_PC|Add0~117_sumout\ : std_logic;
SIGNAL \soma_pc_etx|Add0~110\ : std_logic;
SIGNAL \soma_pc_etx|Add0~113_sumout\ : std_logic;
SIGNAL \MUX_Entrada_PC|saida_MUX[31]~19_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|saida_MUX[31]~30_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \REG_PC|DOUT\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \REG_PC|ALT_INV_DOUT\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA30|Somador|ALT_INV_saida~combout\ : std_logic;
SIGNAL \ULA|ULA29|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA27|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA|ULA27|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA27|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA27|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA26|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA26|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA25|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA24|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA|ULA24|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA20|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[23]~22_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[21]~21_combout\ : std_logic;
SIGNAL \ULA|ULA21|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA21|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[22]~20_combout\ : std_logic;
SIGNAL \ULA|ULA22|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA22|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA22|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[20]~19_combout\ : std_logic;
SIGNAL \ULA|ULA20|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA20|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA19|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA|ULA23|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA23|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA22|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA|ULA16|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[19]~18_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[17]~17_combout\ : std_logic;
SIGNAL \ULA|ULA17|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA17|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA17|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[18]~16_combout\ : std_logic;
SIGNAL \ULA|ULA18|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA17|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[16]~15_combout\ : std_logic;
SIGNAL \ULA|ULA16|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA16|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA19|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[15]~14_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[13]~13_combout\ : std_logic;
SIGNAL \ULA|ULA13|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA12|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[14]~12_combout\ : std_logic;
SIGNAL \ULA|ULA14|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[12]~11_combout\ : std_logic;
SIGNAL \ULA|ULA12|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA12|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA12|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA15|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA15|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA14|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \decoder_ula|ALT_INV_saida_funct[0]~1_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1224_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1223_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1222_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1221_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1220_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1219_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1218_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1217_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1216_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1215_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1214_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1213_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1212_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1211_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1210_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1209_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1208_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1207_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1206_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1205_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1204_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1203_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1202_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1201_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1200_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1199_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1198_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1197_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1196_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1195_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1194_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1193_combout\ : std_logic;
SIGNAL \decoder_instru|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \decoder_instru|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA28|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA26|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA25|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA21|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA18|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA13|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA10|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA6|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA5|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ULA|ULA8|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[11]~10_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[9]~9_combout\ : std_logic;
SIGNAL \ULA|ULA9|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[10]~8_combout\ : std_logic;
SIGNAL \ULA|ULA10|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA10|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA9|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[8]~7_combout\ : std_logic;
SIGNAL \ULA|ULA8|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA7|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA|ULA11|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA11|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA11|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ULA|ULA5|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA5|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA4|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[6]~4_combout\ : std_logic;
SIGNAL \ULA|ULA6|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA6|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \ULA|ULA4|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA7|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA7|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA7|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \DEC_0|ALT_INV_rascSaida7seg[2]~3_combout\ : std_logic;
SIGNAL \DEC_0|ALT_INV_rascSaida7seg[1]~2_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[3]~1_combout\ : std_logic;
SIGNAL \MUX_Saida_Placa|ALT_INV_saida_MUX[2]~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|Somador|ALT_INV_saida~combout\ : std_logic;
SIGNAL \ULA|ULA1|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA3|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA2|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA31|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1186_combout\ : std_logic;
SIGNAL \decoder_ula|ALT_INV_saida_funct[1]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ULA|ULA30|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA|ULA30|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[30]~30_combout\ : std_logic;
SIGNAL \ULA|ULA29|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[29]~29_combout\ : std_logic;
SIGNAL \ULA|ULA28|Somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA|ULA28|Somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA28|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[28]~28_combout\ : std_logic;
SIGNAL \ULA|ULA27|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[27]~27_combout\ : std_logic;
SIGNAL \ULA|ULA26|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[26]~26_combout\ : std_logic;
SIGNAL \ULA|ULA25|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA|ULA25|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[25]~25_combout\ : std_logic;
SIGNAL \ULA|ULA24|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[24]~24_combout\ : std_logic;
SIGNAL \ULA|ULA23|Somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA|ULA23|Somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA23|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[23]~23_combout\ : std_logic;
SIGNAL \ULA|ULA22|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[22]~22_combout\ : std_logic;
SIGNAL \ULA|ULA21|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[21]~21_combout\ : std_logic;
SIGNAL \ULA|ULA20|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA|ULA20|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[20]~20_combout\ : std_logic;
SIGNAL \ULA|ULA19|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[19]~19_combout\ : std_logic;
SIGNAL \ULA|ULA18|Somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA|ULA18|Somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA|ULA18|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA|ULA18|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[18]~18_combout\ : std_logic;
SIGNAL \ULA|ULA17|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[17]~17_combout\ : std_logic;
SIGNAL \ULA|ULA16|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[16]~16_combout\ : std_logic;
SIGNAL \ULA|ULA15|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA|ULA15|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[15]~15_combout\ : std_logic;
SIGNAL \ULA|ULA14|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[14]~14_combout\ : std_logic;
SIGNAL \ULA|ULA13|Somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA|ULA13|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA|ULA13|Somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA|ULA13|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[13]~13_combout\ : std_logic;
SIGNAL \ULA|ULA12|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[12]~12_combout\ : std_logic;
SIGNAL \ULA|ULA11|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[11]~11_combout\ : std_logic;
SIGNAL \ULA|ULA10|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA|ULA10|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[10]~10_combout\ : std_logic;
SIGNAL \ULA|ULA9|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[9]~9_combout\ : std_logic;
SIGNAL \ULA|ULA8|Somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA|ULA8|Somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA|ULA8|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[8]~8_combout\ : std_logic;
SIGNAL \ULA|ULA7|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[7]~7_combout\ : std_logic;
SIGNAL \ULA|ULA6|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[6]~6_combout\ : std_logic;
SIGNAL \ULA|ULA5|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \ULA|ULA5|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[5]~5_combout\ : std_logic;
SIGNAL \ULA|ULA4|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[4]~4_combout\ : std_logic;
SIGNAL \ULA|ULA3|Somador|ALT_INV_cOut~1_combout\ : std_logic;
SIGNAL \ULA|ULA3|Somador|ALT_INV_cOut~0_combout\ : std_logic;
SIGNAL \ULA|ULA3|Somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[3]~3_combout\ : std_logic;
SIGNAL \ULA|ULA2|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[2]~2_combout\ : std_logic;
SIGNAL \ULA|ULA1|MUX_inverte|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[1]~1_combout\ : std_logic;
SIGNAL \ULA|ULA0|Somador|ALT_INV_cOut~combout\ : std_logic;
SIGNAL \decoder_instru|ALT_INV_saida[3]~0_combout\ : std_logic;
SIGNAL \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_saidaA[0]~0_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \decoder_instru|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~4_combout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \soma_pc_etx|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \INC_PC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1187_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~325_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~69_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1182_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~324_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~68_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1178_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~323_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~67_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1174_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~322_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~66_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1170_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~321_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~65_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1166_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~320_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~64_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1162_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~319_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~63_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1158_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~318_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~62_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1154_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~317_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~61_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1150_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~316_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~60_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1146_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~315_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~59_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1142_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~314_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~58_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1138_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~313_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~57_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1134_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~312_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~56_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1130_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~311_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~55_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1126_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~310_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~54_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1122_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~309_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~53_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1118_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~308_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~52_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1114_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~307_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~51_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1110_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~306_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~50_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1106_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~305_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~49_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1102_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~304_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~48_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1098_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~303_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~47_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1094_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~302_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~46_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1090_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~301_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~45_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1086_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~300_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~44_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1082_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~299_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1078_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~298_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1074_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~297_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1070_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~296_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1066_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~295_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~1062_combout\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~294_q\ : std_logic;
SIGNAL \bancoRegistradores|ALT_INV_registrador~38_q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
OP_ULA <= ww_OP_ULA;
ROM_OUT <= ww_ROM_OUT;
ULA_OUT <= ww_ULA_OUT;
PC_OUT <= ww_PC_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\REG_PC|ALT_INV_DOUT\(31) <= NOT \REG_PC|DOUT\(31);
\ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA31|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA31|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA31|Somador|saida~0_combout\;
\REG_PC|ALT_INV_DOUT\(30) <= NOT \REG_PC|DOUT\(30);
\ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA30|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA30|Somador|ALT_INV_saida~combout\ <= NOT \ULA|ULA30|Somador|saida~combout\;
\REG_PC|ALT_INV_DOUT\(29) <= NOT \REG_PC|DOUT\(29);
\ULA|ULA29|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA29|MUX_Selecao|saida_MUX~0_combout\;
\REG_PC|ALT_INV_DOUT\(28) <= NOT \REG_PC|DOUT\(28);
\ULA|ULA28|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA28|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA27|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA27|Somador|cOut~combout\;
\REG_PC|ALT_INV_DOUT\(27) <= NOT \REG_PC|DOUT\(27);
\ULA|ULA27|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA27|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA27|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA27|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA27|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA27|Somador|saida~0_combout\;
\REG_PC|ALT_INV_DOUT\(26) <= NOT \REG_PC|DOUT\(26);
\ULA|ULA26|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA26|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA26|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA26|Somador|saida~0_combout\;
\REG_PC|ALT_INV_DOUT\(25) <= NOT \REG_PC|DOUT\(25);
\ULA|ULA25|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA25|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA25|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA25|Somador|saida~0_combout\;
\ULA|ULA24|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA24|Somador|cOut~combout\;
\REG_PC|ALT_INV_DOUT\(24) <= NOT \REG_PC|DOUT\(24);
\ULA|ULA24|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA24|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA20|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA20|MUX_Selecao|saida_MUX~1_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[23]~22_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[23]~22_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[21]~21_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[21]~21_combout\;
\REG_PC|ALT_INV_DOUT\(21) <= NOT \REG_PC|DOUT\(21);
\ULA|ULA21|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA21|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA21|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA21|Somador|saida~0_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[22]~20_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[22]~20_combout\;
\REG_PC|ALT_INV_DOUT\(22) <= NOT \REG_PC|DOUT\(22);
\ULA|ULA22|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA22|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA22|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA22|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA22|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA22|Somador|saida~0_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[20]~19_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[20]~19_combout\;
\REG_PC|ALT_INV_DOUT\(20) <= NOT \REG_PC|DOUT\(20);
\ULA|ULA20|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA20|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA20|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA20|Somador|saida~0_combout\;
\ULA|ULA19|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA19|Somador|cOut~combout\;
\REG_PC|ALT_INV_DOUT\(23) <= NOT \REG_PC|DOUT\(23);
\ULA|ULA23|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA23|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA23|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA22|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA22|Somador|cOut~combout\;
\ULA|ULA16|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA16|MUX_Selecao|saida_MUX~1_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[19]~18_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[19]~18_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[17]~17_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[17]~17_combout\;
\REG_PC|ALT_INV_DOUT\(17) <= NOT \REG_PC|DOUT\(17);
\ULA|ULA17|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA17|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA17|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA17|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA17|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA17|Somador|saida~0_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[18]~16_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[18]~16_combout\;
\REG_PC|ALT_INV_DOUT\(18) <= NOT \REG_PC|DOUT\(18);
\ULA|ULA18|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA18|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA17|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA17|Somador|cOut~combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[16]~15_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[16]~15_combout\;
\REG_PC|ALT_INV_DOUT\(16) <= NOT \REG_PC|DOUT\(16);
\ULA|ULA16|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA16|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA16|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA16|Somador|saida~0_combout\;
\REG_PC|ALT_INV_DOUT\(19) <= NOT \REG_PC|DOUT\(19);
\ULA|ULA19|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[15]~14_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[15]~14_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[13]~13_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[13]~13_combout\;
\REG_PC|ALT_INV_DOUT\(13) <= NOT \REG_PC|DOUT\(13);
\ULA|ULA13|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA13|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA12|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA12|Somador|cOut~combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[14]~12_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[14]~12_combout\;
\REG_PC|ALT_INV_DOUT\(14) <= NOT \REG_PC|DOUT\(14);
\ULA|ULA14|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA14|MUX_Selecao|saida_MUX~0_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[12]~11_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[12]~11_combout\;
\REG_PC|ALT_INV_DOUT\(12) <= NOT \REG_PC|DOUT\(12);
\ULA|ULA12|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA12|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA12|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA12|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA12|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA12|Somador|saida~0_combout\;
\REG_PC|ALT_INV_DOUT\(15) <= NOT \REG_PC|DOUT\(15);
\ULA|ULA15|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA15|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA15|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA15|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA15|Somador|saida~0_combout\;
\ULA|ULA14|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA14|Somador|cOut~combout\;
\decoder_ula|ALT_INV_saida_funct[0]~1_combout\ <= NOT \decoder_ula|saida_funct[0]~1_combout\;
\bancoRegistradores|ALT_INV_Equal0~0_combout\ <= NOT \bancoRegistradores|Equal0~0_combout\;
\bancoRegistradores|ALT_INV_registrador~1224_combout\ <= NOT \bancoRegistradores|registrador~1224_combout\;
\bancoRegistradores|ALT_INV_registrador~1223_combout\ <= NOT \bancoRegistradores|registrador~1223_combout\;
\bancoRegistradores|ALT_INV_registrador~1222_combout\ <= NOT \bancoRegistradores|registrador~1222_combout\;
\bancoRegistradores|ALT_INV_registrador~1221_combout\ <= NOT \bancoRegistradores|registrador~1221_combout\;
\bancoRegistradores|ALT_INV_registrador~1220_combout\ <= NOT \bancoRegistradores|registrador~1220_combout\;
\bancoRegistradores|ALT_INV_registrador~1219_combout\ <= NOT \bancoRegistradores|registrador~1219_combout\;
\bancoRegistradores|ALT_INV_registrador~1218_combout\ <= NOT \bancoRegistradores|registrador~1218_combout\;
\bancoRegistradores|ALT_INV_registrador~1217_combout\ <= NOT \bancoRegistradores|registrador~1217_combout\;
\bancoRegistradores|ALT_INV_registrador~1216_combout\ <= NOT \bancoRegistradores|registrador~1216_combout\;
\bancoRegistradores|ALT_INV_registrador~1215_combout\ <= NOT \bancoRegistradores|registrador~1215_combout\;
\bancoRegistradores|ALT_INV_registrador~1214_combout\ <= NOT \bancoRegistradores|registrador~1214_combout\;
\bancoRegistradores|ALT_INV_registrador~1213_combout\ <= NOT \bancoRegistradores|registrador~1213_combout\;
\bancoRegistradores|ALT_INV_registrador~1212_combout\ <= NOT \bancoRegistradores|registrador~1212_combout\;
\bancoRegistradores|ALT_INV_registrador~1211_combout\ <= NOT \bancoRegistradores|registrador~1211_combout\;
\bancoRegistradores|ALT_INV_registrador~1210_combout\ <= NOT \bancoRegistradores|registrador~1210_combout\;
\bancoRegistradores|ALT_INV_registrador~1209_combout\ <= NOT \bancoRegistradores|registrador~1209_combout\;
\bancoRegistradores|ALT_INV_registrador~1208_combout\ <= NOT \bancoRegistradores|registrador~1208_combout\;
\bancoRegistradores|ALT_INV_registrador~1207_combout\ <= NOT \bancoRegistradores|registrador~1207_combout\;
\bancoRegistradores|ALT_INV_registrador~1206_combout\ <= NOT \bancoRegistradores|registrador~1206_combout\;
\bancoRegistradores|ALT_INV_registrador~1205_combout\ <= NOT \bancoRegistradores|registrador~1205_combout\;
\bancoRegistradores|ALT_INV_registrador~1204_combout\ <= NOT \bancoRegistradores|registrador~1204_combout\;
\bancoRegistradores|ALT_INV_registrador~1203_combout\ <= NOT \bancoRegistradores|registrador~1203_combout\;
\bancoRegistradores|ALT_INV_registrador~1202_combout\ <= NOT \bancoRegistradores|registrador~1202_combout\;
\bancoRegistradores|ALT_INV_registrador~1201_combout\ <= NOT \bancoRegistradores|registrador~1201_combout\;
\bancoRegistradores|ALT_INV_registrador~1200_combout\ <= NOT \bancoRegistradores|registrador~1200_combout\;
\bancoRegistradores|ALT_INV_registrador~1199_combout\ <= NOT \bancoRegistradores|registrador~1199_combout\;
\bancoRegistradores|ALT_INV_registrador~1198_combout\ <= NOT \bancoRegistradores|registrador~1198_combout\;
\bancoRegistradores|ALT_INV_registrador~1197_combout\ <= NOT \bancoRegistradores|registrador~1197_combout\;
\bancoRegistradores|ALT_INV_registrador~1196_combout\ <= NOT \bancoRegistradores|registrador~1196_combout\;
\bancoRegistradores|ALT_INV_registrador~1195_combout\ <= NOT \bancoRegistradores|registrador~1195_combout\;
\bancoRegistradores|ALT_INV_registrador~1194_combout\ <= NOT \bancoRegistradores|registrador~1194_combout\;
\bancoRegistradores|ALT_INV_registrador~1193_combout\ <= NOT \bancoRegistradores|registrador~1193_combout\;
\decoder_instru|ALT_INV_Equal2~0_combout\ <= NOT \decoder_instru|Equal2~0_combout\;
\ALT_INV_comb~8_combout\ <= NOT \comb~8_combout\;
\ALT_INV_comb~7_combout\ <= NOT \comb~7_combout\;
\ALT_INV_comb~6_combout\ <= NOT \comb~6_combout\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\decoder_instru|ALT_INV_Equal0~0_combout\ <= NOT \decoder_instru|Equal0~0_combout\;
\ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA28|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA28|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA26|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA26|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA25|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA25|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA21|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA21|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA18|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA18|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA13|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA13|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA10|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA10|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA6|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA6|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA5|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA5|MUX_Selecao|saida_MUX~1_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ULA|ULA8|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA8|MUX_Selecao|saida_MUX~1_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[11]~10_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[11]~10_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[9]~9_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[9]~9_combout\;
\REG_PC|ALT_INV_DOUT\(9) <= NOT \REG_PC|DOUT\(9);
\ULA|ULA9|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA9|MUX_Selecao|saida_MUX~0_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[10]~8_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[10]~8_combout\;
\REG_PC|ALT_INV_DOUT\(10) <= NOT \REG_PC|DOUT\(10);
\ULA|ULA10|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA10|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA10|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA10|Somador|saida~0_combout\;
\ULA|ULA9|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA9|Somador|cOut~combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[8]~7_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[8]~7_combout\;
\REG_PC|ALT_INV_DOUT\(8) <= NOT \REG_PC|DOUT\(8);
\ULA|ULA8|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA8|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA8|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA8|MUX_inverte|saida_MUX~0_combout\;
\ULA|ULA7|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA7|Somador|cOut~combout\;
\REG_PC|ALT_INV_DOUT\(11) <= NOT \REG_PC|DOUT\(11);
\ULA|ULA11|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA11|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA11|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA11|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA11|Somador|saida~0_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[7]~6_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[7]~6_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[5]~5_combout\;
\ULA|ULA5|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA5|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA5|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA5|Somador|saida~0_combout\;
\ULA|ULA4|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA4|Somador|cOut~combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[6]~4_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[6]~4_combout\;
\ULA|ULA6|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA6|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA6|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA6|Somador|saida~0_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[4]~3_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[4]~3_combout\;
\ULA|ULA4|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA4|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA7|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA7|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA7|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA7|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA7|Somador|saida~0_combout\;
\ULA|ULA2|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA2|MUX_Selecao|saida_MUX~1_combout\;
\DEC_0|ALT_INV_rascSaida7seg[2]~3_combout\ <= NOT \DEC_0|rascSaida7seg[2]~3_combout\;
\DEC_0|ALT_INV_rascSaida7seg[1]~2_combout\ <= NOT \DEC_0|rascSaida7seg[1]~2_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[0]~2_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[0]~2_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[3]~1_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[3]~1_combout\;
\MUX_Saida_Placa|ALT_INV_saida_MUX[2]~0_combout\ <= NOT \MUX_Saida_Placa|saida_MUX[2]~0_combout\;
\ULA|ULA2|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA2|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA2|Somador|ALT_INV_saida~combout\ <= NOT \ULA|ULA2|Somador|saida~combout\;
\ULA|ULA1|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~2_combout\ <= NOT \ULA|ULA3|MUX_Selecao|saida_MUX~2_combout\;
\ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA3|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA3|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA3|MUX_inverte|saida_MUX~0_combout\;
\ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA2|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA2|Somador|cOut~combout\;
\ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\ <= NOT \ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\;
\ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~2_combout\ <= NOT \ULA|ULA0|MUX_Selecao|saida_MUX~2_combout\;
\ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA|ULA0|MUX_Selecao|saida_MUX~1_combout\;
\ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA0|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA0|MUX_inverte|saida_MUX~0_combout\;
\ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA0|MUX_Selecao|saida_MUX~0_combout\;
\ULA|ULA31|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA31|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_registrador~1186_combout\ <= NOT \bancoRegistradores|registrador~1186_combout\;
\decoder_ula|ALT_INV_saida_funct[1]~0_combout\ <= NOT \decoder_ula|saida_funct[1]~0_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ULA|ULA30|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA30|Somador|cOut~combout\;
\ULA|ULA30|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA30|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[30]~30_combout\ <= NOT \bancoRegistradores|saidaA[30]~30_combout\;
\ULA|ULA29|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA29|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[29]~29_combout\ <= NOT \bancoRegistradores|saidaA[29]~29_combout\;
\ULA|ULA28|Somador|ALT_INV_cOut~1_combout\ <= NOT \ULA|ULA28|Somador|cOut~1_combout\;
\ULA|ULA28|Somador|ALT_INV_cOut~0_combout\ <= NOT \ULA|ULA28|Somador|cOut~0_combout\;
\ULA|ULA28|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA28|Somador|saida~0_combout\;
\ULA|ULA28|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA28|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[28]~28_combout\ <= NOT \bancoRegistradores|saidaA[28]~28_combout\;
\ULA|ULA27|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA27|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[27]~27_combout\ <= NOT \bancoRegistradores|saidaA[27]~27_combout\;
\ULA|ULA26|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA26|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[26]~26_combout\ <= NOT \bancoRegistradores|saidaA[26]~26_combout\;
\ULA|ULA25|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA25|Somador|cOut~combout\;
\ULA|ULA25|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA25|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[25]~25_combout\ <= NOT \bancoRegistradores|saidaA[25]~25_combout\;
\ULA|ULA24|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA24|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[24]~24_combout\ <= NOT \bancoRegistradores|saidaA[24]~24_combout\;
\ULA|ULA23|Somador|ALT_INV_cOut~1_combout\ <= NOT \ULA|ULA23|Somador|cOut~1_combout\;
\ULA|ULA23|Somador|ALT_INV_cOut~0_combout\ <= NOT \ULA|ULA23|Somador|cOut~0_combout\;
\ULA|ULA23|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA23|Somador|saida~0_combout\;
\ULA|ULA23|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA23|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[23]~23_combout\ <= NOT \bancoRegistradores|saidaA[23]~23_combout\;
\ULA|ULA22|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA22|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[22]~22_combout\ <= NOT \bancoRegistradores|saidaA[22]~22_combout\;
\ULA|ULA21|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA21|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[21]~21_combout\ <= NOT \bancoRegistradores|saidaA[21]~21_combout\;
\ULA|ULA20|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA20|Somador|cOut~combout\;
\ULA|ULA20|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA20|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[20]~20_combout\ <= NOT \bancoRegistradores|saidaA[20]~20_combout\;
\ULA|ULA19|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA19|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[19]~19_combout\ <= NOT \bancoRegistradores|saidaA[19]~19_combout\;
\ULA|ULA18|Somador|ALT_INV_cOut~1_combout\ <= NOT \ULA|ULA18|Somador|cOut~1_combout\;
\ULA|ULA18|Somador|ALT_INV_cOut~0_combout\ <= NOT \ULA|ULA18|Somador|cOut~0_combout\;
\ULA|ULA18|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA18|Somador|saida~0_combout\;
\ULA|ULA18|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA18|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[18]~18_combout\ <= NOT \bancoRegistradores|saidaA[18]~18_combout\;
\ULA|ULA17|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA17|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[17]~17_combout\ <= NOT \bancoRegistradores|saidaA[17]~17_combout\;
\ULA|ULA16|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA16|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[16]~16_combout\ <= NOT \bancoRegistradores|saidaA[16]~16_combout\;
\ULA|ULA15|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA15|Somador|cOut~combout\;
\ULA|ULA15|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA15|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[15]~15_combout\ <= NOT \bancoRegistradores|saidaA[15]~15_combout\;
\ULA|ULA14|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA14|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[14]~14_combout\ <= NOT \bancoRegistradores|saidaA[14]~14_combout\;
\ULA|ULA13|Somador|ALT_INV_cOut~1_combout\ <= NOT \ULA|ULA13|Somador|cOut~1_combout\;
\ULA|ULA13|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA13|MUX_inverte|saida_MUX~0_combout\;
\ULA|ULA13|Somador|ALT_INV_cOut~0_combout\ <= NOT \ULA|ULA13|Somador|cOut~0_combout\;
\ULA|ULA13|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA13|Somador|saida~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[13]~13_combout\ <= NOT \bancoRegistradores|saidaA[13]~13_combout\;
\ULA|ULA12|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA12|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[12]~12_combout\ <= NOT \bancoRegistradores|saidaA[12]~12_combout\;
\ULA|ULA11|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA11|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[11]~11_combout\ <= NOT \bancoRegistradores|saidaA[11]~11_combout\;
\ULA|ULA10|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA10|Somador|cOut~combout\;
\ULA|ULA10|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA10|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[10]~10_combout\ <= NOT \bancoRegistradores|saidaA[10]~10_combout\;
\ULA|ULA9|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA9|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[9]~9_combout\ <= NOT \bancoRegistradores|saidaA[9]~9_combout\;
\ULA|ULA8|Somador|ALT_INV_cOut~1_combout\ <= NOT \ULA|ULA8|Somador|cOut~1_combout\;
\ULA|ULA8|Somador|ALT_INV_cOut~0_combout\ <= NOT \ULA|ULA8|Somador|cOut~0_combout\;
\ULA|ULA8|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA8|Somador|saida~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[8]~8_combout\ <= NOT \bancoRegistradores|saidaA[8]~8_combout\;
\ULA|ULA7|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA7|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[7]~7_combout\ <= NOT \bancoRegistradores|saidaA[7]~7_combout\;
\ULA|ULA6|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA6|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[6]~6_combout\ <= NOT \bancoRegistradores|saidaA[6]~6_combout\;
\ULA|ULA5|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA5|Somador|cOut~combout\;
\ULA|ULA5|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA5|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[5]~5_combout\ <= NOT \bancoRegistradores|saidaA[5]~5_combout\;
\ULA|ULA4|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA4|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[4]~4_combout\ <= NOT \bancoRegistradores|saidaA[4]~4_combout\;
\ULA|ULA3|Somador|ALT_INV_cOut~1_combout\ <= NOT \ULA|ULA3|Somador|cOut~1_combout\;
\ULA|ULA3|Somador|ALT_INV_cOut~0_combout\ <= NOT \ULA|ULA3|Somador|cOut~0_combout\;
\ULA|ULA3|Somador|ALT_INV_saida~0_combout\ <= NOT \ULA|ULA3|Somador|saida~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[3]~3_combout\ <= NOT \bancoRegistradores|saidaA[3]~3_combout\;
\ULA|ULA2|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA2|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[2]~2_combout\ <= NOT \bancoRegistradores|saidaA[2]~2_combout\;
\ULA|ULA1|MUX_inverte|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA|ULA1|MUX_inverte|saida_MUX~0_combout\;
\bancoRegistradores|ALT_INV_saidaA[1]~1_combout\ <= NOT \bancoRegistradores|saidaA[1]~1_combout\;
\ULA|ULA0|Somador|ALT_INV_cOut~combout\ <= NOT \ULA|ULA0|Somador|cOut~combout\;
\decoder_instru|ALT_INV_saida[3]~0_combout\ <= NOT \decoder_instru|saida[3]~0_combout\;
\decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \decoder_ula|mux_dec_ula|saida_MUX[2]~1_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\bancoRegistradores|ALT_INV_saidaA[0]~0_combout\ <= NOT \bancoRegistradores|saidaA[0]~0_combout\;
\bancoRegistradores|ALT_INV_Equal1~0_combout\ <= NOT \bancoRegistradores|Equal1~0_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\decoder_instru|ALT_INV_Equal6~0_combout\ <= NOT \decoder_instru|Equal6~0_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\REG_PC|ALT_INV_DOUT\(2) <= NOT \REG_PC|DOUT\(2);
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\REG_PC|ALT_INV_DOUT\(6) <= NOT \REG_PC|DOUT\(6);
\REG_PC|ALT_INV_DOUT\(5) <= NOT \REG_PC|DOUT\(5);
\REG_PC|ALT_INV_DOUT\(4) <= NOT \REG_PC|DOUT\(4);
\REG_PC|ALT_INV_DOUT\(3) <= NOT \REG_PC|DOUT\(3);
\REG_PC|ALT_INV_DOUT\(7) <= NOT \REG_PC|DOUT\(7);
\ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~4_combout\ <= NOT \ULA|ULA0|MUX_Selecao|saida_MUX~4_combout\;
\soma_pc_etx|ALT_INV_Add0~113_sumout\ <= NOT \soma_pc_etx|Add0~113_sumout\;
\INC_PC|ALT_INV_Add0~117_sumout\ <= NOT \INC_PC|Add0~117_sumout\;
\soma_pc_etx|ALT_INV_Add0~109_sumout\ <= NOT \soma_pc_etx|Add0~109_sumout\;
\INC_PC|ALT_INV_Add0~113_sumout\ <= NOT \INC_PC|Add0~113_sumout\;
\soma_pc_etx|ALT_INV_Add0~105_sumout\ <= NOT \soma_pc_etx|Add0~105_sumout\;
\INC_PC|ALT_INV_Add0~109_sumout\ <= NOT \INC_PC|Add0~109_sumout\;
\soma_pc_etx|ALT_INV_Add0~101_sumout\ <= NOT \soma_pc_etx|Add0~101_sumout\;
\INC_PC|ALT_INV_Add0~105_sumout\ <= NOT \INC_PC|Add0~105_sumout\;
\soma_pc_etx|ALT_INV_Add0~97_sumout\ <= NOT \soma_pc_etx|Add0~97_sumout\;
\INC_PC|ALT_INV_Add0~101_sumout\ <= NOT \INC_PC|Add0~101_sumout\;
\soma_pc_etx|ALT_INV_Add0~93_sumout\ <= NOT \soma_pc_etx|Add0~93_sumout\;
\INC_PC|ALT_INV_Add0~97_sumout\ <= NOT \INC_PC|Add0~97_sumout\;
\soma_pc_etx|ALT_INV_Add0~89_sumout\ <= NOT \soma_pc_etx|Add0~89_sumout\;
\INC_PC|ALT_INV_Add0~93_sumout\ <= NOT \INC_PC|Add0~93_sumout\;
\soma_pc_etx|ALT_INV_Add0~85_sumout\ <= NOT \soma_pc_etx|Add0~85_sumout\;
\INC_PC|ALT_INV_Add0~89_sumout\ <= NOT \INC_PC|Add0~89_sumout\;
\soma_pc_etx|ALT_INV_Add0~81_sumout\ <= NOT \soma_pc_etx|Add0~81_sumout\;
\INC_PC|ALT_INV_Add0~85_sumout\ <= NOT \INC_PC|Add0~85_sumout\;
\soma_pc_etx|ALT_INV_Add0~77_sumout\ <= NOT \soma_pc_etx|Add0~77_sumout\;
\INC_PC|ALT_INV_Add0~81_sumout\ <= NOT \INC_PC|Add0~81_sumout\;
\soma_pc_etx|ALT_INV_Add0~73_sumout\ <= NOT \soma_pc_etx|Add0~73_sumout\;
\INC_PC|ALT_INV_Add0~77_sumout\ <= NOT \INC_PC|Add0~77_sumout\;
\soma_pc_etx|ALT_INV_Add0~69_sumout\ <= NOT \soma_pc_etx|Add0~69_sumout\;
\INC_PC|ALT_INV_Add0~73_sumout\ <= NOT \INC_PC|Add0~73_sumout\;
\soma_pc_etx|ALT_INV_Add0~65_sumout\ <= NOT \soma_pc_etx|Add0~65_sumout\;
\INC_PC|ALT_INV_Add0~69_sumout\ <= NOT \INC_PC|Add0~69_sumout\;
\soma_pc_etx|ALT_INV_Add0~61_sumout\ <= NOT \soma_pc_etx|Add0~61_sumout\;
\INC_PC|ALT_INV_Add0~65_sumout\ <= NOT \INC_PC|Add0~65_sumout\;
\soma_pc_etx|ALT_INV_Add0~57_sumout\ <= NOT \soma_pc_etx|Add0~57_sumout\;
\INC_PC|ALT_INV_Add0~61_sumout\ <= NOT \INC_PC|Add0~61_sumout\;
\soma_pc_etx|ALT_INV_Add0~53_sumout\ <= NOT \soma_pc_etx|Add0~53_sumout\;
\INC_PC|ALT_INV_Add0~57_sumout\ <= NOT \INC_PC|Add0~57_sumout\;
\soma_pc_etx|ALT_INV_Add0~49_sumout\ <= NOT \soma_pc_etx|Add0~49_sumout\;
\INC_PC|ALT_INV_Add0~53_sumout\ <= NOT \INC_PC|Add0~53_sumout\;
\soma_pc_etx|ALT_INV_Add0~45_sumout\ <= NOT \soma_pc_etx|Add0~45_sumout\;
\INC_PC|ALT_INV_Add0~49_sumout\ <= NOT \INC_PC|Add0~49_sumout\;
\soma_pc_etx|ALT_INV_Add0~41_sumout\ <= NOT \soma_pc_etx|Add0~41_sumout\;
\INC_PC|ALT_INV_Add0~45_sumout\ <= NOT \INC_PC|Add0~45_sumout\;
\soma_pc_etx|ALT_INV_Add0~37_sumout\ <= NOT \soma_pc_etx|Add0~37_sumout\;
\INC_PC|ALT_INV_Add0~41_sumout\ <= NOT \INC_PC|Add0~41_sumout\;
\soma_pc_etx|ALT_INV_Add0~33_sumout\ <= NOT \soma_pc_etx|Add0~33_sumout\;
\INC_PC|ALT_INV_Add0~37_sumout\ <= NOT \INC_PC|Add0~37_sumout\;
\soma_pc_etx|ALT_INV_Add0~29_sumout\ <= NOT \soma_pc_etx|Add0~29_sumout\;
\INC_PC|ALT_INV_Add0~33_sumout\ <= NOT \INC_PC|Add0~33_sumout\;
\soma_pc_etx|ALT_INV_Add0~25_sumout\ <= NOT \soma_pc_etx|Add0~25_sumout\;
\INC_PC|ALT_INV_Add0~29_sumout\ <= NOT \INC_PC|Add0~29_sumout\;
\soma_pc_etx|ALT_INV_Add0~21_sumout\ <= NOT \soma_pc_etx|Add0~21_sumout\;
\INC_PC|ALT_INV_Add0~25_sumout\ <= NOT \INC_PC|Add0~25_sumout\;
\INC_PC|ALT_INV_Add0~21_sumout\ <= NOT \INC_PC|Add0~21_sumout\;
\soma_pc_etx|ALT_INV_Add0~17_sumout\ <= NOT \soma_pc_etx|Add0~17_sumout\;
\INC_PC|ALT_INV_Add0~17_sumout\ <= NOT \INC_PC|Add0~17_sumout\;
\soma_pc_etx|ALT_INV_Add0~13_sumout\ <= NOT \soma_pc_etx|Add0~13_sumout\;
\INC_PC|ALT_INV_Add0~13_sumout\ <= NOT \INC_PC|Add0~13_sumout\;
\soma_pc_etx|ALT_INV_Add0~9_sumout\ <= NOT \soma_pc_etx|Add0~9_sumout\;
\INC_PC|ALT_INV_Add0~9_sumout\ <= NOT \INC_PC|Add0~9_sumout\;
\soma_pc_etx|ALT_INV_Add0~5_sumout\ <= NOT \soma_pc_etx|Add0~5_sumout\;
\INC_PC|ALT_INV_Add0~5_sumout\ <= NOT \INC_PC|Add0~5_sumout\;
\soma_pc_etx|ALT_INV_Add0~1_sumout\ <= NOT \soma_pc_etx|Add0~1_sumout\;
\INC_PC|ALT_INV_Add0~1_sumout\ <= NOT \INC_PC|Add0~1_sumout\;
\bancoRegistradores|ALT_INV_registrador~1187_combout\ <= NOT \bancoRegistradores|registrador~1187_combout\;
\bancoRegistradores|ALT_INV_registrador~325_q\ <= NOT \bancoRegistradores|registrador~325_q\;
\bancoRegistradores|ALT_INV_registrador~69_q\ <= NOT \bancoRegistradores|registrador~69_q\;
\bancoRegistradores|ALT_INV_registrador~1182_combout\ <= NOT \bancoRegistradores|registrador~1182_combout\;
\bancoRegistradores|ALT_INV_registrador~324_q\ <= NOT \bancoRegistradores|registrador~324_q\;
\bancoRegistradores|ALT_INV_registrador~68_q\ <= NOT \bancoRegistradores|registrador~68_q\;
\bancoRegistradores|ALT_INV_registrador~1178_combout\ <= NOT \bancoRegistradores|registrador~1178_combout\;
\bancoRegistradores|ALT_INV_registrador~323_q\ <= NOT \bancoRegistradores|registrador~323_q\;
\bancoRegistradores|ALT_INV_registrador~67_q\ <= NOT \bancoRegistradores|registrador~67_q\;
\bancoRegistradores|ALT_INV_registrador~1174_combout\ <= NOT \bancoRegistradores|registrador~1174_combout\;
\bancoRegistradores|ALT_INV_registrador~322_q\ <= NOT \bancoRegistradores|registrador~322_q\;
\bancoRegistradores|ALT_INV_registrador~66_q\ <= NOT \bancoRegistradores|registrador~66_q\;
\bancoRegistradores|ALT_INV_registrador~1170_combout\ <= NOT \bancoRegistradores|registrador~1170_combout\;
\bancoRegistradores|ALT_INV_registrador~321_q\ <= NOT \bancoRegistradores|registrador~321_q\;
\bancoRegistradores|ALT_INV_registrador~65_q\ <= NOT \bancoRegistradores|registrador~65_q\;
\bancoRegistradores|ALT_INV_registrador~1166_combout\ <= NOT \bancoRegistradores|registrador~1166_combout\;
\bancoRegistradores|ALT_INV_registrador~320_q\ <= NOT \bancoRegistradores|registrador~320_q\;
\bancoRegistradores|ALT_INV_registrador~64_q\ <= NOT \bancoRegistradores|registrador~64_q\;
\bancoRegistradores|ALT_INV_registrador~1162_combout\ <= NOT \bancoRegistradores|registrador~1162_combout\;
\bancoRegistradores|ALT_INV_registrador~319_q\ <= NOT \bancoRegistradores|registrador~319_q\;
\bancoRegistradores|ALT_INV_registrador~63_q\ <= NOT \bancoRegistradores|registrador~63_q\;
\bancoRegistradores|ALT_INV_registrador~1158_combout\ <= NOT \bancoRegistradores|registrador~1158_combout\;
\bancoRegistradores|ALT_INV_registrador~318_q\ <= NOT \bancoRegistradores|registrador~318_q\;
\bancoRegistradores|ALT_INV_registrador~62_q\ <= NOT \bancoRegistradores|registrador~62_q\;
\bancoRegistradores|ALT_INV_registrador~1154_combout\ <= NOT \bancoRegistradores|registrador~1154_combout\;
\bancoRegistradores|ALT_INV_registrador~317_q\ <= NOT \bancoRegistradores|registrador~317_q\;
\bancoRegistradores|ALT_INV_registrador~61_q\ <= NOT \bancoRegistradores|registrador~61_q\;
\bancoRegistradores|ALT_INV_registrador~1150_combout\ <= NOT \bancoRegistradores|registrador~1150_combout\;
\bancoRegistradores|ALT_INV_registrador~316_q\ <= NOT \bancoRegistradores|registrador~316_q\;
\bancoRegistradores|ALT_INV_registrador~60_q\ <= NOT \bancoRegistradores|registrador~60_q\;
\bancoRegistradores|ALT_INV_registrador~1146_combout\ <= NOT \bancoRegistradores|registrador~1146_combout\;
\bancoRegistradores|ALT_INV_registrador~315_q\ <= NOT \bancoRegistradores|registrador~315_q\;
\bancoRegistradores|ALT_INV_registrador~59_q\ <= NOT \bancoRegistradores|registrador~59_q\;
\bancoRegistradores|ALT_INV_registrador~1142_combout\ <= NOT \bancoRegistradores|registrador~1142_combout\;
\bancoRegistradores|ALT_INV_registrador~314_q\ <= NOT \bancoRegistradores|registrador~314_q\;
\bancoRegistradores|ALT_INV_registrador~58_q\ <= NOT \bancoRegistradores|registrador~58_q\;
\bancoRegistradores|ALT_INV_registrador~1138_combout\ <= NOT \bancoRegistradores|registrador~1138_combout\;
\bancoRegistradores|ALT_INV_registrador~313_q\ <= NOT \bancoRegistradores|registrador~313_q\;
\bancoRegistradores|ALT_INV_registrador~57_q\ <= NOT \bancoRegistradores|registrador~57_q\;
\bancoRegistradores|ALT_INV_registrador~1134_combout\ <= NOT \bancoRegistradores|registrador~1134_combout\;
\bancoRegistradores|ALT_INV_registrador~312_q\ <= NOT \bancoRegistradores|registrador~312_q\;
\bancoRegistradores|ALT_INV_registrador~56_q\ <= NOT \bancoRegistradores|registrador~56_q\;
\bancoRegistradores|ALT_INV_registrador~1130_combout\ <= NOT \bancoRegistradores|registrador~1130_combout\;
\bancoRegistradores|ALT_INV_registrador~311_q\ <= NOT \bancoRegistradores|registrador~311_q\;
\bancoRegistradores|ALT_INV_registrador~55_q\ <= NOT \bancoRegistradores|registrador~55_q\;
\bancoRegistradores|ALT_INV_registrador~1126_combout\ <= NOT \bancoRegistradores|registrador~1126_combout\;
\bancoRegistradores|ALT_INV_registrador~310_q\ <= NOT \bancoRegistradores|registrador~310_q\;
\bancoRegistradores|ALT_INV_registrador~54_q\ <= NOT \bancoRegistradores|registrador~54_q\;
\bancoRegistradores|ALT_INV_registrador~1122_combout\ <= NOT \bancoRegistradores|registrador~1122_combout\;
\bancoRegistradores|ALT_INV_registrador~309_q\ <= NOT \bancoRegistradores|registrador~309_q\;
\bancoRegistradores|ALT_INV_registrador~53_q\ <= NOT \bancoRegistradores|registrador~53_q\;
\bancoRegistradores|ALT_INV_registrador~1118_combout\ <= NOT \bancoRegistradores|registrador~1118_combout\;
\bancoRegistradores|ALT_INV_registrador~308_q\ <= NOT \bancoRegistradores|registrador~308_q\;
\bancoRegistradores|ALT_INV_registrador~52_q\ <= NOT \bancoRegistradores|registrador~52_q\;
\bancoRegistradores|ALT_INV_registrador~1114_combout\ <= NOT \bancoRegistradores|registrador~1114_combout\;
\bancoRegistradores|ALT_INV_registrador~307_q\ <= NOT \bancoRegistradores|registrador~307_q\;
\bancoRegistradores|ALT_INV_registrador~51_q\ <= NOT \bancoRegistradores|registrador~51_q\;
\bancoRegistradores|ALT_INV_registrador~1110_combout\ <= NOT \bancoRegistradores|registrador~1110_combout\;
\bancoRegistradores|ALT_INV_registrador~306_q\ <= NOT \bancoRegistradores|registrador~306_q\;
\bancoRegistradores|ALT_INV_registrador~50_q\ <= NOT \bancoRegistradores|registrador~50_q\;
\bancoRegistradores|ALT_INV_registrador~1106_combout\ <= NOT \bancoRegistradores|registrador~1106_combout\;
\bancoRegistradores|ALT_INV_registrador~305_q\ <= NOT \bancoRegistradores|registrador~305_q\;
\bancoRegistradores|ALT_INV_registrador~49_q\ <= NOT \bancoRegistradores|registrador~49_q\;
\bancoRegistradores|ALT_INV_registrador~1102_combout\ <= NOT \bancoRegistradores|registrador~1102_combout\;
\bancoRegistradores|ALT_INV_registrador~304_q\ <= NOT \bancoRegistradores|registrador~304_q\;
\bancoRegistradores|ALT_INV_registrador~48_q\ <= NOT \bancoRegistradores|registrador~48_q\;
\bancoRegistradores|ALT_INV_registrador~1098_combout\ <= NOT \bancoRegistradores|registrador~1098_combout\;
\bancoRegistradores|ALT_INV_registrador~303_q\ <= NOT \bancoRegistradores|registrador~303_q\;
\bancoRegistradores|ALT_INV_registrador~47_q\ <= NOT \bancoRegistradores|registrador~47_q\;
\bancoRegistradores|ALT_INV_registrador~1094_combout\ <= NOT \bancoRegistradores|registrador~1094_combout\;
\bancoRegistradores|ALT_INV_registrador~302_q\ <= NOT \bancoRegistradores|registrador~302_q\;
\bancoRegistradores|ALT_INV_registrador~46_q\ <= NOT \bancoRegistradores|registrador~46_q\;
\bancoRegistradores|ALT_INV_registrador~1090_combout\ <= NOT \bancoRegistradores|registrador~1090_combout\;
\bancoRegistradores|ALT_INV_registrador~301_q\ <= NOT \bancoRegistradores|registrador~301_q\;
\bancoRegistradores|ALT_INV_registrador~45_q\ <= NOT \bancoRegistradores|registrador~45_q\;
\bancoRegistradores|ALT_INV_registrador~1086_combout\ <= NOT \bancoRegistradores|registrador~1086_combout\;
\bancoRegistradores|ALT_INV_registrador~300_q\ <= NOT \bancoRegistradores|registrador~300_q\;
\bancoRegistradores|ALT_INV_registrador~44_q\ <= NOT \bancoRegistradores|registrador~44_q\;
\bancoRegistradores|ALT_INV_registrador~1082_combout\ <= NOT \bancoRegistradores|registrador~1082_combout\;
\bancoRegistradores|ALT_INV_registrador~299_q\ <= NOT \bancoRegistradores|registrador~299_q\;
\bancoRegistradores|ALT_INV_registrador~43_q\ <= NOT \bancoRegistradores|registrador~43_q\;
\bancoRegistradores|ALT_INV_registrador~1078_combout\ <= NOT \bancoRegistradores|registrador~1078_combout\;
\bancoRegistradores|ALT_INV_registrador~298_q\ <= NOT \bancoRegistradores|registrador~298_q\;
\bancoRegistradores|ALT_INV_registrador~42_q\ <= NOT \bancoRegistradores|registrador~42_q\;
\bancoRegistradores|ALT_INV_registrador~1074_combout\ <= NOT \bancoRegistradores|registrador~1074_combout\;
\bancoRegistradores|ALT_INV_registrador~297_q\ <= NOT \bancoRegistradores|registrador~297_q\;
\bancoRegistradores|ALT_INV_registrador~41_q\ <= NOT \bancoRegistradores|registrador~41_q\;
\bancoRegistradores|ALT_INV_registrador~1070_combout\ <= NOT \bancoRegistradores|registrador~1070_combout\;
\bancoRegistradores|ALT_INV_registrador~296_q\ <= NOT \bancoRegistradores|registrador~296_q\;
\bancoRegistradores|ALT_INV_registrador~40_q\ <= NOT \bancoRegistradores|registrador~40_q\;
\bancoRegistradores|ALT_INV_registrador~1066_combout\ <= NOT \bancoRegistradores|registrador~1066_combout\;
\bancoRegistradores|ALT_INV_registrador~295_q\ <= NOT \bancoRegistradores|registrador~295_q\;
\bancoRegistradores|ALT_INV_registrador~39_q\ <= NOT \bancoRegistradores|registrador~39_q\;
\bancoRegistradores|ALT_INV_registrador~1062_combout\ <= NOT \bancoRegistradores|registrador~1062_combout\;
\bancoRegistradores|ALT_INV_registrador~294_q\ <= NOT \bancoRegistradores|registrador~294_q\;
\bancoRegistradores|ALT_INV_registrador~38_q\ <= NOT \bancoRegistradores|registrador~38_q\;

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_0|ALT_INV_rascSaida7seg[2]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_0|rascSaida7seg[3]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_0|rascSaida7seg[4]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_0|rascSaida7seg[5]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_0|rascSaida7seg[6]~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DEC_5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_Saida_Placa|saida_MUX[24]~23_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_Saida_Placa|saida_MUX[25]~24_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_Saida_Placa|saida_MUX[26]~25_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_Saida_Placa|saida_MUX[27]~26_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_Saida_Placa|saida_MUX[28]~27_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_Saida_Placa|saida_MUX[29]~28_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_Saida_Placa|saida_MUX[30]~29_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX_Saida_Placa|saida_MUX[31]~30_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\OP_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => \OP_ULA[0]~output_o\);

\OP_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => \OP_ULA[1]~output_o\);

\OP_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => \OP_ULA[2]~output_o\);

\ROM_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[0]~output_o\);

\ROM_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[1]~output_o\);

\ROM_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~13_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[2]~output_o\);

\ROM_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~12_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[3]~output_o\);

\ROM_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[4]~output_o\);

\ROM_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[5]~output_o\);

\ROM_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[6]~output_o\);

\ROM_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[7]~output_o\);

\ROM_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[8]~output_o\);

\ROM_OUT[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[9]~output_o\);

\ROM_OUT[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[10]~output_o\);

\ROM_OUT[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[11]~output_o\);

\ROM_OUT[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[12]~output_o\);

\ROM_OUT[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[13]~output_o\);

\ROM_OUT[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[14]~output_o\);

\ROM_OUT[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[15]~output_o\);

\ROM_OUT[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~14_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[16]~output_o\);

\ROM_OUT[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[17]~output_o\);

\ROM_OUT[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ROM_OUT[18]~output_o\);

\ROM_OUT[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~15_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[19]~output_o\);

\ROM_OUT[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ROM_OUT[20]~output_o\);

\ROM_OUT[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[21]~output_o\);

\ROM_OUT[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ROM_OUT[22]~output_o\);

\ROM_OUT[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ROM_OUT[23]~output_o\);

\ROM_OUT[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~1_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[24]~output_o\);

\ROM_OUT[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ROM_OUT[25]~output_o\);

\ROM_OUT[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[26]~output_o\);

\ROM_OUT[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~11_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[27]~output_o\);

\ROM_OUT[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[28]~output_o\);

\ROM_OUT[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~16_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[29]~output_o\);

\ROM_OUT[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ROM_OUT[30]~output_o\);

\ROM_OUT[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => \ROM_OUT[31]~output_o\);

\ULA_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\,
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
	i => \ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\,
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
	i => \ULA|ULA2|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA3|MUX_Selecao|saida_MUX~2_combout\,
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
	i => \ULA|ULA4|MUX_Selecao|saida_MUX~0_combout\,
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
	i => \ULA|ULA5|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA6|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA8|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA9|MUX_Selecao|saida_MUX~0_combout\,
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
	i => \ULA|ULA10|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA12|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA13|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA14|MUX_Selecao|saida_MUX~0_combout\,
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
	i => \ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA16|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA17|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA18|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\,
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
	i => \ULA|ULA20|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA21|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA22|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA24|MUX_Selecao|saida_MUX~0_combout\,
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
	i => \ULA|ULA25|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA26|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA27|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA28|MUX_Selecao|saida_MUX~1_combout\,
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
	i => \ULA|ULA29|MUX_Selecao|saida_MUX~0_combout\,
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
	i => \ULA|ULA30|MUX_Selecao|saida_MUX~2_combout\,
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
	i => \ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\,
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

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = ((!\REG_PC|DOUT\(4) & ((\REG_PC|DOUT\(3)))) # (\REG_PC|DOUT\(4) & (!\REG_PC|DOUT\(2)))) # (\REG_PC|DOUT\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101011111111001110101111111100111010111111110011101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(4),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & !\ROM|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datac => \ROM|ALT_INV_memROM~6_combout\,
	combout => \ROM|memROM~12_combout\);

\INC_PC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~21_sumout\ = SUM(( \REG_PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))
-- \INC_PC|Add0~22\ = CARRY(( \REG_PC|DOUT\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(2),
	cin => GND,
	sumout => \INC_PC|Add0~21_sumout\,
	cout => \INC_PC|Add0~22\);

\INC_PC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~5_sumout\ = SUM(( \REG_PC|DOUT\(3) ) + ( GND ) + ( \INC_PC|Add0~22\ ))
-- \INC_PC|Add0~6\ = CARRY(( \REG_PC|DOUT\(3) ) + ( GND ) + ( \INC_PC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(3),
	cin => \INC_PC|Add0~22\,
	sumout => \INC_PC|Add0~5_sumout\,
	cout => \INC_PC|Add0~6\);

\INC_PC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~9_sumout\ = SUM(( \REG_PC|DOUT\(4) ) + ( GND ) + ( \INC_PC|Add0~6\ ))
-- \INC_PC|Add0~10\ = CARRY(( \REG_PC|DOUT\(4) ) + ( GND ) + ( \INC_PC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(4),
	cin => \INC_PC|Add0~6\,
	sumout => \INC_PC|Add0~9_sumout\,
	cout => \INC_PC|Add0~10\);

\INC_PC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~13_sumout\ = SUM(( \REG_PC|DOUT\(5) ) + ( GND ) + ( \INC_PC|Add0~10\ ))
-- \INC_PC|Add0~14\ = CARRY(( \REG_PC|DOUT\(5) ) + ( GND ) + ( \INC_PC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(5),
	cin => \INC_PC|Add0~10\,
	sumout => \INC_PC|Add0~13_sumout\,
	cout => \INC_PC|Add0~14\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\REG_PC|DOUT\(5) & ((!\REG_PC|DOUT\(2) & (\REG_PC|DOUT\(3) & !\REG_PC|DOUT\(4))) # (\REG_PC|DOUT\(2) & ((\REG_PC|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100000000001001010000000000100101000000000010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(4),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~5_combout\);

\soma_pc_etx|Add0~118\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~118_cout\ = CARRY(( \ROM|memROM~8_combout\ ) + ( \INC_PC|Add0~21_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~8_combout\,
	dataf => \INC_PC|ALT_INV_Add0~21_sumout\,
	cin => GND,
	cout => \soma_pc_etx|Add0~118_cout\);

\soma_pc_etx|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~5_sumout\ = SUM(( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & \ROM|memROM~5_combout\)) ) + ( \INC_PC|Add0~5_sumout\ ) + ( \soma_pc_etx|Add0~118_cout\ ))
-- \soma_pc_etx|Add0~6\ = CARRY(( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & \ROM|memROM~5_combout\)) ) + ( \INC_PC|Add0~5_sumout\ ) + ( \soma_pc_etx|Add0~118_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datac => \REG_PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~5_combout\,
	dataf => \INC_PC|ALT_INV_Add0~5_sumout\,
	cin => \soma_pc_etx|Add0~118_cout\,
	sumout => \soma_pc_etx|Add0~5_sumout\,
	cout => \soma_pc_etx|Add0~6\);

\soma_pc_etx|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~9_sumout\ = SUM(( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & \ROM|memROM~7_combout\)) ) + ( \INC_PC|Add0~9_sumout\ ) + ( \soma_pc_etx|Add0~6\ ))
-- \soma_pc_etx|Add0~10\ = CARRY(( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & \ROM|memROM~7_combout\)) ) + ( \INC_PC|Add0~9_sumout\ ) + ( \soma_pc_etx|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~7_combout\,
	dataf => \INC_PC|ALT_INV_Add0~9_sumout\,
	cin => \soma_pc_etx|Add0~6\,
	sumout => \soma_pc_etx|Add0~9_sumout\,
	cout => \soma_pc_etx|Add0~10\);

\soma_pc_etx|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~13_sumout\ = SUM(( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & !\ROM|memROM~6_combout\)) ) + ( \INC_PC|Add0~13_sumout\ ) + ( \soma_pc_etx|Add0~10\ ))
-- \soma_pc_etx|Add0~14\ = CARRY(( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & !\ROM|memROM~6_combout\)) ) + ( \INC_PC|Add0~13_sumout\ ) + ( \soma_pc_etx|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~6_combout\,
	dataf => \INC_PC|ALT_INV_Add0~13_sumout\,
	cin => \soma_pc_etx|Add0~10\,
	sumout => \soma_pc_etx|Add0~13_sumout\,
	cout => \soma_pc_etx|Add0~14\);

\MUX_Entrada_PC|saida_MUX[5]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[5]~44_combout\ = ( !\decoder_instru|Equal0~0_combout\ & ( (!\comb~8_combout\ & (((\INC_PC|Add0~13_sumout\)))) # (\comb~8_combout\ & ((!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & 
-- ((\soma_pc_etx|Add0~13_sumout\))) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (\INC_PC|Add0~13_sumout\)))) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (\INC_PC|Add0~13_sumout\)))) ) ) # ( \decoder_instru|Equal0~0_combout\ & ( 
-- (((\ROM|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101100001111000011110000111101001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datae => \decoder_instru|ALT_INV_Equal0~0_combout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~13_sumout\,
	datag => \INC_PC|ALT_INV_Add0~13_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[5]~44_combout\);

\REG_PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[5]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(5));

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\REG_PC|DOUT\(5) & ((!\REG_PC|DOUT\(2) & (!\REG_PC|DOUT\(3) & \REG_PC|DOUT\(4))) # (\REG_PC|DOUT\(2) & (\REG_PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000000000110010000000000011001000000000001100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(4),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & \ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datac => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~13_combout\);

\MUX_Entrada_PC|saida_MUX[4]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[4]~48_combout\ = ( !\decoder_instru|Equal0~0_combout\ & ( (!\comb~8_combout\ & (((\INC_PC|Add0~9_sumout\)))) # (\comb~8_combout\ & ((!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & 
-- ((\soma_pc_etx|Add0~9_sumout\))) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (\INC_PC|Add0~9_sumout\)))) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (\INC_PC|Add0~9_sumout\)))) ) ) # ( \decoder_instru|Equal0~0_combout\ & ( 
-- (((\ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101100001111000011110000111101001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datae => \decoder_instru|ALT_INV_Equal0~0_combout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~9_sumout\,
	datag => \INC_PC|ALT_INV_Add0~9_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[4]~48_combout\);

\REG_PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[4]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(4));

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = ( !\REG_PC|DOUT\(7) & ( !\REG_PC|DOUT\(6) & ( (\REG_PC|DOUT\(2) & (\REG_PC|DOUT\(3) & (\REG_PC|DOUT\(4) & !\REG_PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(4),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	datae => \REG_PC|ALT_INV_DOUT\(7),
	dataf => \REG_PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~2_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = ( \REG_PC|DOUT\(4) & ( \REG_PC|DOUT\(5) ) ) # ( !\REG_PC|DOUT\(4) & ( \REG_PC|DOUT\(5) & ( (((\REG_PC|DOUT\(3)) # (\REG_PC|DOUT\(2))) # (\REG_PC|DOUT\(6))) # (\REG_PC|DOUT\(7)) ) ) ) # ( \REG_PC|DOUT\(4) & ( !\REG_PC|DOUT\(5) ) ) 
-- # ( !\REG_PC|DOUT\(4) & ( !\REG_PC|DOUT\(5) & ( ((\REG_PC|DOUT\(3)) # (\REG_PC|DOUT\(6))) # (\REG_PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datac => \REG_PC|ALT_INV_DOUT\(2),
	datad => \REG_PC|ALT_INV_DOUT\(3),
	datae => \REG_PC|ALT_INV_DOUT\(4),
	dataf => \REG_PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~11_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = ( !\REG_PC|DOUT\(6) & ( (!\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(4) & (!\REG_PC|DOUT\(5) & !\REG_PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(3),
	datab => \REG_PC|ALT_INV_DOUT\(4),
	datac => \REG_PC|ALT_INV_DOUT\(5),
	datad => \REG_PC|ALT_INV_DOUT\(7),
	datae => \REG_PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~4_combout\);

\decoder_instru|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_instru|Equal0~0_combout\ = (!\ROM|memROM~2_combout\ & (!\ROM|memROM~11_combout\ & !\ROM|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~4_combout\,
	combout => \decoder_instru|Equal0~0_combout\);

\MUX_Entrada_PC|saida_MUX[3]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[3]~52_combout\ = ( !\decoder_instru|Equal0~0_combout\ & ( (!\comb~8_combout\ & (((\INC_PC|Add0~5_sumout\)))) # (\comb~8_combout\ & ((!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & 
-- ((\soma_pc_etx|Add0~5_sumout\))) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (\INC_PC|Add0~5_sumout\)))) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (\INC_PC|Add0~5_sumout\)))) ) ) # ( \decoder_instru|Equal0~0_combout\ & ( 
-- (((\ROM|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101100001111000011110000111101001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datae => \decoder_instru|ALT_INV_Equal0~0_combout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~5_sumout\,
	datag => \INC_PC|ALT_INV_Add0~5_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[3]~52_combout\);

\REG_PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[3]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(3));

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = ( !\REG_PC|DOUT\(7) & ( !\REG_PC|DOUT\(6) & ( (!\REG_PC|DOUT\(2) & (!\REG_PC|DOUT\(3) & (\REG_PC|DOUT\(4) & !\REG_PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(4),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	datae => \REG_PC|ALT_INV_DOUT\(7),
	dataf => \REG_PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~8_combout\);

\MUX_Entrada_PC|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[2]~1_combout\ = ( \INC_PC|Add0~21_sumout\ & ( \comb~8_combout\ & ( (!\decoder_instru|Equal0~0_combout\ & (((\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\)))) # 
-- (\decoder_instru|Equal0~0_combout\ & (\ROM|memROM~8_combout\)) ) ) ) # ( !\INC_PC|Add0~21_sumout\ & ( \comb~8_combout\ & ( (\ROM|memROM~8_combout\ & \decoder_instru|Equal0~0_combout\) ) ) ) # ( \INC_PC|Add0~21_sumout\ & ( !\comb~8_combout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\) # (\ROM|memROM~8_combout\) ) ) ) # ( !\INC_PC|Add0~21_sumout\ & ( !\comb~8_combout\ & ( (\ROM|memROM~8_combout\ & \decoder_instru|Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100000000010101010011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~8_combout\,
	datab => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datac => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datae => \INC_PC|ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_comb~8_combout\,
	combout => \MUX_Entrada_PC|saida_MUX[2]~1_combout\);

\REG_PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(2));

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(4) & ((!\REG_PC|DOUT\(2)) # (!\REG_PC|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(4),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~3_combout\);

\decoder_instru|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_instru|Equal2~0_combout\ = ( \ROM|memROM~4_combout\ & ( (\REG_PC|DOUT\(2) & (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & \ROM|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	datab => \REG_PC|ALT_INV_DOUT\(7),
	datac => \REG_PC|ALT_INV_DOUT\(6),
	datad => \ROM|ALT_INV_memROM~3_combout\,
	datae => \ROM|ALT_INV_memROM~4_combout\,
	combout => \decoder_instru|Equal2~0_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\REG_PC|DOUT\(5) & (!\REG_PC|DOUT\(7) & !\REG_PC|DOUT\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(5),
	datab => \REG_PC|ALT_INV_DOUT\(7),
	datac => \REG_PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~15_combout\);

\decoder_instru|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_instru|Equal6~0_combout\ = ( !\REG_PC|DOUT\(4) & ( \REG_PC|DOUT\(5) & ( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & (!\REG_PC|DOUT\(2) & !\REG_PC|DOUT\(3)))) ) ) ) # ( \REG_PC|DOUT\(4) & ( !\REG_PC|DOUT\(5) & ( (!\REG_PC|DOUT\(7) & 
-- (!\REG_PC|DOUT\(6) & (\REG_PC|DOUT\(2) & \REG_PC|DOUT\(3)))) ) ) ) # ( !\REG_PC|DOUT\(4) & ( !\REG_PC|DOUT\(5) & ( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & !\REG_PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000000000000000100010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datac => \REG_PC|ALT_INV_DOUT\(2),
	datad => \REG_PC|ALT_INV_DOUT\(3),
	datae => \REG_PC|ALT_INV_DOUT\(4),
	dataf => \REG_PC|ALT_INV_DOUT\(5),
	combout => \decoder_instru|Equal6~0_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = ( \REG_PC|DOUT\(4) & ( \REG_PC|DOUT\(5) ) ) # ( !\REG_PC|DOUT\(4) & ( \REG_PC|DOUT\(5) ) ) # ( \REG_PC|DOUT\(4) & ( !\REG_PC|DOUT\(5) & ( (((!\REG_PC|DOUT\(2)) # (!\REG_PC|DOUT\(3))) # (\REG_PC|DOUT\(6))) # (\REG_PC|DOUT\(7)) ) ) 
-- ) # ( !\REG_PC|DOUT\(4) & ( !\REG_PC|DOUT\(5) & ( (((\REG_PC|DOUT\(3)) # (\REG_PC|DOUT\(2))) # (\REG_PC|DOUT\(6))) # (\REG_PC|DOUT\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111111111111111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datac => \REG_PC|ALT_INV_DOUT\(2),
	datad => \REG_PC|ALT_INV_DOUT\(3),
	datae => \REG_PC|ALT_INV_DOUT\(4),
	dataf => \REG_PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~14_combout\);

\bancoRegistradores|registrador~1191\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1191_combout\ = ( \decoder_instru|Equal2~0_combout\ & ( (!\ROM|memROM~1_combout\ & ((!\decoder_instru|Equal6~0_combout\) # ((!\ROM|memROM~15_combout\ & \ROM|memROM~14_combout\)))) ) ) # ( !\decoder_instru|Equal2~0_combout\ 
-- & ( (!\ROM|memROM~1_combout\ & !\decoder_instru|Equal6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100100011000000110000001100000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal6~0_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \decoder_instru|ALT_INV_Equal2~0_combout\,
	combout => \bancoRegistradores|registrador~1191_combout\);

\bancoRegistradores|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~38_q\);

\bancoRegistradores|registrador~1192\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1192_combout\ = ( \decoder_instru|Equal2~0_combout\ & ( (!\ROM|memROM~1_combout\ & (\ROM|memROM~15_combout\ & (\decoder_instru|Equal6~0_combout\ & \ROM|memROM~14_combout\))) # (\ROM|memROM~1_combout\ & 
-- (((!\decoder_instru|Equal6~0_combout\)))) ) ) # ( !\decoder_instru|Equal2~0_combout\ & ( (\ROM|memROM~1_combout\ & !\decoder_instru|Equal6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011010000110000001100000011000000110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~15_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal6~0_combout\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \decoder_instru|ALT_INV_Equal2~0_combout\,
	combout => \bancoRegistradores|registrador~1192_combout\);

\bancoRegistradores|registrador~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~294_q\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( !\REG_PC|DOUT\(6) & ( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(5) & (!\REG_PC|DOUT\(3) $ (!\REG_PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000000000000000000000000000101000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(4),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	datae => \REG_PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~9_combout\);

\bancoRegistradores|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|Equal1~0_combout\ = ( !\REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT\(5) & (!\REG_PC|DOUT\(6) & ((\REG_PC|DOUT\(4)) # (\REG_PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000000000000000000001110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(3),
	datab => \REG_PC|ALT_INV_DOUT\(4),
	datac => \REG_PC|ALT_INV_DOUT\(5),
	datad => \REG_PC|ALT_INV_DOUT\(6),
	datae => \REG_PC|ALT_INV_DOUT\(7),
	combout => \bancoRegistradores|Equal1~0_combout\);

\bancoRegistradores|saidaA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[0]~0_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~294_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~38_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~38_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~294_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[0]~0_combout\);

\bancoRegistradores|registrador~1193\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1193_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~38_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~38_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1193_combout\);

\bancoRegistradores|registrador~1062\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1062_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1193_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1193_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( \ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1193_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1193_combout\ & ( 
-- (\bancoRegistradores|registrador~294_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~294_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1193_combout\,
	combout => \bancoRegistradores|registrador~1062_combout\);

\decoder_ula|mux_dec_ula|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_ula|mux_dec_ula|saida_MUX[2]~1_combout\ = ( !\REG_PC|DOUT\(5) & ( \REG_PC|DOUT\(2) & ( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & (!\REG_PC|DOUT\(3) & \REG_PC|DOUT\(4)))) ) ) ) # ( !\REG_PC|DOUT\(5) & ( !\REG_PC|DOUT\(2) & ( (!\REG_PC|DOUT\(7) & 
-- (!\REG_PC|DOUT\(6) & \REG_PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datac => \REG_PC|ALT_INV_DOUT\(3),
	datad => \REG_PC|ALT_INV_DOUT\(4),
	datae => \REG_PC|ALT_INV_DOUT\(5),
	dataf => \REG_PC|ALT_INV_DOUT\(2),
	combout => \decoder_ula|mux_dec_ula|saida_MUX[2]~1_combout\);

\decoder_ula|mux_dec_ula|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ = ( \decoder_instru|Equal6~0_combout\ & ( (\ROM|memROM~2_combout\ & \ROM|memROM~11_combout\) ) ) # ( !\decoder_instru|Equal6~0_combout\ & ( (!\ROM|memROM~10_combout\ & (\ROM|memROM~2_combout\ & 
-- ((\ROM|memROM~11_combout\)))) # (\ROM|memROM~10_combout\ & (((\ROM|memROM~2_combout\ & \ROM|memROM~11_combout\)) # (\decoder_ula|mux_dec_ula|saida_MUX[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000000000011001100000101001101110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~2_combout\,
	datac => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~1_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \decoder_instru|ALT_INV_Equal6~0_combout\,
	combout => \decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\);

\bancoRegistradores|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|Equal0~0_combout\ = (!\REG_PC|DOUT\(6) & (!\REG_PC|DOUT\(7) & !\REG_PC|DOUT\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(6),
	datab => \REG_PC|ALT_INV_DOUT\(7),
	datac => \REG_PC|ALT_INV_DOUT\(5),
	combout => \bancoRegistradores|Equal0~0_combout\);

\decoder_instru|saida[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_instru|saida[3]~0_combout\ = (\ROM|memROM~3_combout\ & \ROM|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~3_combout\,
	datab => \ROM|ALT_INV_memROM~4_combout\,
	combout => \decoder_instru|saida[3]~0_combout\);

\ULA|ULA0|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|Somador|cOut~combout\ = ( \decoder_instru|saida[3]~0_combout\ & ( (\bancoRegistradores|saidaA[0]~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\) ) ) # ( !\decoder_instru|saida[3]~0_combout\ & ( 
-- (!\bancoRegistradores|registrador~1062_combout\ & (((\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\)))) # (\bancoRegistradores|registrador~1062_combout\ & ((!\bancoRegistradores|Equal0~0_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\))) # 
-- (\bancoRegistradores|Equal0~0_combout\ & (\bancoRegistradores|saidaA[0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011101000001010000010100001111000111010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[0]~0_combout\,
	datab => \bancoRegistradores|ALT_INV_registrador~1062_combout\,
	datac => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datae => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	combout => \ULA|ULA0|Somador|cOut~combout\);

\bancoRegistradores|registrador~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~295_q\);

\bancoRegistradores|registrador~1194\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1194_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~39_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~39_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1194_combout\);

\bancoRegistradores|registrador~1066\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1066_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1194_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1194_combout\ ) ) # ( 
-- \ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1194_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1194_combout\ & ( (\bancoRegistradores|registrador~295_q\ & 
-- \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~295_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1194_combout\,
	combout => \bancoRegistradores|registrador~1066_combout\);

\ULA|ULA1|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA1|MUX_inverte|saida_MUX~0_combout\ = ( \bancoRegistradores|registrador~1066_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (!\bancoRegistradores|Equal0~0_combout\)))) # 
-- (\decoder_instru|saida[3]~0_combout\ & (\ROM|memROM~5_combout\)) ) ) # ( !\bancoRegistradores|registrador~1066_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\))) # 
-- (\decoder_instru|saida[3]~0_combout\ & (\ROM|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001111000101010100110011010101010011110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~5_combout\,
	datab => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datae => \bancoRegistradores|ALT_INV_registrador~1066_combout\,
	combout => \ULA|ULA1|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA1|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\ = ( \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((\ULA|ULA1|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[1]~1_combout\))) ) ) # ( 
-- !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (!\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA0|Somador|cOut~combout\ $ (!\bancoRegistradores|saidaA[1]~1_combout\ $ (\ULA|ULA1|MUX_inverte|saida_MUX~0_combout\)))) # 
-- (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & (((\bancoRegistradores|saidaA[1]~1_combout\ & \ULA|ULA1|MUX_inverte|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010000111000001010101010100101000100001110000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA0|Somador|ALT_INV_cOut~combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[1]~1_combout\,
	datad => \ULA|ULA1|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datae => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\);

\bancoRegistradores|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~39_q\);

\bancoRegistradores|saidaA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[1]~1_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\ROM|memROM~9_combout\) # (\bancoRegistradores|registrador~295_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~39_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~39_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~295_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[1]~1_combout\);

\bancoRegistradores|registrador~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA2|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~296_q\);

\bancoRegistradores|registrador~1195\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1195_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~40_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~40_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1195_combout\);

\bancoRegistradores|registrador~1070\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1070_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1195_combout\ ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1195_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( 
-- !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1195_combout\ & ( (\bancoRegistradores|registrador~296_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~296_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1195_combout\,
	combout => \bancoRegistradores|registrador~1070_combout\);

\ULA|ULA2|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|MUX_inverte|saida_MUX~0_combout\ = ( \bancoRegistradores|registrador~1070_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (!\bancoRegistradores|Equal0~0_combout\)))) # 
-- (\decoder_instru|saida[3]~0_combout\ & (\ROM|memROM~7_combout\)) ) ) # ( !\bancoRegistradores|registrador~1070_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\))) # 
-- (\decoder_instru|saida[3]~0_combout\ & (\ROM|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001111000101010100110011010101010011110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~7_combout\,
	datab => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datae => \bancoRegistradores|ALT_INV_registrador~1070_combout\,
	combout => \ULA|ULA2|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA2|Somador|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|Somador|saida~combout\ = ( \ULA|ULA2|MUX_inverte|saida_MUX~0_combout\ & ( !\bancoRegistradores|saidaA[2]~2_combout\ $ (((!\ULA|ULA0|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[1]~1_combout\ & \ULA|ULA1|MUX_inverte|saida_MUX~0_combout\)) 
-- # (\ULA|ULA0|Somador|cOut~combout\ & ((\ULA|ULA1|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[1]~1_combout\))))) ) ) # ( !\ULA|ULA2|MUX_inverte|saida_MUX~0_combout\ & ( !\bancoRegistradores|saidaA[2]~2_combout\ $ 
-- (((!\ULA|ULA0|Somador|cOut~combout\ & ((!\bancoRegistradores|saidaA[1]~1_combout\) # (!\ULA|ULA1|MUX_inverte|saida_MUX~0_combout\))) # (\ULA|ULA0|Somador|cOut~combout\ & (!\bancoRegistradores|saidaA[1]~1_combout\ & 
-- !\ULA|ULA1|MUX_inverte|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000111010000001011100010111111010001110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[1]~1_combout\,
	datac => \ULA|ULA1|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[2]~2_combout\,
	datae => \ULA|ULA2|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA2|Somador|saida~combout\);

\ULA|ULA2|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[2]~2_combout\ & (\ULA|ULA2|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[2]~2_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA2|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[2]~2_combout\,
	datac => \ULA|ULA2|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA2|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA2|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & \ULA|ULA2|Somador|saida~combout\)) # (\ULA|ULA2|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA2|Somador|ALT_INV_saida~combout\,
	datac => \ULA|ULA2|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA2|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA2|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~40_q\);

\bancoRegistradores|saidaA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[2]~2_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~296_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~40_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~40_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~296_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[2]~2_combout\);

\ULA|ULA2|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA2|Somador|cOut~combout\ = ( \ULA|ULA2|MUX_inverte|saida_MUX~0_combout\ & ( ((!\ULA|ULA0|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[1]~1_combout\ & \ULA|ULA1|MUX_inverte|saida_MUX~0_combout\)) # (\ULA|ULA0|Somador|cOut~combout\ & 
-- ((\ULA|ULA1|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[1]~1_combout\)))) # (\bancoRegistradores|saidaA[2]~2_combout\) ) ) # ( !\ULA|ULA2|MUX_inverte|saida_MUX~0_combout\ & ( (\bancoRegistradores|saidaA[2]~2_combout\ & 
-- ((!\ULA|ULA0|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[1]~1_combout\ & \ULA|ULA1|MUX_inverte|saida_MUX~0_combout\)) # (\ULA|ULA0|Somador|cOut~combout\ & ((\ULA|ULA1|MUX_inverte|saida_MUX~0_combout\) # 
-- (\bancoRegistradores|saidaA[1]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[1]~1_combout\,
	datac => \ULA|ULA1|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[2]~2_combout\,
	datae => \ULA|ULA2|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA2|Somador|cOut~combout\);

\bancoRegistradores|registrador~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA3|MUX_Selecao|saida_MUX~2_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~297_q\);

\bancoRegistradores|registrador~1196\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1196_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~41_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~41_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1196_combout\);

\bancoRegistradores|registrador~1074\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1074_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1196_combout\ ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1196_combout\ ) ) # ( \ROM|memROM~1_combout\ & ( 
-- !\bancoRegistradores|registrador~1196_combout\ & ( \ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1196_combout\ & ( (\bancoRegistradores|registrador~297_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~297_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1196_combout\,
	combout => \bancoRegistradores|registrador~1074_combout\);

\ULA|ULA3|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|MUX_inverte|saida_MUX~0_combout\ = ( \bancoRegistradores|registrador~1074_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (!\bancoRegistradores|Equal0~0_combout\)))) # 
-- (\decoder_instru|saida[3]~0_combout\ & (!\ROM|memROM~6_combout\)) ) ) # ( !\bancoRegistradores|registrador~1074_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\))) # 
-- (\decoder_instru|saida[3]~0_combout\ & (!\ROM|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110101010001111001010101000110011101010100011110010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datae => \bancoRegistradores|ALT_INV_registrador~1074_combout\,
	combout => \ULA|ULA3|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA3|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|MUX_Selecao|saida_MUX~1_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[3]~3_combout\ & (\ULA|ULA3|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[3]~3_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA3|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[3]~3_combout\,
	datac => \ULA|ULA3|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA3|MUX_Selecao|saida_MUX~1_combout\);

\ULA|ULA3|MUX_Selecao|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|MUX_Selecao|saida_MUX~2_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA2|Somador|cOut~combout\ $ (!\ULA|ULA3|Somador|saida~0_combout\)))) # (\ULA|ULA3|MUX_Selecao|saida_MUX~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011111111000001101111111100000110111111110000011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA2|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA3|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA3|MUX_Selecao|saida_MUX~2_combout\);

\bancoRegistradores|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA3|MUX_Selecao|saida_MUX~2_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~41_q\);

\bancoRegistradores|saidaA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[3]~3_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\ROM|memROM~9_combout\) # (\bancoRegistradores|registrador~297_q\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~41_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~41_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~297_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[3]~3_combout\);

\ULA|ULA3|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|Somador|saida~0_combout\ = ( \bancoRegistradores|saidaA[3]~3_combout\ & ( \bancoRegistradores|registrador~1074_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ 
-- (\bancoRegistradores|Equal0~0_combout\)))) # (\decoder_instru|saida[3]~0_combout\ & (\ROM|memROM~6_combout\)) ) ) ) # ( !\bancoRegistradores|saidaA[3]~3_combout\ & ( \bancoRegistradores|registrador~1074_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & 
-- ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (!\bancoRegistradores|Equal0~0_combout\)))) # (\decoder_instru|saida[3]~0_combout\ & (!\ROM|memROM~6_combout\)) ) ) ) # ( \bancoRegistradores|saidaA[3]~3_combout\ & ( 
-- !\bancoRegistradores|registrador~1074_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\))) # (\decoder_instru|saida[3]~0_combout\ & (\ROM|memROM~6_combout\)) ) ) ) # ( 
-- !\bancoRegistradores|saidaA[3]~3_combout\ & ( !\bancoRegistradores|registrador~1074_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\))) # (\decoder_instru|saida[3]~0_combout\ & 
-- (!\ROM|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110101010110011000101010100111100101010101100001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datae => \bancoRegistradores|ALT_INV_saidaA[3]~3_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1074_combout\,
	combout => \ULA|ULA3|Somador|saida~0_combout\);

\ULA|ULA3|Somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|Somador|cOut~0_combout\ = ( \ULA|ULA2|MUX_inverte|saida_MUX~0_combout\ & ( \ULA|ULA3|Somador|saida~0_combout\ & ( ((!\ULA|ULA0|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[1]~1_combout\ & \ULA|ULA1|MUX_inverte|saida_MUX~0_combout\)) # 
-- (\ULA|ULA0|Somador|cOut~combout\ & ((\ULA|ULA1|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[1]~1_combout\)))) # (\bancoRegistradores|saidaA[2]~2_combout\) ) ) ) # ( !\ULA|ULA2|MUX_inverte|saida_MUX~0_combout\ & ( 
-- \ULA|ULA3|Somador|saida~0_combout\ & ( (\bancoRegistradores|saidaA[2]~2_combout\ & ((!\ULA|ULA0|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[1]~1_combout\ & \ULA|ULA1|MUX_inverte|saida_MUX~0_combout\)) # (\ULA|ULA0|Somador|cOut~combout\ & 
-- ((\ULA|ULA1|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[1]~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[1]~1_combout\,
	datac => \ULA|ULA1|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[2]~2_combout\,
	datae => \ULA|ULA2|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA3|Somador|ALT_INV_saida~0_combout\,
	combout => \ULA|ULA3|Somador|cOut~0_combout\);

\ULA|ULA3|Somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|Somador|cOut~1_combout\ = ( \bancoRegistradores|saidaA[3]~3_combout\ & ( \bancoRegistradores|registrador~1074_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ 
-- (!\bancoRegistradores|Equal0~0_combout\)))) # (\decoder_instru|saida[3]~0_combout\ & (!\ROM|memROM~6_combout\)) ) ) ) # ( \bancoRegistradores|saidaA[3]~3_combout\ & ( !\bancoRegistradores|registrador~1074_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ 
-- & ((\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\))) # (\decoder_instru|saida[3]~0_combout\ & (!\ROM|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111010101000000000000000000011110010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datae => \bancoRegistradores|ALT_INV_saidaA[3]~3_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1074_combout\,
	combout => \ULA|ULA3|Somador|cOut~1_combout\);

\bancoRegistradores|registrador~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA4|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~298_q\);

\bancoRegistradores|registrador~1197\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1197_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~42_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~42_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1197_combout\);

\bancoRegistradores|registrador~1078\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1078_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1197_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1197_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1197_combout\ & ( (\bancoRegistradores|registrador~298_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~298_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1197_combout\,
	combout => \bancoRegistradores|registrador~1078_combout\);

\ULA|ULA4|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1078_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1078_combout\,
	combout => \ULA|ULA4|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA4|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|MUX_Selecao|saida_MUX~0_combout\ = ( \ULA|ULA4|MUX_inverte|saida_MUX~0_combout\ & ( \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( \ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ ) ) ) # ( !\ULA|ULA4|MUX_inverte|saida_MUX~0_combout\ & ( 
-- \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & \bancoRegistradores|saidaA[4]~4_combout\) ) ) ) # ( \ULA|ULA4|MUX_inverte|saida_MUX~0_combout\ & ( !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( 
-- !\bancoRegistradores|saidaA[4]~4_combout\ $ ((((\ULA|ULA3|Somador|cOut~1_combout\) # (\ULA|ULA3|Somador|cOut~0_combout\)) # (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\))) ) ) ) # ( !\ULA|ULA4|MUX_inverte|saida_MUX~0_combout\ & ( 
-- !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (!\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & (!\bancoRegistradores|saidaA[4]~4_combout\ $ (((!\ULA|ULA3|Somador|cOut~0_combout\ & !\ULA|ULA3|Somador|cOut~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010000000100000000111111100000000010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA3|Somador|ALT_INV_cOut~0_combout\,
	datac => \ULA|ULA3|Somador|ALT_INV_cOut~1_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[4]~4_combout\,
	datae => \ULA|ULA4|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	dataf => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA4|MUX_Selecao|saida_MUX~0_combout\);

\bancoRegistradores|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA4|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~42_q\);

\bancoRegistradores|saidaA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[4]~4_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~298_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~42_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~42_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~298_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[4]~4_combout\);

\ULA|ULA4|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA4|Somador|cOut~combout\ = (!\bancoRegistradores|saidaA[4]~4_combout\ & ((!\ULA|ULA4|MUX_inverte|saida_MUX~0_combout\) # ((!\ULA|ULA3|Somador|cOut~0_combout\ & !\ULA|ULA3|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[4]~4_combout\ & 
-- (!\ULA|ULA3|Somador|cOut~0_combout\ & (!\ULA|ULA3|Somador|cOut~1_combout\ & !\ULA|ULA4|MUX_inverte|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA3|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA|ULA3|Somador|ALT_INV_cOut~1_combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[4]~4_combout\,
	datad => \ULA|ULA4|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA4|Somador|cOut~combout\);

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\REG_PC|DOUT\(5) & (!\REG_PC|DOUT\(6) & ((\REG_PC|DOUT\(4)) # (\REG_PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(3),
	datab => \REG_PC|ALT_INV_DOUT\(4),
	datac => \REG_PC|ALT_INV_DOUT\(5),
	datad => \REG_PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~0_combout\);

\bancoRegistradores|registrador~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA5|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~299_q\);

\bancoRegistradores|registrador~1198\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1198_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~43_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~43_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1198_combout\);

\bancoRegistradores|registrador~1082\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1082_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1198_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1198_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1198_combout\ & ( (\bancoRegistradores|registrador~299_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~299_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1198_combout\,
	combout => \bancoRegistradores|registrador~1082_combout\);

\ULA|ULA5|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|Somador|saida~0_combout\ = ( \bancoRegistradores|saidaA[5]~5_combout\ & ( \bancoRegistradores|registrador~1082_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ 
-- (\bancoRegistradores|Equal0~0_combout\)))) # (\decoder_instru|saida[3]~0_combout\ & (!\ROM|memROM~0_combout\)) ) ) ) # ( !\bancoRegistradores|saidaA[5]~5_combout\ & ( \bancoRegistradores|registrador~1082_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ 
-- & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (!\bancoRegistradores|Equal0~0_combout\)))) # (\decoder_instru|saida[3]~0_combout\ & (\ROM|memROM~0_combout\)) ) ) ) # ( \bancoRegistradores|saidaA[5]~5_combout\ & ( 
-- !\bancoRegistradores|registrador~1082_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\))) # (\decoder_instru|saida[3]~0_combout\ & (!\ROM|memROM~0_combout\)) ) ) ) # ( 
-- !\bancoRegistradores|saidaA[5]~5_combout\ & ( !\bancoRegistradores|registrador~1082_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\))) # (\decoder_instru|saida[3]~0_combout\ & 
-- (\ROM|memROM~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101110011001010101000111100010101011100001110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datae => \bancoRegistradores|ALT_INV_saidaA[5]~5_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1082_combout\,
	combout => \ULA|ULA5|Somador|saida~0_combout\);

\ULA|ULA5|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|MUX_inverte|saida_MUX~0_combout\ = ( \bancoRegistradores|registrador~1082_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (!\bancoRegistradores|Equal0~0_combout\)))) # 
-- (\decoder_instru|saida[3]~0_combout\ & (\ROM|memROM~0_combout\)) ) ) # ( !\bancoRegistradores|registrador~1082_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\))) # 
-- (\decoder_instru|saida[3]~0_combout\ & (\ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001111000101010100110011010101010011110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datae => \bancoRegistradores|ALT_INV_registrador~1082_combout\,
	combout => \ULA|ULA5|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA5|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[5]~5_combout\ & (\ULA|ULA5|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[5]~5_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA5|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[5]~5_combout\,
	datac => \ULA|ULA5|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA5|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA5|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA4|Somador|cOut~combout\ $ (\ULA|ULA5|Somador|saida~0_combout\)))) # (\ULA|ULA5|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111111111000010011111111100001001111111110000100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA4|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA5|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA5|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA5|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA5|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~43_q\);

\bancoRegistradores|saidaA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[5]~5_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~299_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~43_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~43_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~299_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[5]~5_combout\);

\ULA|ULA5|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA5|Somador|cOut~combout\ = ( !\bancoRegistradores|saidaA[5]~5_combout\ & ( \ULA|ULA5|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[4]~4_combout\ & ((!\ULA|ULA4|MUX_inverte|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA3|Somador|cOut~0_combout\ & !\ULA|ULA3|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[4]~4_combout\ & (!\ULA|ULA3|Somador|cOut~0_combout\ & (!\ULA|ULA3|Somador|cOut~1_combout\ & !\ULA|ULA4|MUX_inverte|saida_MUX~0_combout\))) ) ) ) # 
-- ( \bancoRegistradores|saidaA[5]~5_combout\ & ( !\ULA|ULA5|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[4]~4_combout\ & ((!\ULA|ULA4|MUX_inverte|saida_MUX~0_combout\) # ((!\ULA|ULA3|Somador|cOut~0_combout\ & 
-- !\ULA|ULA3|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[4]~4_combout\ & (!\ULA|ULA3|Somador|cOut~0_combout\ & (!\ULA|ULA3|Somador|cOut~1_combout\ & !\ULA|ULA4|MUX_inverte|saida_MUX~0_combout\))) ) ) ) # ( 
-- !\bancoRegistradores|saidaA[5]~5_combout\ & ( !\ULA|ULA5|MUX_inverte|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA3|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA|ULA3|Somador|ALT_INV_cOut~1_combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[4]~4_combout\,
	datad => \ULA|ULA4|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datae => \bancoRegistradores|ALT_INV_saidaA[5]~5_combout\,
	dataf => \ULA|ULA5|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA5|Somador|cOut~combout\);

\bancoRegistradores|registrador~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA6|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~300_q\);

\bancoRegistradores|registrador~1199\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1199_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~44_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~44_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1199_combout\);

\bancoRegistradores|registrador~1086\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1086_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1199_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1199_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1199_combout\ & ( (\bancoRegistradores|registrador~300_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~300_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1199_combout\,
	combout => \bancoRegistradores|registrador~1086_combout\);

\ULA|ULA6|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA6|Somador|saida~0_combout\ = ( \bancoRegistradores|registrador~1086_combout\ & ( !\bancoRegistradores|saidaA[6]~6_combout\ $ (((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (\bancoRegistradores|Equal0~0_combout\)) # 
-- (\decoder_instru|saida[3]~0_combout\))) ) ) # ( !\bancoRegistradores|registrador~1086_combout\ & ( !\bancoRegistradores|saidaA[6]~6_combout\ $ (((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\) # (\decoder_instru|saida[3]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101111011000001001111101010000101011110110000010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[6]~6_combout\,
	datae => \bancoRegistradores|ALT_INV_registrador~1086_combout\,
	combout => \ULA|ULA6|Somador|saida~0_combout\);

\ULA|ULA6|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA6|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1086_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1086_combout\,
	combout => \ULA|ULA6|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA6|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA6|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[6]~6_combout\ & (\ULA|ULA6|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[6]~6_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA6|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[6]~6_combout\,
	datac => \ULA|ULA6|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA6|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA6|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA6|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA5|Somador|cOut~combout\ $ (\ULA|ULA6|Somador|saida~0_combout\)))) # (\ULA|ULA6|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111111111000010011111111100001001111111110000100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA5|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA6|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA6|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA6|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA6|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~44_q\);

\bancoRegistradores|saidaA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[6]~6_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~300_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~44_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~44_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~300_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[6]~6_combout\);

\bancoRegistradores|registrador~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~301_q\);

\bancoRegistradores|registrador~1200\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1200_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~45_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~45_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1200_combout\);

\bancoRegistradores|registrador~1090\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1090_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1200_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1200_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1200_combout\ & ( (\bancoRegistradores|registrador~301_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~301_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1200_combout\,
	combout => \bancoRegistradores|registrador~1090_combout\);

\ULA|ULA7|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|Somador|saida~0_combout\ = ( \bancoRegistradores|registrador~1090_combout\ & ( !\bancoRegistradores|saidaA[7]~7_combout\ $ (((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (\bancoRegistradores|Equal0~0_combout\)) # 
-- (\decoder_instru|saida[3]~0_combout\))) ) ) # ( !\bancoRegistradores|registrador~1090_combout\ & ( !\bancoRegistradores|saidaA[7]~7_combout\ $ (((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\) # (\decoder_instru|saida[3]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101111011000001001111101010000101011110110000010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[7]~7_combout\,
	datae => \bancoRegistradores|ALT_INV_registrador~1090_combout\,
	combout => \ULA|ULA7|Somador|saida~0_combout\);

\ULA|ULA7|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1090_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1090_combout\,
	combout => \ULA|ULA7|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA7|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[7]~7_combout\ & (\ULA|ULA7|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[7]~7_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA7|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[7]~7_combout\,
	datac => \ULA|ULA7|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA7|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA7|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\ = ( \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( \ULA|ULA7|MUX_Selecao|saida_MUX~0_combout\ ) ) # ( !\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( \ULA|ULA7|MUX_Selecao|saida_MUX~0_combout\ ) ) # ( 
-- \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( !\ULA|ULA7|MUX_Selecao|saida_MUX~0_combout\ & ( !\ULA|ULA7|Somador|saida~0_combout\ $ (((!\ULA|ULA5|Somador|cOut~combout\ & (!\bancoRegistradores|saidaA[6]~6_combout\ & 
-- !\ULA|ULA6|MUX_inverte|saida_MUX~0_combout\)) # (\ULA|ULA5|Somador|cOut~combout\ & ((!\bancoRegistradores|saidaA[6]~6_combout\) # (!\ULA|ULA6|MUX_inverte|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA5|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[6]~6_combout\,
	datac => \ULA|ULA6|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA7|Somador|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA7|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~45_q\);

\bancoRegistradores|saidaA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[7]~7_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~301_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~45_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~45_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~301_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[7]~7_combout\);

\ULA|ULA7|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA7|Somador|cOut~combout\ = ( \ULA|ULA7|MUX_inverte|saida_MUX~0_combout\ & ( ((!\ULA|ULA5|Somador|cOut~combout\ & ((\ULA|ULA6|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[6]~6_combout\))) # (\ULA|ULA5|Somador|cOut~combout\ & 
-- (\bancoRegistradores|saidaA[6]~6_combout\ & \ULA|ULA6|MUX_inverte|saida_MUX~0_combout\))) # (\bancoRegistradores|saidaA[7]~7_combout\) ) ) # ( !\ULA|ULA7|MUX_inverte|saida_MUX~0_combout\ & ( (\bancoRegistradores|saidaA[7]~7_combout\ & 
-- ((!\ULA|ULA5|Somador|cOut~combout\ & ((\ULA|ULA6|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[6]~6_combout\))) # (\ULA|ULA5|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[6]~6_combout\ & 
-- \ULA|ULA6|MUX_inverte|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA5|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[6]~6_combout\,
	datac => \ULA|ULA6|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[7]~7_combout\,
	datae => \ULA|ULA7|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA7|Somador|cOut~combout\);

\bancoRegistradores|registrador~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA8|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~302_q\);

\bancoRegistradores|registrador~1201\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1201_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~46_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~46_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1201_combout\);

\bancoRegistradores|registrador~1094\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1094_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1201_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1201_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1201_combout\ & ( (\bancoRegistradores|registrador~302_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~302_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1201_combout\,
	combout => \bancoRegistradores|registrador~1094_combout\);

\ULA|ULA8|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1094_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1094_combout\,
	combout => \ULA|ULA8|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA8|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[8]~8_combout\ & (\ULA|ULA8|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[8]~8_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA8|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[8]~8_combout\,
	datac => \ULA|ULA8|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA8|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA8|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA7|Somador|cOut~combout\ $ (!\ULA|ULA8|Somador|saida~0_combout\)))) # (\ULA|ULA8|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011111111000001101111111100000110111111110000011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA7|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA8|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA8|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA8|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA8|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~46_q\);

\bancoRegistradores|saidaA[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[8]~8_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~302_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~46_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~46_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~302_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[8]~8_combout\);

\ULA|ULA8|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|Somador|saida~0_combout\ = ( \bancoRegistradores|registrador~1094_combout\ & ( !\bancoRegistradores|saidaA[8]~8_combout\ $ (((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (\bancoRegistradores|Equal0~0_combout\)) # 
-- (\decoder_instru|saida[3]~0_combout\))) ) ) # ( !\bancoRegistradores|registrador~1094_combout\ & ( !\bancoRegistradores|saidaA[8]~8_combout\ $ (((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\) # (\decoder_instru|saida[3]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101111011000001001111101010000101011110110000010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[8]~8_combout\,
	datae => \bancoRegistradores|ALT_INV_registrador~1094_combout\,
	combout => \ULA|ULA8|Somador|saida~0_combout\);

\ULA|ULA8|Somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|Somador|cOut~0_combout\ = ( \ULA|ULA7|MUX_inverte|saida_MUX~0_combout\ & ( \ULA|ULA8|Somador|saida~0_combout\ & ( ((!\ULA|ULA5|Somador|cOut~combout\ & ((\ULA|ULA6|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[6]~6_combout\))) # 
-- (\ULA|ULA5|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[6]~6_combout\ & \ULA|ULA6|MUX_inverte|saida_MUX~0_combout\))) # (\bancoRegistradores|saidaA[7]~7_combout\) ) ) ) # ( !\ULA|ULA7|MUX_inverte|saida_MUX~0_combout\ & ( 
-- \ULA|ULA8|Somador|saida~0_combout\ & ( (\bancoRegistradores|saidaA[7]~7_combout\ & ((!\ULA|ULA5|Somador|cOut~combout\ & ((\ULA|ULA6|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[6]~6_combout\))) # (\ULA|ULA5|Somador|cOut~combout\ & 
-- (\bancoRegistradores|saidaA[6]~6_combout\ & \ULA|ULA6|MUX_inverte|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA5|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[6]~6_combout\,
	datac => \ULA|ULA6|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[7]~7_combout\,
	datae => \ULA|ULA7|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA8|Somador|ALT_INV_saida~0_combout\,
	combout => \ULA|ULA8|Somador|cOut~0_combout\);

\ULA|ULA8|Somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA8|Somador|cOut~1_combout\ = ( \bancoRegistradores|registrador~1094_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & (\bancoRegistradores|saidaA[8]~8_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ 
-- (!\bancoRegistradores|Equal0~0_combout\)))) ) ) # ( !\bancoRegistradores|registrador~1094_combout\ & ( (\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ & (!\decoder_instru|saida[3]~0_combout\ & \bancoRegistradores|saidaA[8]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000110000000000000010100000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[8]~8_combout\,
	datae => \bancoRegistradores|ALT_INV_registrador~1094_combout\,
	combout => \ULA|ULA8|Somador|cOut~1_combout\);

\bancoRegistradores|registrador~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA9|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~303_q\);

\bancoRegistradores|registrador~1202\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1202_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~47_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~47_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1202_combout\);

\bancoRegistradores|registrador~1098\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1098_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1202_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1202_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1202_combout\ & ( (\bancoRegistradores|registrador~303_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~303_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1202_combout\,
	combout => \bancoRegistradores|registrador~1098_combout\);

\ULA|ULA9|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA9|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1098_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1098_combout\,
	combout => \ULA|ULA9|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA9|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA9|MUX_Selecao|saida_MUX~0_combout\ = ( \ULA|ULA9|MUX_inverte|saida_MUX~0_combout\ & ( \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( \ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ ) ) ) # ( !\ULA|ULA9|MUX_inverte|saida_MUX~0_combout\ & ( 
-- \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & \bancoRegistradores|saidaA[9]~9_combout\) ) ) ) # ( \ULA|ULA9|MUX_inverte|saida_MUX~0_combout\ & ( !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( 
-- !\bancoRegistradores|saidaA[9]~9_combout\ $ ((((\ULA|ULA8|Somador|cOut~1_combout\) # (\ULA|ULA8|Somador|cOut~0_combout\)) # (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\))) ) ) ) # ( !\ULA|ULA9|MUX_inverte|saida_MUX~0_combout\ & ( 
-- !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (!\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & (!\bancoRegistradores|saidaA[9]~9_combout\ $ (((!\ULA|ULA8|Somador|cOut~0_combout\ & !\ULA|ULA8|Somador|cOut~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010000000100000000111111100000000010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA8|Somador|ALT_INV_cOut~0_combout\,
	datac => \ULA|ULA8|Somador|ALT_INV_cOut~1_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[9]~9_combout\,
	datae => \ULA|ULA9|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	dataf => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA9|MUX_Selecao|saida_MUX~0_combout\);

\bancoRegistradores|registrador~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA9|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~47_q\);

\bancoRegistradores|saidaA[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[9]~9_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~303_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~47_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~47_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~303_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[9]~9_combout\);

\ULA|ULA9|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA9|Somador|cOut~combout\ = (!\bancoRegistradores|saidaA[9]~9_combout\ & ((!\ULA|ULA9|MUX_inverte|saida_MUX~0_combout\) # ((!\ULA|ULA8|Somador|cOut~0_combout\ & !\ULA|ULA8|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[9]~9_combout\ & 
-- (!\ULA|ULA8|Somador|cOut~0_combout\ & (!\ULA|ULA8|Somador|cOut~1_combout\ & !\ULA|ULA9|MUX_inverte|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA|ULA8|Somador|ALT_INV_cOut~1_combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[9]~9_combout\,
	datad => \ULA|ULA9|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA9|Somador|cOut~combout\);

\bancoRegistradores|registrador~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA10|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~304_q\);

\bancoRegistradores|registrador~1203\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1203_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~48_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~48_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1203_combout\);

\bancoRegistradores|registrador~1102\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1102_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1203_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1203_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1203_combout\ & ( (\bancoRegistradores|registrador~304_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~304_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1203_combout\,
	combout => \bancoRegistradores|registrador~1102_combout\);

\ULA|ULA10|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA10|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1102_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1102_combout\,
	combout => \ULA|ULA10|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA10|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA10|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[10]~10_combout\ $ (!\ULA|ULA10|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[10]~10_combout\,
	datab => \ULA|ULA10|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA10|Somador|saida~0_combout\);

\ULA|ULA10|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA10|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[10]~10_combout\ & (\ULA|ULA10|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[10]~10_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA10|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[10]~10_combout\,
	datac => \ULA|ULA10|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA10|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA10|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA10|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA9|Somador|cOut~combout\ $ (\ULA|ULA10|Somador|saida~0_combout\)))) # (\ULA|ULA10|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111111111000010011111111100001001111111110000100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA9|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA10|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA10|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA10|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA10|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~48_q\);

\bancoRegistradores|saidaA[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[10]~10_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~304_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~48_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~48_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~304_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[10]~10_combout\);

\ULA|ULA10|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA10|Somador|cOut~combout\ = ( !\bancoRegistradores|saidaA[10]~10_combout\ & ( \ULA|ULA10|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[9]~9_combout\ & ((!\ULA|ULA9|MUX_inverte|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA8|Somador|cOut~0_combout\ & !\ULA|ULA8|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[9]~9_combout\ & (!\ULA|ULA8|Somador|cOut~0_combout\ & (!\ULA|ULA8|Somador|cOut~1_combout\ & !\ULA|ULA9|MUX_inverte|saida_MUX~0_combout\))) ) ) ) # 
-- ( \bancoRegistradores|saidaA[10]~10_combout\ & ( !\ULA|ULA10|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[9]~9_combout\ & ((!\ULA|ULA9|MUX_inverte|saida_MUX~0_combout\) # ((!\ULA|ULA8|Somador|cOut~0_combout\ & 
-- !\ULA|ULA8|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[9]~9_combout\ & (!\ULA|ULA8|Somador|cOut~0_combout\ & (!\ULA|ULA8|Somador|cOut~1_combout\ & !\ULA|ULA9|MUX_inverte|saida_MUX~0_combout\))) ) ) ) # ( 
-- !\bancoRegistradores|saidaA[10]~10_combout\ & ( !\ULA|ULA10|MUX_inverte|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA8|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA|ULA8|Somador|ALT_INV_cOut~1_combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[9]~9_combout\,
	datad => \ULA|ULA9|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datae => \bancoRegistradores|ALT_INV_saidaA[10]~10_combout\,
	dataf => \ULA|ULA10|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA10|Somador|cOut~combout\);

\bancoRegistradores|registrador~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~305_q\);

\bancoRegistradores|registrador~1204\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1204_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~49_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~49_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1204_combout\);

\bancoRegistradores|registrador~1106\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1106_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1204_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1204_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1204_combout\ & ( (\bancoRegistradores|registrador~305_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~305_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1204_combout\,
	combout => \bancoRegistradores|registrador~1106_combout\);

\ULA|ULA11|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1106_combout\,
	combout => \ULA|ULA11|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA11|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[11]~11_combout\ $ (!\ULA|ULA11|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[11]~11_combout\,
	datab => \ULA|ULA11|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA11|Somador|saida~0_combout\);

\ULA|ULA11|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[11]~11_combout\ & (\ULA|ULA11|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[11]~11_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA11|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[11]~11_combout\,
	datac => \ULA|ULA11|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA11|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA11|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA10|Somador|cOut~combout\ $ (\ULA|ULA11|Somador|saida~0_combout\)))) # (\ULA|ULA11|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111111111000010011111111100001001111111110000100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA10|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA11|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA11|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~49_q\);

\bancoRegistradores|saidaA[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[11]~11_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~305_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~49_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~49_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~305_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[11]~11_combout\);

\bancoRegistradores|registrador~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA12|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~306_q\);

\bancoRegistradores|registrador~1205\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1205_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~50_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~50_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1205_combout\);

\bancoRegistradores|registrador~1110\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1110_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1205_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1205_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1205_combout\ & ( (\bancoRegistradores|registrador~306_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~306_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1205_combout\,
	combout => \bancoRegistradores|registrador~1110_combout\);

\ULA|ULA12|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1110_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1110_combout\,
	combout => \ULA|ULA12|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA12|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[12]~12_combout\ $ (!\ULA|ULA12|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[12]~12_combout\,
	datab => \ULA|ULA12|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA12|Somador|saida~0_combout\);

\ULA|ULA12|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[12]~12_combout\ & (\ULA|ULA12|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[12]~12_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA12|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[12]~12_combout\,
	datac => \ULA|ULA12|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA12|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA12|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|MUX_Selecao|saida_MUX~1_combout\ = ( \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( \ULA|ULA12|MUX_Selecao|saida_MUX~0_combout\ ) ) # ( !\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( \ULA|ULA12|MUX_Selecao|saida_MUX~0_combout\ ) ) # ( 
-- \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( !\ULA|ULA12|MUX_Selecao|saida_MUX~0_combout\ & ( !\ULA|ULA12|Somador|saida~0_combout\ $ (((!\ULA|ULA10|Somador|cOut~combout\ & (!\bancoRegistradores|saidaA[11]~11_combout\ & 
-- !\ULA|ULA11|MUX_inverte|saida_MUX~0_combout\)) # (\ULA|ULA10|Somador|cOut~combout\ & ((!\bancoRegistradores|saidaA[11]~11_combout\) # (!\ULA|ULA11|MUX_inverte|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA10|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[11]~11_combout\,
	datac => \ULA|ULA11|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA12|Somador|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA12|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA12|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA12|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~50_q\);

\bancoRegistradores|saidaA[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[12]~12_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~306_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~50_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~50_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~306_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[12]~12_combout\);

\ULA|ULA12|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA12|Somador|cOut~combout\ = ( \ULA|ULA12|MUX_inverte|saida_MUX~0_combout\ & ( ((!\ULA|ULA10|Somador|cOut~combout\ & ((\ULA|ULA11|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[11]~11_combout\))) # (\ULA|ULA10|Somador|cOut~combout\ 
-- & (\bancoRegistradores|saidaA[11]~11_combout\ & \ULA|ULA11|MUX_inverte|saida_MUX~0_combout\))) # (\bancoRegistradores|saidaA[12]~12_combout\) ) ) # ( !\ULA|ULA12|MUX_inverte|saida_MUX~0_combout\ & ( (\bancoRegistradores|saidaA[12]~12_combout\ & 
-- ((!\ULA|ULA10|Somador|cOut~combout\ & ((\ULA|ULA11|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[11]~11_combout\))) # (\ULA|ULA10|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[11]~11_combout\ & 
-- \ULA|ULA11|MUX_inverte|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA10|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[11]~11_combout\,
	datac => \ULA|ULA11|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[12]~12_combout\,
	datae => \ULA|ULA12|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA12|Somador|cOut~combout\);

\bancoRegistradores|registrador~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA13|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~307_q\);

\bancoRegistradores|registrador~1206\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1206_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~51_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~51_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1206_combout\);

\bancoRegistradores|registrador~1114\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1114_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1206_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1206_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1206_combout\ & ( (\bancoRegistradores|registrador~307_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~307_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1206_combout\,
	combout => \bancoRegistradores|registrador~1114_combout\);

\ULA|ULA13|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1114_combout\,
	combout => \ULA|ULA13|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA13|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[13]~13_combout\ & (\ULA|ULA13|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[13]~13_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA13|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[13]~13_combout\,
	datac => \ULA|ULA13|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA13|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA13|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA12|Somador|cOut~combout\ $ (!\ULA|ULA13|Somador|saida~0_combout\)))) # (\ULA|ULA13|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011111111000001101111111100000110111111110000011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA12|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA13|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA13|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA13|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA13|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~51_q\);

\bancoRegistradores|saidaA[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[13]~13_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~307_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~51_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~51_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~307_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[13]~13_combout\);

\ULA|ULA13|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|Somador|saida~0_combout\ = ( \bancoRegistradores|registrador~1114_combout\ & ( !\bancoRegistradores|saidaA[13]~13_combout\ $ (((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (\bancoRegistradores|Equal0~0_combout\)) # 
-- (\decoder_instru|saida[3]~0_combout\))) ) ) # ( !\bancoRegistradores|registrador~1114_combout\ & ( !\bancoRegistradores|saidaA[13]~13_combout\ $ (((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\) # (\decoder_instru|saida[3]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010101111011000001001111101010000101011110110000010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[13]~13_combout\,
	datae => \bancoRegistradores|ALT_INV_registrador~1114_combout\,
	combout => \ULA|ULA13|Somador|saida~0_combout\);

\ULA|ULA13|Somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|Somador|cOut~0_combout\ = ( \ULA|ULA12|MUX_inverte|saida_MUX~0_combout\ & ( \ULA|ULA13|Somador|saida~0_combout\ & ( ((!\ULA|ULA10|Somador|cOut~combout\ & ((\ULA|ULA11|MUX_inverte|saida_MUX~0_combout\) # 
-- (\bancoRegistradores|saidaA[11]~11_combout\))) # (\ULA|ULA10|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[11]~11_combout\ & \ULA|ULA11|MUX_inverte|saida_MUX~0_combout\))) # (\bancoRegistradores|saidaA[12]~12_combout\) ) ) ) # ( 
-- !\ULA|ULA12|MUX_inverte|saida_MUX~0_combout\ & ( \ULA|ULA13|Somador|saida~0_combout\ & ( (\bancoRegistradores|saidaA[12]~12_combout\ & ((!\ULA|ULA10|Somador|cOut~combout\ & ((\ULA|ULA11|MUX_inverte|saida_MUX~0_combout\) # 
-- (\bancoRegistradores|saidaA[11]~11_combout\))) # (\ULA|ULA10|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[11]~11_combout\ & \ULA|ULA11|MUX_inverte|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA10|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[11]~11_combout\,
	datac => \ULA|ULA11|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[12]~12_combout\,
	datae => \ULA|ULA12|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA13|Somador|ALT_INV_saida~0_combout\,
	combout => \ULA|ULA13|Somador|cOut~0_combout\);

\ULA|ULA13|Somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA13|Somador|cOut~1_combout\ = (\bancoRegistradores|saidaA[13]~13_combout\ & \ULA|ULA13|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[13]~13_combout\,
	datab => \ULA|ULA13|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA13|Somador|cOut~1_combout\);

\bancoRegistradores|registrador~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA14|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~308_q\);

\bancoRegistradores|registrador~1207\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1207_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~52_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~52_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1207_combout\);

\bancoRegistradores|registrador~1118\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1118_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1207_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1207_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1207_combout\ & ( (\bancoRegistradores|registrador~308_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~308_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1207_combout\,
	combout => \bancoRegistradores|registrador~1118_combout\);

\ULA|ULA14|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|MUX_inverte|saida_MUX~0_combout\ = ( \bancoRegistradores|registrador~1118_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (!\bancoRegistradores|Equal0~0_combout\)))) # 
-- (\decoder_instru|saida[3]~0_combout\ & (\ROM|memROM~0_combout\)) ) ) # ( !\bancoRegistradores|registrador~1118_combout\ & ( (!\decoder_instru|saida[3]~0_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\))) # 
-- (\decoder_instru|saida[3]~0_combout\ & (\ROM|memROM~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001111000101010100110011010101010011110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datae => \bancoRegistradores|ALT_INV_registrador~1118_combout\,
	combout => \ULA|ULA14|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA14|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|MUX_Selecao|saida_MUX~0_combout\ = ( \ULA|ULA14|MUX_inverte|saida_MUX~0_combout\ & ( \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( \ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ ) ) ) # ( !\ULA|ULA14|MUX_inverte|saida_MUX~0_combout\ & ( 
-- \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & \bancoRegistradores|saidaA[14]~14_combout\) ) ) ) # ( \ULA|ULA14|MUX_inverte|saida_MUX~0_combout\ & ( !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( 
-- !\bancoRegistradores|saidaA[14]~14_combout\ $ ((((\ULA|ULA13|Somador|cOut~1_combout\) # (\ULA|ULA13|Somador|cOut~0_combout\)) # (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\))) ) ) ) # ( !\ULA|ULA14|MUX_inverte|saida_MUX~0_combout\ & ( 
-- !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (!\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & (!\bancoRegistradores|saidaA[14]~14_combout\ $ (((!\ULA|ULA13|Somador|cOut~0_combout\ & !\ULA|ULA13|Somador|cOut~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010000000100000000111111100000000010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA13|Somador|ALT_INV_cOut~0_combout\,
	datac => \ULA|ULA13|Somador|ALT_INV_cOut~1_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[14]~14_combout\,
	datae => \ULA|ULA14|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	dataf => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA14|MUX_Selecao|saida_MUX~0_combout\);

\bancoRegistradores|registrador~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA14|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~52_q\);

\bancoRegistradores|saidaA[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[14]~14_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~308_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~52_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~52_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~308_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[14]~14_combout\);

\ULA|ULA14|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA14|Somador|cOut~combout\ = (!\bancoRegistradores|saidaA[14]~14_combout\ & ((!\ULA|ULA14|MUX_inverte|saida_MUX~0_combout\) # ((!\ULA|ULA13|Somador|cOut~0_combout\ & !\ULA|ULA13|Somador|cOut~1_combout\)))) # 
-- (\bancoRegistradores|saidaA[14]~14_combout\ & (!\ULA|ULA13|Somador|cOut~0_combout\ & (!\ULA|ULA13|Somador|cOut~1_combout\ & !\ULA|ULA14|MUX_inverte|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA13|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA|ULA13|Somador|ALT_INV_cOut~1_combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[14]~14_combout\,
	datad => \ULA|ULA14|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA14|Somador|cOut~combout\);

\bancoRegistradores|registrador~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~309_q\);

\bancoRegistradores|registrador~1208\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1208_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~53_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~53_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1208_combout\);

\bancoRegistradores|registrador~1122\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1122_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1208_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1208_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1208_combout\ & ( (\bancoRegistradores|registrador~309_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~309_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1208_combout\,
	combout => \bancoRegistradores|registrador~1122_combout\);

\ULA|ULA15|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1122_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1122_combout\,
	combout => \ULA|ULA15|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA15|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[15]~15_combout\ $ (!\ULA|ULA15|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[15]~15_combout\,
	datab => \ULA|ULA15|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA15|Somador|saida~0_combout\);

\ULA|ULA15|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[15]~15_combout\ & (\ULA|ULA15|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[15]~15_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA15|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[15]~15_combout\,
	datac => \ULA|ULA15|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA15|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA15|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA14|Somador|cOut~combout\ $ (\ULA|ULA15|Somador|saida~0_combout\)))) # (\ULA|ULA15|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111111111000010011111111100001001111111110000100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA14|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA15|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA15|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~53_q\);

\bancoRegistradores|saidaA[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[15]~15_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~309_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~53_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~53_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~309_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[15]~15_combout\);

\ULA|ULA15|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA15|Somador|cOut~combout\ = ( !\bancoRegistradores|saidaA[15]~15_combout\ & ( \ULA|ULA15|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[14]~14_combout\ & ((!\ULA|ULA14|MUX_inverte|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA13|Somador|cOut~0_combout\ & !\ULA|ULA13|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[14]~14_combout\ & (!\ULA|ULA13|Somador|cOut~0_combout\ & (!\ULA|ULA13|Somador|cOut~1_combout\ & !\ULA|ULA14|MUX_inverte|saida_MUX~0_combout\))) ) 
-- ) ) # ( \bancoRegistradores|saidaA[15]~15_combout\ & ( !\ULA|ULA15|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[14]~14_combout\ & ((!\ULA|ULA14|MUX_inverte|saida_MUX~0_combout\) # ((!\ULA|ULA13|Somador|cOut~0_combout\ & 
-- !\ULA|ULA13|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[14]~14_combout\ & (!\ULA|ULA13|Somador|cOut~0_combout\ & (!\ULA|ULA13|Somador|cOut~1_combout\ & !\ULA|ULA14|MUX_inverte|saida_MUX~0_combout\))) ) ) ) # ( 
-- !\bancoRegistradores|saidaA[15]~15_combout\ & ( !\ULA|ULA15|MUX_inverte|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA13|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA|ULA13|Somador|ALT_INV_cOut~1_combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[14]~14_combout\,
	datad => \ULA|ULA14|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datae => \bancoRegistradores|ALT_INV_saidaA[15]~15_combout\,
	dataf => \ULA|ULA15|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA15|Somador|cOut~combout\);

\bancoRegistradores|registrador~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA16|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~310_q\);

\bancoRegistradores|registrador~1209\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1209_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~54_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~54_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1209_combout\);

\bancoRegistradores|registrador~1126\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1126_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1209_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1209_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1209_combout\ & ( (\bancoRegistradores|registrador~310_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~310_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1209_combout\,
	combout => \bancoRegistradores|registrador~1126_combout\);

\ULA|ULA16|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA16|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1126_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1126_combout\,
	combout => \ULA|ULA16|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA16|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA16|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[16]~16_combout\ $ (!\ULA|ULA16|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[16]~16_combout\,
	datab => \ULA|ULA16|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA16|Somador|saida~0_combout\);

\ULA|ULA16|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA16|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[16]~16_combout\ & (\ULA|ULA16|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[16]~16_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA16|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[16]~16_combout\,
	datac => \ULA|ULA16|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA16|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA16|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA16|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA15|Somador|cOut~combout\ $ (\ULA|ULA16|Somador|saida~0_combout\)))) # (\ULA|ULA16|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111111111000010011111111100001001111111110000100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA15|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA16|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA16|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA16|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA16|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~54_q\);

\bancoRegistradores|saidaA[16]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[16]~16_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~310_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~54_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~54_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~310_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[16]~16_combout\);

\bancoRegistradores|registrador~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA17|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~311_q\);

\bancoRegistradores|registrador~1210\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1210_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~55_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~55_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1210_combout\);

\bancoRegistradores|registrador~1130\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1130_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1210_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1210_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1210_combout\ & ( (\bancoRegistradores|registrador~311_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~311_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1210_combout\,
	combout => \bancoRegistradores|registrador~1130_combout\);

\ULA|ULA17|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1130_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1130_combout\,
	combout => \ULA|ULA17|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA17|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[17]~17_combout\ $ (!\ULA|ULA17|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[17]~17_combout\,
	datab => \ULA|ULA17|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA17|Somador|saida~0_combout\);

\ULA|ULA17|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[17]~17_combout\ & (\ULA|ULA17|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[17]~17_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA17|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[17]~17_combout\,
	datac => \ULA|ULA17|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA17|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA17|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|MUX_Selecao|saida_MUX~1_combout\ = ( \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( \ULA|ULA17|MUX_Selecao|saida_MUX~0_combout\ ) ) # ( !\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( \ULA|ULA17|MUX_Selecao|saida_MUX~0_combout\ ) ) # ( 
-- \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( !\ULA|ULA17|MUX_Selecao|saida_MUX~0_combout\ & ( !\ULA|ULA17|Somador|saida~0_combout\ $ (((!\ULA|ULA15|Somador|cOut~combout\ & (!\bancoRegistradores|saidaA[16]~16_combout\ & 
-- !\ULA|ULA16|MUX_inverte|saida_MUX~0_combout\)) # (\ULA|ULA15|Somador|cOut~combout\ & ((!\bancoRegistradores|saidaA[16]~16_combout\) # (!\ULA|ULA16|MUX_inverte|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA15|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[16]~16_combout\,
	datac => \ULA|ULA16|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA17|Somador|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA17|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA17|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA17|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~55_q\);

\bancoRegistradores|saidaA[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[17]~17_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~311_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~55_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~55_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~311_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[17]~17_combout\);

\ULA|ULA17|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA17|Somador|cOut~combout\ = ( \ULA|ULA17|MUX_inverte|saida_MUX~0_combout\ & ( ((!\ULA|ULA15|Somador|cOut~combout\ & ((\ULA|ULA16|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[16]~16_combout\))) # (\ULA|ULA15|Somador|cOut~combout\ 
-- & (\bancoRegistradores|saidaA[16]~16_combout\ & \ULA|ULA16|MUX_inverte|saida_MUX~0_combout\))) # (\bancoRegistradores|saidaA[17]~17_combout\) ) ) # ( !\ULA|ULA17|MUX_inverte|saida_MUX~0_combout\ & ( (\bancoRegistradores|saidaA[17]~17_combout\ & 
-- ((!\ULA|ULA15|Somador|cOut~combout\ & ((\ULA|ULA16|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[16]~16_combout\))) # (\ULA|ULA15|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[16]~16_combout\ & 
-- \ULA|ULA16|MUX_inverte|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA15|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[16]~16_combout\,
	datac => \ULA|ULA16|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[17]~17_combout\,
	datae => \ULA|ULA17|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA17|Somador|cOut~combout\);

\bancoRegistradores|registrador~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA18|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~312_q\);

\bancoRegistradores|registrador~1211\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1211_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~56_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~56_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1211_combout\);

\bancoRegistradores|registrador~1134\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1134_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1211_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1211_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1211_combout\ & ( (\bancoRegistradores|registrador~312_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~312_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1211_combout\,
	combout => \bancoRegistradores|registrador~1134_combout\);

\ULA|ULA18|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1134_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1134_combout\,
	combout => \ULA|ULA18|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA18|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[18]~18_combout\ & (\ULA|ULA18|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[18]~18_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA18|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[18]~18_combout\,
	datac => \ULA|ULA18|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA18|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA18|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA17|Somador|cOut~combout\ $ (!\ULA|ULA18|Somador|saida~0_combout\)))) # (\ULA|ULA18|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011111111000001101111111100000110111111110000011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA17|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA18|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA18|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA18|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA18|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~56_q\);

\bancoRegistradores|saidaA[18]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[18]~18_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~312_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~56_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~56_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~312_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[18]~18_combout\);

\ULA|ULA18|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[18]~18_combout\ $ (!\ULA|ULA18|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[18]~18_combout\,
	datab => \ULA|ULA18|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA18|Somador|saida~0_combout\);

\ULA|ULA18|Somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|Somador|cOut~0_combout\ = ( \ULA|ULA17|MUX_inverte|saida_MUX~0_combout\ & ( \ULA|ULA18|Somador|saida~0_combout\ & ( ((!\ULA|ULA15|Somador|cOut~combout\ & ((\ULA|ULA16|MUX_inverte|saida_MUX~0_combout\) # 
-- (\bancoRegistradores|saidaA[16]~16_combout\))) # (\ULA|ULA15|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[16]~16_combout\ & \ULA|ULA16|MUX_inverte|saida_MUX~0_combout\))) # (\bancoRegistradores|saidaA[17]~17_combout\) ) ) ) # ( 
-- !\ULA|ULA17|MUX_inverte|saida_MUX~0_combout\ & ( \ULA|ULA18|Somador|saida~0_combout\ & ( (\bancoRegistradores|saidaA[17]~17_combout\ & ((!\ULA|ULA15|Somador|cOut~combout\ & ((\ULA|ULA16|MUX_inverte|saida_MUX~0_combout\) # 
-- (\bancoRegistradores|saidaA[16]~16_combout\))) # (\ULA|ULA15|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[16]~16_combout\ & \ULA|ULA16|MUX_inverte|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA15|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[16]~16_combout\,
	datac => \ULA|ULA16|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[17]~17_combout\,
	datae => \ULA|ULA17|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA18|Somador|ALT_INV_saida~0_combout\,
	combout => \ULA|ULA18|Somador|cOut~0_combout\);

\ULA|ULA18|Somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA18|Somador|cOut~1_combout\ = (\bancoRegistradores|saidaA[18]~18_combout\ & \ULA|ULA18|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[18]~18_combout\,
	datab => \ULA|ULA18|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA18|Somador|cOut~1_combout\);

\bancoRegistradores|registrador~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~313_q\);

\bancoRegistradores|registrador~1212\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1212_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~57_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~57_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1212_combout\);

\bancoRegistradores|registrador~1138\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1138_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1212_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1212_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1212_combout\ & ( (\bancoRegistradores|registrador~313_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~313_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1212_combout\,
	combout => \bancoRegistradores|registrador~1138_combout\);

\ULA|ULA19|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1138_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1138_combout\,
	combout => \ULA|ULA19|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA19|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\ = ( \ULA|ULA19|MUX_inverte|saida_MUX~0_combout\ & ( \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( \ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ ) ) ) # ( !\ULA|ULA19|MUX_inverte|saida_MUX~0_combout\ & ( 
-- \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & \bancoRegistradores|saidaA[19]~19_combout\) ) ) ) # ( \ULA|ULA19|MUX_inverte|saida_MUX~0_combout\ & ( !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( 
-- !\bancoRegistradores|saidaA[19]~19_combout\ $ ((((\ULA|ULA18|Somador|cOut~1_combout\) # (\ULA|ULA18|Somador|cOut~0_combout\)) # (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\))) ) ) ) # ( !\ULA|ULA19|MUX_inverte|saida_MUX~0_combout\ & ( 
-- !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (!\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & (!\bancoRegistradores|saidaA[19]~19_combout\ $ (((!\ULA|ULA18|Somador|cOut~0_combout\ & !\ULA|ULA18|Somador|cOut~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010000000100000000111111100000000010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA18|Somador|ALT_INV_cOut~0_combout\,
	datac => \ULA|ULA18|Somador|ALT_INV_cOut~1_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[19]~19_combout\,
	datae => \ULA|ULA19|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	dataf => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\);

\bancoRegistradores|registrador~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~57_q\);

\bancoRegistradores|saidaA[19]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[19]~19_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~313_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~57_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~57_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~313_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[19]~19_combout\);

\ULA|ULA19|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA19|Somador|cOut~combout\ = (!\bancoRegistradores|saidaA[19]~19_combout\ & ((!\ULA|ULA19|MUX_inverte|saida_MUX~0_combout\) # ((!\ULA|ULA18|Somador|cOut~0_combout\ & !\ULA|ULA18|Somador|cOut~1_combout\)))) # 
-- (\bancoRegistradores|saidaA[19]~19_combout\ & (!\ULA|ULA18|Somador|cOut~0_combout\ & (!\ULA|ULA18|Somador|cOut~1_combout\ & !\ULA|ULA19|MUX_inverte|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA18|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA|ULA18|Somador|ALT_INV_cOut~1_combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[19]~19_combout\,
	datad => \ULA|ULA19|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA19|Somador|cOut~combout\);

\bancoRegistradores|registrador~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA20|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~314_q\);

\bancoRegistradores|registrador~1213\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1213_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~58_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~58_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1213_combout\);

\bancoRegistradores|registrador~1142\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1142_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1213_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1213_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1213_combout\ & ( (\bancoRegistradores|registrador~314_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~314_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1213_combout\,
	combout => \bancoRegistradores|registrador~1142_combout\);

\ULA|ULA20|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1142_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1142_combout\,
	combout => \ULA|ULA20|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA20|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[20]~20_combout\ $ (!\ULA|ULA20|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[20]~20_combout\,
	datab => \ULA|ULA20|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA20|Somador|saida~0_combout\);

\ULA|ULA20|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[20]~20_combout\ & (\ULA|ULA20|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[20]~20_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA20|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[20]~20_combout\,
	datac => \ULA|ULA20|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA20|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA20|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA19|Somador|cOut~combout\ $ (\ULA|ULA20|Somador|saida~0_combout\)))) # (\ULA|ULA20|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111111111000010011111111100001001111111110000100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA19|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA20|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA20|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA20|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA20|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~58_q\);

\bancoRegistradores|saidaA[20]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[20]~20_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~314_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~58_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~58_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~314_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[20]~20_combout\);

\ULA|ULA20|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA20|Somador|cOut~combout\ = ( !\bancoRegistradores|saidaA[20]~20_combout\ & ( \ULA|ULA20|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[19]~19_combout\ & ((!\ULA|ULA19|MUX_inverte|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA18|Somador|cOut~0_combout\ & !\ULA|ULA18|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[19]~19_combout\ & (!\ULA|ULA18|Somador|cOut~0_combout\ & (!\ULA|ULA18|Somador|cOut~1_combout\ & !\ULA|ULA19|MUX_inverte|saida_MUX~0_combout\))) ) 
-- ) ) # ( \bancoRegistradores|saidaA[20]~20_combout\ & ( !\ULA|ULA20|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[19]~19_combout\ & ((!\ULA|ULA19|MUX_inverte|saida_MUX~0_combout\) # ((!\ULA|ULA18|Somador|cOut~0_combout\ & 
-- !\ULA|ULA18|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[19]~19_combout\ & (!\ULA|ULA18|Somador|cOut~0_combout\ & (!\ULA|ULA18|Somador|cOut~1_combout\ & !\ULA|ULA19|MUX_inverte|saida_MUX~0_combout\))) ) ) ) # ( 
-- !\bancoRegistradores|saidaA[20]~20_combout\ & ( !\ULA|ULA20|MUX_inverte|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA18|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA|ULA18|Somador|ALT_INV_cOut~1_combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[19]~19_combout\,
	datad => \ULA|ULA19|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datae => \bancoRegistradores|ALT_INV_saidaA[20]~20_combout\,
	dataf => \ULA|ULA20|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA20|Somador|cOut~combout\);

\bancoRegistradores|registrador~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA21|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~315_q\);

\bancoRegistradores|registrador~1214\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1214_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~59_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~59_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1214_combout\);

\bancoRegistradores|registrador~1146\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1146_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1214_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1214_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1214_combout\ & ( (\bancoRegistradores|registrador~315_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~315_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1214_combout\,
	combout => \bancoRegistradores|registrador~1146_combout\);

\ULA|ULA21|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA21|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1146_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1146_combout\,
	combout => \ULA|ULA21|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA21|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA21|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[21]~21_combout\ $ (!\ULA|ULA21|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[21]~21_combout\,
	datab => \ULA|ULA21|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA21|Somador|saida~0_combout\);

\ULA|ULA21|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA21|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[21]~21_combout\ & (\ULA|ULA21|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[21]~21_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA21|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[21]~21_combout\,
	datac => \ULA|ULA21|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA21|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA21|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA21|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA20|Somador|cOut~combout\ $ (\ULA|ULA21|Somador|saida~0_combout\)))) # (\ULA|ULA21|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111111111000010011111111100001001111111110000100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA20|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA21|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA21|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA21|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA21|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~59_q\);

\bancoRegistradores|saidaA[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[21]~21_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~315_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~59_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~59_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~315_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[21]~21_combout\);

\bancoRegistradores|registrador~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA22|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~316_q\);

\bancoRegistradores|registrador~1215\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1215_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~60_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~60_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1215_combout\);

\bancoRegistradores|registrador~1150\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1150_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1215_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1215_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1215_combout\ & ( (\bancoRegistradores|registrador~316_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~316_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1215_combout\,
	combout => \bancoRegistradores|registrador~1150_combout\);

\ULA|ULA22|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1150_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1150_combout\,
	combout => \ULA|ULA22|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA22|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[22]~22_combout\ $ (!\ULA|ULA22|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[22]~22_combout\,
	datab => \ULA|ULA22|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA22|Somador|saida~0_combout\);

\ULA|ULA22|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[22]~22_combout\ & (\ULA|ULA22|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[22]~22_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA22|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[22]~22_combout\,
	datac => \ULA|ULA22|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA22|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA22|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|MUX_Selecao|saida_MUX~1_combout\ = ( \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( \ULA|ULA22|MUX_Selecao|saida_MUX~0_combout\ ) ) # ( !\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( \ULA|ULA22|MUX_Selecao|saida_MUX~0_combout\ ) ) # ( 
-- \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( !\ULA|ULA22|MUX_Selecao|saida_MUX~0_combout\ & ( !\ULA|ULA22|Somador|saida~0_combout\ $ (((!\ULA|ULA20|Somador|cOut~combout\ & (!\bancoRegistradores|saidaA[21]~21_combout\ & 
-- !\ULA|ULA21|MUX_inverte|saida_MUX~0_combout\)) # (\ULA|ULA20|Somador|cOut~combout\ & ((!\bancoRegistradores|saidaA[21]~21_combout\) # (!\ULA|ULA21|MUX_inverte|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA20|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[21]~21_combout\,
	datac => \ULA|ULA21|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA22|Somador|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA22|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA22|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA22|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~60_q\);

\bancoRegistradores|saidaA[22]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[22]~22_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~316_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~60_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~60_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~316_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[22]~22_combout\);

\ULA|ULA22|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA22|Somador|cOut~combout\ = ( \ULA|ULA22|MUX_inverte|saida_MUX~0_combout\ & ( ((!\ULA|ULA20|Somador|cOut~combout\ & ((\ULA|ULA21|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[21]~21_combout\))) # (\ULA|ULA20|Somador|cOut~combout\ 
-- & (\bancoRegistradores|saidaA[21]~21_combout\ & \ULA|ULA21|MUX_inverte|saida_MUX~0_combout\))) # (\bancoRegistradores|saidaA[22]~22_combout\) ) ) # ( !\ULA|ULA22|MUX_inverte|saida_MUX~0_combout\ & ( (\bancoRegistradores|saidaA[22]~22_combout\ & 
-- ((!\ULA|ULA20|Somador|cOut~combout\ & ((\ULA|ULA21|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[21]~21_combout\))) # (\ULA|ULA20|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[21]~21_combout\ & 
-- \ULA|ULA21|MUX_inverte|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA20|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[21]~21_combout\,
	datac => \ULA|ULA21|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[22]~22_combout\,
	datae => \ULA|ULA22|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA22|Somador|cOut~combout\);

\bancoRegistradores|registrador~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~317_q\);

\bancoRegistradores|registrador~1216\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1216_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~61_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~61_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1216_combout\);

\bancoRegistradores|registrador~1154\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1154_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1216_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1216_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1216_combout\ & ( (\bancoRegistradores|registrador~317_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~317_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1216_combout\,
	combout => \bancoRegistradores|registrador~1154_combout\);

\ULA|ULA23|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1154_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1154_combout\,
	combout => \ULA|ULA23|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA23|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[23]~23_combout\ & (\ULA|ULA23|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[23]~23_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA23|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[23]~23_combout\,
	datac => \ULA|ULA23|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA23|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA23|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA22|Somador|cOut~combout\ $ (!\ULA|ULA23|Somador|saida~0_combout\)))) # (\ULA|ULA23|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011111111000001101111111100000110111111110000011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA22|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA23|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA23|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~61_q\);

\bancoRegistradores|saidaA[23]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[23]~23_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~317_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~61_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~61_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~317_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[23]~23_combout\);

\ULA|ULA23|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[23]~23_combout\ $ (!\ULA|ULA23|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[23]~23_combout\,
	datab => \ULA|ULA23|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA23|Somador|saida~0_combout\);

\ULA|ULA23|Somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|Somador|cOut~0_combout\ = ( \ULA|ULA22|MUX_inverte|saida_MUX~0_combout\ & ( \ULA|ULA23|Somador|saida~0_combout\ & ( ((!\ULA|ULA20|Somador|cOut~combout\ & ((\ULA|ULA21|MUX_inverte|saida_MUX~0_combout\) # 
-- (\bancoRegistradores|saidaA[21]~21_combout\))) # (\ULA|ULA20|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[21]~21_combout\ & \ULA|ULA21|MUX_inverte|saida_MUX~0_combout\))) # (\bancoRegistradores|saidaA[22]~22_combout\) ) ) ) # ( 
-- !\ULA|ULA22|MUX_inverte|saida_MUX~0_combout\ & ( \ULA|ULA23|Somador|saida~0_combout\ & ( (\bancoRegistradores|saidaA[22]~22_combout\ & ((!\ULA|ULA20|Somador|cOut~combout\ & ((\ULA|ULA21|MUX_inverte|saida_MUX~0_combout\) # 
-- (\bancoRegistradores|saidaA[21]~21_combout\))) # (\ULA|ULA20|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[21]~21_combout\ & \ULA|ULA21|MUX_inverte|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA20|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[21]~21_combout\,
	datac => \ULA|ULA21|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[22]~22_combout\,
	datae => \ULA|ULA22|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA23|Somador|ALT_INV_saida~0_combout\,
	combout => \ULA|ULA23|Somador|cOut~0_combout\);

\ULA|ULA23|Somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA23|Somador|cOut~1_combout\ = (\bancoRegistradores|saidaA[23]~23_combout\ & \ULA|ULA23|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[23]~23_combout\,
	datab => \ULA|ULA23|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA23|Somador|cOut~1_combout\);

\bancoRegistradores|registrador~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA24|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~318_q\);

\bancoRegistradores|registrador~1217\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1217_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~62_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~62_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1217_combout\);

\bancoRegistradores|registrador~1158\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1158_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1217_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1217_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1217_combout\ & ( (\bancoRegistradores|registrador~318_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~318_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1217_combout\,
	combout => \bancoRegistradores|registrador~1158_combout\);

\ULA|ULA24|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1158_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1158_combout\,
	combout => \ULA|ULA24|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA24|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|MUX_Selecao|saida_MUX~0_combout\ = ( \ULA|ULA24|MUX_inverte|saida_MUX~0_combout\ & ( \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( \ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ ) ) ) # ( !\ULA|ULA24|MUX_inverte|saida_MUX~0_combout\ & ( 
-- \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & \bancoRegistradores|saidaA[24]~24_combout\) ) ) ) # ( \ULA|ULA24|MUX_inverte|saida_MUX~0_combout\ & ( !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( 
-- !\bancoRegistradores|saidaA[24]~24_combout\ $ ((((\ULA|ULA23|Somador|cOut~1_combout\) # (\ULA|ULA23|Somador|cOut~0_combout\)) # (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\))) ) ) ) # ( !\ULA|ULA24|MUX_inverte|saida_MUX~0_combout\ & ( 
-- !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (!\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & (!\bancoRegistradores|saidaA[24]~24_combout\ $ (((!\ULA|ULA23|Somador|cOut~0_combout\ & !\ULA|ULA23|Somador|cOut~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010000000100000000111111100000000010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA23|Somador|ALT_INV_cOut~0_combout\,
	datac => \ULA|ULA23|Somador|ALT_INV_cOut~1_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[24]~24_combout\,
	datae => \ULA|ULA24|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	dataf => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA24|MUX_Selecao|saida_MUX~0_combout\);

\bancoRegistradores|registrador~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA24|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~62_q\);

\bancoRegistradores|saidaA[24]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[24]~24_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~318_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~62_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~62_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~318_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[24]~24_combout\);

\ULA|ULA24|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA24|Somador|cOut~combout\ = (!\bancoRegistradores|saidaA[24]~24_combout\ & ((!\ULA|ULA24|MUX_inverte|saida_MUX~0_combout\) # ((!\ULA|ULA23|Somador|cOut~0_combout\ & !\ULA|ULA23|Somador|cOut~1_combout\)))) # 
-- (\bancoRegistradores|saidaA[24]~24_combout\ & (!\ULA|ULA23|Somador|cOut~0_combout\ & (!\ULA|ULA23|Somador|cOut~1_combout\ & !\ULA|ULA24|MUX_inverte|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100010000000111110001000000011111000100000001111100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA23|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA|ULA23|Somador|ALT_INV_cOut~1_combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[24]~24_combout\,
	datad => \ULA|ULA24|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA24|Somador|cOut~combout\);

\bancoRegistradores|registrador~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA25|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~319_q\);

\bancoRegistradores|registrador~1218\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1218_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~63_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~63_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1218_combout\);

\bancoRegistradores|registrador~1162\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1162_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1218_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1218_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1218_combout\ & ( (\bancoRegistradores|registrador~319_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~319_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1218_combout\,
	combout => \bancoRegistradores|registrador~1162_combout\);

\ULA|ULA25|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1162_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1162_combout\,
	combout => \ULA|ULA25|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA25|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[25]~25_combout\ $ (!\ULA|ULA25|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[25]~25_combout\,
	datab => \ULA|ULA25|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA25|Somador|saida~0_combout\);

\ULA|ULA25|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[25]~25_combout\ & (\ULA|ULA25|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[25]~25_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA25|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[25]~25_combout\,
	datac => \ULA|ULA25|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA25|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA25|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA24|Somador|cOut~combout\ $ (\ULA|ULA25|Somador|saida~0_combout\)))) # (\ULA|ULA25|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111111111000010011111111100001001111111110000100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA25|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA25|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA25|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA25|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~63_q\);

\bancoRegistradores|saidaA[25]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[25]~25_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~319_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~63_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~63_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~319_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[25]~25_combout\);

\ULA|ULA25|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA25|Somador|cOut~combout\ = ( !\bancoRegistradores|saidaA[25]~25_combout\ & ( \ULA|ULA25|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[24]~24_combout\ & ((!\ULA|ULA24|MUX_inverte|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA23|Somador|cOut~0_combout\ & !\ULA|ULA23|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[24]~24_combout\ & (!\ULA|ULA23|Somador|cOut~0_combout\ & (!\ULA|ULA23|Somador|cOut~1_combout\ & !\ULA|ULA24|MUX_inverte|saida_MUX~0_combout\))) ) 
-- ) ) # ( \bancoRegistradores|saidaA[25]~25_combout\ & ( !\ULA|ULA25|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[24]~24_combout\ & ((!\ULA|ULA24|MUX_inverte|saida_MUX~0_combout\) # ((!\ULA|ULA23|Somador|cOut~0_combout\ & 
-- !\ULA|ULA23|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[24]~24_combout\ & (!\ULA|ULA23|Somador|cOut~0_combout\ & (!\ULA|ULA23|Somador|cOut~1_combout\ & !\ULA|ULA24|MUX_inverte|saida_MUX~0_combout\))) ) ) ) # ( 
-- !\bancoRegistradores|saidaA[25]~25_combout\ & ( !\ULA|ULA25|MUX_inverte|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA23|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA|ULA23|Somador|ALT_INV_cOut~1_combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[24]~24_combout\,
	datad => \ULA|ULA24|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datae => \bancoRegistradores|ALT_INV_saidaA[25]~25_combout\,
	dataf => \ULA|ULA25|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA25|Somador|cOut~combout\);

\bancoRegistradores|registrador~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA26|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~320_q\);

\bancoRegistradores|registrador~1219\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1219_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~64_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~64_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1219_combout\);

\bancoRegistradores|registrador~1166\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1166_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1219_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1219_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1219_combout\ & ( (\bancoRegistradores|registrador~320_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~320_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1219_combout\,
	combout => \bancoRegistradores|registrador~1166_combout\);

\ULA|ULA26|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA26|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1166_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1166_combout\,
	combout => \ULA|ULA26|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA26|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA26|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[26]~26_combout\ $ (!\ULA|ULA26|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[26]~26_combout\,
	datab => \ULA|ULA26|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA26|Somador|saida~0_combout\);

\ULA|ULA26|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA26|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[26]~26_combout\ & (\ULA|ULA26|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[26]~26_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA26|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[26]~26_combout\,
	datac => \ULA|ULA26|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA26|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA26|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA26|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA25|Somador|cOut~combout\ $ (\ULA|ULA26|Somador|saida~0_combout\)))) # (\ULA|ULA26|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100111111111000010011111111100001001111111110000100111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA26|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA26|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA26|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA26|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~64_q\);

\bancoRegistradores|saidaA[26]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[26]~26_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~320_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~64_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~64_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~320_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[26]~26_combout\);

\bancoRegistradores|registrador~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA27|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~321_q\);

\bancoRegistradores|registrador~1220\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1220_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~65_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~65_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1220_combout\);

\bancoRegistradores|registrador~1170\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1170_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1220_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1220_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1220_combout\ & ( (\bancoRegistradores|registrador~321_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~321_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1220_combout\,
	combout => \bancoRegistradores|registrador~1170_combout\);

\ULA|ULA27|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1170_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1170_combout\,
	combout => \ULA|ULA27|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA27|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[27]~27_combout\ $ (!\ULA|ULA27|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[27]~27_combout\,
	datab => \ULA|ULA27|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA27|Somador|saida~0_combout\);

\ULA|ULA27|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[27]~27_combout\ & (\ULA|ULA27|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[27]~27_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA27|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[27]~27_combout\,
	datac => \ULA|ULA27|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA27|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA27|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|MUX_Selecao|saida_MUX~1_combout\ = ( \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( \ULA|ULA27|MUX_Selecao|saida_MUX~0_combout\ ) ) # ( !\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( \ULA|ULA27|MUX_Selecao|saida_MUX~0_combout\ ) ) # ( 
-- \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & ( !\ULA|ULA27|MUX_Selecao|saida_MUX~0_combout\ & ( !\ULA|ULA27|Somador|saida~0_combout\ $ (((!\ULA|ULA25|Somador|cOut~combout\ & (!\bancoRegistradores|saidaA[26]~26_combout\ & 
-- !\ULA|ULA26|MUX_inverte|saida_MUX~0_combout\)) # (\ULA|ULA25|Somador|cOut~combout\ & ((!\bancoRegistradores|saidaA[26]~26_combout\) # (!\ULA|ULA26|MUX_inverte|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010111101010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[26]~26_combout\,
	datac => \ULA|ULA26|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA27|Somador|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA27|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA27|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA27|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~65_q\);

\bancoRegistradores|saidaA[27]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[27]~27_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~321_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~65_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~65_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~321_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[27]~27_combout\);

\ULA|ULA27|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA27|Somador|cOut~combout\ = ( \ULA|ULA27|MUX_inverte|saida_MUX~0_combout\ & ( ((!\ULA|ULA25|Somador|cOut~combout\ & ((\ULA|ULA26|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[26]~26_combout\))) # (\ULA|ULA25|Somador|cOut~combout\ 
-- & (\bancoRegistradores|saidaA[26]~26_combout\ & \ULA|ULA26|MUX_inverte|saida_MUX~0_combout\))) # (\bancoRegistradores|saidaA[27]~27_combout\) ) ) # ( !\ULA|ULA27|MUX_inverte|saida_MUX~0_combout\ & ( (\bancoRegistradores|saidaA[27]~27_combout\ & 
-- ((!\ULA|ULA25|Somador|cOut~combout\ & ((\ULA|ULA26|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[26]~26_combout\))) # (\ULA|ULA25|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[26]~26_combout\ & 
-- \ULA|ULA26|MUX_inverte|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101011001010111111111100000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[26]~26_combout\,
	datac => \ULA|ULA26|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[27]~27_combout\,
	datae => \ULA|ULA27|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA27|Somador|cOut~combout\);

\bancoRegistradores|registrador~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA28|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~322_q\);

\bancoRegistradores|registrador~1221\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1221_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~66_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~66_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1221_combout\);

\bancoRegistradores|registrador~1174\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1174_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1221_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1221_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1221_combout\ & ( (\bancoRegistradores|registrador~322_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~322_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1221_combout\,
	combout => \bancoRegistradores|registrador~1174_combout\);

\ULA|ULA28|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1174_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1174_combout\,
	combout => \ULA|ULA28|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA28|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|MUX_Selecao|saida_MUX~0_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[28]~28_combout\ & (\ULA|ULA28|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[28]~28_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA28|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[28]~28_combout\,
	datac => \ULA|ULA28|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA28|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA28|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA27|Somador|cOut~combout\ $ (!\ULA|ULA28|Somador|saida~0_combout\)))) # (\ULA|ULA28|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011111111000001101111111100000110111111110000011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA27|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA28|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA28|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA28|MUX_Selecao|saida_MUX~1_combout\);

\bancoRegistradores|registrador~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA28|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~66_q\);

\bancoRegistradores|saidaA[28]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[28]~28_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~322_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~66_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~66_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~322_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[28]~28_combout\);

\ULA|ULA28|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|Somador|saida~0_combout\ = !\bancoRegistradores|saidaA[28]~28_combout\ $ (!\ULA|ULA28|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[28]~28_combout\,
	datab => \ULA|ULA28|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA28|Somador|saida~0_combout\);

\ULA|ULA28|Somador|cOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|Somador|cOut~0_combout\ = ( \ULA|ULA27|MUX_inverte|saida_MUX~0_combout\ & ( \ULA|ULA28|Somador|saida~0_combout\ & ( ((!\ULA|ULA25|Somador|cOut~combout\ & ((\ULA|ULA26|MUX_inverte|saida_MUX~0_combout\) # 
-- (\bancoRegistradores|saidaA[26]~26_combout\))) # (\ULA|ULA25|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[26]~26_combout\ & \ULA|ULA26|MUX_inverte|saida_MUX~0_combout\))) # (\bancoRegistradores|saidaA[27]~27_combout\) ) ) ) # ( 
-- !\ULA|ULA27|MUX_inverte|saida_MUX~0_combout\ & ( \ULA|ULA28|Somador|saida~0_combout\ & ( (\bancoRegistradores|saidaA[27]~27_combout\ & ((!\ULA|ULA25|Somador|cOut~combout\ & ((\ULA|ULA26|MUX_inverte|saida_MUX~0_combout\) # 
-- (\bancoRegistradores|saidaA[26]~26_combout\))) # (\ULA|ULA25|Somador|cOut~combout\ & (\bancoRegistradores|saidaA[26]~26_combout\ & \ULA|ULA26|MUX_inverte|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001010110010101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|Somador|ALT_INV_cOut~combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[26]~26_combout\,
	datac => \ULA|ULA26|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[27]~27_combout\,
	datae => \ULA|ULA27|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA|ULA28|Somador|ALT_INV_saida~0_combout\,
	combout => \ULA|ULA28|Somador|cOut~0_combout\);

\ULA|ULA28|Somador|cOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA28|Somador|cOut~1_combout\ = (\bancoRegistradores|saidaA[28]~28_combout\ & \ULA|ULA28|MUX_inverte|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_saidaA[28]~28_combout\,
	datab => \ULA|ULA28|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA28|Somador|cOut~1_combout\);

\bancoRegistradores|registrador~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA29|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~323_q\);

\bancoRegistradores|registrador~1222\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1222_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~67_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~67_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1222_combout\);

\bancoRegistradores|registrador~1178\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1178_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1222_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1222_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1222_combout\ & ( (\bancoRegistradores|registrador~323_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~323_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1222_combout\,
	combout => \bancoRegistradores|registrador~1178_combout\);

\ULA|ULA29|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1178_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1178_combout\,
	combout => \ULA|ULA29|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA29|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA29|MUX_Selecao|saida_MUX~0_combout\ = ( \ULA|ULA29|MUX_inverte|saida_MUX~0_combout\ & ( \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( \ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ ) ) ) # ( !\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\ & ( 
-- \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & \bancoRegistradores|saidaA[29]~29_combout\) ) ) ) # ( \ULA|ULA29|MUX_inverte|saida_MUX~0_combout\ & ( !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( 
-- !\bancoRegistradores|saidaA[29]~29_combout\ $ ((((\ULA|ULA28|Somador|cOut~1_combout\) # (\ULA|ULA28|Somador|cOut~0_combout\)) # (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\))) ) ) ) # ( !\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\ & ( 
-- !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (!\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & (!\bancoRegistradores|saidaA[29]~29_combout\ $ (((!\ULA|ULA28|Somador|cOut~0_combout\ & !\ULA|ULA28|Somador|cOut~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010000000100000000111111100000000010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA28|Somador|ALT_INV_cOut~0_combout\,
	datac => \ULA|ULA28|Somador|ALT_INV_cOut~1_combout\,
	datad => \bancoRegistradores|ALT_INV_saidaA[29]~29_combout\,
	datae => \ULA|ULA29|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	dataf => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA29|MUX_Selecao|saida_MUX~0_combout\);

\bancoRegistradores|registrador~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA29|MUX_Selecao|saida_MUX~0_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~67_q\);

\bancoRegistradores|saidaA[29]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[29]~29_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~323_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~67_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~67_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~323_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[29]~29_combout\);

\bancoRegistradores|registrador~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA30|MUX_Selecao|saida_MUX~2_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~324_q\);

\bancoRegistradores|registrador~1223\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1223_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~68_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~68_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1223_combout\);

\bancoRegistradores|registrador~1182\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1182_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1223_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1223_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1223_combout\ & ( (\bancoRegistradores|registrador~324_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~324_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1223_combout\,
	combout => \bancoRegistradores|registrador~1182_combout\);

\ULA|ULA30|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1182_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1182_combout\,
	combout => \ULA|ULA30|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA30|Somador|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|Somador|saida~combout\ = ( \bancoRegistradores|saidaA[30]~30_combout\ & ( \ULA|ULA30|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[29]~29_combout\ & (\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\ & 
-- ((\ULA|ULA28|Somador|cOut~1_combout\) # (\ULA|ULA28|Somador|cOut~0_combout\)))) # (\bancoRegistradores|saidaA[29]~29_combout\ & (((\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\) # (\ULA|ULA28|Somador|cOut~1_combout\)) # 
-- (\ULA|ULA28|Somador|cOut~0_combout\))) ) ) ) # ( !\bancoRegistradores|saidaA[30]~30_combout\ & ( \ULA|ULA30|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[29]~29_combout\ & ((!\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA28|Somador|cOut~0_combout\ & !\ULA|ULA28|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[29]~29_combout\ & (!\ULA|ULA28|Somador|cOut~0_combout\ & (!\ULA|ULA28|Somador|cOut~1_combout\ & !\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\))) ) 
-- ) ) # ( \bancoRegistradores|saidaA[30]~30_combout\ & ( !\ULA|ULA30|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[29]~29_combout\ & ((!\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\) # ((!\ULA|ULA28|Somador|cOut~0_combout\ & 
-- !\ULA|ULA28|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[29]~29_combout\ & (!\ULA|ULA28|Somador|cOut~0_combout\ & (!\ULA|ULA28|Somador|cOut~1_combout\ & !\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\))) ) ) ) # ( 
-- !\bancoRegistradores|saidaA[30]~30_combout\ & ( !\ULA|ULA30|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[29]~29_combout\ & (\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\ & ((\ULA|ULA28|Somador|cOut~1_combout\) # 
-- (\ULA|ULA28|Somador|cOut~0_combout\)))) # (\bancoRegistradores|saidaA[29]~29_combout\ & (((\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\) # (\ULA|ULA28|Somador|cOut~1_combout\)) # (\ULA|ULA28|Somador|cOut~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101111111111110001000000011111000100000000000011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA28|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA|ULA28|Somador|ALT_INV_cOut~1_combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[29]~29_combout\,
	datad => \ULA|ULA29|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datae => \bancoRegistradores|ALT_INV_saidaA[30]~30_combout\,
	dataf => \ULA|ULA30|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA30|Somador|saida~combout\);

\ULA|ULA30|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|MUX_Selecao|saida_MUX~1_combout\ = (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((!\bancoRegistradores|saidaA[30]~30_combout\ & (\ULA|ULA30|MUX_inverte|saida_MUX~0_combout\ & \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)) # 
-- (\bancoRegistradores|saidaA[30]~30_combout\ & ((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\) # (\ULA|ULA30|MUX_inverte|saida_MUX~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000010001010100000001000101010000000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[30]~30_combout\,
	datac => \ULA|ULA30|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA30|MUX_Selecao|saida_MUX~1_combout\);

\ULA|ULA30|MUX_Selecao|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|MUX_Selecao|saida_MUX~2_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & \ULA|ULA30|Somador|saida~combout\)) # (\ULA|ULA30|MUX_Selecao|saida_MUX~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA30|Somador|ALT_INV_saida~combout\,
	datac => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA30|MUX_Selecao|saida_MUX~2_combout\);

\bancoRegistradores|registrador~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA30|MUX_Selecao|saida_MUX~2_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~68_q\);

\bancoRegistradores|saidaA[30]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|saidaA[30]~30_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~324_q\ & !\ROM|memROM~9_combout\) ) ) ) # ( !\ROM|memROM~1_combout\ & ( 
-- \bancoRegistradores|Equal1~0_combout\ & ( (\bancoRegistradores|registrador~68_q\ & !\ROM|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~68_q\,
	datab => \bancoRegistradores|ALT_INV_registrador~324_q\,
	datad => \ROM|ALT_INV_memROM~9_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	combout => \bancoRegistradores|saidaA[30]~30_combout\);

\ULA|ULA30|Somador|cOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|Somador|cOut~combout\ = ( !\bancoRegistradores|saidaA[30]~30_combout\ & ( \ULA|ULA30|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[29]~29_combout\ & ((!\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\) # 
-- ((!\ULA|ULA28|Somador|cOut~0_combout\ & !\ULA|ULA28|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[29]~29_combout\ & (!\ULA|ULA28|Somador|cOut~0_combout\ & (!\ULA|ULA28|Somador|cOut~1_combout\ & !\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\))) ) 
-- ) ) # ( \bancoRegistradores|saidaA[30]~30_combout\ & ( !\ULA|ULA30|MUX_inverte|saida_MUX~0_combout\ & ( (!\bancoRegistradores|saidaA[29]~29_combout\ & ((!\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\) # ((!\ULA|ULA28|Somador|cOut~0_combout\ & 
-- !\ULA|ULA28|Somador|cOut~1_combout\)))) # (\bancoRegistradores|saidaA[29]~29_combout\ & (!\ULA|ULA28|Somador|cOut~0_combout\ & (!\ULA|ULA28|Somador|cOut~1_combout\ & !\ULA|ULA29|MUX_inverte|saida_MUX~0_combout\))) ) ) ) # ( 
-- !\bancoRegistradores|saidaA[30]~30_combout\ & ( !\ULA|ULA30|MUX_inverte|saida_MUX~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111110001000000011111000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA28|Somador|ALT_INV_cOut~0_combout\,
	datab => \ULA|ULA28|Somador|ALT_INV_cOut~1_combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[29]~29_combout\,
	datad => \ULA|ULA29|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datae => \bancoRegistradores|ALT_INV_saidaA[30]~30_combout\,
	dataf => \ULA|ULA30|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA30|Somador|cOut~combout\);

\bancoRegistradores|registrador~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~69_q\);

\bancoRegistradores|registrador~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\,
	sclr => \decoder_instru|Equal2~0_combout\,
	ena => \bancoRegistradores|registrador~1192_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bancoRegistradores|registrador~325_q\);

\bancoRegistradores|registrador~1186\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1186_combout\ = ( !\ROM|memROM~9_combout\ & ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~325_q\ ) ) ) # ( !\ROM|memROM~9_combout\ & ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~69_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~69_q\,
	datac => \bancoRegistradores|ALT_INV_registrador~325_q\,
	datae => \ROM|ALT_INV_memROM~9_combout\,
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \bancoRegistradores|registrador~1186_combout\);

\bancoRegistradores|registrador~1224\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1224_combout\ = ( \ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \ROM|memROM~15_combout\ & ( !\ROM|memROM~14_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ 
-- & ( !\ROM|memROM~15_combout\ & ( (\bancoRegistradores|registrador~69_q\ & \ROM|memROM~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~69_q\,
	datad => \ROM|ALT_INV_memROM~14_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \ROM|ALT_INV_memROM~15_combout\,
	combout => \bancoRegistradores|registrador~1224_combout\);

\bancoRegistradores|registrador~1187\ : cyclonev_lcell_comb
-- Equation(s):
-- \bancoRegistradores|registrador~1187_combout\ = ( \ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1224_combout\ & ( !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( \bancoRegistradores|registrador~1224_combout\ & ( 
-- !\ROM|memROM~15_combout\ ) ) ) # ( !\ROM|memROM~1_combout\ & ( !\bancoRegistradores|registrador~1224_combout\ & ( (\bancoRegistradores|registrador~325_q\ & \ROM|memROM~15_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \bancoRegistradores|ALT_INV_registrador~325_q\,
	datad => \ROM|ALT_INV_memROM~15_combout\,
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \bancoRegistradores|ALT_INV_registrador~1224_combout\,
	combout => \bancoRegistradores|registrador~1187_combout\);

\ULA|ULA31|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|Equal0~0_combout\) # (!\bancoRegistradores|registrador~1187_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001100000010100000110000001010000011000000101000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datac => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	datad => \bancoRegistradores|ALT_INV_registrador~1187_combout\,
	combout => \ULA|ULA31|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA31|Somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|Somador|saida~0_combout\ = !\ULA|ULA31|MUX_inverte|saida_MUX~0_combout\ $ (((!\bancoRegistradores|Equal1~0_combout\) # (!\bancoRegistradores|registrador~1186_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	datab => \bancoRegistradores|ALT_INV_registrador~1186_combout\,
	datac => \ULA|ULA31|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA31|Somador|saida~0_combout\);

\ULA|ULA31|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|MUX_Selecao|saida_MUX~0_combout\ = ( \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & (((\bancoRegistradores|Equal1~0_combout\ & \bancoRegistradores|registrador~1186_combout\)) # 
-- (\ULA|ULA31|MUX_inverte|saida_MUX~0_combout\))) ) ) # ( !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & (\bancoRegistradores|Equal1~0_combout\ & (\bancoRegistradores|registrador~1186_combout\ & 
-- \ULA|ULA31|MUX_inverte|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010101010100000000000000010000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	datac => \bancoRegistradores|ALT_INV_registrador~1186_combout\,
	datad => \ULA|ULA31|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datae => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA31|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA31|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ = ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA30|Somador|cOut~combout\ $ (\ULA|ULA31|Somador|saida~0_combout\)))) # (\ULA|ULA31|MUX_Selecao|saida_MUX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000111111111001000011111111100100001111111110010000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA31|Somador|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\);

\INC_PC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~17_sumout\ = SUM(( \REG_PC|DOUT\(6) ) + ( GND ) + ( \INC_PC|Add0~14\ ))
-- \INC_PC|Add0~18\ = CARRY(( \REG_PC|DOUT\(6) ) + ( GND ) + ( \INC_PC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(6),
	cin => \INC_PC|Add0~14\,
	sumout => \INC_PC|Add0~17_sumout\,
	cout => \INC_PC|Add0~18\);

\soma_pc_etx|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~17_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~17_sumout\ ) + ( \soma_pc_etx|Add0~14\ ))
-- \soma_pc_etx|Add0~18\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~17_sumout\ ) + ( \soma_pc_etx|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~17_sumout\,
	cin => \soma_pc_etx|Add0~14\,
	sumout => \soma_pc_etx|Add0~17_sumout\,
	cout => \soma_pc_etx|Add0~18\);

\MUX_Entrada_PC|saida_MUX[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[6]~0_combout\ = ( \INC_PC|Add0~17_sumout\ & ( \soma_pc_etx|Add0~17_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~17_sumout\ & ( \soma_pc_etx|Add0~17_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~17_sumout\ & ( !\soma_pc_etx|Add0~17_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~17_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~17_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[6]~0_combout\);

\REG_PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(6));

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( \REG_PC|DOUT\(4) & ( !\REG_PC|DOUT\(5) & ( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & \REG_PC|DOUT\(2))) ) ) ) # ( !\REG_PC|DOUT\(4) & ( !\REG_PC|DOUT\(5) & ( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(6) & (!\REG_PC|DOUT\(2) & 
-- \REG_PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(6),
	datac => \REG_PC|ALT_INV_DOUT\(2),
	datad => \REG_PC|ALT_INV_DOUT\(3),
	datae => \REG_PC|ALT_INV_DOUT\(4),
	dataf => \REG_PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~10_combout\);

\ULA|ULA30|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ = (!\decoder_instru|Equal6~0_combout\ & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~1_combout\) # ((!\ROM|memROM~10_combout\ & \ROM|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001000000000111100100000000011110010000000001111001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~1_combout\,
	datad => \decoder_instru|ALT_INV_Equal6~0_combout\,
	combout => \ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA3|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ = (!\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\);

\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( !\ULA|ULA2|MUX_Selecao|saida_MUX~1_combout\ & ( !\ULA|ULA4|MUX_Selecao|saida_MUX~0_combout\ & ( (\ROM|memROM~2_combout\ & (\ROM|memROM~11_combout\ & (!\ULA|ULA3|MUX_Selecao|saida_MUX~2_combout\ & 
-- !\ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \ROM|ALT_INV_memROM~11_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~2_combout\,
	datad => \ULA|ULA1|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA2|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	dataf => \ULA|ULA4|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \comb~0_combout\);

\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA6|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA5|MUX_Selecao|saida_MUX~1_combout\ & \comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA7|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA|ULA6|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA|ULA5|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_comb~0_combout\,
	combout => \comb~1_combout\);

\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( \comb~1_combout\ & ( (!\ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA8|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA10|MUX_Selecao|saida_MUX~1_combout\ & !\ULA|ULA9|MUX_Selecao|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA11|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA|ULA8|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA|ULA10|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \ULA|ULA9|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_comb~1_combout\,
	combout => \comb~2_combout\);

\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (!\ULA|ULA12|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA14|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA13|MUX_Selecao|saida_MUX~1_combout\ & \comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA12|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA|ULA14|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA|ULA13|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_comb~2_combout\,
	combout => \comb~3_combout\);

\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (!\ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA16|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA17|MUX_Selecao|saida_MUX~1_combout\ & \comb~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA15|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA|ULA16|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA|ULA17|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_comb~3_combout\,
	combout => \comb~4_combout\);

\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = ( \comb~4_combout\ & ( (!\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA18|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA20|MUX_Selecao|saida_MUX~1_combout\ & !\ULA|ULA22|MUX_Selecao|saida_MUX~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA19|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA18|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA|ULA20|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \ULA|ULA22|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datae => \ALT_INV_comb~4_combout\,
	combout => \comb~5_combout\);

\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA21|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA24|MUX_Selecao|saida_MUX~0_combout\ & \comb~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA23|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA|ULA21|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA|ULA24|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_comb~5_combout\,
	combout => \comb~6_combout\);

\comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (!\ULA|ULA25|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA26|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA27|MUX_Selecao|saida_MUX~1_combout\ & \comb~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA|ULA26|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA|ULA27|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \ALT_INV_comb~6_combout\,
	combout => \comb~7_combout\);

\comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = ( !\ULA|ULA30|MUX_Selecao|saida_MUX~1_combout\ & ( \comb~7_combout\ & ( (!\ULA|ULA28|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA29|MUX_Selecao|saida_MUX~0_combout\ & ((!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # 
-- (!\ULA|ULA30|Somador|saida~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA28|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ULA|ULA29|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA30|Somador|ALT_INV_saida~combout\,
	datae => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	dataf => \ALT_INV_comb~7_combout\,
	combout => \comb~8_combout\);

\INC_PC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~1_sumout\ = SUM(( \REG_PC|DOUT\(7) ) + ( GND ) + ( \INC_PC|Add0~18\ ))
-- \INC_PC|Add0~2\ = CARRY(( \REG_PC|DOUT\(7) ) + ( GND ) + ( \INC_PC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(7),
	cin => \INC_PC|Add0~18\,
	sumout => \INC_PC|Add0~1_sumout\,
	cout => \INC_PC|Add0~2\);

\soma_pc_etx|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~1_sumout\ = SUM(( (!\REG_PC|DOUT\(7) & \ROM|memROM~0_combout\) ) + ( \INC_PC|Add0~1_sumout\ ) + ( \soma_pc_etx|Add0~18\ ))
-- \soma_pc_etx|Add0~2\ = CARRY(( (!\REG_PC|DOUT\(7) & \ROM|memROM~0_combout\) ) + ( \INC_PC|Add0~1_sumout\ ) + ( \soma_pc_etx|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \INC_PC|ALT_INV_Add0~1_sumout\,
	cin => \soma_pc_etx|Add0~18\,
	sumout => \soma_pc_etx|Add0~1_sumout\,
	cout => \soma_pc_etx|Add0~2\);

\MUX_Entrada_PC|saida_MUX[7]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[7]~56_combout\ = ( !\decoder_instru|Equal0~0_combout\ & ( (!\comb~8_combout\ & (((\INC_PC|Add0~1_sumout\)))) # (\comb~8_combout\ & ((!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & 
-- ((\soma_pc_etx|Add0~1_sumout\))) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (\INC_PC|Add0~1_sumout\)))) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (\INC_PC|Add0~1_sumout\)))) ) ) # ( \decoder_instru|Equal0~0_combout\ & ( 
-- (((\ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101100001111000011110000111101001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datae => \decoder_instru|ALT_INV_Equal0~0_combout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~1_sumout\,
	datag => \INC_PC|ALT_INV_Add0~1_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[7]~56_combout\);

\REG_PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[7]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(7));

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = ( !\REG_PC|DOUT\(6) & ( (!\REG_PC|DOUT\(7) & (!\REG_PC|DOUT\(5) & ((\REG_PC|DOUT\(4)) # (\REG_PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000000000000000000000101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(4),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	datae => \REG_PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~1_combout\);

\decoder_ula|saida_funct[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_ula|saida_funct[0]~1_combout\ = ( !\REG_PC|DOUT\(7) & ( (!\REG_PC|DOUT\(5) & (\REG_PC|DOUT\(4) & (!\REG_PC|DOUT\(3) & !\REG_PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(5),
	datab => \REG_PC|ALT_INV_DOUT\(4),
	datac => \REG_PC|ALT_INV_DOUT\(3),
	datad => \REG_PC|ALT_INV_DOUT\(6),
	datae => \REG_PC|ALT_INV_DOUT\(7),
	combout => \decoder_ula|saida_funct[0]~1_combout\);

\decoder_ula|mux_dec_ula|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ = (\ROM|memROM~1_combout\ & (!\decoder_instru|Equal6~0_combout\ & \decoder_ula|saida_funct[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \decoder_instru|ALT_INV_Equal6~0_combout\,
	datac => \decoder_ula|ALT_INV_saida_funct[0]~1_combout\,
	combout => \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\);

\decoder_ula|saida_funct[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder_ula|saida_funct[1]~0_combout\ = (\decoder_ula|mux_dec_ula|saida_MUX[2]~1_combout\ & ((!\ROM|memROM~12_combout\) # (\ROM|memROM~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~12_combout\,
	datac => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~1_combout\,
	combout => \decoder_ula|saida_funct[1]~0_combout\);

\ULA|ULA0|MUX_Selecao|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|MUX_Selecao|saida_MUX~0_combout\ = (\decoder_ula|saida_funct[1]~0_combout\ & (((\bancoRegistradores|Equal1~0_combout\ & \bancoRegistradores|registrador~1186_combout\)) # (\ULA|ULA31|MUX_inverte|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101000000010101010100000001010101010000000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|ALT_INV_saida_funct[1]~0_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	datac => \bancoRegistradores|ALT_INV_registrador~1186_combout\,
	datad => \ULA|ULA31|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA|ULA0|MUX_Selecao|saida_MUX~0_combout\);

\ULA|ULA0|MUX_inverte|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|MUX_inverte|saida_MUX~0_combout\ = (!\decoder_instru|saida[3]~0_combout\ & (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ (((!\bancoRegistradores|registrador~1062_combout\) # (!\bancoRegistradores|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000000000001101100000000000110110000000000011011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~1062_combout\,
	datab => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \bancoRegistradores|ALT_INV_Equal0~0_combout\,
	datad => \decoder_instru|ALT_INV_saida[3]~0_combout\,
	combout => \ULA|ULA0|MUX_inverte|saida_MUX~0_combout\);

\ULA|ULA0|MUX_Selecao|saida_MUX~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|MUX_Selecao|saida_MUX~4_combout\ = ( !\decoder_ula|saida_funct[1]~0_combout\ & ( (((\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ((\bancoRegistradores|saidaA[0]~0_combout\) # (\ULA|ULA0|MUX_inverte|saida_MUX~0_combout\))))) ) ) # ( 
-- \decoder_ula|saida_funct[1]~0_combout\ & ( (\bancoRegistradores|registrador~1186_combout\ & (\bancoRegistradores|Equal1~0_combout\ & (\ULA|ULA31|MUX_inverte|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001111000000010000000100001111000011110000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \bancoRegistradores|ALT_INV_registrador~1186_combout\,
	datab => \bancoRegistradores|ALT_INV_Equal1~0_combout\,
	datac => \ULA|ULA31|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA0|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datae => \decoder_ula|ALT_INV_saida_funct[1]~0_combout\,
	dataf => \bancoRegistradores|ALT_INV_saidaA[0]~0_combout\,
	datag => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \ULA|ULA0|MUX_Selecao|saida_MUX~4_combout\);

\ULA|ULA0|MUX_Selecao|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|MUX_Selecao|saida_MUX~1_combout\ = (!\decoder_instru|Equal6~0_combout\ & ((!\decoder_ula|saida_funct[1]~0_combout\) # ((\ROM|memROM~1_combout\ & \decoder_ula|saida_funct[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011010000110000001101000011000000110100001100000011010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \decoder_ula|ALT_INV_saida_funct[1]~0_combout\,
	datac => \decoder_instru|ALT_INV_Equal6~0_combout\,
	datad => \decoder_ula|ALT_INV_saida_funct[0]~1_combout\,
	combout => \ULA|ULA0|MUX_Selecao|saida_MUX~1_combout\);

\ULA|ULA0|MUX_Selecao|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|MUX_Selecao|saida_MUX~2_combout\ = ( !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( \ULA|ULA0|MUX_Selecao|saida_MUX~1_combout\ & ( (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & (\bancoRegistradores|saidaA[0]~0_combout\ & 
-- \ULA|ULA0|MUX_inverte|saida_MUX~0_combout\)) ) ) ) # ( \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( !\ULA|ULA0|MUX_Selecao|saida_MUX~1_combout\ & ( !\bancoRegistradores|saidaA[0]~0_combout\ $ (!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ $ 
-- (\ULA|ULA0|MUX_inverte|saida_MUX~0_combout\)) ) ) ) # ( !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( !\ULA|ULA0|MUX_Selecao|saida_MUX~1_combout\ & ( (!\bancoRegistradores|saidaA[0]~0_combout\ & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ 
-- $ (!\ULA|ULA0|MUX_inverte|saida_MUX~0_combout\)))) # (\bancoRegistradores|saidaA[0]~0_combout\ & ((!\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ & ((!\ULA|ULA0|MUX_inverte|saida_MUX~0_combout\) # (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\))) # 
-- (\decoder_ula|mux_dec_ula|saida_MUX[2]~2_combout\ & ((\ULA|ULA0|MUX_inverte|saida_MUX~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011010011001111001100001100000000000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \bancoRegistradores|ALT_INV_saidaA[0]~0_combout\,
	datac => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \ULA|ULA0|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datae => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	combout => \ULA|ULA0|MUX_Selecao|saida_MUX~2_combout\);

\ULA|ULA0|MUX_Selecao|saida_MUX~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ = ( \ULA|ULA0|MUX_Selecao|saida_MUX~2_combout\ ) # ( !\ULA|ULA0|MUX_Selecao|saida_MUX~2_combout\ & ( (\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & (((\ULA|ULA30|Somador|cOut~combout\ & 
-- \ULA|ULA0|MUX_Selecao|saida_MUX~0_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101111111111111111100000001010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ULA|ULA30|Somador|ALT_INV_cOut~combout\,
	datac => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~4_combout\,
	datae => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~2_combout\,
	combout => \ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\MUX_Saida_Placa|saida_MUX[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[2]~0_combout\ = ( \ULA|ULA2|MUX_Selecao|saida_MUX~0_combout\ & ( (!\REG_PC|DOUT\(2) & !\SW[0]~input_o\) ) ) # ( !\ULA|ULA2|MUX_Selecao|saida_MUX~0_combout\ & ( (!\SW[0]~input_o\ & (!\REG_PC|DOUT\(2))) # (\SW[0]~input_o\ & 
-- (((!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # (!\ULA|ULA2|Somador|saida~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101100101000001010000010101111101011001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	datab => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ULA2|Somador|ALT_INV_saida~combout\,
	datae => \ULA|ULA2|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_Saida_Placa|saida_MUX[2]~0_combout\);

\DEC_0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_0|rascSaida7seg[0]~0_combout\ = ( \SW[0]~input_o\ & ( \MUX_Saida_Placa|saida_MUX[2]~0_combout\ & ( (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA3|MUX_Selecao|saida_MUX~2_combout\ $ (\ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\))) ) ) ) # ( 
-- \SW[0]~input_o\ & ( !\MUX_Saida_Placa|saida_MUX[2]~0_combout\ & ( (!\ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ $ (\ULA|ULA3|MUX_Selecao|saida_MUX~2_combout\))) ) ) ) # ( !\SW[0]~input_o\ & ( 
-- !\MUX_Saida_Placa|saida_MUX[2]~0_combout\ & ( !\REG_PC|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000100110010000000000000000000000000100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~2_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(3),
	datad => \ULA|ULA1|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[2]~0_combout\,
	combout => \DEC_0|rascSaida7seg[0]~0_combout\);

\MUX_Saida_Placa|saida_MUX[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[3]~1_combout\ = ( !\ULA|ULA3|MUX_Selecao|saida_MUX~1_combout\ & ( \SW[0]~input_o\ & ( (!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # (!\ULA|ULA2|Somador|cOut~combout\ $ (\ULA|ULA3|Somador|saida~0_combout\)) ) ) ) # ( 
-- \ULA|ULA3|MUX_Selecao|saida_MUX~1_combout\ & ( !\SW[0]~input_o\ & ( !\REG_PC|DOUT\(3) ) ) ) # ( !\ULA|ULA3|MUX_Selecao|saida_MUX~1_combout\ & ( !\SW[0]~input_o\ & ( !\REG_PC|DOUT\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111110000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(3),
	datab => \ULA|ULA2|Somador|ALT_INV_cOut~combout\,
	datac => \ULA|ULA3|Somador|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \MUX_Saida_Placa|saida_MUX[3]~1_combout\);

\DEC_0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_0|rascSaida7seg[1]~1_combout\ = ( \MUX_Saida_Placa|saida_MUX[3]~1_combout\ & ( (\SW[0]~input_o\ & (!\MUX_Saida_Placa|saida_MUX[2]~0_combout\ & (!\ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\ $ (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\)))) ) ) # ( 
-- !\MUX_Saida_Placa|saida_MUX[3]~1_combout\ & ( (!\SW[0]~input_o\ & (((!\MUX_Saida_Placa|saida_MUX[2]~0_combout\)))) # (\SW[0]~input_o\ & ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & ((!\MUX_Saida_Placa|saida_MUX[2]~0_combout\))) # 
-- (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (\ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011010001000100000010000011110000110100010001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA1|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[2]~0_combout\,
	datad => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[3]~1_combout\,
	combout => \DEC_0|rascSaida7seg[1]~1_combout\);

\MUX_Saida_Placa|saida_MUX[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[0]~2_combout\ = ( \SW[0]~input_o\ & ( \ULA|ULA0|MUX_Selecao|saida_MUX~2_combout\ ) ) # ( \SW[0]~input_o\ & ( !\ULA|ULA0|MUX_Selecao|saida_MUX~2_combout\ & ( (\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & 
-- (((\ULA|ULA30|Somador|cOut~combout\ & \ULA|ULA0|MUX_Selecao|saida_MUX~0_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010101010100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ULA|ULA30|Somador|ALT_INV_cOut~combout\,
	datac => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~4_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~2_combout\,
	combout => \MUX_Saida_Placa|saida_MUX[0]~2_combout\);

\DEC_0|rascSaida7seg[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_0|rascSaida7seg[1]~2_combout\ = ( \decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( \SW[0]~input_o\ & ( (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & ((\ULA|ULA1|MUX_inverte|saida_MUX~0_combout\) # (\bancoRegistradores|saidaA[1]~1_combout\))) ) ) 
-- ) # ( !\decoder_ula|mux_dec_ula|saida_MUX[0]~0_combout\ & ( \SW[0]~input_o\ & ( (!\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA0|Somador|cOut~combout\ $ (!\bancoRegistradores|saidaA[1]~1_combout\ $ 
-- (\ULA|ULA1|MUX_inverte|saida_MUX~0_combout\)))) # (\ULA|ULA30|MUX_Selecao|saida_MUX~0_combout\ & (((\bancoRegistradores|saidaA[1]~1_combout\ & \ULA|ULA1|MUX_inverte|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000101000100001110000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA|ULA0|Somador|ALT_INV_cOut~combout\,
	datac => \bancoRegistradores|ALT_INV_saidaA[1]~1_combout\,
	datad => \ULA|ULA1|MUX_inverte|ALT_INV_saida_MUX~0_combout\,
	datae => \decoder_ula|mux_dec_ula|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \DEC_0|rascSaida7seg[1]~2_combout\);

\DEC_0|rascSaida7seg[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_0|rascSaida7seg[2]~3_combout\ = (!\MUX_Saida_Placa|saida_MUX[2]~0_combout\ & (((\MUX_Saida_Placa|saida_MUX[0]~2_combout\ & !\DEC_0|rascSaida7seg[1]~2_combout\)) # (\MUX_Saida_Placa|saida_MUX[3]~1_combout\))) # 
-- (\MUX_Saida_Placa|saida_MUX[2]~0_combout\ & (((!\DEC_0|rascSaida7seg[1]~2_combout\) # (!\MUX_Saida_Placa|saida_MUX[3]~1_combout\)) # (\MUX_Saida_Placa|saida_MUX[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010111111011011101011111101101110101111110110111010111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[0]~2_combout\,
	datac => \DEC_0|ALT_INV_rascSaida7seg[1]~2_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[3]~1_combout\,
	combout => \DEC_0|rascSaida7seg[2]~3_combout\);

\DEC_0|rascSaida7seg[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_0|rascSaida7seg[3]~4_combout\ = (!\DEC_0|rascSaida7seg[1]~2_combout\ & (\MUX_Saida_Placa|saida_MUX[3]~1_combout\ & (!\MUX_Saida_Placa|saida_MUX[0]~2_combout\ $ (\MUX_Saida_Placa|saida_MUX[2]~0_combout\)))) # (\DEC_0|rascSaida7seg[1]~2_combout\ & 
-- ((!\MUX_Saida_Placa|saida_MUX[0]~2_combout\ & (\MUX_Saida_Placa|saida_MUX[2]~0_combout\ & !\MUX_Saida_Placa|saida_MUX[3]~1_combout\)) # (\MUX_Saida_Placa|saida_MUX[0]~2_combout\ & (!\MUX_Saida_Placa|saida_MUX[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001010010100000100101001010000010010100101000001001010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[0]~2_combout\,
	datab => \DEC_0|ALT_INV_rascSaida7seg[1]~2_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[2]~0_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[3]~1_combout\,
	combout => \DEC_0|rascSaida7seg[3]~4_combout\);

\DEC_0|rascSaida7seg[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_0|rascSaida7seg[4]~5_combout\ = ( \ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & ( \SW[0]~input_o\ & ( ((!\ULA|ULA2|MUX_Selecao|saida_MUX~1_combout\ & !\ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\)) # (\MUX_Saida_Placa|saida_MUX[3]~1_combout\) ) ) ) # ( 
-- !\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & ( \SW[0]~input_o\ & ( (\ULA|ULA2|MUX_Selecao|saida_MUX~1_combout\ & (!\ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\ & \MUX_Saida_Placa|saida_MUX[3]~1_combout\)) ) ) ) # ( 
-- \ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & ( !\SW[0]~input_o\ & ( (\REG_PC|DOUT\(2) & \MUX_Saida_Placa|saida_MUX[3]~1_combout\) ) ) ) # ( !\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & ( !\SW[0]~input_o\ & ( (\REG_PC|DOUT\(2) & 
-- \MUX_Saida_Placa|saida_MUX[3]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000010100001010000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA2|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datab => \REG_PC|ALT_INV_DOUT\(2),
	datac => \ULA|ULA1|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[3]~1_combout\,
	datae => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \DEC_0|rascSaida7seg[4]~5_combout\);

\DEC_0|rascSaida7seg[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_0|rascSaida7seg[5]~6_combout\ = ( \MUX_Saida_Placa|saida_MUX[2]~0_combout\ & ( (\SW[0]~input_o\ & (!\ULA|ULA3|MUX_Selecao|saida_MUX~2_combout\ & ((\ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\)))) ) ) # ( 
-- !\MUX_Saida_Placa|saida_MUX[2]~0_combout\ & ( (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (\SW[0]~input_o\ & (!\ULA|ULA1|MUX_Selecao|saida_MUX~0_combout\ $ (!\ULA|ULA3|MUX_Selecao|saida_MUX~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000100000000010000010000000111000000000000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA1|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~2_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[2]~0_combout\,
	combout => \DEC_0|rascSaida7seg[5]~6_combout\);

\DEC_0|rascSaida7seg[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_0|rascSaida7seg[6]~7_combout\ = (!\MUX_Saida_Placa|saida_MUX[0]~2_combout\ & (!\DEC_0|rascSaida7seg[1]~2_combout\ & (!\MUX_Saida_Placa|saida_MUX[2]~0_combout\ $ (\MUX_Saida_Placa|saida_MUX[3]~1_combout\)))) # (\MUX_Saida_Placa|saida_MUX[0]~2_combout\ 
-- & (\MUX_Saida_Placa|saida_MUX[3]~1_combout\ & (!\MUX_Saida_Placa|saida_MUX[2]~0_combout\ $ (!\DEC_0|rascSaida7seg[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001010010100000000101001010000000010100101000000001010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[2]~0_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[0]~2_combout\,
	datac => \DEC_0|ALT_INV_rascSaida7seg[1]~2_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[3]~1_combout\,
	combout => \DEC_0|rascSaida7seg[6]~7_combout\);

\MUX_Saida_Placa|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[4]~3_combout\ = (!\SW[0]~input_o\ & (\REG_PC|DOUT\(4))) # (\SW[0]~input_o\ & ((\ULA|ULA4|MUX_Selecao|saida_MUX~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(4),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ULA4|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_Saida_Placa|saida_MUX[4]~3_combout\);

\MUX_Saida_Placa|saida_MUX[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[6]~4_combout\ = ( !\SW[0]~input_o\ & ( \ULA|ULA6|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(6) ) ) ) # ( \SW[0]~input_o\ & ( !\ULA|ULA6|MUX_Selecao|saida_MUX~0_combout\ & ( (!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) 
-- # (!\ULA|ULA5|Somador|cOut~combout\ $ (!\ULA|ULA6|Somador|saida~0_combout\)) ) ) ) # ( !\SW[0]~input_o\ & ( !\ULA|ULA6|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111110011110010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(6),
	datab => \ULA|ULA5|Somador|ALT_INV_cOut~combout\,
	datac => \ULA|ULA6|Somador|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ULA6|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_Saida_Placa|saida_MUX[6]~4_combout\);

\MUX_Saida_Placa|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[5]~5_combout\ = ( !\SW[0]~input_o\ & ( \ULA|ULA5|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(5) ) ) ) # ( \SW[0]~input_o\ & ( !\ULA|ULA5|MUX_Selecao|saida_MUX~0_combout\ & ( (!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) 
-- # (!\ULA|ULA4|Somador|cOut~combout\ $ (!\ULA|ULA5|Somador|saida~0_combout\)) ) ) ) # ( !\SW[0]~input_o\ & ( !\ULA|ULA5|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111110011110010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(5),
	datab => \ULA|ULA4|Somador|ALT_INV_cOut~combout\,
	datac => \ULA|ULA5|Somador|ALT_INV_saida~0_combout\,
	datad => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ULA|ULA5|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	combout => \MUX_Saida_Placa|saida_MUX[5]~5_combout\);

\DEC_1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_1|rascSaida7seg[0]~0_combout\ = ( \MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( \MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (\MUX_Saida_Placa|saida_MUX[4]~3_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(7)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( \MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( !\MUX_Saida_Placa|saida_MUX[4]~3_combout\ $ (((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(7)))) # 
-- (\SW[0]~input_o\ & (\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( !\MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (\MUX_Saida_Placa|saida_MUX[4]~3_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(7)))) 
-- # (\SW[0]~input_o\ & (\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011010111001010001101010000000011001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA7|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datab => \REG_PC|ALT_INV_DOUT\(7),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[4]~3_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[6]~4_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \DEC_1|rascSaida7seg[0]~0_combout\);

\DEC_1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_1|rascSaida7seg[1]~1_combout\ = ( !\MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( \MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( !\MUX_Saida_Placa|saida_MUX[4]~3_combout\ $ (((!\SW[0]~input_o\ & (!\REG_PC|DOUT\(7))) # (\SW[0]~input_o\ & 
-- ((!\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\))))) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( !\MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (\MUX_Saida_Placa|saida_MUX[4]~3_combout\ & ((!\SW[0]~input_o\ & (\REG_PC|DOUT\(7))) # (\SW[0]~input_o\ 
-- & ((\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\))))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( !\MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[4]~3_combout\) # ((!\SW[0]~input_o\ & (\REG_PC|DOUT\(7))) # 
-- (\SW[0]~input_o\ & ((\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101000111000000000100011101000111101110000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ULA7|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[4]~3_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[6]~4_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \DEC_1|rascSaida7seg[1]~1_combout\);

\DEC_1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_1|rascSaida7seg[2]~2_combout\ = ( !\MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( \MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[4]~3_combout\ & ((!\SW[0]~input_o\ & (\REG_PC|DOUT\(7))) # (\SW[0]~input_o\ & 
-- ((\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\))))) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( !\MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[4]~3_combout\ & ((!\SW[0]~input_o\ & (!\REG_PC|DOUT\(7))) # 
-- (\SW[0]~input_o\ & ((!\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\))))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( !\MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (!\SW[0]~input_o\ & (\REG_PC|DOUT\(7))) # (\SW[0]~input_o\ & 
-- ((\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111101110000000000001000111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ULA7|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[4]~3_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[6]~4_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \DEC_1|rascSaida7seg[2]~2_combout\);

\MUX_Saida_Placa|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[7]~6_combout\ = (!\SW[0]~input_o\ & (\REG_PC|DOUT\(7))) # (\SW[0]~input_o\ & ((\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ULA7|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	combout => \MUX_Saida_Placa|saida_MUX[7]~6_combout\);

\DEC_1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_1|rascSaida7seg[3]~3_combout\ = (!\MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ((!\MUX_Saida_Placa|saida_MUX[4]~3_combout\ & (\MUX_Saida_Placa|saida_MUX[6]~4_combout\ & \MUX_Saida_Placa|saida_MUX[7]~6_combout\)) # 
-- (\MUX_Saida_Placa|saida_MUX[4]~3_combout\ & (!\MUX_Saida_Placa|saida_MUX[6]~4_combout\)))) # (\MUX_Saida_Placa|saida_MUX[5]~5_combout\ & (!\MUX_Saida_Placa|saida_MUX[7]~6_combout\ & (!\MUX_Saida_Placa|saida_MUX[4]~3_combout\ $ 
-- (\MUX_Saida_Placa|saida_MUX[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101001000011000010100100001100001010010000110000101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[4]~3_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[5]~5_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[6]~4_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[7]~6_combout\,
	combout => \DEC_1|rascSaida7seg[3]~3_combout\);

\DEC_1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_1|rascSaida7seg[4]~4_combout\ = ( \MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( \MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(4)))) # (\SW[0]~input_o\ & (\ULA|ULA4|MUX_Selecao|saida_MUX~0_combout\)) ) ) ) # ( 
-- !\MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( \MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( !\MUX_Saida_Placa|saida_MUX[7]~6_combout\ ) ) ) # ( \MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( !\MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( 
-- (!\MUX_Saida_Placa|saida_MUX[7]~6_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(4)))) # (\SW[0]~input_o\ & (\ULA|ULA4|MUX_Selecao|saida_MUX~0_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( !\MUX_Saida_Placa|saida_MUX[5]~5_combout\ 
-- & ( (!\MUX_Saida_Placa|saida_MUX[7]~6_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(4)))) # (\SW[0]~input_o\ & (\ULA|ULA4|MUX_Selecao|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101010101010101010100000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[7]~6_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ULA4|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \REG_PC|ALT_INV_DOUT\(4),
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[6]~4_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \DEC_1|rascSaida7seg[4]~4_combout\);

\DEC_1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_1|rascSaida7seg[5]~5_combout\ = ( \MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( \MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (\MUX_Saida_Placa|saida_MUX[4]~3_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(7)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( \MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (\MUX_Saida_Placa|saida_MUX[4]~3_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(7)))) # (\SW[0]~input_o\ 
-- & (\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( !\MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(7)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\)) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( !\MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (\MUX_Saida_Placa|saida_MUX[4]~3_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(7)))) # (\SW[0]~input_o\ 
-- & (!\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100100111001001110010000000000000110110000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA7|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(7),
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[4]~3_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[6]~4_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \DEC_1|rascSaida7seg[5]~5_combout\);

\DEC_1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_1|rascSaida7seg[6]~6_combout\ = ( \MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( \MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (!\SW[0]~input_o\ & (!\REG_PC|DOUT\(7))) # (\SW[0]~input_o\ & ((!\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\))) ) ) ) # ( 
-- !\MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( \MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[4]~3_combout\ & ((!\SW[0]~input_o\ & (\REG_PC|DOUT\(7))) # (\SW[0]~input_o\ & ((\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\))))) ) ) ) # 
-- ( !\MUX_Saida_Placa|saida_MUX[6]~4_combout\ & ( !\MUX_Saida_Placa|saida_MUX[5]~5_combout\ & ( (\MUX_Saida_Placa|saida_MUX[4]~3_combout\ & ((!\SW[0]~input_o\ & (!\REG_PC|DOUT\(7))) # (\SW[0]~input_o\ & ((!\ULA|ULA7|MUX_Selecao|saida_MUX~1_combout\))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111000000000000000000001000111000000001011100010111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ULA7|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[4]~3_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[6]~4_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[5]~5_combout\,
	combout => \DEC_1|rascSaida7seg[6]~6_combout\);

\INC_PC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~29_sumout\ = SUM(( \REG_PC|DOUT\(8) ) + ( GND ) + ( \INC_PC|Add0~2\ ))
-- \INC_PC|Add0~30\ = CARRY(( \REG_PC|DOUT\(8) ) + ( GND ) + ( \INC_PC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(8),
	cin => \INC_PC|Add0~2\,
	sumout => \INC_PC|Add0~29_sumout\,
	cout => \INC_PC|Add0~30\);

\soma_pc_etx|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~25_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~29_sumout\ ) + ( \soma_pc_etx|Add0~2\ ))
-- \soma_pc_etx|Add0~26\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~29_sumout\ ) + ( \soma_pc_etx|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~29_sumout\,
	cin => \soma_pc_etx|Add0~2\,
	sumout => \soma_pc_etx|Add0~25_sumout\,
	cout => \soma_pc_etx|Add0~26\);

\MUX_Entrada_PC|saida_MUX[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[8]~3_combout\ = ( \INC_PC|Add0~29_sumout\ & ( \soma_pc_etx|Add0~25_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~29_sumout\ & ( \soma_pc_etx|Add0~25_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~29_sumout\ & ( !\soma_pc_etx|Add0~25_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~29_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~25_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[8]~3_combout\);

\REG_PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(8));

\INC_PC|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~37_sumout\ = SUM(( \REG_PC|DOUT\(9) ) + ( GND ) + ( \INC_PC|Add0~30\ ))
-- \INC_PC|Add0~38\ = CARRY(( \REG_PC|DOUT\(9) ) + ( GND ) + ( \INC_PC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(9),
	cin => \INC_PC|Add0~30\,
	sumout => \INC_PC|Add0~37_sumout\,
	cout => \INC_PC|Add0~38\);

\soma_pc_etx|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~33_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~37_sumout\ ) + ( \soma_pc_etx|Add0~26\ ))
-- \soma_pc_etx|Add0~34\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~37_sumout\ ) + ( \soma_pc_etx|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~37_sumout\,
	cin => \soma_pc_etx|Add0~26\,
	sumout => \soma_pc_etx|Add0~33_sumout\,
	cout => \soma_pc_etx|Add0~34\);

\MUX_Entrada_PC|saida_MUX[9]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[9]~5_combout\ = ( \INC_PC|Add0~37_sumout\ & ( \soma_pc_etx|Add0~33_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~37_sumout\ & ( \soma_pc_etx|Add0~33_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~37_sumout\ & ( !\soma_pc_etx|Add0~33_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~37_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~33_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[9]~5_combout\);

\REG_PC|DOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[9]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(9));

\INC_PC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~33_sumout\ = SUM(( \REG_PC|DOUT\(10) ) + ( GND ) + ( \INC_PC|Add0~38\ ))
-- \INC_PC|Add0~34\ = CARRY(( \REG_PC|DOUT\(10) ) + ( GND ) + ( \INC_PC|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(10),
	cin => \INC_PC|Add0~38\,
	sumout => \INC_PC|Add0~33_sumout\,
	cout => \INC_PC|Add0~34\);

\soma_pc_etx|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~29_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~33_sumout\ ) + ( \soma_pc_etx|Add0~34\ ))
-- \soma_pc_etx|Add0~30\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~33_sumout\ ) + ( \soma_pc_etx|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~33_sumout\,
	cin => \soma_pc_etx|Add0~34\,
	sumout => \soma_pc_etx|Add0~29_sumout\,
	cout => \soma_pc_etx|Add0~30\);

\MUX_Entrada_PC|saida_MUX[10]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[10]~4_combout\ = ( \INC_PC|Add0~33_sumout\ & ( \soma_pc_etx|Add0~29_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~33_sumout\ & ( \soma_pc_etx|Add0~29_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~33_sumout\ & ( !\soma_pc_etx|Add0~29_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~33_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~29_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[10]~4_combout\);

\REG_PC|DOUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[10]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(10));

\INC_PC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~25_sumout\ = SUM(( \REG_PC|DOUT\(11) ) + ( GND ) + ( \INC_PC|Add0~34\ ))
-- \INC_PC|Add0~26\ = CARRY(( \REG_PC|DOUT\(11) ) + ( GND ) + ( \INC_PC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(11),
	cin => \INC_PC|Add0~34\,
	sumout => \INC_PC|Add0~25_sumout\,
	cout => \INC_PC|Add0~26\);

\soma_pc_etx|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~21_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~25_sumout\ ) + ( \soma_pc_etx|Add0~30\ ))
-- \soma_pc_etx|Add0~22\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~25_sumout\ ) + ( \soma_pc_etx|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~25_sumout\,
	cin => \soma_pc_etx|Add0~30\,
	sumout => \soma_pc_etx|Add0~21_sumout\,
	cout => \soma_pc_etx|Add0~22\);

\MUX_Entrada_PC|saida_MUX[11]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[11]~2_combout\ = ( \INC_PC|Add0~25_sumout\ & ( \soma_pc_etx|Add0~21_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~25_sumout\ & ( \soma_pc_etx|Add0~21_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~25_sumout\ & ( !\soma_pc_etx|Add0~21_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~25_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~21_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[11]~2_combout\);

\REG_PC|DOUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[11]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(11));

\MUX_Saida_Placa|saida_MUX[8]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[8]~7_combout\ = ( !\ULA|ULA8|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(8) & ( (\SW[0]~input_o\ & ((!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # (!\ULA|ULA7|Somador|cOut~combout\ $ 
-- (\ULA|ULA8|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA8|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(8) & ( !\SW[0]~input_o\ ) ) ) # ( !\ULA|ULA8|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(8) & ( 
-- (!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # ((!\SW[0]~input_o\) # (!\ULA|ULA7|Somador|cOut~combout\ $ (\ULA|ULA8|Somador|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111001111111110000000000000000111110010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA7|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA8|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA8|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(8),
	combout => \MUX_Saida_Placa|saida_MUX[8]~7_combout\);

\MUX_Saida_Placa|saida_MUX[10]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[10]~8_combout\ = ( !\ULA|ULA10|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(10) & ( (\SW[0]~input_o\ & ((!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # (!\ULA|ULA9|Somador|cOut~combout\ $ 
-- (!\ULA|ULA10|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA10|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(10) & ( !\SW[0]~input_o\ ) ) ) # ( !\ULA|ULA10|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(10) & ( 
-- (!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # ((!\SW[0]~input_o\) # (!\ULA|ULA9|Somador|cOut~combout\ $ (!\ULA|ULA10|Somador|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110110111111110000000000000000111101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA9|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA10|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA10|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(10),
	combout => \MUX_Saida_Placa|saida_MUX[10]~8_combout\);

\MUX_Saida_Placa|saida_MUX[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[9]~9_combout\ = (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(9)))) # (\SW[0]~input_o\ & (\ULA|ULA9|MUX_Selecao|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA9|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(9),
	combout => \MUX_Saida_Placa|saida_MUX[9]~9_combout\);

\DEC_2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_2|rascSaida7seg[0]~0_combout\ = ( \MUX_Saida_Placa|saida_MUX[10]~8_combout\ & ( \MUX_Saida_Placa|saida_MUX[9]~9_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[8]~7_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(11)))) # (\SW[0]~input_o\ & 
-- (\ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[10]~8_combout\ & ( !\MUX_Saida_Placa|saida_MUX[9]~9_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[8]~7_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(11)))) # 
-- (\SW[0]~input_o\ & (!\ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[10]~8_combout\ & ( !\MUX_Saida_Placa|saida_MUX[9]~9_combout\ & ( !\MUX_Saida_Placa|saida_MUX[8]~7_combout\ $ (((!\SW[0]~input_o\ & 
-- ((!\REG_PC|DOUT\(11)))) # (\SW[0]~input_o\ & (!\ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010111001010110010100000000000000000000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA11|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datab => \REG_PC|ALT_INV_DOUT\(11),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[8]~7_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[10]~8_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[9]~9_combout\,
	combout => \DEC_2|rascSaida7seg[0]~0_combout\);

\MUX_Saida_Placa|saida_MUX[11]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[11]~10_combout\ = ( !\ULA|ULA11|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(11) & ( (\SW[0]~input_o\ & ((!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # (!\ULA|ULA10|Somador|cOut~combout\ $ 
-- (!\ULA|ULA11|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA11|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(11) & ( !\SW[0]~input_o\ ) ) ) # ( !\ULA|ULA11|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(11) & ( 
-- (!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # ((!\SW[0]~input_o\) # (!\ULA|ULA10|Somador|cOut~combout\ $ (!\ULA|ULA11|Somador|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110110111111110000000000000000111101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA10|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA11|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA11|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(11),
	combout => \MUX_Saida_Placa|saida_MUX[11]~10_combout\);

\DEC_2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_2|rascSaida7seg[1]~1_combout\ = (!\MUX_Saida_Placa|saida_MUX[9]~9_combout\ & (!\MUX_Saida_Placa|saida_MUX[10]~8_combout\ & (!\MUX_Saida_Placa|saida_MUX[8]~7_combout\ $ (!\MUX_Saida_Placa|saida_MUX[11]~10_combout\)))) # 
-- (\MUX_Saida_Placa|saida_MUX[9]~9_combout\ & ((!\MUX_Saida_Placa|saida_MUX[8]~7_combout\ & ((!\MUX_Saida_Placa|saida_MUX[11]~10_combout\))) # (\MUX_Saida_Placa|saida_MUX[8]~7_combout\ & (!\MUX_Saida_Placa|saida_MUX[10]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111010000100010011101000010001001110100001000100111010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[8]~7_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[10]~8_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[9]~9_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[11]~10_combout\,
	combout => \DEC_2|rascSaida7seg[1]~1_combout\);

\DEC_2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_2|rascSaida7seg[2]~2_combout\ = (!\MUX_Saida_Placa|saida_MUX[10]~8_combout\ & (!\MUX_Saida_Placa|saida_MUX[11]~10_combout\ & ((\MUX_Saida_Placa|saida_MUX[9]~9_combout\) # (\MUX_Saida_Placa|saida_MUX[8]~7_combout\)))) # 
-- (\MUX_Saida_Placa|saida_MUX[10]~8_combout\ & (\MUX_Saida_Placa|saida_MUX[8]~7_combout\ & (\MUX_Saida_Placa|saida_MUX[9]~9_combout\ & \MUX_Saida_Placa|saida_MUX[11]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000001010011000000000101001100000000010100110000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[8]~7_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[10]~8_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[9]~9_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[11]~10_combout\,
	combout => \DEC_2|rascSaida7seg[2]~2_combout\);

\DEC_2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_2|rascSaida7seg[3]~3_combout\ = (!\MUX_Saida_Placa|saida_MUX[9]~9_combout\ & (\MUX_Saida_Placa|saida_MUX[11]~10_combout\ & (!\MUX_Saida_Placa|saida_MUX[8]~7_combout\ $ (!\MUX_Saida_Placa|saida_MUX[10]~8_combout\)))) # 
-- (\MUX_Saida_Placa|saida_MUX[9]~9_combout\ & ((!\MUX_Saida_Placa|saida_MUX[8]~7_combout\ & (!\MUX_Saida_Placa|saida_MUX[10]~8_combout\)) # (\MUX_Saida_Placa|saida_MUX[8]~7_combout\ & (\MUX_Saida_Placa|saida_MUX[10]~8_combout\ & 
-- !\MUX_Saida_Placa|saida_MUX[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000101101000001000010110100000100001011010000010000101101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[8]~7_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[9]~9_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[10]~8_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[11]~10_combout\,
	combout => \DEC_2|rascSaida7seg[3]~3_combout\);

\DEC_2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_2|rascSaida7seg[4]~4_combout\ = ( \MUX_Saida_Placa|saida_MUX[10]~8_combout\ & ( \MUX_Saida_Placa|saida_MUX[9]~9_combout\ & ( (\MUX_Saida_Placa|saida_MUX[11]~10_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(8)))) # (\SW[0]~input_o\ & 
-- (\ULA|ULA8|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[10]~8_combout\ & ( \MUX_Saida_Placa|saida_MUX[9]~9_combout\ & ( (\MUX_Saida_Placa|saida_MUX[11]~10_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(8)))) # 
-- (\SW[0]~input_o\ & (\ULA|ULA8|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[10]~8_combout\ & ( !\MUX_Saida_Placa|saida_MUX[9]~9_combout\ & ( (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(8)))) # (\SW[0]~input_o\ & 
-- (\ULA|ULA8|MUX_Selecao|saida_MUX~1_combout\)) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[10]~8_combout\ & ( !\MUX_Saida_Placa|saida_MUX[9]~9_combout\ & ( \MUX_Saida_Placa|saida_MUX[11]~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000111100111100000001010001010000000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[11]~10_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ULA8|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \REG_PC|ALT_INV_DOUT\(8),
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[10]~8_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[9]~9_combout\,
	combout => \DEC_2|rascSaida7seg[4]~4_combout\);

\DEC_2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_2|rascSaida7seg[5]~5_combout\ = ( \MUX_Saida_Placa|saida_MUX[10]~8_combout\ & ( \MUX_Saida_Placa|saida_MUX[9]~9_combout\ & ( (!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(11)))) # (\SW[0]~input_o\ & (!\ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\)) ) ) ) # ( 
-- !\MUX_Saida_Placa|saida_MUX[10]~8_combout\ & ( \MUX_Saida_Placa|saida_MUX[9]~9_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[8]~7_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(11)))) # (\SW[0]~input_o\ & (!\ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\)))) ) 
-- ) ) # ( \MUX_Saida_Placa|saida_MUX[10]~8_combout\ & ( !\MUX_Saida_Placa|saida_MUX[9]~9_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[8]~7_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(11)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[10]~8_combout\ & ( !\MUX_Saida_Placa|saida_MUX[9]~9_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[8]~7_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(11)))) # 
-- (\SW[0]~input_o\ & (\ULA|ULA11|MUX_Selecao|saida_MUX~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000111001000000000011100100000000001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA11|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(11),
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[8]~7_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[10]~8_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[9]~9_combout\,
	combout => \DEC_2|rascSaida7seg[5]~5_combout\);

\DEC_2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_2|rascSaida7seg[6]~6_combout\ = (!\MUX_Saida_Placa|saida_MUX[8]~7_combout\ & (\MUX_Saida_Placa|saida_MUX[11]~10_combout\ & (!\MUX_Saida_Placa|saida_MUX[10]~8_combout\ $ (!\MUX_Saida_Placa|saida_MUX[9]~9_combout\)))) # 
-- (\MUX_Saida_Placa|saida_MUX[8]~7_combout\ & (!\MUX_Saida_Placa|saida_MUX[9]~9_combout\ & (!\MUX_Saida_Placa|saida_MUX[10]~8_combout\ $ (\MUX_Saida_Placa|saida_MUX[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000111000010000000011100001000000001110000100000000111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[8]~7_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[10]~8_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[9]~9_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[11]~10_combout\,
	combout => \DEC_2|rascSaida7seg[6]~6_combout\);

\INC_PC|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~45_sumout\ = SUM(( \REG_PC|DOUT\(12) ) + ( GND ) + ( \INC_PC|Add0~26\ ))
-- \INC_PC|Add0~46\ = CARRY(( \REG_PC|DOUT\(12) ) + ( GND ) + ( \INC_PC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(12),
	cin => \INC_PC|Add0~26\,
	sumout => \INC_PC|Add0~45_sumout\,
	cout => \INC_PC|Add0~46\);

\soma_pc_etx|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~41_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~45_sumout\ ) + ( \soma_pc_etx|Add0~22\ ))
-- \soma_pc_etx|Add0~42\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~45_sumout\ ) + ( \soma_pc_etx|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~45_sumout\,
	cin => \soma_pc_etx|Add0~22\,
	sumout => \soma_pc_etx|Add0~41_sumout\,
	cout => \soma_pc_etx|Add0~42\);

\MUX_Entrada_PC|saida_MUX[12]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[12]~7_combout\ = ( \INC_PC|Add0~45_sumout\ & ( \soma_pc_etx|Add0~41_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~45_sumout\ & ( \soma_pc_etx|Add0~41_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~45_sumout\ & ( !\soma_pc_etx|Add0~41_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~45_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~41_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[12]~7_combout\);

\REG_PC|DOUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(12));

\INC_PC|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~53_sumout\ = SUM(( \REG_PC|DOUT\(13) ) + ( GND ) + ( \INC_PC|Add0~46\ ))
-- \INC_PC|Add0~54\ = CARRY(( \REG_PC|DOUT\(13) ) + ( GND ) + ( \INC_PC|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(13),
	cin => \INC_PC|Add0~46\,
	sumout => \INC_PC|Add0~53_sumout\,
	cout => \INC_PC|Add0~54\);

\soma_pc_etx|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~49_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~53_sumout\ ) + ( \soma_pc_etx|Add0~42\ ))
-- \soma_pc_etx|Add0~50\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~53_sumout\ ) + ( \soma_pc_etx|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~53_sumout\,
	cin => \soma_pc_etx|Add0~42\,
	sumout => \soma_pc_etx|Add0~49_sumout\,
	cout => \soma_pc_etx|Add0~50\);

\MUX_Entrada_PC|saida_MUX[13]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[13]~9_combout\ = ( \INC_PC|Add0~53_sumout\ & ( \soma_pc_etx|Add0~49_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~53_sumout\ & ( \soma_pc_etx|Add0~49_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~53_sumout\ & ( !\soma_pc_etx|Add0~49_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~53_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~49_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[13]~9_combout\);

\REG_PC|DOUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(13));

\INC_PC|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~49_sumout\ = SUM(( \REG_PC|DOUT\(14) ) + ( GND ) + ( \INC_PC|Add0~54\ ))
-- \INC_PC|Add0~50\ = CARRY(( \REG_PC|DOUT\(14) ) + ( GND ) + ( \INC_PC|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(14),
	cin => \INC_PC|Add0~54\,
	sumout => \INC_PC|Add0~49_sumout\,
	cout => \INC_PC|Add0~50\);

\soma_pc_etx|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~45_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~49_sumout\ ) + ( \soma_pc_etx|Add0~50\ ))
-- \soma_pc_etx|Add0~46\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~49_sumout\ ) + ( \soma_pc_etx|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~49_sumout\,
	cin => \soma_pc_etx|Add0~50\,
	sumout => \soma_pc_etx|Add0~45_sumout\,
	cout => \soma_pc_etx|Add0~46\);

\MUX_Entrada_PC|saida_MUX[14]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[14]~8_combout\ = ( \INC_PC|Add0~49_sumout\ & ( \soma_pc_etx|Add0~45_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~49_sumout\ & ( \soma_pc_etx|Add0~45_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~49_sumout\ & ( !\soma_pc_etx|Add0~45_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~49_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~45_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[14]~8_combout\);

\REG_PC|DOUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[14]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(14));

\INC_PC|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~41_sumout\ = SUM(( \REG_PC|DOUT\(15) ) + ( GND ) + ( \INC_PC|Add0~50\ ))
-- \INC_PC|Add0~42\ = CARRY(( \REG_PC|DOUT\(15) ) + ( GND ) + ( \INC_PC|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(15),
	cin => \INC_PC|Add0~50\,
	sumout => \INC_PC|Add0~41_sumout\,
	cout => \INC_PC|Add0~42\);

\soma_pc_etx|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~37_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~41_sumout\ ) + ( \soma_pc_etx|Add0~46\ ))
-- \soma_pc_etx|Add0~38\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~41_sumout\ ) + ( \soma_pc_etx|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~41_sumout\,
	cin => \soma_pc_etx|Add0~46\,
	sumout => \soma_pc_etx|Add0~37_sumout\,
	cout => \soma_pc_etx|Add0~38\);

\MUX_Entrada_PC|saida_MUX[15]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[15]~6_combout\ = ( \INC_PC|Add0~41_sumout\ & ( \soma_pc_etx|Add0~37_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~41_sumout\ & ( \soma_pc_etx|Add0~37_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~41_sumout\ & ( !\soma_pc_etx|Add0~37_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~41_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~37_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[15]~6_combout\);

\REG_PC|DOUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[15]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(15));

\MUX_Saida_Placa|saida_MUX[12]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[12]~11_combout\ = (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(12)))) # (\SW[0]~input_o\ & (\ULA|ULA12|MUX_Selecao|saida_MUX~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA12|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(12),
	combout => \MUX_Saida_Placa|saida_MUX[12]~11_combout\);

\MUX_Saida_Placa|saida_MUX[14]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[14]~12_combout\ = (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(14)))) # (\SW[0]~input_o\ & (\ULA|ULA14|MUX_Selecao|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA14|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(14),
	combout => \MUX_Saida_Placa|saida_MUX[14]~12_combout\);

\MUX_Saida_Placa|saida_MUX[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[13]~13_combout\ = ( !\ULA|ULA13|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(13) & ( (\SW[0]~input_o\ & ((!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # (!\ULA|ULA12|Somador|cOut~combout\ $ 
-- (\ULA|ULA13|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA13|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(13) & ( !\SW[0]~input_o\ ) ) ) # ( !\ULA|ULA13|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(13) & ( 
-- (!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # ((!\SW[0]~input_o\) # (!\ULA|ULA12|Somador|cOut~combout\ $ (\ULA|ULA13|Somador|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111001111111110000000000000000111110010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA12|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA13|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA13|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(13),
	combout => \MUX_Saida_Placa|saida_MUX[13]~13_combout\);

\DEC_3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_3|rascSaida7seg[0]~0_combout\ = ( \MUX_Saida_Placa|saida_MUX[14]~12_combout\ & ( \MUX_Saida_Placa|saida_MUX[13]~13_combout\ & ( !\MUX_Saida_Placa|saida_MUX[12]~11_combout\ $ (((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(15)))) # (\SW[0]~input_o\ & 
-- (\ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[14]~12_combout\ & ( \MUX_Saida_Placa|saida_MUX[13]~13_combout\ & ( (\MUX_Saida_Placa|saida_MUX[12]~11_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(15)))) # 
-- (\SW[0]~input_o\ & (!\ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[14]~12_combout\ & ( !\MUX_Saida_Placa|saida_MUX[13]~13_combout\ & ( (\MUX_Saida_Placa|saida_MUX[12]~11_combout\ & ((!\SW[0]~input_o\ & 
-- ((\REG_PC|DOUT\(15)))) # (\SW[0]~input_o\ & (\ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000000000000000000000000110010101100101000110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA15|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datab => \REG_PC|ALT_INV_DOUT\(15),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[12]~11_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[14]~12_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[13]~13_combout\,
	combout => \DEC_3|rascSaida7seg[0]~0_combout\);

\MUX_Saida_Placa|saida_MUX[15]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[15]~14_combout\ = ( !\ULA|ULA15|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(15) & ( (\SW[0]~input_o\ & ((!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # (!\ULA|ULA14|Somador|cOut~combout\ $ 
-- (!\ULA|ULA15|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA15|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(15) & ( !\SW[0]~input_o\ ) ) ) # ( !\ULA|ULA15|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(15) & ( 
-- (!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # ((!\SW[0]~input_o\) # (!\ULA|ULA14|Somador|cOut~combout\ $ (!\ULA|ULA15|Somador|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110110111111110000000000000000111101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA14|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA15|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA15|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(15),
	combout => \MUX_Saida_Placa|saida_MUX[15]~14_combout\);

\DEC_3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_3|rascSaida7seg[1]~1_combout\ = (!\MUX_Saida_Placa|saida_MUX[13]~13_combout\ & ((!\MUX_Saida_Placa|saida_MUX[12]~11_combout\ & (\MUX_Saida_Placa|saida_MUX[14]~12_combout\)) # (\MUX_Saida_Placa|saida_MUX[12]~11_combout\ & 
-- ((!\MUX_Saida_Placa|saida_MUX[15]~14_combout\))))) # (\MUX_Saida_Placa|saida_MUX[13]~13_combout\ & (\MUX_Saida_Placa|saida_MUX[14]~12_combout\ & (!\MUX_Saida_Placa|saida_MUX[12]~11_combout\ $ (\MUX_Saida_Placa|saida_MUX[15]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000100001011100100010000101110010001000010111001000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[12]~11_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[14]~12_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[13]~13_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[15]~14_combout\,
	combout => \DEC_3|rascSaida7seg[1]~1_combout\);

\DEC_3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_3|rascSaida7seg[2]~2_combout\ = (!\MUX_Saida_Placa|saida_MUX[14]~12_combout\ & (!\MUX_Saida_Placa|saida_MUX[12]~11_combout\ & (!\MUX_Saida_Placa|saida_MUX[13]~13_combout\ & \MUX_Saida_Placa|saida_MUX[15]~14_combout\))) # 
-- (\MUX_Saida_Placa|saida_MUX[14]~12_combout\ & (!\MUX_Saida_Placa|saida_MUX[15]~14_combout\ & ((!\MUX_Saida_Placa|saida_MUX[12]~11_combout\) # (!\MUX_Saida_Placa|saida_MUX[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001010000000001100101000000000110010100000000011001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[12]~11_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[14]~12_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[13]~13_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[15]~14_combout\,
	combout => \DEC_3|rascSaida7seg[2]~2_combout\);

\DEC_3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_3|rascSaida7seg[3]~3_combout\ = (!\MUX_Saida_Placa|saida_MUX[13]~13_combout\ & ((!\MUX_Saida_Placa|saida_MUX[12]~11_combout\ & (!\MUX_Saida_Placa|saida_MUX[14]~12_combout\ & !\MUX_Saida_Placa|saida_MUX[15]~14_combout\)) # 
-- (\MUX_Saida_Placa|saida_MUX[12]~11_combout\ & (\MUX_Saida_Placa|saida_MUX[14]~12_combout\)))) # (\MUX_Saida_Placa|saida_MUX[13]~13_combout\ & (\MUX_Saida_Placa|saida_MUX[15]~14_combout\ & (!\MUX_Saida_Placa|saida_MUX[12]~11_combout\ $ 
-- (!\MUX_Saida_Placa|saida_MUX[14]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000010110100001000001011010000100000101101000010000010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[12]~11_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[13]~13_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[14]~12_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[15]~14_combout\,
	combout => \DEC_3|rascSaida7seg[3]~3_combout\);

\DEC_3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_3|rascSaida7seg[4]~4_combout\ = ( \MUX_Saida_Placa|saida_MUX[14]~12_combout\ & ( \MUX_Saida_Placa|saida_MUX[13]~13_combout\ & ( \MUX_Saida_Placa|saida_MUX[15]~14_combout\ ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[14]~12_combout\ & ( 
-- \MUX_Saida_Placa|saida_MUX[13]~13_combout\ & ( (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(12)))) # (\SW[0]~input_o\ & (\ULA|ULA12|MUX_Selecao|saida_MUX~1_combout\)) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[14]~12_combout\ & ( 
-- !\MUX_Saida_Placa|saida_MUX[13]~13_combout\ & ( (\MUX_Saida_Placa|saida_MUX[15]~14_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(12)))) # (\SW[0]~input_o\ & (\ULA|ULA12|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( 
-- !\MUX_Saida_Placa|saida_MUX[14]~12_combout\ & ( !\MUX_Saida_Placa|saida_MUX[13]~13_combout\ & ( (\MUX_Saida_Placa|saida_MUX[15]~14_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(12)))) # (\SW[0]~input_o\ & (\ULA|ULA12|MUX_Selecao|saida_MUX~1_combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000011110011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[15]~14_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ULA12|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \REG_PC|ALT_INV_DOUT\(12),
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[14]~12_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[13]~13_combout\,
	combout => \DEC_3|rascSaida7seg[4]~4_combout\);

\DEC_3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_3|rascSaida7seg[5]~5_combout\ = ( \MUX_Saida_Placa|saida_MUX[14]~12_combout\ & ( \MUX_Saida_Placa|saida_MUX[13]~13_combout\ & ( (\MUX_Saida_Placa|saida_MUX[12]~11_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(15)))) # (\SW[0]~input_o\ & 
-- (\ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[14]~12_combout\ & ( \MUX_Saida_Placa|saida_MUX[13]~13_combout\ & ( (\MUX_Saida_Placa|saida_MUX[12]~11_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(15)))) # 
-- (\SW[0]~input_o\ & (!\ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[14]~12_combout\ & ( !\MUX_Saida_Placa|saida_MUX[13]~13_combout\ & ( (\MUX_Saida_Placa|saida_MUX[12]~11_combout\ & ((!\SW[0]~input_o\ & 
-- ((!\REG_PC|DOUT\(15)))) # (\SW[0]~input_o\ & (!\ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[14]~12_combout\ & ( !\MUX_Saida_Placa|saida_MUX[13]~13_combout\ & ( (!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(15)))) # 
-- (\SW[0]~input_o\ & (!\ULA|ULA15|MUX_Selecao|saida_MUX~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100000000001110010000000000111001000000000000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA15|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(15),
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[12]~11_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[14]~12_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[13]~13_combout\,
	combout => \DEC_3|rascSaida7seg[5]~5_combout\);

\DEC_3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_3|rascSaida7seg[6]~6_combout\ = (!\MUX_Saida_Placa|saida_MUX[12]~11_combout\ & (\MUX_Saida_Placa|saida_MUX[13]~13_combout\ & (!\MUX_Saida_Placa|saida_MUX[14]~12_combout\ $ (!\MUX_Saida_Placa|saida_MUX[15]~14_combout\)))) # 
-- (\MUX_Saida_Placa|saida_MUX[12]~11_combout\ & (\MUX_Saida_Placa|saida_MUX[15]~14_combout\ & (!\MUX_Saida_Placa|saida_MUX[14]~12_combout\ $ (!\MUX_Saida_Placa|saida_MUX[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000011100000000100001110000000010000111000000001000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[12]~11_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[14]~12_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[13]~13_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[15]~14_combout\,
	combout => \DEC_3|rascSaida7seg[6]~6_combout\);

\INC_PC|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~61_sumout\ = SUM(( \REG_PC|DOUT\(16) ) + ( GND ) + ( \INC_PC|Add0~42\ ))
-- \INC_PC|Add0~62\ = CARRY(( \REG_PC|DOUT\(16) ) + ( GND ) + ( \INC_PC|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(16),
	cin => \INC_PC|Add0~42\,
	sumout => \INC_PC|Add0~61_sumout\,
	cout => \INC_PC|Add0~62\);

\soma_pc_etx|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~57_sumout\ = SUM(( (!\REG_PC|DOUT\(7) & \ROM|memROM~0_combout\) ) + ( \INC_PC|Add0~61_sumout\ ) + ( \soma_pc_etx|Add0~38\ ))
-- \soma_pc_etx|Add0~58\ = CARRY(( (!\REG_PC|DOUT\(7) & \ROM|memROM~0_combout\) ) + ( \INC_PC|Add0~61_sumout\ ) + ( \soma_pc_etx|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(7),
	datad => \ROM|ALT_INV_memROM~0_combout\,
	dataf => \INC_PC|ALT_INV_Add0~61_sumout\,
	cin => \soma_pc_etx|Add0~38\,
	sumout => \soma_pc_etx|Add0~57_sumout\,
	cout => \soma_pc_etx|Add0~58\);

\MUX_Entrada_PC|saida_MUX[16]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[16]~36_combout\ = ( !\decoder_instru|Equal0~0_combout\ & ( (!\comb~8_combout\ & (((\INC_PC|Add0~61_sumout\)))) # (\comb~8_combout\ & ((!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & 
-- ((\soma_pc_etx|Add0~57_sumout\))) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (\INC_PC|Add0~61_sumout\)))) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (\INC_PC|Add0~61_sumout\)))) ) ) # ( \decoder_instru|Equal0~0_combout\ & ( 
-- (((\ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101100001111000011110000111101001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datae => \decoder_instru|ALT_INV_Equal0~0_combout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~57_sumout\,
	datag => \INC_PC|ALT_INV_Add0~61_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[16]~36_combout\);

\REG_PC|DOUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[16]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(16));

\INC_PC|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~69_sumout\ = SUM(( \REG_PC|DOUT\(17) ) + ( GND ) + ( \INC_PC|Add0~62\ ))
-- \INC_PC|Add0~70\ = CARRY(( \REG_PC|DOUT\(17) ) + ( GND ) + ( \INC_PC|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(17),
	cin => \INC_PC|Add0~62\,
	sumout => \INC_PC|Add0~69_sumout\,
	cout => \INC_PC|Add0~70\);

\soma_pc_etx|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~65_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~69_sumout\ ) + ( \soma_pc_etx|Add0~58\ ))
-- \soma_pc_etx|Add0~66\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~69_sumout\ ) + ( \soma_pc_etx|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~69_sumout\,
	cin => \soma_pc_etx|Add0~58\,
	sumout => \soma_pc_etx|Add0~65_sumout\,
	cout => \soma_pc_etx|Add0~66\);

\MUX_Entrada_PC|saida_MUX[17]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[17]~10_combout\ = ( \INC_PC|Add0~69_sumout\ & ( \soma_pc_etx|Add0~65_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~69_sumout\ & ( \soma_pc_etx|Add0~65_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~69_sumout\ & ( !\soma_pc_etx|Add0~65_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~69_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~65_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[17]~10_combout\);

\REG_PC|DOUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[17]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(17));

\INC_PC|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~65_sumout\ = SUM(( \REG_PC|DOUT\(18) ) + ( GND ) + ( \INC_PC|Add0~70\ ))
-- \INC_PC|Add0~66\ = CARRY(( \REG_PC|DOUT\(18) ) + ( GND ) + ( \INC_PC|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(18),
	cin => \INC_PC|Add0~70\,
	sumout => \INC_PC|Add0~65_sumout\,
	cout => \INC_PC|Add0~66\);

\soma_pc_etx|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~61_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~65_sumout\ ) + ( \soma_pc_etx|Add0~66\ ))
-- \soma_pc_etx|Add0~62\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~65_sumout\ ) + ( \soma_pc_etx|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~65_sumout\,
	cin => \soma_pc_etx|Add0~66\,
	sumout => \soma_pc_etx|Add0~61_sumout\,
	cout => \soma_pc_etx|Add0~62\);

\MUX_Entrada_PC|saida_MUX[18]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[18]~32_combout\ = ( !\decoder_instru|Equal0~0_combout\ & ( (!\comb~8_combout\ & (((\INC_PC|Add0~65_sumout\)))) # (\comb~8_combout\ & ((!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & 
-- ((\soma_pc_etx|Add0~61_sumout\))) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (\INC_PC|Add0~65_sumout\)))) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (\INC_PC|Add0~65_sumout\)))) ) ) # ( \decoder_instru|Equal0~0_combout\ & ( 
-- (((!\ROM|memROM~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101100001111111100001111000001001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ROM|ALT_INV_memROM~14_combout\,
	datad => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datae => \decoder_instru|ALT_INV_Equal0~0_combout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~61_sumout\,
	datag => \INC_PC|ALT_INV_Add0~65_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[18]~32_combout\);

\REG_PC|DOUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[18]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(18));

\INC_PC|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~57_sumout\ = SUM(( \REG_PC|DOUT\(19) ) + ( GND ) + ( \INC_PC|Add0~66\ ))
-- \INC_PC|Add0~58\ = CARRY(( \REG_PC|DOUT\(19) ) + ( GND ) + ( \INC_PC|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(19),
	cin => \INC_PC|Add0~66\,
	sumout => \INC_PC|Add0~57_sumout\,
	cout => \INC_PC|Add0~58\);

\soma_pc_etx|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~53_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~57_sumout\ ) + ( \soma_pc_etx|Add0~62\ ))
-- \soma_pc_etx|Add0~54\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~57_sumout\ ) + ( \soma_pc_etx|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~57_sumout\,
	cin => \soma_pc_etx|Add0~62\,
	sumout => \soma_pc_etx|Add0~53_sumout\,
	cout => \soma_pc_etx|Add0~54\);

\MUX_Entrada_PC|saida_MUX[19]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[19]~40_combout\ = ( !\decoder_instru|Equal0~0_combout\ & ( (!\comb~8_combout\ & (((\INC_PC|Add0~57_sumout\)))) # (\comb~8_combout\ & ((!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & 
-- ((\soma_pc_etx|Add0~53_sumout\))) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (\INC_PC|Add0~57_sumout\)))) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (\INC_PC|Add0~57_sumout\)))) ) ) # ( \decoder_instru|Equal0~0_combout\ & ( 
-- (((\ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101100001111000011110000111101001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datae => \decoder_instru|ALT_INV_Equal0~0_combout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~53_sumout\,
	datag => \INC_PC|ALT_INV_Add0~57_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[19]~40_combout\);

\REG_PC|DOUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[19]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(19));

\MUX_Saida_Placa|saida_MUX[16]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[16]~15_combout\ = ( !\ULA|ULA16|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(16) & ( (\SW[0]~input_o\ & ((!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # (!\ULA|ULA15|Somador|cOut~combout\ $ 
-- (!\ULA|ULA16|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA16|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(16) & ( !\SW[0]~input_o\ ) ) ) # ( !\ULA|ULA16|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(16) & ( 
-- (!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # ((!\SW[0]~input_o\) # (!\ULA|ULA15|Somador|cOut~combout\ $ (!\ULA|ULA16|Somador|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110110111111110000000000000000111101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA15|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA16|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA16|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(16),
	combout => \MUX_Saida_Placa|saida_MUX[16]~15_combout\);

\MUX_Saida_Placa|saida_MUX[18]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[18]~16_combout\ = ( !\ULA|ULA18|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(18) & ( (\SW[0]~input_o\ & ((!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # (!\ULA|ULA17|Somador|cOut~combout\ $ 
-- (\ULA|ULA18|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA18|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(18) & ( !\SW[0]~input_o\ ) ) ) # ( !\ULA|ULA18|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(18) & ( 
-- (!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # ((!\SW[0]~input_o\) # (!\ULA|ULA17|Somador|cOut~combout\ $ (\ULA|ULA18|Somador|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111001111111110000000000000000111110010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA17|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA18|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA18|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(18),
	combout => \MUX_Saida_Placa|saida_MUX[18]~16_combout\);

\MUX_Saida_Placa|saida_MUX[17]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[17]~17_combout\ = (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(17)))) # (\SW[0]~input_o\ & (\ULA|ULA17|MUX_Selecao|saida_MUX~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA17|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(17),
	combout => \MUX_Saida_Placa|saida_MUX[17]~17_combout\);

\DEC_4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_4|rascSaida7seg[0]~0_combout\ = ( \MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( \MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[16]~15_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(19)))) # (\SW[0]~input_o\ & 
-- (\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)))) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( !\MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[16]~15_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(19)))) # 
-- (\SW[0]~input_o\ & (!\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( !\MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( !\MUX_Saida_Placa|saida_MUX[16]~15_combout\ $ (((!\SW[0]~input_o\ & 
-- ((!\REG_PC|DOUT\(19)))) # (\SW[0]~input_o\ & (!\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010111001010110010100000000000000000000000000011010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA19|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \REG_PC|ALT_INV_DOUT\(19),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[16]~15_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[18]~16_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[17]~17_combout\,
	combout => \DEC_4|rascSaida7seg[0]~0_combout\);

\DEC_4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_4|rascSaida7seg[1]~1_combout\ = ( \MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( \MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[16]~15_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(19)))) # (\SW[0]~input_o\ & 
-- (\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( \MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(19)))) # (\SW[0]~input_o\ & 
-- (\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\))) # (\MUX_Saida_Placa|saida_MUX[16]~15_combout\) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( !\MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( !\MUX_Saida_Placa|saida_MUX[16]~15_combout\ $ 
-- (((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(19)))) # (\SW[0]~input_o\ & (\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010000011011000000000000000000011011111111110001101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA19|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(19),
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[16]~15_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[18]~16_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[17]~17_combout\,
	combout => \DEC_4|rascSaida7seg[1]~1_combout\);

\DEC_4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_4|rascSaida7seg[2]~2_combout\ = ( \MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( \MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (\MUX_Saida_Placa|saida_MUX[16]~15_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(19)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( \MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(19)))) # (\SW[0]~input_o\ & 
-- (\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( !\MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (\MUX_Saida_Placa|saida_MUX[16]~15_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(19)))) # 
-- (\SW[0]~input_o\ & (\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011000000000000000000011011000110110000000011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA19|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(19),
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[16]~15_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[18]~16_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[17]~17_combout\,
	combout => \DEC_4|rascSaida7seg[2]~2_combout\);

\MUX_Saida_Placa|saida_MUX[19]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[19]~18_combout\ = (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(19)))) # (\SW[0]~input_o\ & (\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA19|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(19),
	combout => \MUX_Saida_Placa|saida_MUX[19]~18_combout\);

\DEC_4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_4|rascSaida7seg[3]~3_combout\ = (!\MUX_Saida_Placa|saida_MUX[17]~17_combout\ & (!\MUX_Saida_Placa|saida_MUX[19]~18_combout\ & (!\MUX_Saida_Placa|saida_MUX[16]~15_combout\ $ (!\MUX_Saida_Placa|saida_MUX[18]~16_combout\)))) # 
-- (\MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ((!\MUX_Saida_Placa|saida_MUX[16]~15_combout\ & (!\MUX_Saida_Placa|saida_MUX[18]~16_combout\)) # (\MUX_Saida_Placa|saida_MUX[16]~15_combout\ & (\MUX_Saida_Placa|saida_MUX[18]~16_combout\ & 
-- \MUX_Saida_Placa|saida_MUX[19]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100000100001011010000010000101101000001000010110100000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[16]~15_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[17]~17_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[18]~16_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[19]~18_combout\,
	combout => \DEC_4|rascSaida7seg[3]~3_combout\);

\DEC_4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_4|rascSaida7seg[4]~4_combout\ = ( \MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( \MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[19]~18_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(16)))) # (\SW[0]~input_o\ & 
-- (\ULA|ULA16|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( \MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[19]~18_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(16)))) # 
-- (\SW[0]~input_o\ & (\ULA|ULA16|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( !\MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(16)))) # (\SW[0]~input_o\ & 
-- (\ULA|ULA16|MUX_Selecao|saida_MUX~1_combout\)) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( !\MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( !\MUX_Saida_Placa|saida_MUX[19]~18_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000111100111100000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[19]~18_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ULA16|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \REG_PC|ALT_INV_DOUT\(16),
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[18]~16_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[17]~17_combout\,
	combout => \DEC_4|rascSaida7seg[4]~4_combout\);

\DEC_4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_4|rascSaida7seg[5]~5_combout\ = ( \MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( \MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(19)))) # (\SW[0]~input_o\ & (!\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)) ) ) ) # ( 
-- !\MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( \MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[16]~15_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(19)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)))) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( !\MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[16]~15_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(19)))) # 
-- (\SW[0]~input_o\ & (!\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( !\MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[16]~15_combout\ & ((!\SW[0]~input_o\ & 
-- ((\REG_PC|DOUT\(19)))) # (\SW[0]~input_o\ & (\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000111001000000000011100100000000001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA19|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(19),
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[16]~15_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[18]~16_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[17]~17_combout\,
	combout => \DEC_4|rascSaida7seg[5]~5_combout\);

\DEC_4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_4|rascSaida7seg[6]~6_combout\ = ( !\MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( \MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[16]~15_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(19)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)))) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( !\MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(19)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[18]~16_combout\ & ( !\MUX_Saida_Placa|saida_MUX[17]~17_combout\ & ( (\MUX_Saida_Placa|saida_MUX[16]~15_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(19)))) # 
-- (\SW[0]~input_o\ & (\ULA|ULA19|MUX_Selecao|saida_MUX~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011111001001110010011100100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA19|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(19),
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[16]~15_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[18]~16_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[17]~17_combout\,
	combout => \DEC_4|rascSaida7seg[6]~6_combout\);

\INC_PC|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~77_sumout\ = SUM(( \REG_PC|DOUT\(20) ) + ( GND ) + ( \INC_PC|Add0~58\ ))
-- \INC_PC|Add0~78\ = CARRY(( \REG_PC|DOUT\(20) ) + ( GND ) + ( \INC_PC|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(20),
	cin => \INC_PC|Add0~58\,
	sumout => \INC_PC|Add0~77_sumout\,
	cout => \INC_PC|Add0~78\);

\soma_pc_etx|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~73_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~77_sumout\ ) + ( \soma_pc_etx|Add0~54\ ))
-- \soma_pc_etx|Add0~74\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~77_sumout\ ) + ( \soma_pc_etx|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~77_sumout\,
	cin => \soma_pc_etx|Add0~54\,
	sumout => \soma_pc_etx|Add0~73_sumout\,
	cout => \soma_pc_etx|Add0~74\);

\MUX_Entrada_PC|saida_MUX[20]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[20]~11_combout\ = ( \INC_PC|Add0~77_sumout\ & ( \soma_pc_etx|Add0~73_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~77_sumout\ & ( \soma_pc_etx|Add0~73_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~77_sumout\ & ( !\soma_pc_etx|Add0~73_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~77_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~73_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[20]~11_combout\);

\REG_PC|DOUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[20]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(20));

\INC_PC|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~85_sumout\ = SUM(( \REG_PC|DOUT\(21) ) + ( GND ) + ( \INC_PC|Add0~78\ ))
-- \INC_PC|Add0~86\ = CARRY(( \REG_PC|DOUT\(21) ) + ( GND ) + ( \INC_PC|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(21),
	cin => \INC_PC|Add0~78\,
	sumout => \INC_PC|Add0~85_sumout\,
	cout => \INC_PC|Add0~86\);

\soma_pc_etx|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~81_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~85_sumout\ ) + ( \soma_pc_etx|Add0~74\ ))
-- \soma_pc_etx|Add0~82\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~85_sumout\ ) + ( \soma_pc_etx|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~85_sumout\,
	cin => \soma_pc_etx|Add0~74\,
	sumout => \soma_pc_etx|Add0~81_sumout\,
	cout => \soma_pc_etx|Add0~82\);

\MUX_Entrada_PC|saida_MUX[21]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[21]~24_combout\ = ( !\decoder_instru|Equal0~0_combout\ & ( (!\comb~8_combout\ & (((\INC_PC|Add0~85_sumout\)))) # (\comb~8_combout\ & ((!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & 
-- ((\soma_pc_etx|Add0~81_sumout\))) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (\INC_PC|Add0~85_sumout\)))) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (\INC_PC|Add0~85_sumout\)))) ) ) # ( \decoder_instru|Equal0~0_combout\ & ( 
-- (((\ROM|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101100001111000011110000111101001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	datad => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datae => \decoder_instru|ALT_INV_Equal0~0_combout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~81_sumout\,
	datag => \INC_PC|ALT_INV_Add0~85_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[21]~24_combout\);

\REG_PC|DOUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[21]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(21));

\INC_PC|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~81_sumout\ = SUM(( \REG_PC|DOUT\(22) ) + ( GND ) + ( \INC_PC|Add0~86\ ))
-- \INC_PC|Add0~82\ = CARRY(( \REG_PC|DOUT\(22) ) + ( GND ) + ( \INC_PC|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(22),
	cin => \INC_PC|Add0~86\,
	sumout => \INC_PC|Add0~81_sumout\,
	cout => \INC_PC|Add0~82\);

\soma_pc_etx|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~77_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~81_sumout\ ) + ( \soma_pc_etx|Add0~82\ ))
-- \soma_pc_etx|Add0~78\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~81_sumout\ ) + ( \soma_pc_etx|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~81_sumout\,
	cin => \soma_pc_etx|Add0~82\,
	sumout => \soma_pc_etx|Add0~77_sumout\,
	cout => \soma_pc_etx|Add0~78\);

\MUX_Entrada_PC|saida_MUX[22]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[22]~12_combout\ = ( \INC_PC|Add0~81_sumout\ & ( \soma_pc_etx|Add0~77_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~81_sumout\ & ( \soma_pc_etx|Add0~77_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~81_sumout\ & ( !\soma_pc_etx|Add0~77_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~81_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~77_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[22]~12_combout\);

\REG_PC|DOUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[22]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(22));

\INC_PC|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~73_sumout\ = SUM(( \REG_PC|DOUT\(23) ) + ( GND ) + ( \INC_PC|Add0~82\ ))
-- \INC_PC|Add0~74\ = CARRY(( \REG_PC|DOUT\(23) ) + ( GND ) + ( \INC_PC|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(23),
	cin => \INC_PC|Add0~82\,
	sumout => \INC_PC|Add0~73_sumout\,
	cout => \INC_PC|Add0~74\);

\soma_pc_etx|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~69_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~73_sumout\ ) + ( \soma_pc_etx|Add0~78\ ))
-- \soma_pc_etx|Add0~70\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~73_sumout\ ) + ( \soma_pc_etx|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~73_sumout\,
	cin => \soma_pc_etx|Add0~78\,
	sumout => \soma_pc_etx|Add0~69_sumout\,
	cout => \soma_pc_etx|Add0~70\);

\MUX_Entrada_PC|saida_MUX[23]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[23]~28_combout\ = ( !\decoder_instru|Equal0~0_combout\ & ( (!\comb~8_combout\ & (((\INC_PC|Add0~73_sumout\)))) # (\comb~8_combout\ & ((!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & 
-- ((\soma_pc_etx|Add0~69_sumout\))) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (\INC_PC|Add0~73_sumout\)))) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (\INC_PC|Add0~73_sumout\)))) ) ) # ( \decoder_instru|Equal0~0_combout\ & ( 
-- (((\ROM|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101100001111000011110000111101001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datae => \decoder_instru|ALT_INV_Equal0~0_combout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~69_sumout\,
	datag => \INC_PC|ALT_INV_Add0~73_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[23]~28_combout\);

\REG_PC|DOUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[23]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(23));

\MUX_Saida_Placa|saida_MUX[20]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[20]~19_combout\ = ( !\ULA|ULA20|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(20) & ( (\SW[0]~input_o\ & ((!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # (!\ULA|ULA19|Somador|cOut~combout\ $ 
-- (!\ULA|ULA20|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA20|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(20) & ( !\SW[0]~input_o\ ) ) ) # ( !\ULA|ULA20|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(20) & ( 
-- (!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # ((!\SW[0]~input_o\) # (!\ULA|ULA19|Somador|cOut~combout\ $ (!\ULA|ULA20|Somador|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110110111111110000000000000000111101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA19|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA20|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA20|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(20),
	combout => \MUX_Saida_Placa|saida_MUX[20]~19_combout\);

\MUX_Saida_Placa|saida_MUX[22]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[22]~20_combout\ = (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(22)))) # (\SW[0]~input_o\ & (\ULA|ULA22|MUX_Selecao|saida_MUX~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA22|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(22),
	combout => \MUX_Saida_Placa|saida_MUX[22]~20_combout\);

\MUX_Saida_Placa|saida_MUX[21]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[21]~21_combout\ = ( !\ULA|ULA21|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(21) & ( (\SW[0]~input_o\ & ((!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # (!\ULA|ULA20|Somador|cOut~combout\ $ 
-- (!\ULA|ULA21|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA21|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(21) & ( !\SW[0]~input_o\ ) ) ) # ( !\ULA|ULA21|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(21) & ( 
-- (!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # ((!\SW[0]~input_o\) # (!\ULA|ULA20|Somador|cOut~combout\ $ (!\ULA|ULA21|Somador|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110110111111110000000000000000111101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA20|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA21|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA21|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(21),
	combout => \MUX_Saida_Placa|saida_MUX[21]~21_combout\);

\DEC_5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_5|rascSaida7seg[0]~0_combout\ = ( \MUX_Saida_Placa|saida_MUX[22]~20_combout\ & ( \MUX_Saida_Placa|saida_MUX[21]~21_combout\ & ( !\MUX_Saida_Placa|saida_MUX[20]~19_combout\ $ (((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(23)))) # (\SW[0]~input_o\ & 
-- (!\ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[22]~20_combout\ & ( \MUX_Saida_Placa|saida_MUX[21]~21_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[20]~19_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(23)))) # 
-- (\SW[0]~input_o\ & (!\ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[22]~20_combout\ & ( !\MUX_Saida_Placa|saida_MUX[21]~21_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[20]~19_combout\ & ((!\SW[0]~input_o\ & 
-- ((\REG_PC|DOUT\(23)))) # (\SW[0]~input_o\ & (\ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000000000000000000011001010000000000011010111001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA23|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datab => \REG_PC|ALT_INV_DOUT\(23),
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[20]~19_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[22]~20_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[21]~21_combout\,
	combout => \DEC_5|rascSaida7seg[0]~0_combout\);

\MUX_Saida_Placa|saida_MUX[23]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[23]~22_combout\ = ( !\ULA|ULA23|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(23) & ( (\SW[0]~input_o\ & ((!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # (!\ULA|ULA22|Somador|cOut~combout\ $ 
-- (\ULA|ULA23|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA23|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(23) & ( !\SW[0]~input_o\ ) ) ) # ( !\ULA|ULA23|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(23) & ( 
-- (!\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\) # ((!\SW[0]~input_o\) # (!\ULA|ULA22|Somador|cOut~combout\ $ (\ULA|ULA23|Somador|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111001111111110000000000000000111110010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA22|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA23|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA23|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(23),
	combout => \MUX_Saida_Placa|saida_MUX[23]~22_combout\);

\DEC_5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_5|rascSaida7seg[1]~1_combout\ = (!\MUX_Saida_Placa|saida_MUX[21]~21_combout\ & ((!\MUX_Saida_Placa|saida_MUX[20]~19_combout\ & ((!\MUX_Saida_Placa|saida_MUX[23]~22_combout\))) # (\MUX_Saida_Placa|saida_MUX[20]~19_combout\ & 
-- (\MUX_Saida_Placa|saida_MUX[22]~20_combout\)))) # (\MUX_Saida_Placa|saida_MUX[21]~21_combout\ & (\MUX_Saida_Placa|saida_MUX[22]~20_combout\ & (!\MUX_Saida_Placa|saida_MUX[20]~19_combout\ $ (!\MUX_Saida_Placa|saida_MUX[23]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000100010010101100010001001010110001000100101011000100010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[20]~19_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[22]~20_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[21]~21_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[23]~22_combout\,
	combout => \DEC_5|rascSaida7seg[1]~1_combout\);

\DEC_5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_5|rascSaida7seg[2]~2_combout\ = (!\MUX_Saida_Placa|saida_MUX[22]~20_combout\ & (\MUX_Saida_Placa|saida_MUX[20]~19_combout\ & (!\MUX_Saida_Placa|saida_MUX[21]~21_combout\ & \MUX_Saida_Placa|saida_MUX[23]~22_combout\))) # 
-- (\MUX_Saida_Placa|saida_MUX[22]~20_combout\ & (!\MUX_Saida_Placa|saida_MUX[23]~22_combout\ & ((!\MUX_Saida_Placa|saida_MUX[21]~21_combout\) # (\MUX_Saida_Placa|saida_MUX[20]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000101000000001100010100000000110001010000000011000101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[20]~19_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[22]~20_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[21]~21_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[23]~22_combout\,
	combout => \DEC_5|rascSaida7seg[2]~2_combout\);

\DEC_5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_5|rascSaida7seg[3]~3_combout\ = (!\MUX_Saida_Placa|saida_MUX[21]~21_combout\ & ((!\MUX_Saida_Placa|saida_MUX[20]~19_combout\ & (\MUX_Saida_Placa|saida_MUX[22]~20_combout\)) # (\MUX_Saida_Placa|saida_MUX[20]~19_combout\ & 
-- (!\MUX_Saida_Placa|saida_MUX[22]~20_combout\ & !\MUX_Saida_Placa|saida_MUX[23]~22_combout\)))) # (\MUX_Saida_Placa|saida_MUX[21]~21_combout\ & (\MUX_Saida_Placa|saida_MUX[23]~22_combout\ & (!\MUX_Saida_Placa|saida_MUX[20]~19_combout\ $ 
-- (\MUX_Saida_Placa|saida_MUX[22]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000101001010010000010100101001000001010010100100000101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[20]~19_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[21]~21_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[22]~20_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[23]~22_combout\,
	combout => \DEC_5|rascSaida7seg[3]~3_combout\);

\DEC_5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_5|rascSaida7seg[4]~4_combout\ = ( \MUX_Saida_Placa|saida_MUX[22]~20_combout\ & ( \MUX_Saida_Placa|saida_MUX[21]~21_combout\ & ( \MUX_Saida_Placa|saida_MUX[23]~22_combout\ ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[22]~20_combout\ & ( 
-- \MUX_Saida_Placa|saida_MUX[21]~21_combout\ & ( (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(20)))) # (\SW[0]~input_o\ & (\ULA|ULA20|MUX_Selecao|saida_MUX~1_combout\)) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[22]~20_combout\ & ( 
-- !\MUX_Saida_Placa|saida_MUX[21]~21_combout\ & ( (\MUX_Saida_Placa|saida_MUX[23]~22_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(20)))) # (\SW[0]~input_o\ & (\ULA|ULA20|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( 
-- !\MUX_Saida_Placa|saida_MUX[22]~20_combout\ & ( !\MUX_Saida_Placa|saida_MUX[21]~21_combout\ & ( (\MUX_Saida_Placa|saida_MUX[23]~22_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(20)))) # (\SW[0]~input_o\ & (\ULA|ULA20|MUX_Selecao|saida_MUX~1_combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100000011110011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[23]~22_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ULA20|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datad => \REG_PC|ALT_INV_DOUT\(20),
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[22]~20_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[21]~21_combout\,
	combout => \DEC_5|rascSaida7seg[4]~4_combout\);

\DEC_5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_5|rascSaida7seg[5]~5_combout\ = ( \MUX_Saida_Placa|saida_MUX[22]~20_combout\ & ( \MUX_Saida_Placa|saida_MUX[21]~21_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[20]~19_combout\ & ((!\SW[0]~input_o\ & ((\REG_PC|DOUT\(23)))) # (\SW[0]~input_o\ & 
-- (\ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[22]~20_combout\ & ( \MUX_Saida_Placa|saida_MUX[21]~21_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[20]~19_combout\ & ((!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(23)))) # 
-- (\SW[0]~input_o\ & (!\ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( \MUX_Saida_Placa|saida_MUX[22]~20_combout\ & ( !\MUX_Saida_Placa|saida_MUX[21]~21_combout\ & ( (!\MUX_Saida_Placa|saida_MUX[20]~19_combout\ & ((!\SW[0]~input_o\ & 
-- ((!\REG_PC|DOUT\(23)))) # (\SW[0]~input_o\ & (!\ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\)))) ) ) ) # ( !\MUX_Saida_Placa|saida_MUX[22]~20_combout\ & ( !\MUX_Saida_Placa|saida_MUX[21]~21_combout\ & ( (!\SW[0]~input_o\ & ((!\REG_PC|DOUT\(23)))) # 
-- (\SW[0]~input_o\ & (!\ULA|ULA23|MUX_Selecao|saida_MUX~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010011100100111001000000000011100100000000000001101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA23|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(23),
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[20]~19_combout\,
	datae => \MUX_Saida_Placa|ALT_INV_saida_MUX[22]~20_combout\,
	dataf => \MUX_Saida_Placa|ALT_INV_saida_MUX[21]~21_combout\,
	combout => \DEC_5|rascSaida7seg[5]~5_combout\);

\DEC_5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DEC_5|rascSaida7seg[6]~6_combout\ = (!\MUX_Saida_Placa|saida_MUX[20]~19_combout\ & (\MUX_Saida_Placa|saida_MUX[23]~22_combout\ & (!\MUX_Saida_Placa|saida_MUX[22]~20_combout\ $ (!\MUX_Saida_Placa|saida_MUX[21]~21_combout\)))) # 
-- (\MUX_Saida_Placa|saida_MUX[20]~19_combout\ & (\MUX_Saida_Placa|saida_MUX[21]~21_combout\ & (!\MUX_Saida_Placa|saida_MUX[22]~20_combout\ $ (!\MUX_Saida_Placa|saida_MUX[23]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100101100000000010010110000000001001011000000000100101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX_Saida_Placa|ALT_INV_saida_MUX[20]~19_combout\,
	datab => \MUX_Saida_Placa|ALT_INV_saida_MUX[22]~20_combout\,
	datac => \MUX_Saida_Placa|ALT_INV_saida_MUX[21]~21_combout\,
	datad => \MUX_Saida_Placa|ALT_INV_saida_MUX[23]~22_combout\,
	combout => \DEC_5|rascSaida7seg[6]~6_combout\);

\INC_PC|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~89_sumout\ = SUM(( \REG_PC|DOUT\(24) ) + ( GND ) + ( \INC_PC|Add0~74\ ))
-- \INC_PC|Add0~90\ = CARRY(( \REG_PC|DOUT\(24) ) + ( GND ) + ( \INC_PC|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(24),
	cin => \INC_PC|Add0~74\,
	sumout => \INC_PC|Add0~89_sumout\,
	cout => \INC_PC|Add0~90\);

\soma_pc_etx|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~85_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~89_sumout\ ) + ( \soma_pc_etx|Add0~70\ ))
-- \soma_pc_etx|Add0~86\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~89_sumout\ ) + ( \soma_pc_etx|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~89_sumout\,
	cin => \soma_pc_etx|Add0~70\,
	sumout => \soma_pc_etx|Add0~85_sumout\,
	cout => \soma_pc_etx|Add0~86\);

\MUX_Entrada_PC|saida_MUX[24]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[24]~13_combout\ = ( \INC_PC|Add0~89_sumout\ & ( \soma_pc_etx|Add0~85_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~89_sumout\ & ( \soma_pc_etx|Add0~85_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~89_sumout\ & ( !\soma_pc_etx|Add0~85_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~89_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~85_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[24]~13_combout\);

\REG_PC|DOUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[24]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(24));

\MUX_Saida_Placa|saida_MUX[24]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[24]~23_combout\ = (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(24)))) # (\SW[0]~input_o\ & (\ULA|ULA24|MUX_Selecao|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA24|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(24),
	combout => \MUX_Saida_Placa|saida_MUX[24]~23_combout\);

\INC_PC|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~93_sumout\ = SUM(( \REG_PC|DOUT\(25) ) + ( GND ) + ( \INC_PC|Add0~90\ ))
-- \INC_PC|Add0~94\ = CARRY(( \REG_PC|DOUT\(25) ) + ( GND ) + ( \INC_PC|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(25),
	cin => \INC_PC|Add0~90\,
	sumout => \INC_PC|Add0~93_sumout\,
	cout => \INC_PC|Add0~94\);

\soma_pc_etx|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~89_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~93_sumout\ ) + ( \soma_pc_etx|Add0~86\ ))
-- \soma_pc_etx|Add0~90\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~93_sumout\ ) + ( \soma_pc_etx|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~93_sumout\,
	cin => \soma_pc_etx|Add0~86\,
	sumout => \soma_pc_etx|Add0~89_sumout\,
	cout => \soma_pc_etx|Add0~90\);

\MUX_Entrada_PC|saida_MUX[25]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[25]~14_combout\ = ( \INC_PC|Add0~93_sumout\ & ( \soma_pc_etx|Add0~89_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~93_sumout\ & ( \soma_pc_etx|Add0~89_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~93_sumout\ & ( !\soma_pc_etx|Add0~89_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~93_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~89_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[25]~14_combout\);

\REG_PC|DOUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[25]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(25));

\MUX_Saida_Placa|saida_MUX[25]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[25]~24_combout\ = ( \ULA|ULA25|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(25) ) ) # ( !\ULA|ULA25|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(25) & ( (!\SW[0]~input_o\) # 
-- ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA24|Somador|cOut~combout\ $ (\ULA|ULA25|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA25|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(25) & ( \SW[0]~input_o\ ) ) ) # ( 
-- !\ULA|ULA25|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(25) & ( (\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (\SW[0]~input_o\ & (!\ULA|ULA24|Somador|cOut~combout\ $ (\ULA|ULA25|Somador|saida~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001001000000001111111111111111000010011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA24|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA25|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA25|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(25),
	combout => \MUX_Saida_Placa|saida_MUX[25]~24_combout\);

\INC_PC|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~97_sumout\ = SUM(( \REG_PC|DOUT\(26) ) + ( GND ) + ( \INC_PC|Add0~94\ ))
-- \INC_PC|Add0~98\ = CARRY(( \REG_PC|DOUT\(26) ) + ( GND ) + ( \INC_PC|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(26),
	cin => \INC_PC|Add0~94\,
	sumout => \INC_PC|Add0~97_sumout\,
	cout => \INC_PC|Add0~98\);

\soma_pc_etx|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~93_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~97_sumout\ ) + ( \soma_pc_etx|Add0~90\ ))
-- \soma_pc_etx|Add0~94\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~97_sumout\ ) + ( \soma_pc_etx|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~97_sumout\,
	cin => \soma_pc_etx|Add0~90\,
	sumout => \soma_pc_etx|Add0~93_sumout\,
	cout => \soma_pc_etx|Add0~94\);

\MUX_Entrada_PC|saida_MUX[26]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[26]~20_combout\ = ( !\decoder_instru|Equal0~0_combout\ & ( (!\comb~8_combout\ & (((\INC_PC|Add0~97_sumout\)))) # (\comb~8_combout\ & ((!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & 
-- ((\soma_pc_etx|Add0~93_sumout\))) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (\INC_PC|Add0~97_sumout\)))) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (\INC_PC|Add0~97_sumout\)))) ) ) # ( \decoder_instru|Equal0~0_combout\ & ( 
-- (((\ROM|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101100001111000011110000111101001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~8_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	datad => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datae => \decoder_instru|ALT_INV_Equal0~0_combout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~93_sumout\,
	datag => \INC_PC|ALT_INV_Add0~97_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[26]~20_combout\);

\REG_PC|DOUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[26]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(26));

\MUX_Saida_Placa|saida_MUX[26]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[26]~25_combout\ = ( \ULA|ULA26|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(26) ) ) # ( !\ULA|ULA26|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(26) & ( (!\SW[0]~input_o\) # 
-- ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA25|Somador|cOut~combout\ $ (\ULA|ULA26|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA26|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(26) & ( \SW[0]~input_o\ ) ) ) # ( 
-- !\ULA|ULA26|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(26) & ( (\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (\SW[0]~input_o\ & (!\ULA|ULA25|Somador|cOut~combout\ $ (\ULA|ULA26|Somador|saida~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001001000000001111111111111111000010011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA25|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA26|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA26|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(26),
	combout => \MUX_Saida_Placa|saida_MUX[26]~25_combout\);

\INC_PC|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~101_sumout\ = SUM(( \REG_PC|DOUT\(27) ) + ( GND ) + ( \INC_PC|Add0~98\ ))
-- \INC_PC|Add0~102\ = CARRY(( \REG_PC|DOUT\(27) ) + ( GND ) + ( \INC_PC|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(27),
	cin => \INC_PC|Add0~98\,
	sumout => \INC_PC|Add0~101_sumout\,
	cout => \INC_PC|Add0~102\);

\soma_pc_etx|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~97_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~101_sumout\ ) + ( \soma_pc_etx|Add0~94\ ))
-- \soma_pc_etx|Add0~98\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~101_sumout\ ) + ( \soma_pc_etx|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~101_sumout\,
	cin => \soma_pc_etx|Add0~94\,
	sumout => \soma_pc_etx|Add0~97_sumout\,
	cout => \soma_pc_etx|Add0~98\);

\MUX_Entrada_PC|saida_MUX[27]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[27]~15_combout\ = ( \INC_PC|Add0~101_sumout\ & ( \soma_pc_etx|Add0~97_sumout\ & ( !\decoder_instru|Equal0~0_combout\ ) ) ) # ( !\INC_PC|Add0~101_sumout\ & ( \soma_pc_etx|Add0~97_sumout\ & ( 
-- (!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & (!\decoder_instru|Equal0~0_combout\ & \comb~8_combout\))) ) ) ) # ( \INC_PC|Add0~101_sumout\ & ( !\soma_pc_etx|Add0~97_sumout\ & ( 
-- (!\decoder_instru|Equal0~0_combout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000111000000000000100000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \decoder_instru|ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_comb~8_combout\,
	datae => \INC_PC|ALT_INV_Add0~101_sumout\,
	dataf => \soma_pc_etx|ALT_INV_Add0~97_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[27]~15_combout\);

\REG_PC|DOUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[27]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(27));

\MUX_Saida_Placa|saida_MUX[27]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[27]~26_combout\ = (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(27)))) # (\SW[0]~input_o\ & (\ULA|ULA27|MUX_Selecao|saida_MUX~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA27|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(27),
	combout => \MUX_Saida_Placa|saida_MUX[27]~26_combout\);

\INC_PC|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~105_sumout\ = SUM(( \REG_PC|DOUT\(28) ) + ( GND ) + ( \INC_PC|Add0~102\ ))
-- \INC_PC|Add0~106\ = CARRY(( \REG_PC|DOUT\(28) ) + ( GND ) + ( \INC_PC|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(28),
	cin => \INC_PC|Add0~102\,
	sumout => \INC_PC|Add0~105_sumout\,
	cout => \INC_PC|Add0~106\);

\soma_pc_etx|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~101_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~105_sumout\ ) + ( \soma_pc_etx|Add0~98\ ))
-- \soma_pc_etx|Add0~102\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~105_sumout\ ) + ( \soma_pc_etx|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~105_sumout\,
	cin => \soma_pc_etx|Add0~98\,
	sumout => \soma_pc_etx|Add0~101_sumout\,
	cout => \soma_pc_etx|Add0~102\);

\MUX_Entrada_PC|saida_MUX[28]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[28]~16_combout\ = ( \soma_pc_etx|Add0~101_sumout\ & ( ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & \comb~8_combout\))) # (\INC_PC|Add0~105_sumout\) ) ) # ( 
-- !\soma_pc_etx|Add0~101_sumout\ & ( (\INC_PC|Add0~105_sumout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000010001111111100000000111101110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \INC_PC|ALT_INV_Add0~105_sumout\,
	datae => \soma_pc_etx|ALT_INV_Add0~101_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[28]~16_combout\);

\REG_PC|DOUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[28]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(28));

\MUX_Saida_Placa|saida_MUX[28]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[28]~27_combout\ = ( \ULA|ULA28|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(28) ) ) # ( !\ULA|ULA28|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(28) & ( (!\SW[0]~input_o\) # 
-- ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA27|Somador|cOut~combout\ $ (!\ULA|ULA28|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA28|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(28) & ( \SW[0]~input_o\ ) ) ) # ( 
-- !\ULA|ULA28|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(28) & ( (\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (\SW[0]~input_o\ & (!\ULA|ULA27|Somador|cOut~combout\ $ (!\ULA|ULA28|Somador|saida~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110000000001111111111111111000001101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA27|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA28|Somador|ALT_INV_saida~0_combout\,
	datac => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ULA|ULA28|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(28),
	combout => \MUX_Saida_Placa|saida_MUX[28]~27_combout\);

\INC_PC|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~109_sumout\ = SUM(( \REG_PC|DOUT\(29) ) + ( GND ) + ( \INC_PC|Add0~106\ ))
-- \INC_PC|Add0~110\ = CARRY(( \REG_PC|DOUT\(29) ) + ( GND ) + ( \INC_PC|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(29),
	cin => \INC_PC|Add0~106\,
	sumout => \INC_PC|Add0~109_sumout\,
	cout => \INC_PC|Add0~110\);

\soma_pc_etx|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~105_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~109_sumout\ ) + ( \soma_pc_etx|Add0~102\ ))
-- \soma_pc_etx|Add0~106\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~109_sumout\ ) + ( \soma_pc_etx|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~109_sumout\,
	cin => \soma_pc_etx|Add0~102\,
	sumout => \soma_pc_etx|Add0~105_sumout\,
	cout => \soma_pc_etx|Add0~106\);

\MUX_Entrada_PC|saida_MUX[29]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[29]~17_combout\ = ( \soma_pc_etx|Add0~105_sumout\ & ( ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & \comb~8_combout\))) # (\INC_PC|Add0~109_sumout\) ) ) # ( 
-- !\soma_pc_etx|Add0~105_sumout\ & ( (\INC_PC|Add0~109_sumout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000010001111111100000000111101110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \INC_PC|ALT_INV_Add0~109_sumout\,
	datae => \soma_pc_etx|ALT_INV_Add0~105_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[29]~17_combout\);

\REG_PC|DOUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[29]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(29));

\MUX_Saida_Placa|saida_MUX[29]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[29]~28_combout\ = (!\SW[0]~input_o\ & ((\REG_PC|DOUT\(29)))) # (\SW[0]~input_o\ & (\ULA|ULA29|MUX_Selecao|saida_MUX~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ULA|ULA29|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \REG_PC|ALT_INV_DOUT\(29),
	combout => \MUX_Saida_Placa|saida_MUX[29]~28_combout\);

\INC_PC|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~113_sumout\ = SUM(( \REG_PC|DOUT\(30) ) + ( GND ) + ( \INC_PC|Add0~110\ ))
-- \INC_PC|Add0~114\ = CARRY(( \REG_PC|DOUT\(30) ) + ( GND ) + ( \INC_PC|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(30),
	cin => \INC_PC|Add0~110\,
	sumout => \INC_PC|Add0~113_sumout\,
	cout => \INC_PC|Add0~114\);

\soma_pc_etx|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~109_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~113_sumout\ ) + ( \soma_pc_etx|Add0~106\ ))
-- \soma_pc_etx|Add0~110\ = CARRY(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~113_sumout\ ) + ( \soma_pc_etx|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~113_sumout\,
	cin => \soma_pc_etx|Add0~106\,
	sumout => \soma_pc_etx|Add0~109_sumout\,
	cout => \soma_pc_etx|Add0~110\);

\MUX_Entrada_PC|saida_MUX[30]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[30]~18_combout\ = ( \soma_pc_etx|Add0~109_sumout\ & ( ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & \comb~8_combout\))) # (\INC_PC|Add0~113_sumout\) ) ) # ( 
-- !\soma_pc_etx|Add0~109_sumout\ & ( (\INC_PC|Add0~113_sumout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000010001111111100000000111101110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \INC_PC|ALT_INV_Add0~113_sumout\,
	datae => \soma_pc_etx|ALT_INV_Add0~109_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[30]~18_combout\);

\REG_PC|DOUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[30]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(30));

\MUX_Saida_Placa|saida_MUX[30]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[30]~29_combout\ = ( \REG_PC|DOUT\(30) & ( (!\SW[0]~input_o\) # (((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & \ULA|ULA30|Somador|saida~combout\)) # (\ULA|ULA30|MUX_Selecao|saida_MUX~1_combout\)) ) ) # ( !\REG_PC|DOUT\(30) & ( 
-- (\SW[0]~input_o\ & (((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & \ULA|ULA30|Somador|saida~combout\)) # (\ULA|ULA30|MUX_Selecao|saida_MUX~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110011110011011111111100000001001100111100110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ULA|ULA30|Somador|ALT_INV_saida~combout\,
	datad => \ULA|ULA30|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datae => \REG_PC|ALT_INV_DOUT\(30),
	combout => \MUX_Saida_Placa|saida_MUX[30]~29_combout\);

\INC_PC|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \INC_PC|Add0~117_sumout\ = SUM(( \REG_PC|DOUT\(31) ) + ( GND ) + ( \INC_PC|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \REG_PC|ALT_INV_DOUT\(31),
	cin => \INC_PC|Add0~114\,
	sumout => \INC_PC|Add0~117_sumout\);

\soma_pc_etx|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \soma_pc_etx|Add0~113_sumout\ = SUM(( \ROM|memROM~2_combout\ ) + ( \INC_PC|Add0~117_sumout\ ) + ( \soma_pc_etx|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM|ALT_INV_memROM~2_combout\,
	dataf => \INC_PC|ALT_INV_Add0~117_sumout\,
	cin => \soma_pc_etx|Add0~110\,
	sumout => \soma_pc_etx|Add0~113_sumout\);

\MUX_Entrada_PC|saida_MUX[31]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Entrada_PC|saida_MUX[31]~19_combout\ = ( \soma_pc_etx|Add0~113_sumout\ & ( ((!\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\ & (!\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\ & \comb~8_combout\))) # (\INC_PC|Add0~117_sumout\) ) ) # ( 
-- !\soma_pc_etx|Add0~113_sumout\ & ( (\INC_PC|Add0~117_sumout\ & (((!\comb~8_combout\) # (\ULA|ULA31|MUX_Selecao|saida_MUX~1_combout\)) # (\ULA|ULA0|MUX_Selecao|saida_MUX~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000010001111111100000000111101110000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA0|MUX_Selecao|ALT_INV_saida_MUX~3_combout\,
	datab => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~1_combout\,
	datac => \ALT_INV_comb~8_combout\,
	datad => \INC_PC|ALT_INV_Add0~117_sumout\,
	datae => \soma_pc_etx|ALT_INV_Add0~113_sumout\,
	combout => \MUX_Entrada_PC|saida_MUX[31]~19_combout\);

\REG_PC|DOUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_Entrada_PC|saida_MUX[31]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_PC|DOUT\(31));

\MUX_Saida_Placa|saida_MUX[31]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_Saida_Placa|saida_MUX[31]~30_combout\ = ( \ULA|ULA31|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(31) ) ) # ( !\ULA|ULA31|MUX_Selecao|saida_MUX~0_combout\ & ( \REG_PC|DOUT\(31) & ( (!\SW[0]~input_o\) # 
-- ((\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (!\ULA|ULA30|Somador|cOut~combout\ $ (\ULA|ULA31|Somador|saida~0_combout\)))) ) ) ) # ( \ULA|ULA31|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(31) & ( \SW[0]~input_o\ ) ) ) # ( 
-- !\ULA|ULA31|MUX_Selecao|saida_MUX~0_combout\ & ( !\REG_PC|DOUT\(31) & ( (\ULA|ULA3|MUX_Selecao|saida_MUX~0_combout\ & (\SW[0]~input_o\ & (!\ULA|ULA30|Somador|cOut~combout\ $ (\ULA|ULA31|Somador|saida~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000001000011110000111111110010111100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA|ULA30|Somador|ALT_INV_cOut~combout\,
	datab => \ULA|ULA3|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ULA|ULA31|Somador|ALT_INV_saida~0_combout\,
	datae => \ULA|ULA31|MUX_Selecao|ALT_INV_saida_MUX~0_combout\,
	dataf => \REG_PC|ALT_INV_DOUT\(31),
	combout => \MUX_Saida_Placa|saida_MUX[31]~30_combout\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ( !\REG_PC|DOUT\(7) & ( !\REG_PC|DOUT\(6) & ( (!\REG_PC|DOUT\(2) & (!\REG_PC|DOUT\(3) & (!\REG_PC|DOUT\(4) & !\REG_PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \REG_PC|ALT_INV_DOUT\(2),
	datab => \REG_PC|ALT_INV_DOUT\(3),
	datac => \REG_PC|ALT_INV_DOUT\(4),
	datad => \REG_PC|ALT_INV_DOUT\(5),
	datae => \REG_PC|ALT_INV_DOUT\(7),
	dataf => \REG_PC|ALT_INV_DOUT\(6),
	combout => \ROM|memROM~16_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

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

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_OP_ULA(0) <= \OP_ULA[0]~output_o\;

ww_OP_ULA(1) <= \OP_ULA[1]~output_o\;

ww_OP_ULA(2) <= \OP_ULA[2]~output_o\;

ww_ROM_OUT(0) <= \ROM_OUT[0]~output_o\;

ww_ROM_OUT(1) <= \ROM_OUT[1]~output_o\;

ww_ROM_OUT(2) <= \ROM_OUT[2]~output_o\;

ww_ROM_OUT(3) <= \ROM_OUT[3]~output_o\;

ww_ROM_OUT(4) <= \ROM_OUT[4]~output_o\;

ww_ROM_OUT(5) <= \ROM_OUT[5]~output_o\;

ww_ROM_OUT(6) <= \ROM_OUT[6]~output_o\;

ww_ROM_OUT(7) <= \ROM_OUT[7]~output_o\;

ww_ROM_OUT(8) <= \ROM_OUT[8]~output_o\;

ww_ROM_OUT(9) <= \ROM_OUT[9]~output_o\;

ww_ROM_OUT(10) <= \ROM_OUT[10]~output_o\;

ww_ROM_OUT(11) <= \ROM_OUT[11]~output_o\;

ww_ROM_OUT(12) <= \ROM_OUT[12]~output_o\;

ww_ROM_OUT(13) <= \ROM_OUT[13]~output_o\;

ww_ROM_OUT(14) <= \ROM_OUT[14]~output_o\;

ww_ROM_OUT(15) <= \ROM_OUT[15]~output_o\;

ww_ROM_OUT(16) <= \ROM_OUT[16]~output_o\;

ww_ROM_OUT(17) <= \ROM_OUT[17]~output_o\;

ww_ROM_OUT(18) <= \ROM_OUT[18]~output_o\;

ww_ROM_OUT(19) <= \ROM_OUT[19]~output_o\;

ww_ROM_OUT(20) <= \ROM_OUT[20]~output_o\;

ww_ROM_OUT(21) <= \ROM_OUT[21]~output_o\;

ww_ROM_OUT(22) <= \ROM_OUT[22]~output_o\;

ww_ROM_OUT(23) <= \ROM_OUT[23]~output_o\;

ww_ROM_OUT(24) <= \ROM_OUT[24]~output_o\;

ww_ROM_OUT(25) <= \ROM_OUT[25]~output_o\;

ww_ROM_OUT(26) <= \ROM_OUT[26]~output_o\;

ww_ROM_OUT(27) <= \ROM_OUT[27]~output_o\;

ww_ROM_OUT(28) <= \ROM_OUT[28]~output_o\;

ww_ROM_OUT(29) <= \ROM_OUT[29]~output_o\;

ww_ROM_OUT(30) <= \ROM_OUT[30]~output_o\;

ww_ROM_OUT(31) <= \ROM_OUT[31]~output_o\;

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


