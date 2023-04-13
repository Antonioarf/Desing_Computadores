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

-- DATE "04/12/2023 23:02:39"

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

ENTITY 	contador IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	FPGA_RESET_N : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END contador;

ARCHITECTURE structure OF contador IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FPGA_RESET_N : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
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
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \Processador|ROM1|memROM~21_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~22_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~10_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~12_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~25_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~13_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~26_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~11_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~27_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal12~1_combout\ : std_logic;
SIGNAL \Processador|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal12~0_combout\ : std_logic;
SIGNAL \Processador|decoder|saida[6]~1_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~5_combout\ : std_logic;
SIGNAL \Decoder012|Equal7~0_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~15_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~16_combout\ : std_logic;
SIGNAL \Decoder678|Equal2~0_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~275_q\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[4]~10_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~2_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~0_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~3_combout\ : std_logic;
SIGNAL \Processador|decoder|saida[5]~3_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~51_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~15_q\ : std_logic;
SIGNAL \Processador|ROM1|memROM~2_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~4_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~52_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~23_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~53_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~31_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~54_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~39_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~47_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~274_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[3]~7_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~273_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[2]~9_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~272_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[1]~8_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~2\ : std_logic;
SIGNAL \Processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~12_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~20_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~28_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~36_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~45_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~10\ : std_logic;
SIGNAL \Processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~13_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~21_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~29_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~37_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~46_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~14\ : std_logic;
SIGNAL \Processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~14_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~22_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~30_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~38_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~44_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~6\ : std_logic;
SIGNAL \Processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~276_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[5]~11_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~16_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~24_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~32_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~40_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~48_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~18\ : std_logic;
SIGNAL \Processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~277_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[6]~12_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~17_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~25_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~33_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~41_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~49_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~22\ : std_logic;
SIGNAL \Processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~30_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~278_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[7]~13_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~18_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~26_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~34_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~42_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~50_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~26\ : std_logic;
SIGNAL \Processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|flag_ula|DOUT~1_combout\ : std_logic;
SIGNAL \Processador|flag_ula|DOUT~2_combout\ : std_logic;
SIGNAL \Processador|flag_ula|DOUT~0_combout\ : std_logic;
SIGNAL \Processador|flag_ula|DOUT~q\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[8]~0_combout\ : std_logic;
SIGNAL \Processador|MUX_JMP|Equal2~0_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|decoder|saida[8]~4_combout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~14_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~28_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~29_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~18_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~19_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~20_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~6_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~17_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[0]~4_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~7_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~24_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~8_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~9_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~1_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~23_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~271_q\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|hab_l9~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \BLOCO_SW|detectorKey0|saidaQ~0_combout\ : std_logic;
SIGNAL \BLOCO_SW|detectorKey0|saidaQ~q\ : std_logic;
SIGNAL \BLOCO_SW|detectorKey0|saida~combout\ : std_logic;
SIGNAL \Processador|decoder|saida~0_combout\ : std_logic;
SIGNAL \limpa4~0_combout\ : std_logic;
SIGNAL \limpa4~1_combout\ : std_logic;
SIGNAL \limpa0~combout\ : std_logic;
SIGNAL \BLOCO_SW|FF_k0|DOUT~q\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[0]~14_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[0]~5_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[0]~6_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~11_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~19_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~27_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~35_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~43_combout\ : std_logic;
SIGNAL \BLOCO_7seg|hab_5~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|hab_0~combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \BLOCO_7seg|hab_5~1_combout\ : std_logic;
SIGNAL \BLOCO_7seg|hab_5~combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \BLOCO_LEDs|hab_l8~0_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|hab_bloco~0_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|FF_8|DOUT~0_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|FF_8|DOUT~q\ : std_logic;
SIGNAL \BLOCO_LEDs|FF_9|DOUT~0_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|FF_9|DOUT~q\ : std_logic;
SIGNAL \Processador|Salva_Ret|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \BLOCO_7seg|REG_5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BLOCO_7seg|REG_0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[0]~14_combout\ : std_logic;
SIGNAL \Processador|flag_ula|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \Processador|flag_ula|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \BLOCO_SW|detectorKey0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ALT_INV_limpa0~combout\ : std_logic;
SIGNAL \ALT_INV_limpa4~1_combout\ : std_logic;
SIGNAL \ALT_INV_limpa4~0_combout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal12~1_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal12~0_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[7]~13_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[6]~12_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[5]~11_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[4]~10_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[2]~9_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[1]~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[3]~7_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \Processador|Salva_Ret|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Processador|ROM1|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \Processador|MUX_JMP|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \Processador|MUX_JMP|ALT_INV_saida_MUX[8]~0_combout\ : std_logic;
SIGNAL \Processador|flag_ula|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida[5]~3_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[0]~6_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[0]~5_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \Decoder678|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \BLOCO_SW|FF_k0|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida[6]~1_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[3]~0_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \BLOCO_LEDs|ALT_INV_hab_bloco~0_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~50_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~49_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~48_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~47_combout\ : std_logic;
SIGNAL \BLOCO_7seg|ALT_INV_hab_5~1_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|ALT_INV_hab_l9~0_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|ALT_INV_hab_l8~0_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~46_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~45_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~44_combout\ : std_logic;
SIGNAL \BLOCO_7seg|ALT_INV_hab_5~0_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \Decoder012|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~43_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|FF_9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \BLOCO_LEDs|FF_8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \BLOCO_7seg|REG_5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BLOCO_7seg|REG_0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Processador|MUX1|ALT_INV_saida_MUX[0]~14_combout\ <= NOT \Processador|MUX1|saida_MUX[0]~14_combout\;
\Processador|flag_ula|ALT_INV_DOUT~2_combout\ <= NOT \Processador|flag_ula|DOUT~2_combout\;
\Processador|flag_ula|ALT_INV_DOUT~1_combout\ <= NOT \Processador|flag_ula|DOUT~1_combout\;
\BLOCO_SW|detectorKey0|ALT_INV_saidaQ~q\ <= NOT \BLOCO_SW|detectorKey0|saidaQ~q\;
\ALT_INV_limpa0~combout\ <= NOT \limpa0~combout\;
\ALT_INV_limpa4~1_combout\ <= NOT \limpa4~1_combout\;
\ALT_INV_limpa4~0_combout\ <= NOT \limpa4~0_combout\;
\Processador|ULA1|ALT_INV_Equal1~0_combout\ <= NOT \Processador|ULA1|Equal1~0_combout\;
\Processador|decoder|ALT_INV_Equal12~1_combout\ <= NOT \Processador|decoder|Equal12~1_combout\;
\Processador|decoder|ALT_INV_Equal12~0_combout\ <= NOT \Processador|decoder|Equal12~0_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[7]~13_combout\ <= NOT \Processador|MUX1|saida_MUX[7]~13_combout\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~278_q\ <= NOT \RAM|ram~278_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\Processador|MUX1|ALT_INV_saida_MUX[6]~12_combout\ <= NOT \Processador|MUX1|saida_MUX[6]~12_combout\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~277_q\ <= NOT \RAM|ram~277_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\Processador|MUX1|ALT_INV_saida_MUX[5]~11_combout\ <= NOT \Processador|MUX1|saida_MUX[5]~11_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~276_q\ <= NOT \RAM|ram~276_q\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\Processador|MUX1|ALT_INV_saida_MUX[4]~10_combout\ <= NOT \Processador|MUX1|saida_MUX[4]~10_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~275_q\ <= NOT \RAM|ram~275_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\Processador|MUX1|ALT_INV_saida_MUX[2]~9_combout\ <= NOT \Processador|MUX1|saida_MUX[2]~9_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~273_q\ <= NOT \RAM|ram~273_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\Processador|MUX1|ALT_INV_saida_MUX[1]~8_combout\ <= NOT \Processador|MUX1|saida_MUX[1]~8_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~272_q\ <= NOT \RAM|ram~272_q\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\Processador|MUX1|ALT_INV_saida_MUX[3]~7_combout\ <= NOT \Processador|MUX1|saida_MUX[3]~7_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~274_q\ <= NOT \RAM|ram~274_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\Processador|Salva_Ret|ALT_INV_DOUT\(8) <= NOT \Processador|Salva_Ret|DOUT\(8);
\Processador|Salva_Ret|ALT_INV_DOUT\(7) <= NOT \Processador|Salva_Ret|DOUT\(7);
\Processador|ROM1|ALT_INV_memROM~30_combout\ <= NOT \Processador|ROM1|memROM~30_combout\;
\Processador|Salva_Ret|ALT_INV_DOUT\(6) <= NOT \Processador|Salva_Ret|DOUT\(6);
\Processador|Salva_Ret|ALT_INV_DOUT\(5) <= NOT \Processador|Salva_Ret|DOUT\(5);
\Processador|Salva_Ret|ALT_INV_DOUT\(4) <= NOT \Processador|Salva_Ret|DOUT\(4);
\Processador|Salva_Ret|ALT_INV_DOUT\(0) <= NOT \Processador|Salva_Ret|DOUT\(0);
\Processador|Salva_Ret|ALT_INV_DOUT\(3) <= NOT \Processador|Salva_Ret|DOUT\(3);
\Processador|Salva_Ret|ALT_INV_DOUT\(2) <= NOT \Processador|Salva_Ret|DOUT\(2);
\Processador|Salva_Ret|ALT_INV_DOUT\(1) <= NOT \Processador|Salva_Ret|DOUT\(1);
\Processador|MUX_JMP|ALT_INV_Equal2~0_combout\ <= NOT \Processador|MUX_JMP|Equal2~0_combout\;
\Processador|MUX_JMP|ALT_INV_saida_MUX[8]~0_combout\ <= NOT \Processador|MUX_JMP|saida_MUX[8]~0_combout\;
\Processador|flag_ula|ALT_INV_DOUT~q\ <= NOT \Processador|flag_ula|DOUT~q\;
\Processador|decoder|ALT_INV_saida[5]~3_combout\ <= NOT \Processador|decoder|saida[5]~3_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[0]~6_combout\ <= NOT \Processador|MUX1|saida_MUX[0]~6_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[0]~5_combout\ <= NOT \Processador|MUX1|saida_MUX[0]~5_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[3]~4_combout\ <= NOT \Processador|MUX1|saida_MUX[3]~4_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[0]~3_combout\ <= NOT \Processador|MUX1|saida_MUX[0]~3_combout\;
\Processador|ROM1|ALT_INV_memROM~29_combout\ <= NOT \Processador|ROM1|memROM~29_combout\;
\Processador|ROM1|ALT_INV_memROM~28_combout\ <= NOT \Processador|ROM1|memROM~28_combout\;
\Decoder678|ALT_INV_Equal2~0_combout\ <= NOT \Decoder678|Equal2~0_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[0]~2_combout\ <= NOT \Processador|MUX1|saida_MUX[0]~2_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \Processador|MUX1|saida_MUX[0]~1_combout\;
\BLOCO_SW|FF_k0|ALT_INV_DOUT~q\ <= NOT \BLOCO_SW|FF_k0|DOUT~q\;
\Processador|decoder|ALT_INV_saida[6]~1_combout\ <= NOT \Processador|decoder|saida[6]~1_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[3]~0_combout\ <= NOT \Processador|MUX1|saida_MUX[3]~0_combout\;
\Processador|ROM1|ALT_INV_memROM~27_combout\ <= NOT \Processador|ROM1|memROM~27_combout\;
\Processador|ROM1|ALT_INV_memROM~26_combout\ <= NOT \Processador|ROM1|memROM~26_combout\;
\Processador|ROM1|ALT_INV_memROM~25_combout\ <= NOT \Processador|ROM1|memROM~25_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\Processador|ROM1|ALT_INV_memROM~24_combout\ <= NOT \Processador|ROM1|memROM~24_combout\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\Processador|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \Processador|incrementaPC|Add0~1_sumout\;
\Processador|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \Processador|ULA1|Add0~1_sumout\;
\Processador|Banco_Reg|ALT_INV_registrador~42_q\ <= NOT \Processador|Banco_Reg|registrador~42_q\;
\Processador|Banco_Reg|ALT_INV_registrador~34_q\ <= NOT \Processador|Banco_Reg|registrador~34_q\;
\Processador|Banco_Reg|ALT_INV_registrador~26_q\ <= NOT \Processador|Banco_Reg|registrador~26_q\;
\Processador|Banco_Reg|ALT_INV_registrador~18_q\ <= NOT \Processador|Banco_Reg|registrador~18_q\;
\Processador|Banco_Reg|ALT_INV_registrador~41_q\ <= NOT \Processador|Banco_Reg|registrador~41_q\;
\Processador|Banco_Reg|ALT_INV_registrador~33_q\ <= NOT \Processador|Banco_Reg|registrador~33_q\;
\Processador|Banco_Reg|ALT_INV_registrador~25_q\ <= NOT \Processador|Banco_Reg|registrador~25_q\;
\Processador|Banco_Reg|ALT_INV_registrador~17_q\ <= NOT \Processador|Banco_Reg|registrador~17_q\;
\Processador|Banco_Reg|ALT_INV_registrador~40_q\ <= NOT \Processador|Banco_Reg|registrador~40_q\;
\Processador|Banco_Reg|ALT_INV_registrador~32_q\ <= NOT \Processador|Banco_Reg|registrador~32_q\;
\Processador|Banco_Reg|ALT_INV_registrador~24_q\ <= NOT \Processador|Banco_Reg|registrador~24_q\;
\Processador|Banco_Reg|ALT_INV_registrador~16_q\ <= NOT \Processador|Banco_Reg|registrador~16_q\;
\Processador|Banco_Reg|ALT_INV_registrador~39_q\ <= NOT \Processador|Banco_Reg|registrador~39_q\;
\Processador|Banco_Reg|ALT_INV_registrador~31_q\ <= NOT \Processador|Banco_Reg|registrador~31_q\;
\Processador|Banco_Reg|ALT_INV_registrador~23_q\ <= NOT \Processador|Banco_Reg|registrador~23_q\;
\Processador|Banco_Reg|ALT_INV_registrador~15_q\ <= NOT \Processador|Banco_Reg|registrador~15_q\;
\Processador|Banco_Reg|ALT_INV_registrador~37_q\ <= NOT \Processador|Banco_Reg|registrador~37_q\;
\Processador|Banco_Reg|ALT_INV_registrador~29_q\ <= NOT \Processador|Banco_Reg|registrador~29_q\;
\Processador|Banco_Reg|ALT_INV_registrador~21_q\ <= NOT \Processador|Banco_Reg|registrador~21_q\;
\Processador|Banco_Reg|ALT_INV_registrador~13_q\ <= NOT \Processador|Banco_Reg|registrador~13_q\;
\Processador|Banco_Reg|ALT_INV_registrador~36_q\ <= NOT \Processador|Banco_Reg|registrador~36_q\;
\Processador|Banco_Reg|ALT_INV_registrador~28_q\ <= NOT \Processador|Banco_Reg|registrador~28_q\;
\Processador|Banco_Reg|ALT_INV_registrador~20_q\ <= NOT \Processador|Banco_Reg|registrador~20_q\;
\Processador|Banco_Reg|ALT_INV_registrador~12_q\ <= NOT \Processador|Banco_Reg|registrador~12_q\;
\Processador|Banco_Reg|ALT_INV_registrador~38_q\ <= NOT \Processador|Banco_Reg|registrador~38_q\;
\Processador|Banco_Reg|ALT_INV_registrador~30_q\ <= NOT \Processador|Banco_Reg|registrador~30_q\;
\Processador|Banco_Reg|ALT_INV_registrador~22_q\ <= NOT \Processador|Banco_Reg|registrador~22_q\;
\Processador|Banco_Reg|ALT_INV_registrador~14_q\ <= NOT \Processador|Banco_Reg|registrador~14_q\;
\Processador|PC|ALT_INV_DOUT\(8) <= NOT \Processador|PC|DOUT\(8);
\Processador|PC|ALT_INV_DOUT\(7) <= NOT \Processador|PC|DOUT\(7);
\Processador|PC|ALT_INV_DOUT\(6) <= NOT \Processador|PC|DOUT\(6);
\Processador|PC|ALT_INV_DOUT\(5) <= NOT \Processador|PC|DOUT\(5);
\Processador|PC|ALT_INV_DOUT\(4) <= NOT \Processador|PC|DOUT\(4);
\Processador|PC|ALT_INV_DOUT\(0) <= NOT \Processador|PC|DOUT\(0);
\Processador|PC|ALT_INV_DOUT\(3) <= NOT \Processador|PC|DOUT\(3);
\Processador|PC|ALT_INV_DOUT\(2) <= NOT \Processador|PC|DOUT\(2);
\Processador|PC|ALT_INV_DOUT\(1) <= NOT \Processador|PC|DOUT\(1);
\Processador|Banco_Reg|ALT_INV_registrador~35_q\ <= NOT \Processador|Banco_Reg|registrador~35_q\;
\Processador|Banco_Reg|ALT_INV_registrador~27_q\ <= NOT \Processador|Banco_Reg|registrador~27_q\;
\Processador|Banco_Reg|ALT_INV_registrador~19_q\ <= NOT \Processador|Banco_Reg|registrador~19_q\;
\Processador|Banco_Reg|ALT_INV_registrador~11_q\ <= NOT \Processador|Banco_Reg|registrador~11_q\;
\RAM|ALT_INV_ram~271_q\ <= NOT \RAM|ram~271_q\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\Processador|ROM1|ALT_INV_memROM~23_combout\ <= NOT \Processador|ROM1|memROM~23_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\Processador|ROM1|ALT_INV_memROM~22_combout\ <= NOT \Processador|ROM1|memROM~22_combout\;
\Processador|ROM1|ALT_INV_memROM~21_combout\ <= NOT \Processador|ROM1|memROM~21_combout\;
\Processador|ROM1|ALT_INV_memROM~20_combout\ <= NOT \Processador|ROM1|memROM~20_combout\;
\Processador|ROM1|ALT_INV_memROM~19_combout\ <= NOT \Processador|ROM1|memROM~19_combout\;
\Processador|ROM1|ALT_INV_memROM~18_combout\ <= NOT \Processador|ROM1|memROM~18_combout\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\BLOCO_LEDs|ALT_INV_hab_bloco~0_combout\ <= NOT \BLOCO_LEDs|hab_bloco~0_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~50_combout\ <= NOT \Processador|Banco_Reg|registrador~50_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~49_combout\ <= NOT \Processador|Banco_Reg|registrador~49_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~48_combout\ <= NOT \Processador|Banco_Reg|registrador~48_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~47_combout\ <= NOT \Processador|Banco_Reg|registrador~47_combout\;
\BLOCO_7seg|ALT_INV_hab_5~1_combout\ <= NOT \BLOCO_7seg|hab_5~1_combout\;
\Processador|ROM1|ALT_INV_memROM~17_combout\ <= NOT \Processador|ROM1|memROM~17_combout\;
\BLOCO_LEDs|ALT_INV_hab_l9~0_combout\ <= NOT \BLOCO_LEDs|hab_l9~0_combout\;
\BLOCO_LEDs|ALT_INV_hab_l8~0_combout\ <= NOT \BLOCO_LEDs|hab_l8~0_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~46_combout\ <= NOT \Processador|Banco_Reg|registrador~46_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~45_combout\ <= NOT \Processador|Banco_Reg|registrador~45_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~44_combout\ <= NOT \Processador|Banco_Reg|registrador~44_combout\;
\BLOCO_7seg|ALT_INV_hab_5~0_combout\ <= NOT \BLOCO_7seg|hab_5~0_combout\;
\Processador|ROM1|ALT_INV_memROM~16_combout\ <= NOT \Processador|ROM1|memROM~16_combout\;
\Processador|ROM1|ALT_INV_memROM~15_combout\ <= NOT \Processador|ROM1|memROM~15_combout\;
\Processador|ROM1|ALT_INV_memROM~14_combout\ <= NOT \Processador|ROM1|memROM~14_combout\;
\Processador|decoder|ALT_INV_saida~0_combout\ <= NOT \Processador|decoder|saida~0_combout\;
\Processador|ROM1|ALT_INV_memROM~13_combout\ <= NOT \Processador|ROM1|memROM~13_combout\;
\Processador|ROM1|ALT_INV_memROM~12_combout\ <= NOT \Processador|ROM1|memROM~12_combout\;
\Processador|ROM1|ALT_INV_memROM~11_combout\ <= NOT \Processador|ROM1|memROM~11_combout\;
\Processador|ROM1|ALT_INV_memROM~10_combout\ <= NOT \Processador|ROM1|memROM~10_combout\;
\Processador|ROM1|ALT_INV_memROM~9_combout\ <= NOT \Processador|ROM1|memROM~9_combout\;
\Processador|ROM1|ALT_INV_memROM~8_combout\ <= NOT \Processador|ROM1|memROM~8_combout\;
\Decoder012|ALT_INV_Equal7~0_combout\ <= NOT \Decoder012|Equal7~0_combout\;
\Processador|ROM1|ALT_INV_memROM~7_combout\ <= NOT \Processador|ROM1|memROM~7_combout\;
\Processador|ROM1|ALT_INV_memROM~6_combout\ <= NOT \Processador|ROM1|memROM~6_combout\;
\Processador|ROM1|ALT_INV_memROM~5_combout\ <= NOT \Processador|ROM1|memROM~5_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~43_combout\ <= NOT \Processador|Banco_Reg|registrador~43_combout\;
\Processador|ROM1|ALT_INV_memROM~4_combout\ <= NOT \Processador|ROM1|memROM~4_combout\;
\Processador|ROM1|ALT_INV_memROM~3_combout\ <= NOT \Processador|ROM1|memROM~3_combout\;
\Processador|ROM1|ALT_INV_memROM~2_combout\ <= NOT \Processador|ROM1|memROM~2_combout\;
\Processador|ROM1|ALT_INV_memROM~1_combout\ <= NOT \Processador|ROM1|memROM~1_combout\;
\Processador|ROM1|ALT_INV_memROM~0_combout\ <= NOT \Processador|ROM1|memROM~0_combout\;
\BLOCO_LEDs|FF_9|ALT_INV_DOUT~q\ <= NOT \BLOCO_LEDs|FF_9|DOUT~q\;
\BLOCO_LEDs|FF_8|ALT_INV_DOUT~q\ <= NOT \BLOCO_LEDs|FF_8|DOUT~q\;
\BLOCO_7seg|REG_5|ALT_INV_DOUT\(2) <= NOT \BLOCO_7seg|REG_5|DOUT\(2);
\BLOCO_7seg|REG_5|ALT_INV_DOUT\(1) <= NOT \BLOCO_7seg|REG_5|DOUT\(1);
\BLOCO_7seg|REG_5|ALT_INV_DOUT\(3) <= NOT \BLOCO_7seg|REG_5|DOUT\(3);
\BLOCO_7seg|REG_5|ALT_INV_DOUT\(0) <= NOT \BLOCO_7seg|REG_5|DOUT\(0);
\BLOCO_7seg|REG_0|ALT_INV_DOUT\(2) <= NOT \BLOCO_7seg|REG_0|DOUT\(2);
\BLOCO_7seg|REG_0|ALT_INV_DOUT\(1) <= NOT \BLOCO_7seg|REG_0|DOUT\(1);
\BLOCO_7seg|REG_0|ALT_INV_DOUT\(3) <= NOT \BLOCO_7seg|REG_0|DOUT\(3);
\BLOCO_7seg|REG_0|ALT_INV_DOUT\(0) <= NOT \BLOCO_7seg|REG_0|DOUT\(0);
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\Processador|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \Processador|ULA1|Add0~29_sumout\;
\Processador|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \Processador|ULA1|Add0~25_sumout\;
\Processador|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \Processador|ULA1|Add0~21_sumout\;
\Processador|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \Processador|ULA1|Add0~17_sumout\;
\Processador|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \Processador|ULA1|Add0~13_sumout\;
\Processador|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \Processador|ULA1|Add0~9_sumout\;
\Processador|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \Processador|ULA1|Add0~5_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \Processador|incrementaPC|Add0~33_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \Processador|incrementaPC|Add0~29_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \Processador|incrementaPC|Add0~25_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \Processador|incrementaPC|Add0~21_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \Processador|incrementaPC|Add0~17_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \Processador|incrementaPC|Add0~13_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \Processador|incrementaPC|Add0~9_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \Processador|incrementaPC|Add0~5_sumout\;

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BLOCO_7seg|DEC_0|rascSaida7seg[0]~0_combout\,
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
	i => \BLOCO_7seg|DEC_0|rascSaida7seg[1]~1_combout\,
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
	i => \BLOCO_7seg|DEC_0|rascSaida7seg[2]~2_combout\,
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
	i => \BLOCO_7seg|DEC_0|rascSaida7seg[3]~3_combout\,
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
	i => \BLOCO_7seg|DEC_0|rascSaida7seg[4]~4_combout\,
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
	i => \BLOCO_7seg|DEC_0|rascSaida7seg[5]~5_combout\,
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
	i => \BLOCO_7seg|DEC_0|rascSaida7seg[6]~6_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => \BLOCO_7seg|DEC_5|rascSaida7seg[0]~0_combout\,
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
	i => \BLOCO_7seg|DEC_5|rascSaida7seg[1]~1_combout\,
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
	i => \BLOCO_7seg|DEC_5|rascSaida7seg[2]~2_combout\,
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
	i => \BLOCO_7seg|DEC_5|rascSaida7seg[3]~3_combout\,
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
	i => \BLOCO_7seg|DEC_5|rascSaida7seg[4]~4_combout\,
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
	i => \BLOCO_7seg|DEC_5|rascSaida7seg[5]~5_combout\,
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
	i => \BLOCO_7seg|DEC_5|rascSaida7seg[6]~6_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \BLOCO_LEDs|FF_8|DOUT~q\,
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
	i => \BLOCO_LEDs|FF_9|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\Processador|ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~21_combout\ = (!\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(0) $ (!\Processador|PC|DOUT\(4))))) # (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) $ 
-- (\Processador|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000100010000110000010001000011000001000100001100000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM1|memROM~21_combout\);

\Processador|ROM1|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~22_combout\ = (\Processador|ROM1|memROM~18_combout\ & \Processador|ROM1|memROM~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	combout => \Processador|ROM1|memROM~22_combout\);

\Processador|ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~10_combout\ = ( \Processador|PC|DOUT\(2) & ( \Processador|ROM1|memROM~1_combout\ & ( (!\Processador|PC|DOUT\(1) & (((!\Processador|PC|DOUT\(4) & !\Processador|PC|DOUT\(0))))) # (\Processador|PC|DOUT\(1) & 
-- (!\Processador|PC|DOUT\(3) $ ((!\Processador|PC|DOUT\(4))))) ) ) ) # ( !\Processador|PC|DOUT\(2) & ( \Processador|ROM1|memROM~1_combout\ & ( (!\Processador|PC|DOUT\(0) & (((\Processador|PC|DOUT\(1))))) # (\Processador|PC|DOUT\(0) & 
-- ((!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(4) $ (!\Processador|PC|DOUT\(1)))) # (\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(1)) # (\Processador|PC|DOUT\(4)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000111111110011100000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	datae => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \Processador|ROM1|memROM~10_combout\);

\Processador|ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~12_combout\ = ( \Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(0) $ (((\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3)))))) # (\Processador|PC|DOUT\(1) & ((!\Processador|PC|DOUT\(2) & 
-- (!\Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(2) & ((\Processador|PC|DOUT\(0)) # (\Processador|PC|DOUT\(3)))))) ) ) # ( !\Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(2) & (((!\Processador|PC|DOUT\(3) & !\Processador|PC|DOUT\(0))))) # 
-- (\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(1) $ (!\Processador|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000100000010110010110111000111000001000000101100101101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM1|memROM~12_combout\);

\Processador|ROM1|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~25_combout\ = (\Processador|ROM1|memROM~1_combout\ & !\Processador|ROM1|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \Processador|ROM1|memROM~25_combout\);

\Processador|ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~13_combout\ = (!\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(3)))) # (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(1) & \Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001000101000000000100010100000000010001010000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~13_combout\);

\Processador|ROM1|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~26_combout\ = (\Processador|PC|DOUT\(4) & (\Processador|ROM1|memROM~1_combout\ & \Processador|ROM1|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	combout => \Processador|ROM1|memROM~26_combout\);

\Processador|ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~11_combout\ = (!\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(0) $ (!\Processador|PC|DOUT\(3))))) # (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(4) $ (((!\Processador|PC|DOUT\(0)) # 
-- (\Processador|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011000100011000101100010001100010110001000110001011000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~11_combout\);

\Processador|ROM1|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~27_combout\ = (!\Processador|PC|DOUT\(1) & (\Processador|ROM1|memROM~1_combout\ & \Processador|ROM1|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~11_combout\,
	combout => \Processador|ROM1|memROM~27_combout\);

\Processador|decoder|Equal12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal12~1_combout\ = (\Processador|ROM1|memROM~10_combout\ & (!\Processador|ROM1|memROM~25_combout\ & (!\Processador|ROM1|memROM~26_combout\ & !\Processador|ROM1|memROM~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	combout => \Processador|decoder|Equal12~1_combout\);

\Processador|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Equal1~0_combout\ = (!\Processador|ROM1|memROM~25_combout\ & (\Processador|ROM1|memROM~27_combout\ & (!\Processador|ROM1|memROM~26_combout\ $ (\Processador|ROM1|memROM~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000001000000001000000100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	combout => \Processador|ULA1|Equal1~0_combout\);

\Processador|decoder|Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal12~0_combout\ = (!\Processador|ROM1|memROM~10_combout\ & (!\Processador|ROM1|memROM~25_combout\ & (!\Processador|ROM1|memROM~26_combout\ & !\Processador|ROM1|memROM~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	combout => \Processador|decoder|Equal12~0_combout\);

\Processador|decoder|saida[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida[6]~1_combout\ = (!\Processador|ROM1|memROM~10_combout\ & (\Processador|ROM1|memROM~25_combout\ & ((!\Processador|ROM1|memROM~27_combout\)))) # (\Processador|ROM1|memROM~10_combout\ & (!\Processador|ROM1|memROM~25_combout\ & 
-- (\Processador|ROM1|memROM~26_combout\ & \Processador|ROM1|memROM~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000100001000100000010000100010000001000010001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	combout => \Processador|decoder|saida[6]~1_combout\);

\Processador|ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~5_combout\ = ( \Processador|PC|DOUT\(4) & ( (\Processador|PC|DOUT\(1) & ((!\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(0)))) # (\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(0))))) ) ) # ( 
-- !\Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(3) & !\Processador|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000010100000000010000100000000000000101000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM1|memROM~5_combout\);

\Decoder012|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder012|Equal7~0_combout\ = (\Processador|ROM1|memROM~1_combout\ & (((\Processador|ROM1|memROM~7_combout\) # (\Processador|ROM1|memROM~6_combout\)) # (\Processador|ROM1|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010100010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	combout => \Decoder012|Equal7~0_combout\);

\Processador|MUX1|saida_MUX[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[3]~0_combout\ = ( \Processador|ROM1|memROM~27_combout\ & ( (!\Decoder012|Equal7~0_combout\ & (!\Processador|ROM1|memROM~25_combout\ & !\Processador|ROM1|memROM~26_combout\)) ) ) # ( !\Processador|ROM1|memROM~27_combout\ & ( 
-- (!\Decoder012|Equal7~0_combout\ & (\Processador|ROM1|memROM~10_combout\ & (!\Processador|ROM1|memROM~25_combout\ & !\Processador|ROM1|memROM~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000101000000000000000100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder012|ALT_INV_Equal7~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	combout => \Processador|MUX1|saida_MUX[3]~0_combout\);

\Processador|ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~15_combout\ = (!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(1) $ (\Processador|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000010000010000000001000001000000000100000100000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM1|memROM~15_combout\);

\Processador|ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~16_combout\ = ( \Processador|PC|DOUT\(4) & ( (\Processador|PC|DOUT\(1) & ((!\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(3) & !\Processador|PC|DOUT\(0))))) ) ) # ( 
-- !\Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) $ (!\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT\(3) & (\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000100000001000101000000010001100001000000010001010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM1|memROM~16_combout\);

\Decoder678|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder678|Equal2~0_combout\ = (\Processador|ROM1|memROM~1_combout\ & (\Processador|ROM1|memROM~16_combout\ & ((!\Processador|ROM1|memROM~15_combout\) # (\Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110001000000000011000100000000001100010000000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~16_combout\,
	combout => \Decoder678|Equal2~0_combout\);

\Processador|MUX1|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[3]~4_combout\ = (!\Processador|ROM1|memROM~9_combout\ & (\Decoder678|Equal2~0_combout\ & \Processador|ROM1|memROM~29_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datab => \Decoder678|ALT_INV_Equal2~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~29_combout\,
	combout => \Processador|MUX1|saida_MUX[3]~4_combout\);

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~47_combout\,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( \Processador|PC|DOUT\(3) & ( \Processador|ROM1|memROM~1_combout\ & ( (\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(0) & !\Processador|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	datae => \Processador|PC|ALT_INV_DOUT\(3),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~553_combout\);

\RAM|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~47_combout\,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~275_q\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \Processador|ROM1|memROM~9_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~275_q\ ) ) ) # ( !\Processador|ROM1|memROM~9_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datab => \RAM|ALT_INV_ram~275_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~22_combout\ & ( \RAM|ram~541_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~541_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~542_combout\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( !\Processador|ROM1|memROM~23_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~542_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~543_combout\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\Processador|MUX1|saida_MUX[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[4]~10_combout\ = ( \RAM|ram~543_combout\ & ( \SW[4]~input_o\ & ( ((\Processador|ROM1|memROM~22_combout\ & \Processador|decoder|saida[6]~1_combout\)) # (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~543_combout\ 
-- & ( \SW[4]~input_o\ & ( (!\Processador|ROM1|memROM~22_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & \Processador|MUX1|saida_MUX[3]~4_combout\)))) # (\Processador|ROM1|memROM~22_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & 
-- \Processador|MUX1|saida_MUX[3]~4_combout\)) # (\Processador|decoder|saida[6]~1_combout\))) ) ) ) # ( \RAM|ram~543_combout\ & ( !\SW[4]~input_o\ & ( ((\Processador|ROM1|memROM~22_combout\ & \Processador|decoder|saida[6]~1_combout\)) # 
-- (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~543_combout\ & ( !\SW[4]~input_o\ & ( (\Processador|ROM1|memROM~22_combout\ & \Processador|decoder|saida[6]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~1_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	datae => \RAM|ALT_INV_ram~543_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \Processador|MUX1|saida_MUX[4]~10_combout\);

\Processador|decoder|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~2_combout\ = (!\Processador|ROM1|memROM~26_combout\ & (!\Processador|ROM1|memROM~27_combout\ & ((\Processador|ROM1|memROM~25_combout\) # (\Processador|ROM1|memROM~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	combout => \Processador|decoder|saida~2_combout\);

\Processador|ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~0_combout\ = ( \Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(2) & ((\Processador|PC|DOUT\(3)))) # (\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(1) & !\Processador|PC|DOUT\(3))) ) ) # ( !\Processador|PC|DOUT\(4) & ( 
-- (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(3) & !\Processador|PC|DOUT\(0)))) # (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(2)) # (!\Processador|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100001000000000111000001110001011000010000000001110000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM1|memROM~0_combout\);

\Processador|ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~3_combout\ = ( \Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) $ (\Processador|PC|DOUT\(2))))) ) ) # ( !\Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(0) & 
-- (\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(1) $ (\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT\(0) & (((\Processador|PC|DOUT\(1) & \Processador|PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010011100000000010000001000000000100111000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM1|memROM~3_combout\);

\Processador|decoder|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida[5]~3_combout\ = (!\Processador|ROM1|memROM~10_combout\ & ((!\Processador|ROM1|memROM~25_combout\ & (!\Processador|ROM1|memROM~26_combout\ & \Processador|ROM1|memROM~27_combout\)) # (\Processador|ROM1|memROM~25_combout\ & 
-- ((!\Processador|ROM1|memROM~27_combout\))))) # (\Processador|ROM1|memROM~10_combout\ & (!\Processador|ROM1|memROM~25_combout\ & ((!\Processador|ROM1|memROM~26_combout\) # (\Processador|ROM1|memROM~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001011000100011000101100010001100010110001000110001011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	combout => \Processador|decoder|saida[5]~3_combout\);

\Processador|Banco_Reg|registrador~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~51_combout\ = (\Processador|decoder|saida[5]~3_combout\ & ((!\Processador|ROM1|memROM~1_combout\) # ((!\Processador|ROM1|memROM~0_combout\ & !\Processador|ROM1|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101100000000001110110000000000111011000000000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	datad => \Processador|decoder|ALT_INV_saida[5]~3_combout\,
	combout => \Processador|Banco_Reg|registrador~51_combout\);

\Processador|Banco_Reg|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~17_sumout\,
	asdata => \Processador|MUX1|saida_MUX[4]~10_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~15_q\);

\Processador|ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~2_combout\ = (\Processador|ROM1|memROM~0_combout\ & \Processador|ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \Processador|ROM1|memROM~2_combout\);

\Processador|ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~4_combout\ = (\Processador|ROM1|memROM~1_combout\ & \Processador|ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	combout => \Processador|ROM1|memROM~4_combout\);

\Processador|Banco_Reg|registrador~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~52_combout\ = (\Processador|ROM1|memROM~2_combout\ & (!\Processador|ROM1|memROM~4_combout\ & \Processador|decoder|saida[5]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datac => \Processador|decoder|ALT_INV_saida[5]~3_combout\,
	combout => \Processador|Banco_Reg|registrador~52_combout\);

\Processador|Banco_Reg|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~17_sumout\,
	asdata => \Processador|MUX1|saida_MUX[4]~10_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~23_q\);

\Processador|Banco_Reg|registrador~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~53_combout\ = (!\Processador|ROM1|memROM~2_combout\ & (\Processador|ROM1|memROM~4_combout\ & \Processador|decoder|saida[5]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datac => \Processador|decoder|ALT_INV_saida[5]~3_combout\,
	combout => \Processador|Banco_Reg|registrador~53_combout\);

\Processador|Banco_Reg|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~17_sumout\,
	asdata => \Processador|MUX1|saida_MUX[4]~10_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~31_q\);

\Processador|Banco_Reg|registrador~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~54_combout\ = (\Processador|ROM1|memROM~2_combout\ & (\Processador|ROM1|memROM~3_combout\ & \Processador|decoder|saida[5]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	datac => \Processador|decoder|ALT_INV_saida[5]~3_combout\,
	combout => \Processador|Banco_Reg|registrador~54_combout\);

\Processador|Banco_Reg|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~17_sumout\,
	asdata => \Processador|MUX1|saida_MUX[4]~10_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~39_q\);

\Processador|Banco_Reg|registrador~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~47_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~39_q\ ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( 
-- \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~31_q\ ) ) ) # ( \Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~23_q\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|Banco_Reg|ALT_INV_registrador~15_q\,
	datab => \Processador|Banco_Reg|ALT_INV_registrador~23_q\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~31_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~39_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	combout => \Processador|Banco_Reg|registrador~47_combout\);

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~44_combout\,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( !\Processador|ROM1|memROM~23_combout\ & ( !\Processador|ROM1|memROM~22_combout\ & ( \RAM|ram~530_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~530_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~44_combout\,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~274_q\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~23_combout\ & ( (!\Processador|ROM1|memROM~22_combout\ & (!\Processador|ROM1|memROM~17_combout\ & \RAM|ram~274_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~274_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \Processador|ROM1|memROM~9_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~532_combout\ ) ) ) # ( !\Processador|ROM1|memROM~9_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~531_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~531_combout\,
	datab => \RAM|ALT_INV_ram~532_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~533_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\Processador|MUX1|saida_MUX[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[3]~7_combout\ = ( \RAM|ram~533_combout\ & ( \SW[3]~input_o\ & ( ((\Processador|ROM1|memROM~20_combout\ & \Processador|decoder|saida[6]~1_combout\)) # (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~533_combout\ 
-- & ( \SW[3]~input_o\ & ( (!\Processador|ROM1|memROM~20_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & \Processador|MUX1|saida_MUX[3]~4_combout\)))) # (\Processador|ROM1|memROM~20_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & 
-- \Processador|MUX1|saida_MUX[3]~4_combout\)) # (\Processador|decoder|saida[6]~1_combout\))) ) ) ) # ( \RAM|ram~533_combout\ & ( !\SW[3]~input_o\ & ( ((\Processador|ROM1|memROM~20_combout\ & \Processador|decoder|saida[6]~1_combout\)) # 
-- (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~533_combout\ & ( !\SW[3]~input_o\ & ( (\Processador|ROM1|memROM~20_combout\ & \Processador|decoder|saida[6]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~1_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	datae => \RAM|ALT_INV_ram~533_combout\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \Processador|MUX1|saida_MUX[3]~7_combout\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~46_combout\,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~22_combout\ & ( (\RAM|ram~17_q\ & (!\Processador|ROM1|memROM~23_combout\ & !\Processador|ROM1|memROM~24_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~46_combout\,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~273_q\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~22_combout\ & ( (!\Processador|ROM1|memROM~23_combout\ & (!\Processador|ROM1|memROM~24_combout\ & \RAM|ram~273_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datad => \RAM|ALT_INV_ram~273_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \Processador|ROM1|memROM~9_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~539_combout\ ) ) ) # ( !\Processador|ROM1|memROM~9_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~538_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~538_combout\,
	datab => \RAM|ALT_INV_ram~539_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~540_combout\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\Processador|MUX1|saida_MUX[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[2]~9_combout\ = ( \RAM|ram~540_combout\ & ( \SW[2]~input_o\ & ( ((\Processador|ROM1|memROM~23_combout\ & \Processador|decoder|saida[6]~1_combout\)) # (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~540_combout\ 
-- & ( \SW[2]~input_o\ & ( (!\Processador|ROM1|memROM~23_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & \Processador|MUX1|saida_MUX[3]~4_combout\)))) # (\Processador|ROM1|memROM~23_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & 
-- \Processador|MUX1|saida_MUX[3]~4_combout\)) # (\Processador|decoder|saida[6]~1_combout\))) ) ) ) # ( \RAM|ram~540_combout\ & ( !\SW[2]~input_o\ & ( ((\Processador|ROM1|memROM~23_combout\ & \Processador|decoder|saida[6]~1_combout\)) # 
-- (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~540_combout\ & ( !\SW[2]~input_o\ & ( (\Processador|ROM1|memROM~23_combout\ & \Processador|decoder|saida[6]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~1_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	datae => \RAM|ALT_INV_ram~540_combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \Processador|MUX1|saida_MUX[2]~9_combout\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~45_combout\,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( !\Processador|ROM1|memROM~1_combout\ & ( \Processador|ROM1|memROM~7_combout\ & ( (\RAM|ram~16_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) ) ) # ( \Processador|ROM1|memROM~1_combout\ 
-- & ( !\Processador|ROM1|memROM~7_combout\ & ( (\RAM|ram~16_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) ) ) # ( !\Processador|ROM1|memROM~1_combout\ & ( !\Processador|ROM1|memROM~7_combout\ & ( (\RAM|ram~16_q\ 
-- & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001010101010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~534_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~534_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~45_combout\,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~272_q\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~22_combout\ & ( (!\Processador|ROM1|memROM~24_combout\ & (!\Processador|ROM1|memROM~17_combout\ & \RAM|ram~272_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~272_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \Processador|ROM1|memROM~9_combout\ & ( !\Processador|ROM1|memROM~23_combout\ & ( \RAM|ram~536_combout\ ) ) ) # ( !\Processador|ROM1|memROM~9_combout\ & ( !\Processador|ROM1|memROM~23_combout\ & ( \RAM|ram~535_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~535_combout\,
	datab => \RAM|ALT_INV_ram~536_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~537_combout\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\Processador|MUX1|saida_MUX[1]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[1]~8_combout\ = ( \RAM|ram~537_combout\ & ( \SW[1]~input_o\ & ( ((\Processador|ROM1|memROM~24_combout\ & \Processador|decoder|saida[6]~1_combout\)) # (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~537_combout\ 
-- & ( \SW[1]~input_o\ & ( (!\Processador|ROM1|memROM~24_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & \Processador|MUX1|saida_MUX[3]~4_combout\)))) # (\Processador|ROM1|memROM~24_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & 
-- \Processador|MUX1|saida_MUX[3]~4_combout\)) # (\Processador|decoder|saida[6]~1_combout\))) ) ) ) # ( \RAM|ram~537_combout\ & ( !\SW[1]~input_o\ & ( ((\Processador|ROM1|memROM~24_combout\ & \Processador|decoder|saida[6]~1_combout\)) # 
-- (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~537_combout\ & ( !\SW[1]~input_o\ & ( (\Processador|ROM1|memROM~24_combout\ & \Processador|decoder|saida[6]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~1_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	datae => \RAM|ALT_INV_ram~537_combout\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \Processador|MUX1|saida_MUX[1]~8_combout\);

\Processador|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~34_cout\ = CARRY(( ((!\Processador|ULA1|Equal1~0_combout\) # (\Processador|decoder|Equal12~1_combout\)) # (\Processador|decoder|Equal12~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_Equal12~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal12~1_combout\,
	datad => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	cin => GND,
	cout => \Processador|ULA1|Add0~34_cout\);

\Processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~1_sumout\ = SUM(( \Processador|Banco_Reg|registrador~43_combout\ ) + ( !\Processador|MUX1|saida_MUX[0]~6_combout\ $ (((!\Processador|decoder|Equal12~0_combout\ & (!\Processador|decoder|Equal12~1_combout\ & 
-- \Processador|ULA1|Equal1~0_combout\)))) ) + ( \Processador|ULA1|Add0~34_cout\ ))
-- \Processador|ULA1|Add0~2\ = CARRY(( \Processador|Banco_Reg|registrador~43_combout\ ) + ( !\Processador|MUX1|saida_MUX[0]~6_combout\ $ (((!\Processador|decoder|Equal12~0_combout\ & (!\Processador|decoder|Equal12~1_combout\ & 
-- \Processador|ULA1|Equal1~0_combout\)))) ) + ( \Processador|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|MUX1|ALT_INV_saida_MUX[0]~6_combout\,
	datab => \Processador|decoder|ALT_INV_Equal12~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal12~1_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~43_combout\,
	dataf => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	cin => \Processador|ULA1|Add0~34_cout\,
	sumout => \Processador|ULA1|Add0~1_sumout\,
	cout => \Processador|ULA1|Add0~2\);

\Processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~9_sumout\ = SUM(( \Processador|Banco_Reg|registrador~45_combout\ ) + ( !\Processador|MUX1|saida_MUX[1]~8_combout\ $ (((!\Processador|decoder|Equal12~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal12~0_combout\)))) ) + ( \Processador|ULA1|Add0~2\ ))
-- \Processador|ULA1|Add0~10\ = CARRY(( \Processador|Banco_Reg|registrador~45_combout\ ) + ( !\Processador|MUX1|saida_MUX[1]~8_combout\ $ (((!\Processador|decoder|Equal12~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal12~0_combout\)))) ) + ( \Processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal12~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal12~0_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~45_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[1]~8_combout\,
	cin => \Processador|ULA1|Add0~2\,
	sumout => \Processador|ULA1|Add0~9_sumout\,
	cout => \Processador|ULA1|Add0~10\);

\Processador|Banco_Reg|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~9_sumout\,
	asdata => \Processador|MUX1|saida_MUX[1]~8_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~12_q\);

\Processador|Banco_Reg|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~9_sumout\,
	asdata => \Processador|MUX1|saida_MUX[1]~8_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~20_q\);

\Processador|Banco_Reg|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~9_sumout\,
	asdata => \Processador|MUX1|saida_MUX[1]~8_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~28_q\);

\Processador|Banco_Reg|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~9_sumout\,
	asdata => \Processador|MUX1|saida_MUX[1]~8_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~36_q\);

\Processador|Banco_Reg|registrador~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~45_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~36_q\ ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( 
-- \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~28_q\ ) ) ) # ( \Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~20_q\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~12_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|Banco_Reg|ALT_INV_registrador~12_q\,
	datab => \Processador|Banco_Reg|ALT_INV_registrador~20_q\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~28_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~36_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	combout => \Processador|Banco_Reg|registrador~45_combout\);

\Processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~13_sumout\ = SUM(( \Processador|Banco_Reg|registrador~46_combout\ ) + ( !\Processador|MUX1|saida_MUX[2]~9_combout\ $ (((!\Processador|decoder|Equal12~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal12~0_combout\)))) ) + ( \Processador|ULA1|Add0~10\ ))
-- \Processador|ULA1|Add0~14\ = CARRY(( \Processador|Banco_Reg|registrador~46_combout\ ) + ( !\Processador|MUX1|saida_MUX[2]~9_combout\ $ (((!\Processador|decoder|Equal12~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal12~0_combout\)))) ) + ( \Processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal12~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal12~0_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~46_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[2]~9_combout\,
	cin => \Processador|ULA1|Add0~10\,
	sumout => \Processador|ULA1|Add0~13_sumout\,
	cout => \Processador|ULA1|Add0~14\);

\Processador|Banco_Reg|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~13_sumout\,
	asdata => \Processador|MUX1|saida_MUX[2]~9_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~13_q\);

\Processador|Banco_Reg|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~13_sumout\,
	asdata => \Processador|MUX1|saida_MUX[2]~9_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~21_q\);

\Processador|Banco_Reg|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~13_sumout\,
	asdata => \Processador|MUX1|saida_MUX[2]~9_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~29_q\);

\Processador|Banco_Reg|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~13_sumout\,
	asdata => \Processador|MUX1|saida_MUX[2]~9_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~37_q\);

\Processador|Banco_Reg|registrador~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~46_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~37_q\ ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( 
-- \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~29_q\ ) ) ) # ( \Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~21_q\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|Banco_Reg|ALT_INV_registrador~13_q\,
	datab => \Processador|Banco_Reg|ALT_INV_registrador~21_q\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~29_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~37_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	combout => \Processador|Banco_Reg|registrador~46_combout\);

\Processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~5_sumout\ = SUM(( \Processador|Banco_Reg|registrador~44_combout\ ) + ( !\Processador|MUX1|saida_MUX[3]~7_combout\ $ (((!\Processador|decoder|Equal12~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal12~0_combout\)))) ) + ( \Processador|ULA1|Add0~14\ ))
-- \Processador|ULA1|Add0~6\ = CARRY(( \Processador|Banco_Reg|registrador~44_combout\ ) + ( !\Processador|MUX1|saida_MUX[3]~7_combout\ $ (((!\Processador|decoder|Equal12~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal12~0_combout\)))) ) + ( \Processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal12~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal12~0_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~44_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[3]~7_combout\,
	cin => \Processador|ULA1|Add0~14\,
	sumout => \Processador|ULA1|Add0~5_sumout\,
	cout => \Processador|ULA1|Add0~6\);

\Processador|Banco_Reg|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~5_sumout\,
	asdata => \Processador|MUX1|saida_MUX[3]~7_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~14_q\);

\Processador|Banco_Reg|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~5_sumout\,
	asdata => \Processador|MUX1|saida_MUX[3]~7_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~22_q\);

\Processador|Banco_Reg|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~5_sumout\,
	asdata => \Processador|MUX1|saida_MUX[3]~7_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~30_q\);

\Processador|Banco_Reg|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~5_sumout\,
	asdata => \Processador|MUX1|saida_MUX[3]~7_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~38_q\);

\Processador|Banco_Reg|registrador~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~44_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~38_q\ ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( 
-- \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~30_q\ ) ) ) # ( \Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~22_q\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|Banco_Reg|ALT_INV_registrador~14_q\,
	datab => \Processador|Banco_Reg|ALT_INV_registrador~22_q\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~30_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~38_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	combout => \Processador|Banco_Reg|registrador~44_combout\);

\Processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~17_sumout\ = SUM(( \Processador|Banco_Reg|registrador~47_combout\ ) + ( !\Processador|MUX1|saida_MUX[4]~10_combout\ $ (((!\Processador|decoder|Equal12~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal12~0_combout\)))) ) + ( \Processador|ULA1|Add0~6\ ))
-- \Processador|ULA1|Add0~18\ = CARRY(( \Processador|Banco_Reg|registrador~47_combout\ ) + ( !\Processador|MUX1|saida_MUX[4]~10_combout\ $ (((!\Processador|decoder|Equal12~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal12~0_combout\)))) ) + ( \Processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal12~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal12~0_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~47_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[4]~10_combout\,
	cin => \Processador|ULA1|Add0~6\,
	sumout => \Processador|ULA1|Add0~17_sumout\,
	cout => \Processador|ULA1|Add0~18\);

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~48_combout\,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( !\Processador|ROM1|memROM~23_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~544_combout\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~544_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~544_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~545_combout\);

\RAM|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~48_combout\,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~276_q\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( !\Processador|ROM1|memROM~23_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( (!\Processador|ROM1|memROM~20_combout\ & (!\Processador|ROM1|memROM~24_combout\ & \RAM|ram~276_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datad => \RAM|ALT_INV_ram~276_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( \Processador|ROM1|memROM~9_combout\ & ( !\Processador|ROM1|memROM~22_combout\ & ( \RAM|ram~546_combout\ ) ) ) # ( !\Processador|ROM1|memROM~9_combout\ & ( !\Processador|ROM1|memROM~22_combout\ & ( \RAM|ram~545_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~545_combout\,
	datab => \RAM|ALT_INV_ram~546_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	combout => \RAM|ram~547_combout\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\Processador|MUX1|saida_MUX[5]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[5]~11_combout\ = ( \RAM|ram~547_combout\ & ( \SW[5]~input_o\ & ( ((\Processador|ROM1|memROM~9_combout\ & \Processador|decoder|saida[6]~1_combout\)) # (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~547_combout\ 
-- & ( \SW[5]~input_o\ & ( (!\Processador|ROM1|memROM~9_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & \Processador|MUX1|saida_MUX[3]~4_combout\)))) # (\Processador|ROM1|memROM~9_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & 
-- \Processador|MUX1|saida_MUX[3]~4_combout\)) # (\Processador|decoder|saida[6]~1_combout\))) ) ) ) # ( \RAM|ram~547_combout\ & ( !\SW[5]~input_o\ & ( ((\Processador|ROM1|memROM~9_combout\ & \Processador|decoder|saida[6]~1_combout\)) # 
-- (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~547_combout\ & ( !\SW[5]~input_o\ & ( (\Processador|ROM1|memROM~9_combout\ & \Processador|decoder|saida[6]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~1_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	datae => \RAM|ALT_INV_ram~547_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \Processador|MUX1|saida_MUX[5]~11_combout\);

\Processador|Banco_Reg|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~21_sumout\,
	asdata => \Processador|MUX1|saida_MUX[5]~11_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~16_q\);

\Processador|Banco_Reg|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~21_sumout\,
	asdata => \Processador|MUX1|saida_MUX[5]~11_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~24_q\);

\Processador|Banco_Reg|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~21_sumout\,
	asdata => \Processador|MUX1|saida_MUX[5]~11_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~32_q\);

\Processador|Banco_Reg|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~21_sumout\,
	asdata => \Processador|MUX1|saida_MUX[5]~11_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~40_q\);

\Processador|Banco_Reg|registrador~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~48_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~40_q\ ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( 
-- \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~32_q\ ) ) ) # ( \Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~24_q\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|Banco_Reg|ALT_INV_registrador~16_q\,
	datab => \Processador|Banco_Reg|ALT_INV_registrador~24_q\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~32_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~40_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	combout => \Processador|Banco_Reg|registrador~48_combout\);

\Processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~21_sumout\ = SUM(( \Processador|Banco_Reg|registrador~48_combout\ ) + ( !\Processador|MUX1|saida_MUX[5]~11_combout\ $ (((!\Processador|decoder|Equal12~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal12~0_combout\)))) ) + ( \Processador|ULA1|Add0~18\ ))
-- \Processador|ULA1|Add0~22\ = CARRY(( \Processador|Banco_Reg|registrador~48_combout\ ) + ( !\Processador|MUX1|saida_MUX[5]~11_combout\ $ (((!\Processador|decoder|Equal12~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal12~0_combout\)))) ) + ( \Processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal12~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal12~0_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~48_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[5]~11_combout\,
	cin => \Processador|ULA1|Add0~18\,
	sumout => \Processador|ULA1|Add0~21_sumout\,
	cout => \Processador|ULA1|Add0~22\);

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~49_combout\,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~49_combout\,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~277_q\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~23_combout\ & ( (!\Processador|ROM1|memROM~22_combout\ & ((!\Processador|ROM1|memROM~9_combout\ & (\RAM|ram~21_q\)) # (\Processador|ROM1|memROM~9_combout\ & 
-- ((\RAM|ram~277_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datab => \RAM|ALT_INV_ram~277_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~548_combout\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( !\Processador|ROM1|memROM~17_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~548_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~548_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~549_combout\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\Processador|MUX1|saida_MUX[6]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[6]~12_combout\ = ( \RAM|ram~549_combout\ & ( \SW[6]~input_o\ & ( ((\Processador|ROM1|memROM~29_combout\ & \Processador|decoder|saida[6]~1_combout\)) # (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~549_combout\ 
-- & ( \SW[6]~input_o\ & ( (!\Processador|ROM1|memROM~29_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & \Processador|MUX1|saida_MUX[3]~4_combout\)))) # (\Processador|ROM1|memROM~29_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & 
-- \Processador|MUX1|saida_MUX[3]~4_combout\)) # (\Processador|decoder|saida[6]~1_combout\))) ) ) ) # ( \RAM|ram~549_combout\ & ( !\SW[6]~input_o\ & ( ((\Processador|ROM1|memROM~29_combout\ & \Processador|decoder|saida[6]~1_combout\)) # 
-- (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~549_combout\ & ( !\SW[6]~input_o\ & ( (\Processador|ROM1|memROM~29_combout\ & \Processador|decoder|saida[6]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~29_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~1_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	datae => \RAM|ALT_INV_ram~549_combout\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \Processador|MUX1|saida_MUX[6]~12_combout\);

\Processador|Banco_Reg|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~25_sumout\,
	asdata => \Processador|MUX1|saida_MUX[6]~12_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~17_q\);

\Processador|Banco_Reg|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~25_sumout\,
	asdata => \Processador|MUX1|saida_MUX[6]~12_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~25_q\);

\Processador|Banco_Reg|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~25_sumout\,
	asdata => \Processador|MUX1|saida_MUX[6]~12_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~33_q\);

\Processador|Banco_Reg|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~25_sumout\,
	asdata => \Processador|MUX1|saida_MUX[6]~12_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~41_q\);

\Processador|Banco_Reg|registrador~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~49_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~41_q\ ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( 
-- \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~33_q\ ) ) ) # ( \Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~25_q\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|Banco_Reg|ALT_INV_registrador~17_q\,
	datab => \Processador|Banco_Reg|ALT_INV_registrador~25_q\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~33_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~41_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	combout => \Processador|Banco_Reg|registrador~49_combout\);

\Processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~25_sumout\ = SUM(( \Processador|Banco_Reg|registrador~49_combout\ ) + ( !\Processador|MUX1|saida_MUX[6]~12_combout\ $ (((!\Processador|decoder|Equal12~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal12~0_combout\)))) ) + ( \Processador|ULA1|Add0~22\ ))
-- \Processador|ULA1|Add0~26\ = CARRY(( \Processador|Banco_Reg|registrador~49_combout\ ) + ( !\Processador|MUX1|saida_MUX[6]~12_combout\ $ (((!\Processador|decoder|Equal12~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal12~0_combout\)))) ) + ( \Processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal12~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal12~0_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~49_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[6]~12_combout\,
	cin => \Processador|ULA1|Add0~22\,
	sumout => \Processador|ULA1|Add0~25_sumout\,
	cout => \Processador|ULA1|Add0~26\);

\Processador|ROM1|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~30_combout\ = (\Processador|ROM1|memROM~15_combout\ & \Processador|ROM1|memROM~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	combout => \Processador|ROM1|memROM~30_combout\);

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~50_combout\,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~50_combout\,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~278_q\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( \Processador|ROM1|memROM~9_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~278_q\ ) ) ) # ( !\Processador|ROM1|memROM~9_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datab => \RAM|ALT_INV_ram~278_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~550_combout\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( !\Processador|ROM1|memROM~22_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~550_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~550_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~551_combout\);

\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~23_combout\ & ( \RAM|ram~551_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~551_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~552_combout\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\Processador|MUX1|saida_MUX[7]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[7]~13_combout\ = ( \RAM|ram~552_combout\ & ( \SW[7]~input_o\ & ( ((\Processador|ROM1|memROM~30_combout\ & \Processador|decoder|saida[6]~1_combout\)) # (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~552_combout\ 
-- & ( \SW[7]~input_o\ & ( (!\Processador|ROM1|memROM~30_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & \Processador|MUX1|saida_MUX[3]~4_combout\)))) # (\Processador|ROM1|memROM~30_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & 
-- \Processador|MUX1|saida_MUX[3]~4_combout\)) # (\Processador|decoder|saida[6]~1_combout\))) ) ) ) # ( \RAM|ram~552_combout\ & ( !\SW[7]~input_o\ & ( ((\Processador|ROM1|memROM~30_combout\ & \Processador|decoder|saida[6]~1_combout\)) # 
-- (\Processador|MUX1|saida_MUX[3]~0_combout\) ) ) ) # ( !\RAM|ram~552_combout\ & ( !\SW[7]~input_o\ & ( (\Processador|ROM1|memROM~30_combout\ & \Processador|decoder|saida[6]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111110001111100010001000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~30_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~1_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	datae => \RAM|ALT_INV_ram~552_combout\,
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \Processador|MUX1|saida_MUX[7]~13_combout\);

\Processador|Banco_Reg|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~29_sumout\,
	asdata => \Processador|MUX1|saida_MUX[7]~13_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~18_q\);

\Processador|Banco_Reg|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~29_sumout\,
	asdata => \Processador|MUX1|saida_MUX[7]~13_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~26_q\);

\Processador|Banco_Reg|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~29_sumout\,
	asdata => \Processador|MUX1|saida_MUX[7]~13_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~34_q\);

\Processador|Banco_Reg|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~29_sumout\,
	asdata => \Processador|MUX1|saida_MUX[7]~13_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~42_q\);

\Processador|Banco_Reg|registrador~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~50_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~42_q\ ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( 
-- \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~34_q\ ) ) ) # ( \Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~26_q\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|Banco_Reg|ALT_INV_registrador~18_q\,
	datab => \Processador|Banco_Reg|ALT_INV_registrador~26_q\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~34_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~42_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	combout => \Processador|Banco_Reg|registrador~50_combout\);

\Processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~29_sumout\ = SUM(( \Processador|Banco_Reg|registrador~50_combout\ ) + ( !\Processador|MUX1|saida_MUX[7]~13_combout\ $ (((!\Processador|decoder|Equal12~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal12~0_combout\)))) ) + ( \Processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal12~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal12~0_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~50_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[7]~13_combout\,
	cin => \Processador|ULA1|Add0~26\,
	sumout => \Processador|ULA1|Add0~29_sumout\);

\Processador|flag_ula|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|flag_ula|DOUT~1_combout\ = (!\Processador|ROM1|memROM~10_combout\ & (!\Processador|ROM1|memROM~25_combout\ & (\Processador|ROM1|memROM~26_combout\ & !\Processador|ROM1|memROM~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	combout => \Processador|flag_ula|DOUT~1_combout\);

\Processador|flag_ula|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|flag_ula|DOUT~2_combout\ = ( \Processador|flag_ula|DOUT~q\ & ( \Processador|flag_ula|DOUT~1_combout\ & ( (!\Processador|ULA1|Add0~1_sumout\ & (!\Processador|ULA1|Add0~5_sumout\ & (!\Processador|ULA1|Add0~9_sumout\ & 
-- !\Processador|ULA1|Add0~13_sumout\))) ) ) ) # ( !\Processador|flag_ula|DOUT~q\ & ( \Processador|flag_ula|DOUT~1_combout\ & ( (!\Processador|ULA1|Add0~1_sumout\ & (!\Processador|ULA1|Add0~5_sumout\ & (!\Processador|ULA1|Add0~9_sumout\ & 
-- !\Processador|ULA1|Add0~13_sumout\))) ) ) ) # ( \Processador|flag_ula|DOUT~q\ & ( !\Processador|flag_ula|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ULA1|ALT_INV_Add0~1_sumout\,
	datab => \Processador|ULA1|ALT_INV_Add0~5_sumout\,
	datac => \Processador|ULA1|ALT_INV_Add0~9_sumout\,
	datad => \Processador|ULA1|ALT_INV_Add0~13_sumout\,
	datae => \Processador|flag_ula|ALT_INV_DOUT~q\,
	dataf => \Processador|flag_ula|ALT_INV_DOUT~1_combout\,
	combout => \Processador|flag_ula|DOUT~2_combout\);

\Processador|flag_ula|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|flag_ula|DOUT~0_combout\ = ( \Processador|flag_ula|DOUT~1_combout\ & ( \Processador|flag_ula|DOUT~2_combout\ & ( (!\Processador|ULA1|Add0~17_sumout\ & (!\Processador|ULA1|Add0~21_sumout\ & (!\Processador|ULA1|Add0~25_sumout\ & 
-- !\Processador|ULA1|Add0~29_sumout\))) ) ) ) # ( !\Processador|flag_ula|DOUT~1_combout\ & ( \Processador|flag_ula|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ULA1|ALT_INV_Add0~17_sumout\,
	datab => \Processador|ULA1|ALT_INV_Add0~21_sumout\,
	datac => \Processador|ULA1|ALT_INV_Add0~25_sumout\,
	datad => \Processador|ULA1|ALT_INV_Add0~29_sumout\,
	datae => \Processador|flag_ula|ALT_INV_DOUT~1_combout\,
	dataf => \Processador|flag_ula|ALT_INV_DOUT~2_combout\,
	combout => \Processador|flag_ula|DOUT~0_combout\);

\Processador|flag_ula|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|flag_ula|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|flag_ula|DOUT~q\);

\Processador|MUX_JMP|saida_MUX[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[8]~0_combout\ = ( \Processador|flag_ula|DOUT~q\ & ( (!\Processador|ROM1|memROM~25_combout\ & (\Processador|ROM1|memROM~26_combout\ & (!\Processador|ROM1|memROM~10_combout\ $ (!\Processador|ROM1|memROM~27_combout\)))) # 
-- (\Processador|ROM1|memROM~25_combout\ & (((!\Processador|ROM1|memROM~26_combout\ & \Processador|ROM1|memROM~27_combout\)))) ) ) # ( !\Processador|flag_ula|DOUT~q\ & ( (!\Processador|ROM1|memROM~10_combout\ & (\Processador|ROM1|memROM~27_combout\ & 
-- (!\Processador|ROM1|memROM~25_combout\ $ (!\Processador|ROM1|memROM~26_combout\)))) # (\Processador|ROM1|memROM~10_combout\ & (!\Processador|ROM1|memROM~25_combout\ & (\Processador|ROM1|memROM~26_combout\ & !\Processador|ROM1|memROM~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000101000000001000011100000000100001010000000010000111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	datae => \Processador|flag_ula|ALT_INV_DOUT~q\,
	combout => \Processador|MUX_JMP|saida_MUX[8]~0_combout\);

\Processador|MUX_JMP|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|Equal2~0_combout\ = ( \Processador|flag_ula|DOUT~q\ & ( (!\Processador|ROM1|memROM~25_combout\ & (\Processador|ROM1|memROM~10_combout\ & (\Processador|ROM1|memROM~26_combout\ & !\Processador|ROM1|memROM~27_combout\))) # 
-- (\Processador|ROM1|memROM~25_combout\ & (((!\Processador|ROM1|memROM~26_combout\ & \Processador|ROM1|memROM~27_combout\)))) ) ) # ( !\Processador|flag_ula|DOUT~q\ & ( (!\Processador|ROM1|memROM~10_combout\ & (\Processador|ROM1|memROM~25_combout\ & 
-- (!\Processador|ROM1|memROM~26_combout\ & \Processador|ROM1|memROM~27_combout\))) # (\Processador|ROM1|memROM~10_combout\ & (!\Processador|ROM1|memROM~25_combout\ & (\Processador|ROM1|memROM~26_combout\ & !\Processador|ROM1|memROM~27_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100000000001000011000000000100001000000000010000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	datae => \Processador|flag_ula|ALT_INV_DOUT~q\,
	combout => \Processador|MUX_JMP|Equal2~0_combout\);

\Processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~13_sumout\ = SUM(( \Processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \Processador|incrementaPC|Add0~14\ = CARRY(( \Processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \Processador|incrementaPC|Add0~13_sumout\,
	cout => \Processador|incrementaPC|Add0~14\);

\Processador|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~1_sumout\ = SUM(( \Processador|PC|DOUT\(1) ) + ( GND ) + ( \Processador|incrementaPC|Add0~14\ ))
-- \Processador|incrementaPC|Add0~2\ = CARRY(( \Processador|PC|DOUT\(1) ) + ( GND ) + ( \Processador|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	cin => \Processador|incrementaPC|Add0~14\,
	sumout => \Processador|incrementaPC|Add0~1_sumout\,
	cout => \Processador|incrementaPC|Add0~2\);

\Processador|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~5_sumout\ = SUM(( \Processador|PC|DOUT\(2) ) + ( GND ) + ( \Processador|incrementaPC|Add0~2\ ))
-- \Processador|incrementaPC|Add0~6\ = CARRY(( \Processador|PC|DOUT\(2) ) + ( GND ) + ( \Processador|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	cin => \Processador|incrementaPC|Add0~2\,
	sumout => \Processador|incrementaPC|Add0~5_sumout\,
	cout => \Processador|incrementaPC|Add0~6\);

\Processador|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~9_sumout\ = SUM(( \Processador|PC|DOUT\(3) ) + ( GND ) + ( \Processador|incrementaPC|Add0~6\ ))
-- \Processador|incrementaPC|Add0~10\ = CARRY(( \Processador|PC|DOUT\(3) ) + ( GND ) + ( \Processador|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	cin => \Processador|incrementaPC|Add0~6\,
	sumout => \Processador|incrementaPC|Add0~9_sumout\,
	cout => \Processador|incrementaPC|Add0~10\);

\Processador|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~17_sumout\ = SUM(( \Processador|PC|DOUT\(4) ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))
-- \Processador|incrementaPC|Add0~18\ = CARRY(( \Processador|PC|DOUT\(4) ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	cin => \Processador|incrementaPC|Add0~10\,
	sumout => \Processador|incrementaPC|Add0~17_sumout\,
	cout => \Processador|incrementaPC|Add0~18\);

\Processador|decoder|saida[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida[8]~4_combout\ = (\Processador|ROM1|memROM~10_combout\ & (!\Processador|ROM1|memROM~25_combout\ & (\Processador|ROM1|memROM~26_combout\ & !\Processador|ROM1|memROM~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	combout => \Processador|decoder|saida[8]~4_combout\);

\Processador|Salva_Ret|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|incrementaPC|Add0~17_sumout\,
	ena => \Processador|decoder|saida[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Salva_Ret|DOUT\(4));

\Processador|MUX_JMP|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[4]~5_combout\ = ( \Processador|Salva_Ret|DOUT\(4) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~17_sumout\)))) # (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & 
-- (((!\Processador|MUX_JMP|Equal2~0_combout\)) # (\Processador|ROM1|memROM~22_combout\))) ) ) # ( !\Processador|Salva_Ret|DOUT\(4) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~17_sumout\)))) # 
-- (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (\Processador|ROM1|memROM~22_combout\ & (\Processador|MUX_JMP|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \Processador|MUX_JMP|ALT_INV_Equal2~0_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	datae => \Processador|Salva_Ret|ALT_INV_DOUT\(4),
	combout => \Processador|MUX_JMP|saida_MUX[4]~5_combout\);

\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|MUX_JMP|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

\Processador|ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~14_combout\ = (!\Processador|PC|DOUT\(4) & ((!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) $ (\Processador|PC|DOUT\(3)))))) # 
-- (\Processador|PC|DOUT\(4) & (\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100000010001010010000001000101001000000100010100100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~14_combout\);

\Processador|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~21_sumout\ = SUM(( \Processador|PC|DOUT\(5) ) + ( GND ) + ( \Processador|incrementaPC|Add0~18\ ))
-- \Processador|incrementaPC|Add0~22\ = CARRY(( \Processador|PC|DOUT\(5) ) + ( GND ) + ( \Processador|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(5),
	cin => \Processador|incrementaPC|Add0~18\,
	sumout => \Processador|incrementaPC|Add0~21_sumout\,
	cout => \Processador|incrementaPC|Add0~22\);

\Processador|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~25_sumout\ = SUM(( \Processador|PC|DOUT\(6) ) + ( GND ) + ( \Processador|incrementaPC|Add0~22\ ))
-- \Processador|incrementaPC|Add0~26\ = CARRY(( \Processador|PC|DOUT\(6) ) + ( GND ) + ( \Processador|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(6),
	cin => \Processador|incrementaPC|Add0~22\,
	sumout => \Processador|incrementaPC|Add0~25_sumout\,
	cout => \Processador|incrementaPC|Add0~26\);

\Processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~29_sumout\ = SUM(( \Processador|PC|DOUT\(7) ) + ( GND ) + ( \Processador|incrementaPC|Add0~26\ ))
-- \Processador|incrementaPC|Add0~30\ = CARRY(( \Processador|PC|DOUT\(7) ) + ( GND ) + ( \Processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	cin => \Processador|incrementaPC|Add0~26\,
	sumout => \Processador|incrementaPC|Add0~29_sumout\,
	cout => \Processador|incrementaPC|Add0~30\);

\Processador|Salva_Ret|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|incrementaPC|Add0~29_sumout\,
	ena => \Processador|decoder|saida[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Salva_Ret|DOUT\(7));

\Processador|MUX_JMP|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[7]~8_combout\ = ( \Processador|Salva_Ret|DOUT\(7) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~29_sumout\)))) # (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & 
-- (((!\Processador|MUX_JMP|Equal2~0_combout\)) # (\Processador|ROM1|memROM~30_combout\))) ) ) # ( !\Processador|Salva_Ret|DOUT\(7) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~29_sumout\)))) # 
-- (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (\Processador|ROM1|memROM~30_combout\ & (\Processador|MUX_JMP|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~30_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \Processador|MUX_JMP|ALT_INV_Equal2~0_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	datae => \Processador|Salva_Ret|ALT_INV_DOUT\(7),
	combout => \Processador|MUX_JMP|saida_MUX[7]~8_combout\);

\Processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|MUX_JMP|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(7));

\Processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~33_sumout\ = SUM(( \Processador|PC|DOUT\(8) ) + ( GND ) + ( \Processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(8),
	cin => \Processador|incrementaPC|Add0~30\,
	sumout => \Processador|incrementaPC|Add0~33_sumout\);

\Processador|Salva_Ret|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|incrementaPC|Add0~33_sumout\,
	ena => \Processador|decoder|saida[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Salva_Ret|DOUT\(8));

\Processador|MUX_JMP|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[8]~9_combout\ = ( \Processador|incrementaPC|Add0~33_sumout\ & ( \Processador|Salva_Ret|DOUT\(8) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\) # ((!\Processador|MUX_JMP|Equal2~0_combout\) # 
-- ((\Processador|ROM1|memROM~1_combout\ & \Processador|ROM1|memROM~16_combout\))) ) ) ) # ( !\Processador|incrementaPC|Add0~33_sumout\ & ( \Processador|Salva_Ret|DOUT\(8) & ( (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & 
-- ((!\Processador|MUX_JMP|Equal2~0_combout\) # ((\Processador|ROM1|memROM~1_combout\ & \Processador|ROM1|memROM~16_combout\)))) ) ) ) # ( \Processador|incrementaPC|Add0~33_sumout\ & ( !\Processador|Salva_Ret|DOUT\(8) & ( 
-- (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\) # ((\Processador|ROM1|memROM~1_combout\ & (\Processador|ROM1|memROM~16_combout\ & \Processador|MUX_JMP|Equal2~0_combout\))) ) ) ) # ( !\Processador|incrementaPC|Add0~33_sumout\ & ( 
-- !\Processador|Salva_Ret|DOUT\(8) & ( (\Processador|ROM1|memROM~1_combout\ & (\Processador|ROM1|memROM~16_combout\ & (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & \Processador|MUX_JMP|Equal2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111100001111000100001111000000011111111111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~16_combout\,
	datac => \Processador|MUX_JMP|ALT_INV_saida_MUX[8]~0_combout\,
	datad => \Processador|MUX_JMP|ALT_INV_Equal2~0_combout\,
	datae => \Processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	dataf => \Processador|Salva_Ret|ALT_INV_DOUT\(8),
	combout => \Processador|MUX_JMP|saida_MUX[8]~9_combout\);

\Processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|MUX_JMP|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(8));

\Processador|ROM1|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~28_combout\ = ( !\Processador|PC|DOUT\(8) & ( (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \Processador|PC|ALT_INV_DOUT\(8),
	combout => \Processador|ROM1|memROM~28_combout\);

\Processador|ROM1|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~29_combout\ = (\Processador|ROM1|memROM~14_combout\ & \Processador|ROM1|memROM~28_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~28_combout\,
	combout => \Processador|ROM1|memROM~29_combout\);

\Processador|Salva_Ret|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|incrementaPC|Add0~25_sumout\,
	ena => \Processador|decoder|saida[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Salva_Ret|DOUT\(6));

\Processador|MUX_JMP|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[6]~7_combout\ = ( \Processador|Salva_Ret|DOUT\(6) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~25_sumout\)))) # (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & 
-- (((!\Processador|MUX_JMP|Equal2~0_combout\)) # (\Processador|ROM1|memROM~29_combout\))) ) ) # ( !\Processador|Salva_Ret|DOUT\(6) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~25_sumout\)))) # 
-- (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (\Processador|ROM1|memROM~29_combout\ & (\Processador|MUX_JMP|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~29_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \Processador|MUX_JMP|ALT_INV_Equal2~0_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	datae => \Processador|Salva_Ret|ALT_INV_DOUT\(6),
	combout => \Processador|MUX_JMP|saida_MUX[6]~7_combout\);

\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|MUX_JMP|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(6));

\Processador|ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~18_combout\ = ( !\Processador|PC|DOUT\(8) & ( (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \Processador|PC|ALT_INV_DOUT\(8),
	combout => \Processador|ROM1|memROM~18_combout\);

\Processador|ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~19_combout\ = (!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(1)) # (\Processador|PC|DOUT\(4))))) # (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(1) $ 
-- (!\Processador|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100001001010000110000100101000011000010010100001100001001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM1|memROM~19_combout\);

\Processador|ROM1|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~20_combout\ = (\Processador|ROM1|memROM~18_combout\ & \Processador|ROM1|memROM~19_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	combout => \Processador|ROM1|memROM~20_combout\);

\Processador|Salva_Ret|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|incrementaPC|Add0~9_sumout\,
	ena => \Processador|decoder|saida[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Salva_Ret|DOUT\(3));

\Processador|MUX_JMP|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[3]~3_combout\ = ( \Processador|Salva_Ret|DOUT\(3) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~9_sumout\)))) # (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & 
-- (((!\Processador|MUX_JMP|Equal2~0_combout\)) # (\Processador|ROM1|memROM~20_combout\))) ) ) # ( !\Processador|Salva_Ret|DOUT\(3) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~9_sumout\)))) # 
-- (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (\Processador|ROM1|memROM~20_combout\ & (\Processador|MUX_JMP|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \Processador|MUX_JMP|ALT_INV_Equal2~0_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	datae => \Processador|Salva_Ret|ALT_INV_DOUT\(3),
	combout => \Processador|MUX_JMP|saida_MUX[3]~3_combout\);

\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|MUX_JMP|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

\Processador|ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~6_combout\ = ( \Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(3) $ (!\Processador|PC|DOUT\(1) $ (\Processador|PC|DOUT\(0))))) # (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(3) & 
-- ((!\Processador|PC|DOUT\(0))))) ) ) # ( !\Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(3) & (\Processador|PC|DOUT\(1) & \Processador|PC|DOUT\(0)))) # (\Processador|PC|DOUT\(2) & (((!\Processador|PC|DOUT\(1) & 
-- !\Processador|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000100011010101000010000110000000001000110101010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM1|memROM~6_combout\);

\Processador|ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~17_combout\ = (\Processador|ROM1|memROM~1_combout\ & \Processador|ROM1|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	combout => \Processador|ROM1|memROM~17_combout\);

\Processador|Salva_Ret|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|incrementaPC|Add0~13_sumout\,
	ena => \Processador|decoder|saida[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Salva_Ret|DOUT\(0));

\Processador|MUX_JMP|saida_MUX[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[0]~4_combout\ = ( \Processador|Salva_Ret|DOUT\(0) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~13_sumout\)))) # (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & 
-- (((!\Processador|MUX_JMP|Equal2~0_combout\)) # (\Processador|ROM1|memROM~17_combout\))) ) ) # ( !\Processador|Salva_Ret|DOUT\(0) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~13_sumout\)))) # 
-- (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (\Processador|ROM1|memROM~17_combout\ & (\Processador|MUX_JMP|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \Processador|MUX_JMP|ALT_INV_Equal2~0_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	datae => \Processador|Salva_Ret|ALT_INV_DOUT\(0),
	combout => \Processador|MUX_JMP|saida_MUX[0]~4_combout\);

\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|MUX_JMP|saida_MUX[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

\Processador|ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~7_combout\ = ( \Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2)))) # (\Processador|PC|DOUT\(1) & ((!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(0) & 
-- \Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(3)))))) ) ) # ( !\Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3)))) # 
-- (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(0) $ (!\Processador|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000100000010000110110000000011000001000000100001101100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM1|memROM~7_combout\);

\Processador|ROM1|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~24_combout\ = (\Processador|ROM1|memROM~1_combout\ & \Processador|ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	combout => \Processador|ROM1|memROM~24_combout\);

\Processador|Salva_Ret|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|incrementaPC|Add0~1_sumout\,
	ena => \Processador|decoder|saida[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Salva_Ret|DOUT\(1));

\Processador|MUX_JMP|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[1]~1_combout\ = ( \Processador|Salva_Ret|DOUT\(1) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~1_sumout\)))) # (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & 
-- (((!\Processador|MUX_JMP|Equal2~0_combout\)) # (\Processador|ROM1|memROM~24_combout\))) ) ) # ( !\Processador|Salva_Ret|DOUT\(1) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~1_sumout\)))) # 
-- (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (\Processador|ROM1|memROM~24_combout\ & ((\Processador|MUX_JMP|Equal2~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101001111110001110100001100000111010011111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \Processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	datad => \Processador|MUX_JMP|ALT_INV_Equal2~0_combout\,
	datae => \Processador|Salva_Ret|ALT_INV_DOUT\(1),
	combout => \Processador|MUX_JMP|saida_MUX[1]~1_combout\);

\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|MUX_JMP|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));

\Processador|ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~8_combout\ = ( \Processador|PC|DOUT\(4) & ( (\Processador|PC|DOUT\(1) & ((!\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(3) & \Processador|PC|DOUT\(0))) # (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(3) & 
-- !\Processador|PC|DOUT\(0))))) ) ) # ( !\Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(3) & !\Processador|PC|DOUT\(0)))) # (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) $ 
-- ((\Processador|PC|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101000001000100000000010001100001010000010001000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM1|memROM~8_combout\);

\Processador|ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~9_combout\ = (\Processador|ROM1|memROM~1_combout\ & \Processador|ROM1|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~8_combout\,
	combout => \Processador|ROM1|memROM~9_combout\);

\Processador|Salva_Ret|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|incrementaPC|Add0~21_sumout\,
	ena => \Processador|decoder|saida[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Salva_Ret|DOUT\(5));

\Processador|MUX_JMP|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[5]~6_combout\ = ( \Processador|Salva_Ret|DOUT\(5) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~21_sumout\)))) # (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & 
-- (((!\Processador|MUX_JMP|Equal2~0_combout\)) # (\Processador|ROM1|memROM~9_combout\))) ) ) # ( !\Processador|Salva_Ret|DOUT\(5) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~21_sumout\)))) # 
-- (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (\Processador|ROM1|memROM~9_combout\ & (\Processador|MUX_JMP|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \Processador|MUX_JMP|ALT_INV_Equal2~0_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	datae => \Processador|Salva_Ret|ALT_INV_DOUT\(5),
	combout => \Processador|MUX_JMP|saida_MUX[5]~6_combout\);

\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|MUX_JMP|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

\Processador|ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~1_combout\ = (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & !\Processador|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(5),
	datab => \Processador|PC|ALT_INV_DOUT\(6),
	datac => \Processador|PC|ALT_INV_DOUT\(7),
	datad => \Processador|PC|ALT_INV_DOUT\(8),
	combout => \Processador|ROM1|memROM~1_combout\);

\Processador|ROM1|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~23_combout\ = (\Processador|ROM1|memROM~1_combout\ & \Processador|ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~5_combout\,
	combout => \Processador|ROM1|memROM~23_combout\);

\Processador|Salva_Ret|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|incrementaPC|Add0~5_sumout\,
	ena => \Processador|decoder|saida[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Salva_Ret|DOUT\(2));

\Processador|MUX_JMP|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[2]~2_combout\ = ( \Processador|Salva_Ret|DOUT\(2) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~5_sumout\)))) # (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & 
-- (((!\Processador|MUX_JMP|Equal2~0_combout\)) # (\Processador|ROM1|memROM~23_combout\))) ) ) # ( !\Processador|Salva_Ret|DOUT\(2) & ( (!\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (((\Processador|incrementaPC|Add0~5_sumout\)))) # 
-- (\Processador|MUX_JMP|saida_MUX[8]~0_combout\ & (\Processador|ROM1|memROM~23_combout\ & (\Processador|MUX_JMP|Equal2~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[8]~0_combout\,
	datac => \Processador|MUX_JMP|ALT_INV_Equal2~0_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \Processador|Salva_Ret|ALT_INV_DOUT\(2),
	combout => \Processador|MUX_JMP|saida_MUX[2]~2_combout\);

\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|MUX_JMP|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \Processador|PC|DOUT\(3) & ( \Processador|ROM1|memROM~1_combout\ & ( (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(0) & !\Processador|PC|DOUT\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	datae => \Processador|PC|ALT_INV_DOUT\(3),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~554_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~43_combout\,
	ena => \RAM|ram~554_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = (\RAM|ram~15_q\ & ((!\Processador|ROM1|memROM~18_combout\) # ((!\Processador|ROM1|memROM~19_combout\ & !\Processador|ROM1|memROM~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001000100010101000100010001010100010001000101010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( !\Processador|ROM1|memROM~23_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~43_combout\,
	ena => \RAM|ram~553_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~271_q\);

\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( !\Processador|ROM1|memROM~17_combout\ & ( !\Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~271_q\ & ((!\Processador|ROM1|memROM~18_combout\) # ((!\Processador|ROM1|memROM~21_combout\ & !\Processador|ROM1|memROM~19_combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	datac => \RAM|ALT_INV_ram~271_q\,
	datad => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~555_combout\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( !\Processador|ROM1|memROM~24_combout\ & ( \Processador|ROM1|memROM~9_combout\ & ( \RAM|ram~555_combout\ ) ) ) # ( !\Processador|ROM1|memROM~24_combout\ & ( !\Processador|ROM1|memROM~9_combout\ & ( \RAM|ram~528_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~528_combout\,
	datac => \RAM|ALT_INV_ram~555_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	combout => \RAM|ram~529_combout\);

\BLOCO_LEDs|hab_l9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_LEDs|hab_l9~0_combout\ = (\Processador|ROM1|memROM~1_combout\ & (!\Processador|ROM1|memROM~5_combout\ & (!\Processador|ROM1|memROM~6_combout\ & \Processador|ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	combout => \BLOCO_LEDs|hab_l9~0_combout\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\BLOCO_SW|detectorKey0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_SW|detectorKey0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \BLOCO_SW|detectorKey0|saidaQ~0_combout\);

\BLOCO_SW|detectorKey0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \BLOCO_SW|detectorKey0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_SW|detectorKey0|saidaQ~q\);

\BLOCO_SW|detectorKey0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_SW|detectorKey0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\BLOCO_SW|detectorKey0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \BLOCO_SW|detectorKey0|ALT_INV_saidaQ~q\,
	combout => \BLOCO_SW|detectorKey0|saida~combout\);

\Processador|decoder|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~0_combout\ = ( !\Processador|ROM1|memROM~12_combout\ & ( \Processador|ROM1|memROM~13_combout\ & ( (!\Processador|PC|DOUT\(4) & (\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~11_combout\) # 
-- (\Processador|PC|DOUT\(1))))) ) ) ) # ( !\Processador|ROM1|memROM~12_combout\ & ( !\Processador|ROM1|memROM~13_combout\ & ( (\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~11_combout\) # (\Processador|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000101000000000000000000001100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~11_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	combout => \Processador|decoder|saida~0_combout\);

\limpa4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \limpa4~0_combout\ = ( \Processador|ROM1|memROM~19_combout\ & ( \Processador|ROM1|memROM~21_combout\ & ( (\Processador|ROM1|memROM~14_combout\ & (\Processador|ROM1|memROM~15_combout\ & (\Processador|ROM1|memROM~18_combout\ & 
-- \Processador|ROM1|memROM~28_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~28_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	combout => \limpa4~0_combout\);

\limpa4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \limpa4~1_combout\ = (\Processador|ROM1|memROM~1_combout\ & (\Processador|ROM1|memROM~5_combout\ & (\Processador|ROM1|memROM~8_combout\ & \Processador|ROM1|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~8_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~16_combout\,
	combout => \limpa4~1_combout\);

limpa0 : cyclonev_lcell_comb
-- Equation(s):
-- \limpa0~combout\ = ( \limpa4~0_combout\ & ( \limpa4~1_combout\ & ( (\Processador|ROM1|memROM~17_combout\ & (\Processador|ROM1|memROM~24_combout\ & (\Processador|ROM1|memROM~10_combout\ & \Processador|decoder|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datad => \Processador|decoder|ALT_INV_saida~0_combout\,
	datae => \ALT_INV_limpa4~0_combout\,
	dataf => \ALT_INV_limpa4~1_combout\,
	combout => \limpa0~combout\);

\BLOCO_SW|FF_k0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \BLOCO_SW|detectorKey0|saida~combout\,
	d => VCC,
	clrn => \ALT_INV_limpa0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_SW|FF_k0|DOUT~q\);

\Processador|MUX1|saida_MUX[0]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[0]~14_combout\ = (!\Processador|ROM1|memROM~9_combout\ & (!\SW[9]~input_o\)) # (\Processador|ROM1|memROM~9_combout\ & (((!\Processador|ROM1|memROM~23_combout\ & !\BLOCO_SW|FF_k0|DOUT~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100010001000110110001000100011011000100010001101100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	datad => \BLOCO_SW|FF_k0|ALT_INV_DOUT~q\,
	combout => \Processador|MUX1|saida_MUX[0]~14_combout\);

\Processador|MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[0]~1_combout\ = ( \Processador|ROM1|memROM~24_combout\ & ( !\Processador|MUX1|saida_MUX[0]~14_combout\ & ( (!\Processador|ROM1|memROM~9_combout\ & (\BLOCO_LEDs|hab_l9~0_combout\ & !\Processador|decoder|saida[6]~1_combout\)) ) ) 
-- ) # ( !\Processador|ROM1|memROM~24_combout\ & ( !\Processador|MUX1|saida_MUX[0]~14_combout\ & ( (!\Processador|decoder|saida[6]~1_combout\ & ((!\Processador|ROM1|memROM~9_combout\ & (\BLOCO_LEDs|hab_l9~0_combout\)) # (\Processador|ROM1|memROM~9_combout\ & 
-- ((!\Processador|ROM1|memROM~17_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datab => \BLOCO_LEDs|ALT_INV_hab_l9~0_combout\,
	datac => \Processador|decoder|ALT_INV_saida[6]~1_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[0]~14_combout\,
	combout => \Processador|MUX1|saida_MUX[0]~1_combout\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\Processador|MUX1|saida_MUX[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[0]~2_combout\ = ( !\Processador|ROM1|memROM~8_combout\ & ( \SW[8]~input_o\ & ( (\Processador|ROM1|memROM~1_combout\ & (!\Processador|ROM1|memROM~5_combout\ & (\Processador|ROM1|memROM~6_combout\ & 
-- !\Processador|ROM1|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~8_combout\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \Processador|MUX1|saida_MUX[0]~2_combout\);

\Processador|MUX1|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[0]~3_combout\ = ( \Decoder678|Equal2~0_combout\ & ( \Processador|ROM1|memROM~29_combout\ & ( (!\Processador|ROM1|memROM~10_combout\ & ((!\Processador|ROM1|memROM~25_combout\ & (!\Processador|ROM1|memROM~26_combout\ & 
-- \Processador|ROM1|memROM~27_combout\)) # (\Processador|ROM1|memROM~25_combout\ & (\Processador|ROM1|memROM~26_combout\ & !\Processador|ROM1|memROM~27_combout\)))) # (\Processador|ROM1|memROM~10_combout\ & (!\Processador|ROM1|memROM~25_combout\ & 
-- ((!\Processador|ROM1|memROM~26_combout\) # (\Processador|ROM1|memROM~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100001011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	datae => \Decoder678|ALT_INV_Equal2~0_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~29_combout\,
	combout => \Processador|MUX1|saida_MUX[0]~3_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\Processador|MUX1|saida_MUX[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[0]~5_combout\ = ( \Processador|MUX1|saida_MUX[3]~4_combout\ & ( (!\Processador|ROM1|memROM~17_combout\ & (((\Processador|MUX1|saida_MUX[3]~0_combout\ & \SW[0]~input_o\)))) # (\Processador|ROM1|memROM~17_combout\ & 
-- (((\Processador|MUX1|saida_MUX[3]~0_combout\ & \SW[0]~input_o\)) # (\Processador|decoder|saida[6]~1_combout\))) ) ) # ( !\Processador|MUX1|saida_MUX[3]~4_combout\ & ( (\Processador|ROM1|memROM~17_combout\ & \Processador|decoder|saida[6]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001111100010001000100010001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~1_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \Processador|MUX1|ALT_INV_saida_MUX[3]~4_combout\,
	combout => \Processador|MUX1|saida_MUX[0]~5_combout\);

\Processador|MUX1|saida_MUX[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[0]~6_combout\ = ( \Processador|MUX1|saida_MUX[0]~3_combout\ & ( \Processador|MUX1|saida_MUX[0]~5_combout\ ) ) # ( !\Processador|MUX1|saida_MUX[0]~3_combout\ & ( \Processador|MUX1|saida_MUX[0]~5_combout\ ) ) # ( 
-- \Processador|MUX1|saida_MUX[0]~3_combout\ & ( !\Processador|MUX1|saida_MUX[0]~5_combout\ & ( (((\RAM|ram~529_combout\ & \Processador|MUX1|saida_MUX[3]~0_combout\)) # (\Processador|MUX1|saida_MUX[0]~2_combout\)) # 
-- (\Processador|MUX1|saida_MUX[0]~1_combout\) ) ) ) # ( !\Processador|MUX1|saida_MUX[0]~3_combout\ & ( !\Processador|MUX1|saida_MUX[0]~5_combout\ & ( (\RAM|ram~529_combout\ & \Processador|MUX1|saida_MUX[3]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~529_combout\,
	datab => \Processador|MUX1|ALT_INV_saida_MUX[3]~0_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[0]~2_combout\,
	datae => \Processador|MUX1|ALT_INV_saida_MUX[0]~3_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[0]~5_combout\,
	combout => \Processador|MUX1|saida_MUX[0]~6_combout\);

\Processador|Banco_Reg|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~1_sumout\,
	asdata => \Processador|MUX1|saida_MUX[0]~6_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~11_q\);

\Processador|Banco_Reg|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~1_sumout\,
	asdata => \Processador|MUX1|saida_MUX[0]~6_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~19_q\);

\Processador|Banco_Reg|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~1_sumout\,
	asdata => \Processador|MUX1|saida_MUX[0]~6_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~27_q\);

\Processador|Banco_Reg|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|ULA1|Add0~1_sumout\,
	asdata => \Processador|MUX1|saida_MUX[0]~6_combout\,
	sload => \Processador|decoder|saida~2_combout\,
	ena => \Processador|Banco_Reg|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~35_q\);

\Processador|Banco_Reg|registrador~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~43_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~35_q\ ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( 
-- \Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~27_q\ ) ) ) # ( \Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~19_q\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~4_combout\ & ( \Processador|Banco_Reg|registrador~11_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|Banco_Reg|ALT_INV_registrador~11_q\,
	datab => \Processador|Banco_Reg|ALT_INV_registrador~19_q\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~27_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~35_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	combout => \Processador|Banco_Reg|registrador~43_combout\);

\BLOCO_7seg|hab_5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|hab_5~0_combout\ = ( \Processador|ROM1|memROM~15_combout\ & ( \Processador|ROM1|memROM~16_combout\ & ( (\Processador|PC|DOUT\(3) & (\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~14_combout\) # (\Processador|PC|DOUT\(0))))) 
-- ) ) ) # ( !\Processador|ROM1|memROM~15_combout\ & ( \Processador|ROM1|memROM~16_combout\ & ( (\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~14_combout\) # (\Processador|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000110000010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(0),
	datac => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~16_combout\,
	combout => \BLOCO_7seg|hab_5~0_combout\);

\BLOCO_7seg|hab_0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|hab_0~combout\ = ( \BLOCO_7seg|hab_5~0_combout\ & ( (!\Decoder012|Equal7~0_combout\ & (\Processador|ROM1|memROM~9_combout\ & (\Processador|ROM1|memROM~10_combout\ & \Processador|decoder|saida~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder012|ALT_INV_Equal7~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datad => \Processador|decoder|ALT_INV_saida~0_combout\,
	datae => \BLOCO_7seg|ALT_INV_hab_5~0_combout\,
	combout => \BLOCO_7seg|hab_0~combout\);

\BLOCO_7seg|REG_0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~43_combout\,
	ena => \BLOCO_7seg|hab_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_0|DOUT\(0));

\BLOCO_7seg|REG_0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~44_combout\,
	ena => \BLOCO_7seg|hab_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_0|DOUT\(3));

\BLOCO_7seg|REG_0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~45_combout\,
	ena => \BLOCO_7seg|hab_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_0|DOUT\(1));

\BLOCO_7seg|REG_0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~46_combout\,
	ena => \BLOCO_7seg|hab_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_0|DOUT\(2));

\BLOCO_7seg|DEC_0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_0|rascSaida7seg[0]~0_combout\ = (!\BLOCO_7seg|REG_0|DOUT\(3) & (!\BLOCO_7seg|REG_0|DOUT\(1) & (!\BLOCO_7seg|REG_0|DOUT\(0) $ (!\BLOCO_7seg|REG_0|DOUT\(2))))) # (\BLOCO_7seg|REG_0|DOUT\(3) & (\BLOCO_7seg|REG_0|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_0|DOUT\(1) $ (!\BLOCO_7seg|REG_0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(2),
	combout => \BLOCO_7seg|DEC_0|rascSaida7seg[0]~0_combout\);

\BLOCO_7seg|DEC_0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_0|rascSaida7seg[1]~1_combout\ = (!\BLOCO_7seg|REG_0|DOUT\(3) & (\BLOCO_7seg|REG_0|DOUT\(2) & (!\BLOCO_7seg|REG_0|DOUT\(0) $ (!\BLOCO_7seg|REG_0|DOUT\(1))))) # (\BLOCO_7seg|REG_0|DOUT\(3) & ((!\BLOCO_7seg|REG_0|DOUT\(0) & 
-- ((\BLOCO_7seg|REG_0|DOUT\(2)))) # (\BLOCO_7seg|REG_0|DOUT\(0) & (\BLOCO_7seg|REG_0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(2),
	combout => \BLOCO_7seg|DEC_0|rascSaida7seg[1]~1_combout\);

\BLOCO_7seg|DEC_0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_0|rascSaida7seg[2]~2_combout\ = (!\BLOCO_7seg|REG_0|DOUT\(3) & (!\BLOCO_7seg|REG_0|DOUT\(0) & (\BLOCO_7seg|REG_0|DOUT\(1) & !\BLOCO_7seg|REG_0|DOUT\(2)))) # (\BLOCO_7seg|REG_0|DOUT\(3) & (\BLOCO_7seg|REG_0|DOUT\(2) & 
-- ((!\BLOCO_7seg|REG_0|DOUT\(0)) # (\BLOCO_7seg|REG_0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(2),
	combout => \BLOCO_7seg|DEC_0|rascSaida7seg[2]~2_combout\);

\BLOCO_7seg|DEC_0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_0|rascSaida7seg[3]~3_combout\ = (!\BLOCO_7seg|REG_0|DOUT\(1) & (!\BLOCO_7seg|REG_0|DOUT\(3) & (!\BLOCO_7seg|REG_0|DOUT\(0) $ (!\BLOCO_7seg|REG_0|DOUT\(2))))) # (\BLOCO_7seg|REG_0|DOUT\(1) & ((!\BLOCO_7seg|REG_0|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_0|DOUT\(2) & \BLOCO_7seg|REG_0|DOUT\(3))) # (\BLOCO_7seg|REG_0|DOUT\(0) & (\BLOCO_7seg|REG_0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(1),
	datac => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(2),
	datad => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(3),
	combout => \BLOCO_7seg|DEC_0|rascSaida7seg[3]~3_combout\);

\BLOCO_7seg|DEC_0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_0|rascSaida7seg[4]~4_combout\ = (!\BLOCO_7seg|REG_0|DOUT\(1) & ((!\BLOCO_7seg|REG_0|DOUT\(2) & ((\BLOCO_7seg|REG_0|DOUT\(0)))) # (\BLOCO_7seg|REG_0|DOUT\(2) & (!\BLOCO_7seg|REG_0|DOUT\(3))))) # (\BLOCO_7seg|REG_0|DOUT\(1) & 
-- (!\BLOCO_7seg|REG_0|DOUT\(3) & ((\BLOCO_7seg|REG_0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(3),
	datab => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(1),
	datac => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(2),
	datad => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_0|rascSaida7seg[4]~4_combout\);

\BLOCO_7seg|DEC_0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_0|rascSaida7seg[5]~5_combout\ = (!\BLOCO_7seg|REG_0|DOUT\(0) & (\BLOCO_7seg|REG_0|DOUT\(1) & (!\BLOCO_7seg|REG_0|DOUT\(2) & !\BLOCO_7seg|REG_0|DOUT\(3)))) # (\BLOCO_7seg|REG_0|DOUT\(0) & (!\BLOCO_7seg|REG_0|DOUT\(3) $ 
-- (((!\BLOCO_7seg|REG_0|DOUT\(1) & \BLOCO_7seg|REG_0|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(1),
	datac => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(2),
	datad => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(3),
	combout => \BLOCO_7seg|DEC_0|rascSaida7seg[5]~5_combout\);

\BLOCO_7seg|DEC_0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_0|rascSaida7seg[6]~6_combout\ = (!\BLOCO_7seg|REG_0|DOUT\(0) & (!\BLOCO_7seg|REG_0|DOUT\(1) & (!\BLOCO_7seg|REG_0|DOUT\(3) $ (\BLOCO_7seg|REG_0|DOUT\(2))))) # (\BLOCO_7seg|REG_0|DOUT\(0) & (!\BLOCO_7seg|REG_0|DOUT\(3) & 
-- (!\BLOCO_7seg|REG_0|DOUT\(1) $ (\BLOCO_7seg|REG_0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(2),
	combout => \BLOCO_7seg|DEC_0|rascSaida7seg[6]~6_combout\);

\BLOCO_7seg|hab_5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|hab_5~1_combout\ = (\Processador|ROM1|memROM~1_combout\ & (\Processador|ROM1|memROM~5_combout\ & !\Processador|ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	combout => \BLOCO_7seg|hab_5~1_combout\);

\BLOCO_7seg|hab_5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|hab_5~combout\ = ( \BLOCO_7seg|hab_5~0_combout\ & ( \BLOCO_7seg|hab_5~1_combout\ & ( (\Processador|ROM1|memROM~17_combout\ & (\Processador|ROM1|memROM~9_combout\ & (\Processador|ROM1|memROM~10_combout\ & 
-- \Processador|decoder|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datad => \Processador|decoder|ALT_INV_saida~0_combout\,
	datae => \BLOCO_7seg|ALT_INV_hab_5~0_combout\,
	dataf => \BLOCO_7seg|ALT_INV_hab_5~1_combout\,
	combout => \BLOCO_7seg|hab_5~combout\);

\BLOCO_7seg|REG_5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~43_combout\,
	ena => \BLOCO_7seg|hab_5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_5|DOUT\(0));

\BLOCO_7seg|REG_5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~44_combout\,
	ena => \BLOCO_7seg|hab_5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_5|DOUT\(3));

\BLOCO_7seg|REG_5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~45_combout\,
	ena => \BLOCO_7seg|hab_5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_5|DOUT\(1));

\BLOCO_7seg|REG_5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \Processador|Banco_Reg|registrador~46_combout\,
	ena => \BLOCO_7seg|hab_5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_5|DOUT\(2));

\BLOCO_7seg|DEC_5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_5|rascSaida7seg[0]~0_combout\ = (!\BLOCO_7seg|REG_5|DOUT\(3) & (!\BLOCO_7seg|REG_5|DOUT\(1) & (!\BLOCO_7seg|REG_5|DOUT\(0) $ (!\BLOCO_7seg|REG_5|DOUT\(2))))) # (\BLOCO_7seg|REG_5|DOUT\(3) & (\BLOCO_7seg|REG_5|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_5|DOUT\(1) $ (!\BLOCO_7seg|REG_5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(2),
	combout => \BLOCO_7seg|DEC_5|rascSaida7seg[0]~0_combout\);

\BLOCO_7seg|DEC_5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_5|rascSaida7seg[1]~1_combout\ = (!\BLOCO_7seg|REG_5|DOUT\(3) & (\BLOCO_7seg|REG_5|DOUT\(2) & (!\BLOCO_7seg|REG_5|DOUT\(0) $ (!\BLOCO_7seg|REG_5|DOUT\(1))))) # (\BLOCO_7seg|REG_5|DOUT\(3) & ((!\BLOCO_7seg|REG_5|DOUT\(0) & 
-- ((\BLOCO_7seg|REG_5|DOUT\(2)))) # (\BLOCO_7seg|REG_5|DOUT\(0) & (\BLOCO_7seg|REG_5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(2),
	combout => \BLOCO_7seg|DEC_5|rascSaida7seg[1]~1_combout\);

\BLOCO_7seg|DEC_5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_5|rascSaida7seg[2]~2_combout\ = (!\BLOCO_7seg|REG_5|DOUT\(3) & (!\BLOCO_7seg|REG_5|DOUT\(0) & (\BLOCO_7seg|REG_5|DOUT\(1) & !\BLOCO_7seg|REG_5|DOUT\(2)))) # (\BLOCO_7seg|REG_5|DOUT\(3) & (\BLOCO_7seg|REG_5|DOUT\(2) & 
-- ((!\BLOCO_7seg|REG_5|DOUT\(0)) # (\BLOCO_7seg|REG_5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(2),
	combout => \BLOCO_7seg|DEC_5|rascSaida7seg[2]~2_combout\);

\BLOCO_7seg|DEC_5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_5|rascSaida7seg[3]~3_combout\ = (!\BLOCO_7seg|REG_5|DOUT\(1) & (!\BLOCO_7seg|REG_5|DOUT\(3) & (!\BLOCO_7seg|REG_5|DOUT\(0) $ (!\BLOCO_7seg|REG_5|DOUT\(2))))) # (\BLOCO_7seg|REG_5|DOUT\(1) & ((!\BLOCO_7seg|REG_5|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_5|DOUT\(2) & \BLOCO_7seg|REG_5|DOUT\(3))) # (\BLOCO_7seg|REG_5|DOUT\(0) & (\BLOCO_7seg|REG_5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(1),
	datac => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(2),
	datad => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(3),
	combout => \BLOCO_7seg|DEC_5|rascSaida7seg[3]~3_combout\);

\BLOCO_7seg|DEC_5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_5|rascSaida7seg[4]~4_combout\ = (!\BLOCO_7seg|REG_5|DOUT\(1) & ((!\BLOCO_7seg|REG_5|DOUT\(2) & ((\BLOCO_7seg|REG_5|DOUT\(0)))) # (\BLOCO_7seg|REG_5|DOUT\(2) & (!\BLOCO_7seg|REG_5|DOUT\(3))))) # (\BLOCO_7seg|REG_5|DOUT\(1) & 
-- (!\BLOCO_7seg|REG_5|DOUT\(3) & ((\BLOCO_7seg|REG_5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(3),
	datab => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(1),
	datac => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(2),
	datad => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_5|rascSaida7seg[4]~4_combout\);

\BLOCO_7seg|DEC_5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_5|rascSaida7seg[5]~5_combout\ = (!\BLOCO_7seg|REG_5|DOUT\(0) & (\BLOCO_7seg|REG_5|DOUT\(1) & (!\BLOCO_7seg|REG_5|DOUT\(2) & !\BLOCO_7seg|REG_5|DOUT\(3)))) # (\BLOCO_7seg|REG_5|DOUT\(0) & (!\BLOCO_7seg|REG_5|DOUT\(3) $ 
-- (((!\BLOCO_7seg|REG_5|DOUT\(1) & \BLOCO_7seg|REG_5|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(1),
	datac => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(2),
	datad => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(3),
	combout => \BLOCO_7seg|DEC_5|rascSaida7seg[5]~5_combout\);

\BLOCO_7seg|DEC_5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_5|rascSaida7seg[6]~6_combout\ = (!\BLOCO_7seg|REG_5|DOUT\(0) & (!\BLOCO_7seg|REG_5|DOUT\(1) & (!\BLOCO_7seg|REG_5|DOUT\(3) $ (\BLOCO_7seg|REG_5|DOUT\(2))))) # (\BLOCO_7seg|REG_5|DOUT\(0) & (!\BLOCO_7seg|REG_5|DOUT\(3) & 
-- (!\BLOCO_7seg|REG_5|DOUT\(1) $ (\BLOCO_7seg|REG_5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(2),
	combout => \BLOCO_7seg|DEC_5|rascSaida7seg[6]~6_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\BLOCO_LEDs|hab_l8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_LEDs|hab_l8~0_combout\ = (\Processador|ROM1|memROM~1_combout\ & (!\Processador|ROM1|memROM~5_combout\ & (\Processador|ROM1|memROM~6_combout\ & !\Processador|ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	combout => \BLOCO_LEDs|hab_l8~0_combout\);

\BLOCO_LEDs|hab_bloco~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_LEDs|hab_bloco~0_combout\ = (!\Processador|ROM1|memROM~9_combout\ & (\Processador|ROM1|memROM~10_combout\ & (\Processador|decoder|saida~0_combout\ & \BLOCO_7seg|hab_5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datac => \Processador|decoder|ALT_INV_saida~0_combout\,
	datad => \BLOCO_7seg|ALT_INV_hab_5~0_combout\,
	combout => \BLOCO_LEDs|hab_bloco~0_combout\);

\BLOCO_LEDs|FF_8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_LEDs|FF_8|DOUT~0_combout\ = (!\BLOCO_LEDs|hab_l8~0_combout\ & (\BLOCO_LEDs|FF_8|DOUT~q\)) # (\BLOCO_LEDs|hab_l8~0_combout\ & ((!\BLOCO_LEDs|hab_bloco~0_combout\ & (\BLOCO_LEDs|FF_8|DOUT~q\)) # (\BLOCO_LEDs|hab_bloco~0_combout\ & 
-- ((\Processador|Banco_Reg|registrador~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010101010101001101010101010100110101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_LEDs|FF_8|ALT_INV_DOUT~q\,
	datab => \Processador|Banco_Reg|ALT_INV_registrador~43_combout\,
	datac => \BLOCO_LEDs|ALT_INV_hab_l8~0_combout\,
	datad => \BLOCO_LEDs|ALT_INV_hab_bloco~0_combout\,
	combout => \BLOCO_LEDs|FF_8|DOUT~0_combout\);

\BLOCO_LEDs|FF_8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BLOCO_LEDs|FF_8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_LEDs|FF_8|DOUT~q\);

\BLOCO_LEDs|FF_9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_LEDs|FF_9|DOUT~0_combout\ = (!\BLOCO_LEDs|hab_l9~0_combout\ & (\BLOCO_LEDs|FF_9|DOUT~q\)) # (\BLOCO_LEDs|hab_l9~0_combout\ & ((!\BLOCO_LEDs|hab_bloco~0_combout\ & (\BLOCO_LEDs|FF_9|DOUT~q\)) # (\BLOCO_LEDs|hab_bloco~0_combout\ & 
-- ((\Processador|Banco_Reg|registrador~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010101010101001101010101010100110101010101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_LEDs|FF_9|ALT_INV_DOUT~q\,
	datab => \Processador|Banco_Reg|ALT_INV_registrador~43_combout\,
	datac => \BLOCO_LEDs|ALT_INV_hab_l9~0_combout\,
	datad => \BLOCO_LEDs|ALT_INV_hab_bloco~0_combout\,
	combout => \BLOCO_LEDs|FF_9|DOUT~0_combout\);

\BLOCO_LEDs|FF_9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \BLOCO_LEDs|FF_9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_LEDs|FF_9|DOUT~q\);

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

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

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
END structure;


