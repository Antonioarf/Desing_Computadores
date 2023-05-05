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

-- DATE "05/05/2023 13:55:43"

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
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	PC_out : BUFFER std_logic_vector(8 DOWNTO 0)
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
SIGNAL ww_PC_out : std_logic_vector(8 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
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
SIGNAL \PC_out[0]~output_o\ : std_logic;
SIGNAL \PC_out[1]~output_o\ : std_logic;
SIGNAL \PC_out[2]~output_o\ : std_logic;
SIGNAL \PC_out[3]~output_o\ : std_logic;
SIGNAL \PC_out[4]~output_o\ : std_logic;
SIGNAL \PC_out[5]~output_o\ : std_logic;
SIGNAL \PC_out[6]~output_o\ : std_logic;
SIGNAL \PC_out[7]~output_o\ : std_logic;
SIGNAL \PC_out[8]~output_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~16_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~17_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~18_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~25_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~26_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~19_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~20_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~6_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~21_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~22_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~13_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~14_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~15_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~5_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~7_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~8_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~9_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~10_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~11_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~12_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal13~0_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal13~1_combout\ : std_logic;
SIGNAL \Processador|ULA1|Equal1~0_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal13~2_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~27_combout\ : std_logic;
SIGNAL \Processador|decoder|saida[6]~2_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~23_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[6]~3_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~1_combout\ : std_logic;
SIGNAL \RAM|ram~593_combout\ : std_logic;
SIGNAL \RAM|ram~594_combout\ : std_logic;
SIGNAL \RAM|ram~147_q\ : std_logic;
SIGNAL \Processador|ROM1|memROM~24_combout\ : std_logic;
SIGNAL \RAM|ram~597_combout\ : std_logic;
SIGNAL \RAM|ram~598_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~599_combout\ : std_logic;
SIGNAL \RAM|ram~600_combout\ : std_logic;
SIGNAL \RAM|ram~291_q\ : std_logic;
SIGNAL \RAM|ram~574_combout\ : std_logic;
SIGNAL \RAM|ram~583_combout\ : std_logic;
SIGNAL \RAM|ram~584_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~585_combout\ : std_logic;
SIGNAL \RAM|ram~586_combout\ : std_logic;
SIGNAL \RAM|ram~275_q\ : std_logic;
SIGNAL \RAM|ram~573_combout\ : std_logic;
SIGNAL \RAM|ram~621_combout\ : std_logic;
SIGNAL \RAM|ram~601_combout\ : std_logic;
SIGNAL \RAM|ram~602_combout\ : std_logic;
SIGNAL \RAM|ram~299_q\ : std_logic;
SIGNAL \RAM|ram~587_combout\ : std_logic;
SIGNAL \RAM|ram~588_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~589_combout\ : std_logic;
SIGNAL \RAM|ram~590_combout\ : std_logic;
SIGNAL \RAM|ram~59_q\ : std_logic;
SIGNAL \RAM|ram~591_combout\ : std_logic;
SIGNAL \RAM|ram~592_combout\ : std_logic;
SIGNAL \RAM|ram~315_q\ : std_logic;
SIGNAL \RAM|ram~575_combout\ : std_logic;
SIGNAL \RAM|ram~595_combout\ : std_logic;
SIGNAL \RAM|ram~596_combout\ : std_logic;
SIGNAL \RAM|ram~187_q\ : std_logic;
SIGNAL \RAM|ram~617_combout\ : std_logic;
SIGNAL \RAM|ram~603_combout\ : std_logic;
SIGNAL \RAM|ram~604_combout\ : std_logic;
SIGNAL \RAM|ram~523_q\ : std_logic;
SIGNAL \RAM|ram~576_combout\ : std_logic;
SIGNAL \RAM|ram~577_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[4]~8_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~4_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~28_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~31_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~23_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~32_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~15_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~33_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~274_q\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \RAM|ram~146_q\ : std_logic;
SIGNAL \RAM|ram~633_combout\ : std_logic;
SIGNAL \RAM|ram~314_q\ : std_logic;
SIGNAL \RAM|ram~186_q\ : std_logic;
SIGNAL \RAM|ram~58_q\ : std_logic;
SIGNAL \RAM|ram~629_combout\ : std_logic;
SIGNAL \RAM|ram~290_q\ : std_logic;
SIGNAL \RAM|ram~298_q\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~625_combout\ : std_logic;
SIGNAL \RAM|ram~522_q\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[3]~6_combout\ : std_logic;
SIGNAL \RAM|ram~313_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~521_q\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[2]~16_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~57_q\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~273_q\ : std_logic;
SIGNAL \RAM|ram~289_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~297_q\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[2]~17_combout\ : std_logic;
SIGNAL \RAM|ram~145_q\ : std_logic;
SIGNAL \RAM|ram~185_q\ : std_logic;
SIGNAL \Processador|ROM1|memROM~0_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[2]~15_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[2]~18_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~144_q\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[1]~12_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~56_q\ : std_logic;
SIGNAL \RAM|ram~184_q\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[1]~13_combout\ : std_logic;
SIGNAL \RAM|ram~272_q\ : std_logic;
SIGNAL \RAM|ram~288_q\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \RAM|ram~296_q\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~312_q\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~520_q\ : std_logic;
SIGNAL \RAM|ram~562_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[1]~14_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[1]~7_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~19_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~11_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~30_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~271_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~55_q\ : std_logic;
SIGNAL \RAM|ram~311_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~143_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~183_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~287_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~295_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~519_q\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \Processador|decoder|saida[1]~3_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~85_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~2\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~25_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~26\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~21_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~22\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~13_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~14\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~9_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~10\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~5_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Equal0~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Equal0~1_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Equal0~2_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Equal0~3_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Equal0~4_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~86\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~81_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~82\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~77_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~78\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~73_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~74\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~69_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~70\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~65_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~66\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~61_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~62\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~57_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~58\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~89_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~90\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~93_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~94\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~97_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~98\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~29_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~30\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~33_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~34\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~37_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~38\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~17_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~18\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~53_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~54\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~49_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~50\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~45_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~46\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~41_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~42\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|Add0~1_sumout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|tick~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|tick~q\ : std_logic;
SIGNAL \limpa0~0_combout\ : std_logic;
SIGNAL \limpa0~combout\ : std_logic;
SIGNAL \interfaceBaseTempo|registraUmSegundo|DOUT~q\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~18\ : std_logic;
SIGNAL \Processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~20_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~12_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~29_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~22\ : std_logic;
SIGNAL \Processador|ULA1|Add0~26\ : std_logic;
SIGNAL \Processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~22_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~14_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~28_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~30\ : std_logic;
SIGNAL \Processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~148_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~60_q\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~188_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~316_q\ : std_logic;
SIGNAL \RAM|ram~276_q\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~300_q\ : std_logic;
SIGNAL \RAM|ram~524_q\ : std_logic;
SIGNAL \RAM|ram~292_q\ : std_logic;
SIGNAL \RAM|ram~613_combout\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[5]~9_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~24_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~16_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~34_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~2\ : std_logic;
SIGNAL \Processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \RAM|ram~149_q\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~277_q\ : std_logic;
SIGNAL \RAM|ram~293_q\ : std_logic;
SIGNAL \RAM|ram~578_combout\ : std_logic;
SIGNAL \RAM|ram~579_combout\ : std_logic;
SIGNAL \RAM|ram~301_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~580_combout\ : std_logic;
SIGNAL \RAM|ram~525_q\ : std_logic;
SIGNAL \RAM|ram~61_q\ : std_logic;
SIGNAL \RAM|ram~317_q\ : std_logic;
SIGNAL \RAM|ram~581_combout\ : std_logic;
SIGNAL \RAM|ram~189_q\ : std_logic;
SIGNAL \RAM|ram~609_combout\ : std_logic;
SIGNAL \RAM|ram~582_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[6]~10_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~25_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~17_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~35_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~6\ : std_logic;
SIGNAL \Processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~150_q\ : std_logic;
SIGNAL \RAM|ram~190_q\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~62_q\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \RAM|ram~605_combout\ : std_logic;
SIGNAL \RAM|ram~278_q\ : std_logic;
SIGNAL \RAM|ram~318_q\ : std_logic;
SIGNAL \RAM|ram~568_combout\ : std_logic;
SIGNAL \RAM|ram~294_q\ : std_logic;
SIGNAL \RAM|ram~302_q\ : std_logic;
SIGNAL \RAM|ram~569_combout\ : std_logic;
SIGNAL \RAM|ram~570_combout\ : std_logic;
SIGNAL \RAM|ram~526_q\ : std_logic;
SIGNAL \RAM|ram~571_combout\ : std_logic;
SIGNAL \RAM|ram~572_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[7]~11_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~26_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~18_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~36_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~10\ : std_logic;
SIGNAL \Processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|flag_ula|DOUT~1_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|flag_ula|DOUT~2_combout\ : std_logic;
SIGNAL \Processador|flag_ula|DOUT~0_combout\ : std_logic;
SIGNAL \Processador|flag_ula|DOUT~q\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[6]~0_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~2_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~3_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~4_combout\ : std_logic;
SIGNAL \Processador|decoder|saida[9]~0_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|MUX_JMP|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~1_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~21_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~13_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|registrador~27_combout\ : std_logic;
SIGNAL \BLOCO_7seg|hab_1~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|hab_0~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \BLOCO_7seg|hab_1~1_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \BLOCO_7seg|hab_2~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|hab_2~1_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \BLOCO_7seg|hab_3~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \BLOCO_7seg|hab_4~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \BLOCO_7seg|hab_5~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \BLOCO_7seg|DEC_5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \BLOCO_7seg|REG_3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \interfaceBaseTempo|baseTempo|contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \BLOCO_7seg|REG_2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BLOCO_7seg|REG_0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BLOCO_7seg|REG_1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BLOCO_7seg|REG_4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \BLOCO_7seg|REG_5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \BLOCO_7seg|REG_1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BLOCO_7seg|REG_0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|ALT_INV_contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~11_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida[6]~2_combout\ : std_logic;
SIGNAL \BLOCO_7seg|ALT_INV_hab_2~0_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~30_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~29_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~28_combout\ : std_logic;
SIGNAL \BLOCO_7seg|ALT_INV_hab_1~0_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal13~0_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~27_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|registraUmSegundo|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \Processador|MUX_JMP|ALT_INV_saida_MUX[6]~0_combout\ : std_logic;
SIGNAL \Processador|flag_ula|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida[9]~0_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Processador|ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \BLOCO_7seg|REG_5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BLOCO_7seg|REG_4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BLOCO_7seg|REG_3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BLOCO_7seg|REG_2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[2]~4_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[6]~3_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[0]~2_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida[1]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[2]~18_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[2]~17_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[2]~16_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[2]~15_combout\ : std_logic;
SIGNAL \Processador|flag_ula|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \Processador|flag_ula|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[1]~14_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[1]~13_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[1]~12_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[7]~11_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~36_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[6]~10_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~35_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[5]~9_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~34_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[4]~8_combout\ : std_logic;
SIGNAL \Processador|Banco_Reg|ALT_INV_registrador~33_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal13~2_combout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal13~1_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[1]~7_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[3]~6_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \ALT_INV_limpa0~combout\ : std_logic;
SIGNAL \ALT_INV_limpa0~0_combout\ : std_logic;
SIGNAL \interfaceBaseTempo|baseTempo|ALT_INV_tick~q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;

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
PC_out <= ww_PC_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Processador|Banco_Reg|ALT_INV_registrador~13_q\ <= NOT \Processador|Banco_Reg|registrador~13_q\;
\Processador|Banco_Reg|ALT_INV_registrador~21_q\ <= NOT \Processador|Banco_Reg|registrador~21_q\;
\Processador|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \Processador|incrementaPC|Add0~33_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \Processador|incrementaPC|Add0~29_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \Processador|incrementaPC|Add0~25_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \Processador|incrementaPC|Add0~21_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \Processador|incrementaPC|Add0~17_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \Processador|incrementaPC|Add0~13_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \Processador|incrementaPC|Add0~9_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \Processador|incrementaPC|Add0~5_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \Processador|incrementaPC|Add0~1_sumout\;
\BLOCO_7seg|REG_1|ALT_INV_DOUT\(2) <= NOT \BLOCO_7seg|REG_1|DOUT\(2);
\BLOCO_7seg|REG_0|ALT_INV_DOUT\(0) <= NOT \BLOCO_7seg|REG_0|DOUT\(0);
\BLOCO_7seg|REG_0|ALT_INV_DOUT\(1) <= NOT \BLOCO_7seg|REG_0|DOUT\(1);
\BLOCO_7seg|REG_0|ALT_INV_DOUT\(3) <= NOT \BLOCO_7seg|REG_0|DOUT\(3);
\BLOCO_7seg|REG_0|ALT_INV_DOUT\(2) <= NOT \BLOCO_7seg|REG_0|DOUT\(2);
\RAM|ALT_INV_ram~633_combout\ <= NOT \RAM|ram~633_combout\;
\RAM|ALT_INV_ram~629_combout\ <= NOT \RAM|ram~629_combout\;
\RAM|ALT_INV_ram~625_combout\ <= NOT \RAM|ram~625_combout\;
\RAM|ALT_INV_ram~621_combout\ <= NOT \RAM|ram~621_combout\;
\RAM|ALT_INV_ram~617_combout\ <= NOT \RAM|ram~617_combout\;
\RAM|ALT_INV_ram~613_combout\ <= NOT \RAM|ram~613_combout\;
\RAM|ALT_INV_ram~609_combout\ <= NOT \RAM|ram~609_combout\;
\RAM|ALT_INV_ram~605_combout\ <= NOT \RAM|ram~605_combout\;
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(10) <= NOT \interfaceBaseTempo|baseTempo|contador\(10);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(9) <= NOT \interfaceBaseTempo|baseTempo|contador\(9);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(8) <= NOT \interfaceBaseTempo|baseTempo|contador\(8);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(0) <= NOT \interfaceBaseTempo|baseTempo|contador\(0);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(1) <= NOT \interfaceBaseTempo|baseTempo|contador\(1);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(2) <= NOT \interfaceBaseTempo|baseTempo|contador\(2);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(3) <= NOT \interfaceBaseTempo|baseTempo|contador\(3);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(4) <= NOT \interfaceBaseTempo|baseTempo|contador\(4);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(5) <= NOT \interfaceBaseTempo|baseTempo|contador\(5);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(6) <= NOT \interfaceBaseTempo|baseTempo|contador\(6);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(7) <= NOT \interfaceBaseTempo|baseTempo|contador\(7);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(15) <= NOT \interfaceBaseTempo|baseTempo|contador\(15);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(16) <= NOT \interfaceBaseTempo|baseTempo|contador\(16);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(17) <= NOT \interfaceBaseTempo|baseTempo|contador\(17);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(18) <= NOT \interfaceBaseTempo|baseTempo|contador\(18);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(13) <= NOT \interfaceBaseTempo|baseTempo|contador\(13);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(12) <= NOT \interfaceBaseTempo|baseTempo|contador\(12);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(11) <= NOT \interfaceBaseTempo|baseTempo|contador\(11);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(20) <= NOT \interfaceBaseTempo|baseTempo|contador\(20);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(21) <= NOT \interfaceBaseTempo|baseTempo|contador\(21);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(14) <= NOT \interfaceBaseTempo|baseTempo|contador\(14);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(22) <= NOT \interfaceBaseTempo|baseTempo|contador\(22);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(23) <= NOT \interfaceBaseTempo|baseTempo|contador\(23);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(24) <= NOT \interfaceBaseTempo|baseTempo|contador\(24);
\interfaceBaseTempo|baseTempo|ALT_INV_contador\(19) <= NOT \interfaceBaseTempo|baseTempo|contador\(19);
\Processador|Banco_Reg|ALT_INV_registrador~18_q\ <= NOT \Processador|Banco_Reg|registrador~18_q\;
\Processador|Banco_Reg|ALT_INV_registrador~26_q\ <= NOT \Processador|Banco_Reg|registrador~26_q\;
\Processador|Banco_Reg|ALT_INV_registrador~17_q\ <= NOT \Processador|Banco_Reg|registrador~17_q\;
\Processador|Banco_Reg|ALT_INV_registrador~25_q\ <= NOT \Processador|Banco_Reg|registrador~25_q\;
\Processador|Banco_Reg|ALT_INV_registrador~16_q\ <= NOT \Processador|Banco_Reg|registrador~16_q\;
\Processador|Banco_Reg|ALT_INV_registrador~24_q\ <= NOT \Processador|Banco_Reg|registrador~24_q\;
\Processador|Banco_Reg|ALT_INV_registrador~15_q\ <= NOT \Processador|Banco_Reg|registrador~15_q\;
\Processador|Banco_Reg|ALT_INV_registrador~23_q\ <= NOT \Processador|Banco_Reg|registrador~23_q\;
\Processador|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \Processador|ULA1|Add0~29_sumout\;
\Processador|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \Processador|ULA1|Add0~25_sumout\;
\Processador|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \Processador|ULA1|Add0~21_sumout\;
\Processador|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \Processador|ULA1|Add0~17_sumout\;
\Processador|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \Processador|ULA1|Add0~13_sumout\;
\Processador|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \Processador|ULA1|Add0~9_sumout\;
\Processador|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \Processador|ULA1|Add0~5_sumout\;
\Processador|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \Processador|ULA1|Add0~1_sumout\;
\Processador|Banco_Reg|ALT_INV_registrador~11_q\ <= NOT \Processador|Banco_Reg|registrador~11_q\;
\Processador|Banco_Reg|ALT_INV_registrador~19_q\ <= NOT \Processador|Banco_Reg|registrador~19_q\;
\Processador|Banco_Reg|ALT_INV_registrador~12_q\ <= NOT \Processador|Banco_Reg|registrador~12_q\;
\Processador|Banco_Reg|ALT_INV_registrador~20_q\ <= NOT \Processador|Banco_Reg|registrador~20_q\;
\Processador|Banco_Reg|ALT_INV_registrador~14_q\ <= NOT \Processador|Banco_Reg|registrador~14_q\;
\Processador|Banco_Reg|ALT_INV_registrador~22_q\ <= NOT \Processador|Banco_Reg|registrador~22_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~271_q\ <= NOT \RAM|ram~271_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\Processador|decoder|ALT_INV_saida[6]~2_combout\ <= NOT \Processador|decoder|saida[6]~2_combout\;
\BLOCO_7seg|ALT_INV_hab_2~0_combout\ <= NOT \BLOCO_7seg|hab_2~0_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~30_combout\ <= NOT \Processador|Banco_Reg|registrador~30_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~29_combout\ <= NOT \Processador|Banco_Reg|registrador~29_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~28_combout\ <= NOT \Processador|Banco_Reg|registrador~28_combout\;
\BLOCO_7seg|ALT_INV_hab_1~0_combout\ <= NOT \BLOCO_7seg|hab_1~0_combout\;
\Processador|decoder|ALT_INV_saida~1_combout\ <= NOT \Processador|decoder|saida~1_combout\;
\Processador|decoder|ALT_INV_Equal13~0_combout\ <= NOT \Processador|decoder|Equal13~0_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~27_combout\ <= NOT \Processador|Banco_Reg|registrador~27_combout\;
\Processador|ROM1|ALT_INV_memROM~27_combout\ <= NOT \Processador|ROM1|memROM~27_combout\;
\interfaceBaseTempo|registraUmSegundo|ALT_INV_DOUT~q\ <= NOT \interfaceBaseTempo|registraUmSegundo|DOUT~q\;
\Processador|ROM1|ALT_INV_memROM~26_combout\ <= NOT \Processador|ROM1|memROM~26_combout\;
\Processador|ROM1|ALT_INV_memROM~25_combout\ <= NOT \Processador|ROM1|memROM~25_combout\;
\Processador|ROM1|ALT_INV_memROM~24_combout\ <= NOT \Processador|ROM1|memROM~24_combout\;
\Processador|ROM1|ALT_INV_memROM~23_combout\ <= NOT \Processador|ROM1|memROM~23_combout\;
\Processador|ROM1|ALT_INV_memROM~22_combout\ <= NOT \Processador|ROM1|memROM~22_combout\;
\Processador|ROM1|ALT_INV_memROM~21_combout\ <= NOT \Processador|ROM1|memROM~21_combout\;
\Processador|ROM1|ALT_INV_memROM~20_combout\ <= NOT \Processador|ROM1|memROM~20_combout\;
\Processador|ROM1|ALT_INV_memROM~19_combout\ <= NOT \Processador|ROM1|memROM~19_combout\;
\Processador|ROM1|ALT_INV_memROM~18_combout\ <= NOT \Processador|ROM1|memROM~18_combout\;
\Processador|ROM1|ALT_INV_memROM~17_combout\ <= NOT \Processador|ROM1|memROM~17_combout\;
\Processador|ROM1|ALT_INV_memROM~16_combout\ <= NOT \Processador|ROM1|memROM~16_combout\;
\Processador|ROM1|ALT_INV_memROM~15_combout\ <= NOT \Processador|ROM1|memROM~15_combout\;
\Processador|ROM1|ALT_INV_memROM~14_combout\ <= NOT \Processador|ROM1|memROM~14_combout\;
\Processador|ROM1|ALT_INV_memROM~13_combout\ <= NOT \Processador|ROM1|memROM~13_combout\;
\Processador|MUX_JMP|ALT_INV_saida_MUX[6]~0_combout\ <= NOT \Processador|MUX_JMP|saida_MUX[6]~0_combout\;
\Processador|flag_ula|ALT_INV_DOUT~q\ <= NOT \Processador|flag_ula|DOUT~q\;
\Processador|decoder|ALT_INV_saida[9]~0_combout\ <= NOT \Processador|decoder|saida[9]~0_combout\;
\Processador|ROM1|ALT_INV_memROM~12_combout\ <= NOT \Processador|ROM1|memROM~12_combout\;
\Processador|ROM1|ALT_INV_memROM~11_combout\ <= NOT \Processador|ROM1|memROM~11_combout\;
\Processador|ROM1|ALT_INV_memROM~10_combout\ <= NOT \Processador|ROM1|memROM~10_combout\;
\Processador|ROM1|ALT_INV_memROM~9_combout\ <= NOT \Processador|ROM1|memROM~9_combout\;
\Processador|ROM1|ALT_INV_memROM~8_combout\ <= NOT \Processador|ROM1|memROM~8_combout\;
\Processador|ROM1|ALT_INV_memROM~7_combout\ <= NOT \Processador|ROM1|memROM~7_combout\;
\Processador|ROM1|ALT_INV_memROM~6_combout\ <= NOT \Processador|ROM1|memROM~6_combout\;
\Processador|ROM1|ALT_INV_memROM~5_combout\ <= NOT \Processador|ROM1|memROM~5_combout\;
\Processador|ROM1|ALT_INV_memROM~4_combout\ <= NOT \Processador|ROM1|memROM~4_combout\;
\Processador|ROM1|ALT_INV_memROM~3_combout\ <= NOT \Processador|ROM1|memROM~3_combout\;
\Processador|ROM1|ALT_INV_memROM~2_combout\ <= NOT \Processador|ROM1|memROM~2_combout\;
\Processador|ROM1|ALT_INV_memROM~1_combout\ <= NOT \Processador|ROM1|memROM~1_combout\;
\Processador|PC|ALT_INV_DOUT\(6) <= NOT \Processador|PC|DOUT\(6);
\Processador|PC|ALT_INV_DOUT\(7) <= NOT \Processador|PC|DOUT\(7);
\Processador|PC|ALT_INV_DOUT\(8) <= NOT \Processador|PC|DOUT\(8);
\Processador|PC|ALT_INV_DOUT\(5) <= NOT \Processador|PC|DOUT\(5);
\Processador|ROM1|ALT_INV_memROM~0_combout\ <= NOT \Processador|ROM1|memROM~0_combout\;
\Processador|PC|ALT_INV_DOUT\(3) <= NOT \Processador|PC|DOUT\(3);
\Processador|PC|ALT_INV_DOUT\(4) <= NOT \Processador|PC|DOUT\(4);
\Processador|PC|ALT_INV_DOUT\(2) <= NOT \Processador|PC|DOUT\(2);
\Processador|PC|ALT_INV_DOUT\(1) <= NOT \Processador|PC|DOUT\(1);
\Processador|PC|ALT_INV_DOUT\(0) <= NOT \Processador|PC|DOUT\(0);
\BLOCO_7seg|REG_5|ALT_INV_DOUT\(0) <= NOT \BLOCO_7seg|REG_5|DOUT\(0);
\BLOCO_7seg|REG_5|ALT_INV_DOUT\(1) <= NOT \BLOCO_7seg|REG_5|DOUT\(1);
\BLOCO_7seg|REG_5|ALT_INV_DOUT\(3) <= NOT \BLOCO_7seg|REG_5|DOUT\(3);
\BLOCO_7seg|REG_5|ALT_INV_DOUT\(2) <= NOT \BLOCO_7seg|REG_5|DOUT\(2);
\BLOCO_7seg|REG_4|ALT_INV_DOUT\(0) <= NOT \BLOCO_7seg|REG_4|DOUT\(0);
\BLOCO_7seg|REG_4|ALT_INV_DOUT\(1) <= NOT \BLOCO_7seg|REG_4|DOUT\(1);
\BLOCO_7seg|REG_4|ALT_INV_DOUT\(3) <= NOT \BLOCO_7seg|REG_4|DOUT\(3);
\BLOCO_7seg|REG_4|ALT_INV_DOUT\(2) <= NOT \BLOCO_7seg|REG_4|DOUT\(2);
\BLOCO_7seg|REG_3|ALT_INV_DOUT\(0) <= NOT \BLOCO_7seg|REG_3|DOUT\(0);
\BLOCO_7seg|REG_3|ALT_INV_DOUT\(1) <= NOT \BLOCO_7seg|REG_3|DOUT\(1);
\BLOCO_7seg|REG_3|ALT_INV_DOUT\(3) <= NOT \BLOCO_7seg|REG_3|DOUT\(3);
\BLOCO_7seg|REG_3|ALT_INV_DOUT\(2) <= NOT \BLOCO_7seg|REG_3|DOUT\(2);
\BLOCO_7seg|REG_2|ALT_INV_DOUT\(0) <= NOT \BLOCO_7seg|REG_2|DOUT\(0);
\BLOCO_7seg|REG_2|ALT_INV_DOUT\(1) <= NOT \BLOCO_7seg|REG_2|DOUT\(1);
\BLOCO_7seg|REG_2|ALT_INV_DOUT\(3) <= NOT \BLOCO_7seg|REG_2|DOUT\(3);
\BLOCO_7seg|REG_2|ALT_INV_DOUT\(2) <= NOT \BLOCO_7seg|REG_2|DOUT\(2);
\BLOCO_7seg|REG_1|ALT_INV_DOUT\(0) <= NOT \BLOCO_7seg|REG_1|DOUT\(0);
\BLOCO_7seg|REG_1|ALT_INV_DOUT\(1) <= NOT \BLOCO_7seg|REG_1|DOUT\(1);
\BLOCO_7seg|REG_1|ALT_INV_DOUT\(3) <= NOT \BLOCO_7seg|REG_1|DOUT\(3);
\RAM|ALT_INV_ram~315_q\ <= NOT \RAM|ram~315_q\;
\RAM|ALT_INV_ram~59_q\ <= NOT \RAM|ram~59_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~574_combout\ <= NOT \RAM|ram~574_combout\;
\RAM|ALT_INV_ram~291_q\ <= NOT \RAM|ram~291_q\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~147_q\ <= NOT \RAM|ram~147_q\;
\RAM|ALT_INV_ram~573_combout\ <= NOT \RAM|ram~573_combout\;
\RAM|ALT_INV_ram~275_q\ <= NOT \RAM|ram~275_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~572_combout\ <= NOT \RAM|ram~572_combout\;
\RAM|ALT_INV_ram~571_combout\ <= NOT \RAM|ram~571_combout\;
\RAM|ALT_INV_ram~526_q\ <= NOT \RAM|ram~526_q\;
\RAM|ALT_INV_ram~570_combout\ <= NOT \RAM|ram~570_combout\;
\RAM|ALT_INV_ram~569_combout\ <= NOT \RAM|ram~569_combout\;
\RAM|ALT_INV_ram~302_q\ <= NOT \RAM|ram~302_q\;
\RAM|ALT_INV_ram~294_q\ <= NOT \RAM|ram~294_q\;
\RAM|ALT_INV_ram~568_combout\ <= NOT \RAM|ram~568_combout\;
\RAM|ALT_INV_ram~318_q\ <= NOT \RAM|ram~318_q\;
\RAM|ALT_INV_ram~278_q\ <= NOT \RAM|ram~278_q\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~567_combout\ <= NOT \RAM|ram~567_combout\;
\RAM|ALT_INV_ram~190_q\ <= NOT \RAM|ram~190_q\;
\RAM|ALT_INV_ram~150_q\ <= NOT \RAM|ram~150_q\;
\RAM|ALT_INV_ram~566_combout\ <= NOT \RAM|ram~566_combout\;
\RAM|ALT_INV_ram~62_q\ <= NOT \RAM|ram~62_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\Processador|MUX1|ALT_INV_saida_MUX[7]~5_combout\ <= NOT \Processador|MUX1|saida_MUX[7]~5_combout\;
\RAM|ALT_INV_ram~565_combout\ <= NOT \RAM|ram~565_combout\;
\RAM|ALT_INV_ram~564_combout\ <= NOT \RAM|ram~564_combout\;
\RAM|ALT_INV_ram~522_q\ <= NOT \RAM|ram~522_q\;
\RAM|ALT_INV_ram~298_q\ <= NOT \RAM|ram~298_q\;
\RAM|ALT_INV_ram~290_q\ <= NOT \RAM|ram~290_q\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~186_q\ <= NOT \RAM|ram~186_q\;
\RAM|ALT_INV_ram~314_q\ <= NOT \RAM|ram~314_q\;
\RAM|ALT_INV_ram~58_q\ <= NOT \RAM|ram~58_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~146_q\ <= NOT \RAM|ram~146_q\;
\RAM|ALT_INV_ram~563_combout\ <= NOT \RAM|ram~563_combout\;
\RAM|ALT_INV_ram~274_q\ <= NOT \RAM|ram~274_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~562_combout\ <= NOT \RAM|ram~562_combout\;
\RAM|ALT_INV_ram~520_q\ <= NOT \RAM|ram~520_q\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\RAM|ALT_INV_ram~560_combout\ <= NOT \RAM|ram~560_combout\;
\RAM|ALT_INV_ram~312_q\ <= NOT \RAM|ram~312_q\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;
\RAM|ALT_INV_ram~296_q\ <= NOT \RAM|ram~296_q\;
\RAM|ALT_INV_ram~558_combout\ <= NOT \RAM|ram~558_combout\;
\RAM|ALT_INV_ram~288_q\ <= NOT \RAM|ram~288_q\;
\RAM|ALT_INV_ram~272_q\ <= NOT \RAM|ram~272_q\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~184_q\ <= NOT \RAM|ram~184_q\;
\RAM|ALT_INV_ram~56_q\ <= NOT \RAM|ram~56_q\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~144_q\ <= NOT \RAM|ram~144_q\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~524_q\ <= NOT \RAM|ram~524_q\;
\RAM|ALT_INV_ram~300_q\ <= NOT \RAM|ram~300_q\;
\RAM|ALT_INV_ram~292_q\ <= NOT \RAM|ram~292_q\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~316_q\ <= NOT \RAM|ram~316_q\;
\RAM|ALT_INV_ram~276_q\ <= NOT \RAM|ram~276_q\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~188_q\ <= NOT \RAM|ram~188_q\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~60_q\ <= NOT \RAM|ram~60_q\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~148_q\ <= NOT \RAM|ram~148_q\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\Processador|MUX1|ALT_INV_saida_MUX[2]~4_combout\ <= NOT \Processador|MUX1|saida_MUX[2]~4_combout\;
\RAM|ALT_INV_ram~521_q\ <= NOT \RAM|ram~521_q\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~313_q\ <= NOT \RAM|ram~313_q\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~297_q\ <= NOT \RAM|ram~297_q\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~289_q\ <= NOT \RAM|ram~289_q\;
\RAM|ALT_INV_ram~273_q\ <= NOT \RAM|ram~273_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~185_q\ <= NOT \RAM|ram~185_q\;
\RAM|ALT_INV_ram~145_q\ <= NOT \RAM|ram~145_q\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~57_q\ <= NOT \RAM|ram~57_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\Processador|MUX1|ALT_INV_saida_MUX[6]~3_combout\ <= NOT \Processador|MUX1|saida_MUX[6]~3_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[0]~2_combout\ <= NOT \Processador|MUX1|saida_MUX[0]~2_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[0]~1_combout\ <= NOT \Processador|MUX1|saida_MUX[0]~1_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \Processador|MUX1|saida_MUX[0]~0_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\Processador|decoder|ALT_INV_saida[1]~3_combout\ <= NOT \Processador|decoder|saida[1]~3_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~519_q\ <= NOT \RAM|ram~519_q\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~295_q\ <= NOT \RAM|ram~295_q\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~287_q\ <= NOT \RAM|ram~287_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~183_q\ <= NOT \RAM|ram~183_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~143_q\ <= NOT \RAM|ram~143_q\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~311_q\ <= NOT \RAM|ram~311_q\;
\RAM|ALT_INV_ram~55_q\ <= NOT \RAM|ram~55_q\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\Processador|MUX1|ALT_INV_saida_MUX[2]~18_combout\ <= NOT \Processador|MUX1|saida_MUX[2]~18_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[2]~17_combout\ <= NOT \Processador|MUX1|saida_MUX[2]~17_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[2]~16_combout\ <= NOT \Processador|MUX1|saida_MUX[2]~16_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[2]~15_combout\ <= NOT \Processador|MUX1|saida_MUX[2]~15_combout\;
\Processador|flag_ula|ALT_INV_DOUT~2_combout\ <= NOT \Processador|flag_ula|DOUT~2_combout\;
\Processador|flag_ula|ALT_INV_DOUT~1_combout\ <= NOT \Processador|flag_ula|DOUT~1_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[1]~14_combout\ <= NOT \Processador|MUX1|saida_MUX[1]~14_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[1]~13_combout\ <= NOT \Processador|MUX1|saida_MUX[1]~13_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[1]~12_combout\ <= NOT \Processador|MUX1|saida_MUX[1]~12_combout\;
\interfaceBaseTempo|baseTempo|ALT_INV_Equal0~3_combout\ <= NOT \interfaceBaseTempo|baseTempo|Equal0~3_combout\;
\interfaceBaseTempo|baseTempo|ALT_INV_Equal0~2_combout\ <= NOT \interfaceBaseTempo|baseTempo|Equal0~2_combout\;
\interfaceBaseTempo|baseTempo|ALT_INV_Equal0~1_combout\ <= NOT \interfaceBaseTempo|baseTempo|Equal0~1_combout\;
\interfaceBaseTempo|baseTempo|ALT_INV_Equal0~0_combout\ <= NOT \interfaceBaseTempo|baseTempo|Equal0~0_combout\;
\RAM|ALT_INV_ram~603_combout\ <= NOT \RAM|ram~603_combout\;
\RAM|ALT_INV_ram~601_combout\ <= NOT \RAM|ram~601_combout\;
\RAM|ALT_INV_ram~599_combout\ <= NOT \RAM|ram~599_combout\;
\RAM|ALT_INV_ram~597_combout\ <= NOT \RAM|ram~597_combout\;
\RAM|ALT_INV_ram~595_combout\ <= NOT \RAM|ram~595_combout\;
\RAM|ALT_INV_ram~593_combout\ <= NOT \RAM|ram~593_combout\;
\RAM|ALT_INV_ram~591_combout\ <= NOT \RAM|ram~591_combout\;
\RAM|ALT_INV_ram~589_combout\ <= NOT \RAM|ram~589_combout\;
\RAM|ALT_INV_ram~587_combout\ <= NOT \RAM|ram~587_combout\;
\RAM|ALT_INV_ram~585_combout\ <= NOT \RAM|ram~585_combout\;
\RAM|ALT_INV_ram~583_combout\ <= NOT \RAM|ram~583_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[7]~11_combout\ <= NOT \Processador|MUX1|saida_MUX[7]~11_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~36_combout\ <= NOT \Processador|Banco_Reg|registrador~36_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[6]~10_combout\ <= NOT \Processador|MUX1|saida_MUX[6]~10_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~35_combout\ <= NOT \Processador|Banco_Reg|registrador~35_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[5]~9_combout\ <= NOT \Processador|MUX1|saida_MUX[5]~9_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~34_combout\ <= NOT \Processador|Banco_Reg|registrador~34_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[4]~8_combout\ <= NOT \Processador|MUX1|saida_MUX[4]~8_combout\;
\Processador|Banco_Reg|ALT_INV_registrador~33_combout\ <= NOT \Processador|Banco_Reg|registrador~33_combout\;
\Processador|decoder|ALT_INV_Equal13~2_combout\ <= NOT \Processador|decoder|Equal13~2_combout\;
\Processador|ULA1|ALT_INV_Equal1~0_combout\ <= NOT \Processador|ULA1|Equal1~0_combout\;
\Processador|decoder|ALT_INV_Equal13~1_combout\ <= NOT \Processador|decoder|Equal13~1_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[1]~7_combout\ <= NOT \Processador|MUX1|saida_MUX[1]~7_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[3]~6_combout\ <= NOT \Processador|MUX1|saida_MUX[3]~6_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\Processador|ROM1|ALT_INV_memROM~28_combout\ <= NOT \Processador|ROM1|memROM~28_combout\;
\ALT_INV_limpa0~combout\ <= NOT \limpa0~combout\;
\ALT_INV_limpa0~0_combout\ <= NOT \limpa0~0_combout\;
\interfaceBaseTempo|baseTempo|ALT_INV_tick~q\ <= NOT \interfaceBaseTempo|baseTempo|tick~q\;
\RAM|ALT_INV_ram~582_combout\ <= NOT \RAM|ram~582_combout\;
\RAM|ALT_INV_ram~525_q\ <= NOT \RAM|ram~525_q\;
\RAM|ALT_INV_ram~189_q\ <= NOT \RAM|ram~189_q\;
\RAM|ALT_INV_ram~581_combout\ <= NOT \RAM|ram~581_combout\;
\RAM|ALT_INV_ram~317_q\ <= NOT \RAM|ram~317_q\;
\RAM|ALT_INV_ram~61_q\ <= NOT \RAM|ram~61_q\;
\RAM|ALT_INV_ram~580_combout\ <= NOT \RAM|ram~580_combout\;
\RAM|ALT_INV_ram~301_q\ <= NOT \RAM|ram~301_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~579_combout\ <= NOT \RAM|ram~579_combout\;
\RAM|ALT_INV_ram~149_q\ <= NOT \RAM|ram~149_q\;
\RAM|ALT_INV_ram~578_combout\ <= NOT \RAM|ram~578_combout\;
\RAM|ALT_INV_ram~293_q\ <= NOT \RAM|ram~293_q\;
\RAM|ALT_INV_ram~277_q\ <= NOT \RAM|ram~277_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~577_combout\ <= NOT \RAM|ram~577_combout\;
\RAM|ALT_INV_ram~576_combout\ <= NOT \RAM|ram~576_combout\;
\RAM|ALT_INV_ram~523_q\ <= NOT \RAM|ram~523_q\;
\RAM|ALT_INV_ram~299_q\ <= NOT \RAM|ram~299_q\;
\RAM|ALT_INV_ram~187_q\ <= NOT \RAM|ram~187_q\;
\RAM|ALT_INV_ram~575_combout\ <= NOT \RAM|ram~575_combout\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;

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
	i => \BLOCO_7seg|DEC_1|rascSaida7seg[0]~0_combout\,
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
	i => \BLOCO_7seg|DEC_1|rascSaida7seg[1]~1_combout\,
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
	i => \BLOCO_7seg|DEC_1|rascSaida7seg[2]~2_combout\,
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
	i => \BLOCO_7seg|DEC_1|rascSaida7seg[3]~3_combout\,
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
	i => \BLOCO_7seg|DEC_1|rascSaida7seg[4]~4_combout\,
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
	i => \BLOCO_7seg|DEC_1|rascSaida7seg[5]~5_combout\,
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
	i => \BLOCO_7seg|DEC_1|rascSaida7seg[6]~6_combout\,
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
	i => \BLOCO_7seg|DEC_2|rascSaida7seg[0]~0_combout\,
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
	i => \BLOCO_7seg|DEC_2|rascSaida7seg[1]~1_combout\,
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
	i => \BLOCO_7seg|DEC_2|rascSaida7seg[2]~2_combout\,
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
	i => \BLOCO_7seg|DEC_2|rascSaida7seg[3]~3_combout\,
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
	i => \BLOCO_7seg|DEC_2|rascSaida7seg[4]~4_combout\,
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
	i => \BLOCO_7seg|DEC_2|rascSaida7seg[5]~5_combout\,
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
	i => \BLOCO_7seg|DEC_2|rascSaida7seg[6]~6_combout\,
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
	i => \BLOCO_7seg|DEC_3|rascSaida7seg[0]~0_combout\,
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
	i => \BLOCO_7seg|DEC_3|rascSaida7seg[1]~1_combout\,
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
	i => \BLOCO_7seg|DEC_3|rascSaida7seg[2]~2_combout\,
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
	i => \BLOCO_7seg|DEC_3|rascSaida7seg[3]~3_combout\,
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
	i => \BLOCO_7seg|DEC_3|rascSaida7seg[4]~4_combout\,
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
	i => \BLOCO_7seg|DEC_3|rascSaida7seg[5]~5_combout\,
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
	i => \BLOCO_7seg|DEC_3|rascSaida7seg[6]~6_combout\,
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
	i => \BLOCO_7seg|DEC_4|rascSaida7seg[0]~0_combout\,
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
	i => \BLOCO_7seg|DEC_4|rascSaida7seg[1]~1_combout\,
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
	i => \BLOCO_7seg|DEC_4|rascSaida7seg[2]~2_combout\,
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
	i => \BLOCO_7seg|DEC_4|rascSaida7seg[3]~3_combout\,
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
	i => \BLOCO_7seg|DEC_4|rascSaida7seg[4]~4_combout\,
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
	i => \BLOCO_7seg|DEC_4|rascSaida7seg[5]~5_combout\,
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
	i => \BLOCO_7seg|DEC_4|rascSaida7seg[6]~6_combout\,
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
	i => \Processador|MUX_JMP|saida_MUX[0]~1_combout\,
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
	i => \Processador|MUX_JMP|saida_MUX[1]~2_combout\,
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
	i => \Processador|MUX_JMP|saida_MUX[2]~3_combout\,
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
	i => \Processador|MUX_JMP|saida_MUX[3]~4_combout\,
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
	i => \Processador|MUX_JMP|saida_MUX[4]~5_combout\,
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
	i => \Processador|MUX_JMP|saida_MUX[5]~6_combout\,
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
	i => \Processador|MUX_JMP|saida_MUX[6]~7_combout\,
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
	i => \Processador|MUX_JMP|saida_MUX[7]~8_combout\,
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
	i => \Processador|MUX_JMP|saida_MUX[8]~9_combout\,
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
	i => \interfaceBaseTempo|registraUmSegundo|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\PC_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|MUX_JMP|saida_MUX[0]~1_combout\,
	devoe => ww_devoe,
	o => \PC_out[0]~output_o\);

\PC_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|MUX_JMP|saida_MUX[1]~2_combout\,
	devoe => ww_devoe,
	o => \PC_out[1]~output_o\);

\PC_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|MUX_JMP|saida_MUX[2]~3_combout\,
	devoe => ww_devoe,
	o => \PC_out[2]~output_o\);

\PC_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|MUX_JMP|saida_MUX[3]~4_combout\,
	devoe => ww_devoe,
	o => \PC_out[3]~output_o\);

\PC_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|MUX_JMP|saida_MUX[4]~5_combout\,
	devoe => ww_devoe,
	o => \PC_out[4]~output_o\);

\PC_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|MUX_JMP|saida_MUX[5]~6_combout\,
	devoe => ww_devoe,
	o => \PC_out[5]~output_o\);

\PC_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|MUX_JMP|saida_MUX[6]~7_combout\,
	devoe => ww_devoe,
	o => \PC_out[6]~output_o\);

\PC_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|MUX_JMP|saida_MUX[7]~8_combout\,
	devoe => ww_devoe,
	o => \PC_out[7]~output_o\);

\PC_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|MUX_JMP|saida_MUX[8]~9_combout\,
	devoe => ww_devoe,
	o => \PC_out[8]~output_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\gravar:detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saidaQ~0_combout\ = !\KEY[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	combout => \gravar:detectorSub0|saidaQ~0_combout\);

\gravar:detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \gravar:detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub0|saidaQ~q\);

\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL((!\KEY[3]~input_o\ & !\gravar:detectorSub0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

\Processador|ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~16_combout\ = ( \Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(0) $ (!\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(0) & 
-- (!\Processador|PC|DOUT\(2) $ (!\Processador|PC|DOUT\(4))))) ) ) # ( !\Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000010101100000000000000010000000000101011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	datae => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~16_combout\);

\Processador|ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~17_combout\ = (\Processador|ROM1|memROM~1_combout\ & \Processador|ROM1|memROM~16_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~16_combout\,
	combout => \Processador|ROM1|memROM~17_combout\);

\Processador|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~1_sumout\ = SUM(( \Processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \Processador|incrementaPC|Add0~2\ = CARRY(( \Processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \Processador|incrementaPC|Add0~1_sumout\,
	cout => \Processador|incrementaPC|Add0~2\);

\Processador|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~5_sumout\ = SUM(( \Processador|PC|DOUT\(1) ) + ( GND ) + ( \Processador|incrementaPC|Add0~2\ ))
-- \Processador|incrementaPC|Add0~6\ = CARRY(( \Processador|PC|DOUT\(1) ) + ( GND ) + ( \Processador|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	cin => \Processador|incrementaPC|Add0~2\,
	sumout => \Processador|incrementaPC|Add0~5_sumout\,
	cout => \Processador|incrementaPC|Add0~6\);

\Processador|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~9_sumout\ = SUM(( \Processador|PC|DOUT\(2) ) + ( GND ) + ( \Processador|incrementaPC|Add0~6\ ))
-- \Processador|incrementaPC|Add0~10\ = CARRY(( \Processador|PC|DOUT\(2) ) + ( GND ) + ( \Processador|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	cin => \Processador|incrementaPC|Add0~6\,
	sumout => \Processador|incrementaPC|Add0~9_sumout\,
	cout => \Processador|incrementaPC|Add0~10\);

\Processador|MUX_JMP|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[2]~3_combout\ = (!\Processador|decoder|saida[9]~0_combout\ & ((!\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & ((\Processador|incrementaPC|Add0~9_sumout\))) # (\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & 
-- (\Processador|ROM1|memROM~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[9]~0_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[6]~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \Processador|MUX_JMP|saida_MUX[2]~3_combout\);

\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX_JMP|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

\Processador|ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~18_combout\ = (!\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(4) & \Processador|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~18_combout\);

\Processador|ROM1|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~25_combout\ = (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(0) $ (\Processador|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000100000000100000010000000010000001000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM1|memROM~25_combout\);

\Processador|ROM1|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~26_combout\ = (\Processador|ROM1|memROM~6_combout\ & \Processador|ROM1|memROM~25_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	combout => \Processador|ROM1|memROM~26_combout\);

\Processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~13_sumout\ = SUM(( \Processador|PC|DOUT\(3) ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))
-- \Processador|incrementaPC|Add0~14\ = CARRY(( \Processador|PC|DOUT\(3) ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	cin => \Processador|incrementaPC|Add0~10\,
	sumout => \Processador|incrementaPC|Add0~13_sumout\,
	cout => \Processador|incrementaPC|Add0~14\);

\Processador|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~17_sumout\ = SUM(( \Processador|PC|DOUT\(4) ) + ( GND ) + ( \Processador|incrementaPC|Add0~14\ ))
-- \Processador|incrementaPC|Add0~18\ = CARRY(( \Processador|PC|DOUT\(4) ) + ( GND ) + ( \Processador|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	cin => \Processador|incrementaPC|Add0~14\,
	sumout => \Processador|incrementaPC|Add0~17_sumout\,
	cout => \Processador|incrementaPC|Add0~18\);

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

\Processador|MUX_JMP|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[6]~7_combout\ = (!\Processador|decoder|saida[9]~0_combout\ & ((!\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & ((\Processador|incrementaPC|Add0~25_sumout\))) # (\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & 
-- (\Processador|ROM1|memROM~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[9]~0_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[6]~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \Processador|MUX_JMP|saida_MUX[6]~7_combout\);

\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX_JMP|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(6));

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

\Processador|MUX_JMP|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[7]~8_combout\ = (!\Processador|decoder|saida[9]~0_combout\ & ((!\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & ((\Processador|incrementaPC|Add0~29_sumout\))) # (\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & 
-- (\Processador|ROM1|memROM~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[9]~0_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[6]~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \Processador|MUX_JMP|saida_MUX[7]~8_combout\);

\Processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX_JMP|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(7));

\Processador|ROM1|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~19_combout\ = ( !\Processador|PC|DOUT\(7) & ( !\Processador|PC|DOUT\(6) & ( (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(5) & !\Processador|PC|DOUT\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(5),
	datad => \Processador|PC|ALT_INV_DOUT\(8),
	datae => \Processador|PC|ALT_INV_DOUT\(7),
	dataf => \Processador|PC|ALT_INV_DOUT\(6),
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

\Processador|MUX_JMP|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[3]~4_combout\ = (!\Processador|decoder|saida[9]~0_combout\ & ((!\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & ((\Processador|incrementaPC|Add0~13_sumout\))) # (\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & 
-- (\Processador|ROM1|memROM~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[9]~0_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[6]~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \Processador|MUX_JMP|saida_MUX[3]~4_combout\);

\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX_JMP|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

\Processador|ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~6_combout\ = ( !\Processador|PC|DOUT\(6) & ( (\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(8) & !\Processador|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \Processador|PC|ALT_INV_DOUT\(6),
	combout => \Processador|ROM1|memROM~6_combout\);

\Processador|ROM1|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~21_combout\ = (\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(1) & \Processador|PC|DOUT\(4))) # (\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101000000000001010100000000000101010000000000010101000000",
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
-- \Processador|ROM1|memROM~22_combout\ = (\Processador|ROM1|memROM~6_combout\ & \Processador|ROM1|memROM~21_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	combout => \Processador|ROM1|memROM~22_combout\);

\Processador|MUX_JMP|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[4]~5_combout\ = (!\Processador|decoder|saida[9]~0_combout\ & ((!\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & ((\Processador|incrementaPC|Add0~17_sumout\))) # (\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & 
-- (\Processador|ROM1|memROM~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[9]~0_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[6]~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \Processador|MUX_JMP|saida_MUX[4]~5_combout\);

\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX_JMP|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

\Processador|ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~13_combout\ = (!\Processador|PC|DOUT\(1) & (((\Processador|PC|DOUT\(4) & \Processador|PC|DOUT\(3))))) # (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(0) $ (\Processador|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100001100001000010000110000100001000011000010000100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(4),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~13_combout\);

\Processador|ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~14_combout\ = ( !\Processador|PC|DOUT\(6) & ( (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(8) & !\Processador|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \Processador|PC|ALT_INV_DOUT\(6),
	combout => \Processador|ROM1|memROM~14_combout\);

\Processador|ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~15_combout\ = (\Processador|ROM1|memROM~13_combout\ & \Processador|ROM1|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	combout => \Processador|ROM1|memROM~15_combout\);

\Processador|MUX_JMP|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[1]~2_combout\ = (!\Processador|decoder|saida[9]~0_combout\ & ((!\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & ((\Processador|incrementaPC|Add0~5_sumout\))) # (\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & 
-- (\Processador|ROM1|memROM~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[9]~0_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[6]~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \Processador|MUX_JMP|saida_MUX[1]~2_combout\);

\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX_JMP|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));

\Processador|ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~5_combout\ = (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(0) $ (!\Processador|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000100000000100000010000000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|ROM1|memROM~5_combout\);

\Processador|ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~7_combout\ = (\Processador|ROM1|memROM~5_combout\ & \Processador|ROM1|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~5_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	combout => \Processador|ROM1|memROM~7_combout\);

\Processador|ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~8_combout\ = ( \Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(1) & ((!\Processador|PC|DOUT\(2)) # (\Processador|PC|DOUT\(0))))) # (\Processador|PC|DOUT\(4) & (((!\Processador|PC|DOUT\(2))))) ) ) 
-- # ( !\Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(1) & !\Processador|PC|DOUT\(4))) # (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) $ (\Processador|PC|DOUT\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000010000110001001111000001100000000100001100010011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	datae => \Processador|PC|ALT_INV_DOUT\(3),
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

\Processador|ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~10_combout\ = (!\Processador|PC|DOUT\(8) & (!\Processador|PC|DOUT\(7) & !\Processador|PC|DOUT\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	combout => \Processador|ROM1|memROM~10_combout\);

\Processador|ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~11_combout\ = ( \Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(1) & ((!\Processador|PC|DOUT\(2) & ((\Processador|PC|DOUT\(3)))) # (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(0))))) # 
-- (\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2)))) ) ) ) # ( !\Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(3) & (((!\Processador|PC|DOUT\(1)) # (!\Processador|PC|DOUT\(2))))) # 
-- (\Processador|PC|DOUT\(3) & (\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(1)) # (\Processador|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110001000101000110001101100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	dataf => \Processador|PC|ALT_INV_DOUT\(5),
	combout => \Processador|ROM1|memROM~11_combout\);

\Processador|ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~12_combout\ = (\Processador|ROM1|memROM~10_combout\ & \Processador|ROM1|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~11_combout\,
	combout => \Processador|ROM1|memROM~12_combout\);

\Processador|decoder|Equal13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal13~0_combout\ = (\Processador|ROM1|memROM~1_combout\ & (!\Processador|ROM1|memROM~3_combout\ & \Processador|ROM1|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~8_combout\,
	combout => \Processador|decoder|Equal13~0_combout\);

\Processador|decoder|Equal13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal13~1_combout\ = (!\Processador|ROM1|memROM~7_combout\ & (!\Processador|ROM1|memROM~12_combout\ & \Processador|decoder|Equal13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	datac => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	combout => \Processador|decoder|Equal13~1_combout\);

\Processador|ULA1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Equal1~0_combout\ = (!\Processador|ROM1|memROM~12_combout\ & (\Processador|ROM1|memROM~4_combout\ & (!\Processador|ROM1|memROM~7_combout\ $ (\Processador|ROM1|memROM~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000100000010000000010000001000000001000000100000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	combout => \Processador|ULA1|Equal1~0_combout\);

\Processador|decoder|Equal13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal13~2_combout\ = (!\Processador|ROM1|memROM~4_combout\ & (!\Processador|ROM1|memROM~7_combout\ & (!\Processador|ROM1|memROM~9_combout\ & !\Processador|ROM1|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|Equal13~2_combout\);

\Processador|ROM1|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~27_combout\ = ( \Processador|PC|DOUT\(3) & ( (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(4))) ) ) # ( !\Processador|PC|DOUT\(3) & ( (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & 
-- (\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000011000000000100000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	datae => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~27_combout\);

\Processador|decoder|saida[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida[6]~2_combout\ = (!\Processador|ROM1|memROM~4_combout\ & (((!\Processador|ROM1|memROM~9_combout\ & \Processador|ROM1|memROM~12_combout\)))) # (\Processador|ROM1|memROM~4_combout\ & (\Processador|ROM1|memROM~7_combout\ & 
-- (\Processador|ROM1|memROM~9_combout\ & !\Processador|ROM1|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100000000000011010000000000001101000000000000110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|saida[6]~2_combout\);

\Processador|ROM1|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~23_combout\ = (!\Processador|PC|DOUT\(1) & (((\Processador|PC|DOUT\(3))))) # (\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100000001110011010000000111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(4),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~23_combout\);

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( \Processador|ROM1|memROM~23_combout\ & ( \Processador|ROM1|memROM~25_combout\ & ( (!\Processador|ROM1|memROM~6_combout\ & (!\Processador|ROM1|memROM~14_combout\ & ((!\Processador|ROM1|memROM~18_combout\) # 
-- (!\Processador|ROM1|memROM~19_combout\)))) ) ) ) # ( !\Processador|ROM1|memROM~23_combout\ & ( \Processador|ROM1|memROM~25_combout\ & ( (!\Processador|ROM1|memROM~6_combout\ & ((!\Processador|ROM1|memROM~18_combout\) # 
-- (!\Processador|ROM1|memROM~19_combout\))) ) ) ) # ( \Processador|ROM1|memROM~23_combout\ & ( !\Processador|ROM1|memROM~25_combout\ & ( (!\Processador|ROM1|memROM~14_combout\ & ((!\Processador|ROM1|memROM~18_combout\) # 
-- (!\Processador|ROM1|memROM~19_combout\))) ) ) ) # ( !\Processador|ROM1|memROM~23_combout\ & ( !\Processador|ROM1|memROM~25_combout\ & ( (!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000110011001100000010101010101000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	combout => \RAM|process_0~0_combout\);

\Processador|MUX1|saida_MUX[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[6]~3_combout\ = ( \RAM|process_0~0_combout\ & ( (!\Processador|ROM1|memROM~7_combout\ & (!\Processador|ROM1|memROM~12_combout\ & ((\Processador|ROM1|memROM~9_combout\) # (\Processador|ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011000000000000000000000000000100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \Processador|MUX1|saida_MUX[6]~3_combout\);

\Processador|decoder|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~1_combout\ = (\Processador|ROM1|memROM~10_combout\ & (\Processador|ROM1|memROM~11_combout\ & ((!\Processador|ROM1|memROM~5_combout\) # (!\Processador|ROM1|memROM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010100000000000101010000000000010101000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~5_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~11_combout\,
	combout => \Processador|decoder|saida~1_combout\);

\RAM|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~593_combout\ = ( \Processador|PC|DOUT\(0) & ( \Processador|ROM1|memROM~1_combout\ & ( (\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(4) & (\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	datae => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~593_combout\);

\RAM|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~594_combout\ = (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & (\RAM|process_0~0_combout\ & \RAM|ram~593_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datab => \Processador|decoder|ALT_INV_saida~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \RAM|ALT_INV_ram~593_combout\,
	combout => \RAM|ram~594_combout\);

\RAM|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~33_combout\,
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~147_q\);

\Processador|ROM1|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~24_combout\ = (\Processador|ROM1|memROM~14_combout\ & \Processador|ROM1|memROM~23_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	combout => \Processador|ROM1|memROM~24_combout\);

\RAM|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~597_combout\ = ( !\Processador|PC|DOUT\(0) & ( \Processador|ROM1|memROM~1_combout\ & ( (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	datae => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~597_combout\);

\RAM|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~598_combout\ = (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & (\RAM|process_0~0_combout\ & \RAM|ram~597_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datab => \Processador|decoder|ALT_INV_saida~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \RAM|ALT_INV_ram~597_combout\,
	combout => \RAM|ram~598_combout\);

\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~33_combout\,
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

\RAM|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~599_combout\ = ( \Processador|PC|DOUT\(0) & ( \Processador|ROM1|memROM~1_combout\ & ( (!\Processador|PC|DOUT\(3) & (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	datae => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~599_combout\);

\RAM|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~600_combout\ = (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & (\RAM|process_0~0_combout\ & \RAM|ram~599_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datab => \Processador|decoder|ALT_INV_saida~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \RAM|ALT_INV_ram~599_combout\,
	combout => \RAM|ram~600_combout\);

\RAM|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~33_combout\,
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~291_q\);

\RAM|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~574_combout\ = ( !\Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~291_q\ ) ) ) # ( !\Processador|ROM1|memROM~17_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~35_q\,
	datac => \RAM|ALT_INV_ram~291_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~574_combout\);

\RAM|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~583_combout\ = ( \Processador|PC|DOUT\(0) & ( \Processador|ROM1|memROM~1_combout\ & ( (!\Processador|PC|DOUT\(3) & (((!\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(1))))) # (\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(4) & 
-- ((!\Processador|PC|DOUT\(1)) # (\Processador|PC|DOUT\(2)))) # (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(2))))) ) ) ) # ( !\Processador|PC|DOUT\(0) & ( \Processador|ROM1|memROM~1_combout\ & ( (!\Processador|PC|DOUT\(2) & 
-- (!\Processador|PC|DOUT\(3) $ (((!\Processador|PC|DOUT\(1)) # (\Processador|PC|DOUT\(4)))))) # (\Processador|PC|DOUT\(2) & (((\Processador|PC|DOUT\(4) & !\Processador|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010011100100000101010010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	datae => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~583_combout\);

\RAM|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~584_combout\ = (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & (\RAM|process_0~0_combout\ & !\RAM|ram~583_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datab => \Processador|decoder|ALT_INV_saida~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \RAM|ALT_INV_ram~583_combout\,
	combout => \RAM|ram~584_combout\);

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~33_combout\,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~585_combout\ = ( \Processador|ROM1|memROM~1_combout\ & ( (\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~585_combout\);

\RAM|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~586_combout\ = (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & (\RAM|process_0~0_combout\ & \RAM|ram~585_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datab => \Processador|decoder|ALT_INV_saida~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \RAM|ALT_INV_ram~585_combout\,
	combout => \RAM|ram~586_combout\);

\RAM|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~33_combout\,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~275_q\);

\RAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~573_combout\ = ( !\Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~275_q\ ) ) ) # ( !\Processador|ROM1|memROM~17_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datac => \RAM|ALT_INV_ram~275_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~573_combout\);

\RAM|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~621_combout\ = ( !\Processador|ROM1|memROM~15_combout\ & ( (!\Processador|ROM1|memROM~22_combout\ & ((((\RAM|ram~573_combout\))))) # (\Processador|ROM1|memROM~22_combout\ & (\RAM|ram~147_q\ & (!\Processador|ROM1|memROM~24_combout\ & 
-- (!\Processador|ROM1|memROM~17_combout\)))) ) ) # ( \Processador|ROM1|memROM~15_combout\ & ( (((\RAM|ram~574_combout\ & (!\Processador|ROM1|memROM~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000001000000000011110000000011111111010000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~147_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datac => \RAM|ALT_INV_ram~574_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM|ALT_INV_ram~573_combout\,
	datag => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~621_combout\);

\RAM|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~601_combout\ = ( !\Processador|PC|DOUT\(0) & ( \Processador|ROM1|memROM~1_combout\ & ( (\Processador|PC|DOUT\(3) & (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	datae => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~601_combout\);

\RAM|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~602_combout\ = (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & (\RAM|process_0~0_combout\ & \RAM|ram~601_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datab => \Processador|decoder|ALT_INV_saida~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \RAM|ALT_INV_ram~601_combout\,
	combout => \RAM|ram~602_combout\);

\RAM|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~33_combout\,
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~299_q\);

\RAM|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~587_combout\ = ( \Processador|PC|DOUT\(0) & ( \Processador|ROM1|memROM~1_combout\ & ( (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(1)))) ) ) ) # ( !\Processador|PC|DOUT\(0) & ( 
-- \Processador|ROM1|memROM~1_combout\ & ( (\Processador|PC|DOUT\(3) & (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	datae => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~587_combout\);

\RAM|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~588_combout\ = (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & (\RAM|process_0~0_combout\ & \RAM|ram~587_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datab => \Processador|decoder|ALT_INV_saida~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \RAM|ALT_INV_ram~587_combout\,
	combout => \RAM|ram~588_combout\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~33_combout\,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~589_combout\ = ( !\Processador|PC|DOUT\(0) & ( \Processador|ROM1|memROM~1_combout\ & ( (\Processador|PC|DOUT\(4) & (\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	datae => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~589_combout\);

\RAM|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~590_combout\ = (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & (\RAM|process_0~0_combout\ & \RAM|ram~589_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datab => \Processador|decoder|ALT_INV_saida~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \RAM|ALT_INV_ram~589_combout\,
	combout => \RAM|ram~590_combout\);

\RAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~33_combout\,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~59_q\);

\RAM|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~591_combout\ = ( \Processador|PC|DOUT\(0) & ( \Processador|ROM1|memROM~1_combout\ & ( (\Processador|PC|DOUT\(3) & (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	datae => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~591_combout\);

\RAM|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~592_combout\ = (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & (\RAM|process_0~0_combout\ & \RAM|ram~591_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datab => \Processador|decoder|ALT_INV_saida~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \RAM|ALT_INV_ram~591_combout\,
	combout => \RAM|ram~592_combout\);

\RAM|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~33_combout\,
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~315_q\);

\RAM|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~575_combout\ = ( \Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~315_q\ ) ) ) # ( \Processador|ROM1|memROM~17_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~59_q\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~17_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~27_q\,
	datab => \RAM|ALT_INV_ram~59_q\,
	datad => \RAM|ALT_INV_ram~315_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~575_combout\);

\RAM|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~595_combout\ = ( \Processador|PC|DOUT\(0) & ( \Processador|ROM1|memROM~1_combout\ & ( (\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(4) & (\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	datae => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~595_combout\);

\RAM|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~596_combout\ = (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & (\RAM|process_0~0_combout\ & \RAM|ram~595_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datab => \Processador|decoder|ALT_INV_saida~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \RAM|ALT_INV_ram~595_combout\,
	combout => \RAM|ram~596_combout\);

\RAM|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~33_combout\,
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~187_q\);

\RAM|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~617_combout\ = ( !\Processador|ROM1|memROM~24_combout\ & ( (!\Processador|ROM1|memROM~15_combout\ & ((!\Processador|ROM1|memROM~22_combout\ & (((\RAM|ram~575_combout\)))) # (\Processador|ROM1|memROM~22_combout\ & 
-- (\Processador|ROM1|memROM~17_combout\ & (\RAM|ram~187_q\))))) ) ) # ( \Processador|ROM1|memROM~24_combout\ & ( (!\Processador|ROM1|memROM~22_combout\ & ((!\Processador|ROM1|memROM~15_combout\ & (((\RAM|ram~575_combout\)))) # 
-- (\Processador|ROM1|memROM~15_combout\ & (!\Processador|ROM1|memROM~17_combout\ & (\RAM|ram~299_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000100000000100000000011001100000001001100111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_ram~299_q\,
	datad => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	dataf => \RAM|ALT_INV_ram~575_combout\,
	datag => \RAM|ALT_INV_ram~187_q\,
	combout => \RAM|ram~617_combout\);

\RAM|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~603_combout\ = ( \Processador|PC|DOUT\(0) & ( \Processador|ROM1|memROM~1_combout\ & ( (\Processador|PC|DOUT\(3) & (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	datae => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~603_combout\);

\RAM|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~604_combout\ = (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & (\RAM|process_0~0_combout\ & \RAM|ram~603_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datab => \Processador|decoder|ALT_INV_saida~1_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \RAM|ALT_INV_ram~603_combout\,
	combout => \RAM|ram~604_combout\);

\RAM|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~33_combout\,
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~523_q\);

\RAM|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~576_combout\ = ( \Processador|ROM1|memROM~17_combout\ & ( (\RAM|ram~523_q\ & (\Processador|ROM1|memROM~15_combout\ & (\Processador|ROM1|memROM~24_combout\ & \Processador|ROM1|memROM~22_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~523_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~576_combout\);

\RAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~577_combout\ = ( \Processador|ROM1|memROM~20_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~576_combout\ ) ) ) # ( !\Processador|ROM1|memROM~20_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~617_combout\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~621_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~621_combout\,
	datac => \RAM|ALT_INV_ram~617_combout\,
	datad => \RAM|ALT_INV_ram~576_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~577_combout\);

\Processador|MUX1|saida_MUX[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[4]~8_combout\ = (!\Processador|ROM1|memROM~22_combout\ & (((\Processador|MUX1|saida_MUX[6]~3_combout\ & \RAM|ram~577_combout\)))) # (\Processador|ROM1|memROM~22_combout\ & (((\Processador|MUX1|saida_MUX[6]~3_combout\ & 
-- \RAM|ram~577_combout\)) # (\Processador|decoder|saida[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~2_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[6]~3_combout\,
	datad => \RAM|ALT_INV_ram~577_combout\,
	combout => \Processador|MUX1|saida_MUX[4]~8_combout\);

\Processador|decoder|saida~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~4_combout\ = (!\Processador|ROM1|memROM~4_combout\ & (!\Processador|ROM1|memROM~7_combout\ & ((\Processador|ROM1|memROM~12_combout\) # (\Processador|ROM1|memROM~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000000010001000100000001000100010000000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|saida~4_combout\);

\Processador|ROM1|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~28_combout\ = (\Processador|ROM1|memROM~1_combout\ & \Processador|ROM1|memROM~27_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	combout => \Processador|ROM1|memROM~28_combout\);

\Processador|Banco_Reg|registrador~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~31_combout\ = ( \Processador|ROM1|memROM~28_combout\ & ( (!\Processador|ROM1|memROM~4_combout\ & ((!\Processador|ROM1|memROM~9_combout\ & ((\Processador|ROM1|memROM~12_combout\))) # (\Processador|ROM1|memROM~9_combout\ & 
-- (!\Processador|ROM1|memROM~7_combout\ & !\Processador|ROM1|memROM~12_combout\)))) # (\Processador|ROM1|memROM~4_combout\ & (!\Processador|ROM1|memROM~12_combout\ & ((!\Processador|ROM1|memROM~7_combout\) # (\Processador|ROM1|memROM~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010011011010000000000000000000000100110110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~28_combout\,
	combout => \Processador|Banco_Reg|registrador~31_combout\);

\Processador|Banco_Reg|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~1_sumout\,
	asdata => \Processador|MUX1|saida_MUX[4]~8_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~23_q\);

\Processador|Banco_Reg|registrador~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~32_combout\ = ( !\Processador|ROM1|memROM~28_combout\ & ( (!\Processador|ROM1|memROM~4_combout\ & ((!\Processador|ROM1|memROM~9_combout\ & ((\Processador|ROM1|memROM~12_combout\))) # (\Processador|ROM1|memROM~9_combout\ 
-- & (!\Processador|ROM1|memROM~7_combout\ & !\Processador|ROM1|memROM~12_combout\)))) # (\Processador|ROM1|memROM~4_combout\ & (!\Processador|ROM1|memROM~12_combout\ & ((!\Processador|ROM1|memROM~7_combout\) # (\Processador|ROM1|memROM~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110110100000000000000000000001001101101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~28_combout\,
	combout => \Processador|Banco_Reg|registrador~32_combout\);

\Processador|Banco_Reg|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~1_sumout\,
	asdata => \Processador|MUX1|saida_MUX[4]~8_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~15_q\);

\Processador|Banco_Reg|registrador~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~33_combout\ = (!\Processador|ROM1|memROM~1_combout\ & (((\Processador|Banco_Reg|registrador~15_q\)))) # (\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~27_combout\ & 
-- ((\Processador|Banco_Reg|registrador~15_q\))) # (\Processador|ROM1|memROM~27_combout\ & (\Processador|Banco_Reg|registrador~23_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~23_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~15_q\,
	combout => \Processador|Banco_Reg|registrador~33_combout\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~274_q\);

\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( \Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~274_q\ ) ) ) # ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datac => \RAM|ALT_INV_ram~274_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~563_combout\);

\RAM|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~146_q\);

\RAM|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~633_combout\ = ( !\Processador|ROM1|memROM~2_combout\ & ( (!\Processador|ROM1|memROM~22_combout\ & ((((\RAM|ram~563_combout\))))) # (\Processador|ROM1|memROM~22_combout\ & (!\Processador|ROM1|memROM~24_combout\ & 
-- (!\Processador|ROM1|memROM~20_combout\ & (\RAM|ram~146_q\)))) ) ) # ( \Processador|ROM1|memROM~2_combout\ & ( (!\Processador|ROM1|memROM~24_combout\ & (!\Processador|ROM1|memROM~20_combout\ & (\RAM|ram~26_q\ & (!\Processador|ROM1|memROM~22_combout\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001000000010000000000011111111000010000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datac => \RAM|ALT_INV_ram~26_q\,
	datad => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \RAM|ALT_INV_ram~563_combout\,
	datag => \RAM|ALT_INV_ram~146_q\,
	combout => \RAM|ram~633_combout\);

\RAM|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~314_q\);

\RAM|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~186_q\);

\RAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~58_q\);

\RAM|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~629_combout\ = ( !\Processador|ROM1|memROM~22_combout\ & ( (\Processador|ROM1|memROM~2_combout\ & (!\Processador|ROM1|memROM~20_combout\ & ((!\Processador|ROM1|memROM~24_combout\ & ((\RAM|ram~58_q\))) # (\Processador|ROM1|memROM~24_combout\ & 
-- (\RAM|ram~314_q\))))) ) ) # ( \Processador|ROM1|memROM~22_combout\ & ( ((\Processador|ROM1|memROM~2_combout\ & (\RAM|ram~186_q\ & (!\Processador|ROM1|memROM~24_combout\ & !\Processador|ROM1|memROM~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100010001000000110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~314_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~186_q\,
	datad => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datag => \RAM|ALT_INV_ram~58_q\,
	combout => \RAM|ram~629_combout\);

\RAM|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~290_q\);

\RAM|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~298_q\);

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\RAM|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~625_combout\ = ( !\Processador|ROM1|memROM~2_combout\ & ( (!\Processador|ROM1|memROM~22_combout\ & (!\Processador|ROM1|memROM~20_combout\ & ((!\Processador|ROM1|memROM~24_combout\ & ((\RAM|ram~34_q\))) # (\Processador|ROM1|memROM~24_combout\ & 
-- (\RAM|ram~290_q\))))) ) ) # ( \Processador|ROM1|memROM~2_combout\ & ( ((!\Processador|ROM1|memROM~22_combout\ & (\RAM|ram~298_q\ & (\Processador|ROM1|memROM~24_combout\ & !\Processador|ROM1|memROM~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110001000100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~290_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datac => \RAM|ALT_INV_ram~298_q\,
	datad => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datag => \RAM|ALT_INV_ram~34_q\,
	combout => \RAM|ram~625_combout\);

\RAM|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~522_q\);

\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( (\RAM|ram~522_q\ & (\Processador|ROM1|memROM~20_combout\ & (\Processador|ROM1|memROM~24_combout\ & \Processador|ROM1|memROM~22_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~522_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~564_combout\);

\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = ( \Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~564_combout\ ) ) ) # ( !\Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~625_combout\ ) ) ) # ( 
-- \Processador|ROM1|memROM~17_combout\ & ( !\Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~629_combout\ ) ) ) # ( !\Processador|ROM1|memROM~17_combout\ & ( !\Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~633_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~633_combout\,
	datab => \RAM|ALT_INV_ram~629_combout\,
	datac => \RAM|ALT_INV_ram~625_combout\,
	datad => \RAM|ALT_INV_ram~564_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM|ram~565_combout\);

\Processador|MUX1|saida_MUX[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[7]~5_combout\ = ( \Processador|ROM1|memROM~20_combout\ & ( (!\Processador|ROM1|memROM~4_combout\ & (((!\Processador|ROM1|memROM~9_combout\ & \Processador|ROM1|memROM~12_combout\)))) # (\Processador|ROM1|memROM~4_combout\ & 
-- (\Processador|ROM1|memROM~7_combout\ & (\Processador|ROM1|memROM~9_combout\ & !\Processador|ROM1|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011010000000000000000000000000000110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	combout => \Processador|MUX1|saida_MUX[7]~5_combout\);

\Processador|MUX1|saida_MUX[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[3]~6_combout\ = ((\Processador|MUX1|saida_MUX[6]~3_combout\ & \RAM|ram~565_combout\)) # (\Processador|MUX1|saida_MUX[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|MUX1|ALT_INV_saida_MUX[6]~3_combout\,
	datab => \RAM|ALT_INV_ram~565_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[7]~5_combout\,
	combout => \Processador|MUX1|saida_MUX[3]~6_combout\);

\RAM|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~313_q\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~313_q\ & (!\Processador|ROM1|memROM~13_combout\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\)))) ) ) # ( 
-- !\Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~313_q\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000000000001010100010101000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~313_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~521_q\);

\Processador|MUX1|saida_MUX[2]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[2]~16_combout\ = ( \RAM|ram~546_combout\ & ( \RAM|ram~521_q\ & ( (!\Processador|ROM1|memROM~24_combout\ & (!\Processador|ROM1|memROM~20_combout\ & ((\Processador|ROM1|memROM~15_combout\) # 
-- (\Processador|ROM1|memROM~22_combout\)))) # (\Processador|ROM1|memROM~24_combout\ & ((!\Processador|ROM1|memROM~20_combout\) # ((\Processador|ROM1|memROM~22_combout\ & \Processador|ROM1|memROM~15_combout\)))) ) ) ) # ( !\RAM|ram~546_combout\ & ( 
-- \RAM|ram~521_q\ & ( (!\Processador|ROM1|memROM~24_combout\ & (!\Processador|ROM1|memROM~20_combout\ & ((\Processador|ROM1|memROM~15_combout\) # (\Processador|ROM1|memROM~22_combout\)))) # (\Processador|ROM1|memROM~24_combout\ & 
-- (\Processador|ROM1|memROM~20_combout\ & (\Processador|ROM1|memROM~22_combout\ & \Processador|ROM1|memROM~15_combout\))) ) ) ) # ( \RAM|ram~546_combout\ & ( !\RAM|ram~521_q\ & ( (!\Processador|ROM1|memROM~20_combout\ & 
-- (((\Processador|ROM1|memROM~15_combout\) # (\Processador|ROM1|memROM~22_combout\)) # (\Processador|ROM1|memROM~24_combout\))) ) ) ) # ( !\RAM|ram~546_combout\ & ( !\RAM|ram~521_q\ & ( (!\Processador|ROM1|memROM~24_combout\ & 
-- (!\Processador|ROM1|memROM~20_combout\ & ((\Processador|ROM1|memROM~15_combout\) # (\Processador|ROM1|memROM~22_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010001000010011001100110000001000100010010100110011001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datae => \RAM|ALT_INV_ram~546_combout\,
	dataf => \RAM|ALT_INV_ram~521_q\,
	combout => \Processador|MUX1|saida_MUX[2]~16_combout\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~57_q\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~57_q\ ) ) ) # ( !\Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~25_q\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~17_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datac => \RAM|ALT_INV_ram~25_q\,
	datad => \RAM|ALT_INV_ram~57_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~273_q\);

\RAM|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~289_q\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \Processador|ROM1|memROM~13_combout\ & ( \Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~289_q\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) ) ) # ( 
-- !\Processador|ROM1|memROM~13_combout\ & ( \Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~273_q\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) ) ) # ( \Processador|ROM1|memROM~13_combout\ & ( 
-- !\Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~273_q\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) ) ) # ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~273_q\ 
-- & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001010101010100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~273_q\,
	datab => \RAM|ALT_INV_ram~289_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~544_combout\);

\RAM|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~297_q\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( \Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~297_q\ & (\Processador|ROM1|memROM~13_combout\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010000000000000000000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~297_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~545_combout\);

\Processador|MUX1|saida_MUX[2]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[2]~17_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( \Processador|MUX1|saida_MUX[2]~16_combout\ & ( (\Processador|ROM1|memROM~24_combout\ & !\RAM|ram~545_combout\) ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( 
-- \Processador|MUX1|saida_MUX[2]~16_combout\ & ( (\Processador|ROM1|memROM~24_combout\ & !\RAM|ram~544_combout\) ) ) ) # ( \Processador|ROM1|memROM~2_combout\ & ( !\Processador|MUX1|saida_MUX[2]~16_combout\ & ( (!\Processador|ROM1|memROM~24_combout\ & 
-- (!\RAM|ram~541_combout\)) # (\Processador|ROM1|memROM~24_combout\ & ((!\RAM|ram~545_combout\))) ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|MUX1|saida_MUX[2]~16_combout\ & ( (!\Processador|ROM1|memROM~24_combout\ & 
-- (!\RAM|ram~541_combout\)) # (\Processador|ROM1|memROM~24_combout\ & ((!\RAM|ram~544_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101100011011000110111011000100001010000010100000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datab => \RAM|ALT_INV_ram~541_combout\,
	datac => \RAM|ALT_INV_ram~544_combout\,
	datad => \RAM|ALT_INV_ram~545_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[2]~16_combout\,
	combout => \Processador|MUX1|saida_MUX[2]~17_combout\);

\RAM|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~145_q\);

\RAM|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~185_q\);

\Processador|ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~0_combout\ = ( \Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT\(2) & (((\Processador|PC|DOUT\(4))))) # (\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & \Processador|PC|DOUT\(4))) # 
-- (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(1) & !\Processador|PC|DOUT\(4))))) ) ) # ( !\Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(4)))) # 
-- (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000001000000000011111100000010000000010000000000111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	datae => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~0_combout\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \Processador|ROM1|memROM~0_combout\ & ( (!\Processador|ROM1|memROM~1_combout\ & (\RAM|ram~145_q\)) # (\Processador|ROM1|memROM~1_combout\ & (((\RAM|ram~185_q\ & \Processador|ROM1|memROM~16_combout\)))) ) ) # ( 
-- !\Processador|ROM1|memROM~0_combout\ & ( (\RAM|ram~145_q\ & ((!\Processador|ROM1|memROM~1_combout\) # (!\Processador|ROM1|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010100000101001101010101010100000101000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~145_q\,
	datab => \RAM|ALT_INV_ram~185_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~16_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~542_combout\);

\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( \Processador|ROM1|memROM~0_combout\ & ( \Processador|ROM1|memROM~10_combout\ & ( (\RAM|ram~33_q\ & (\Processador|PC|DOUT\(5) & ((!\Processador|ROM1|memROM~1_combout\) # (!\Processador|ROM1|memROM~16_combout\)))) ) ) ) # ( 
-- !\Processador|ROM1|memROM~0_combout\ & ( \Processador|ROM1|memROM~10_combout\ & ( (\RAM|ram~33_q\ & ((!\Processador|ROM1|memROM~1_combout\) # (!\Processador|ROM1|memROM~16_combout\))) ) ) ) # ( \Processador|ROM1|memROM~0_combout\ & ( 
-- !\Processador|ROM1|memROM~10_combout\ & ( (\RAM|ram~33_q\ & ((!\Processador|ROM1|memROM~1_combout\) # (!\Processador|ROM1|memROM~16_combout\))) ) ) ) # ( !\Processador|ROM1|memROM~0_combout\ & ( !\Processador|ROM1|memROM~10_combout\ & ( (\RAM|ram~33_q\ & 
-- ((!\Processador|ROM1|memROM~1_combout\) # (!\Processador|ROM1|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010001010100010101000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~33_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~16_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(5),
	datae => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~543_combout\);

\Processador|MUX1|saida_MUX[2]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[2]~15_combout\ = (!\Processador|ROM1|memROM~22_combout\ & (((!\Processador|ROM1|memROM~15_combout\) # (\RAM|ram~543_combout\)))) # (\Processador|ROM1|memROM~22_combout\ & (\RAM|ram~542_combout\ & 
-- ((!\Processador|ROM1|memROM~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100110000111101010011000011110101001100001111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~542_combout\,
	datab => \RAM|ALT_INV_ram~543_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	combout => \Processador|MUX1|saida_MUX[2]~15_combout\);

\Processador|MUX1|saida_MUX[2]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[2]~18_combout\ = ( \Processador|MUX1|saida_MUX[2]~15_combout\ & ( \Processador|MUX1|saida_MUX[2]~16_combout\ & ( (!\Processador|ROM1|memROM~17_combout\ & (((!\Processador|ROM1|memROM~20_combout\)))) # 
-- (\Processador|ROM1|memROM~17_combout\ & ((!\Processador|ROM1|memROM~24_combout\ & (!\Processador|ROM1|memROM~20_combout\)) # (\Processador|ROM1|memROM~24_combout\ & ((\Processador|ROM1|memROM~2_combout\))))) ) ) ) # ( 
-- !\Processador|MUX1|saida_MUX[2]~15_combout\ & ( \Processador|MUX1|saida_MUX[2]~16_combout\ & ( (\Processador|ROM1|memROM~24_combout\ & ((!\Processador|ROM1|memROM~17_combout\ & (!\Processador|ROM1|memROM~20_combout\)) # 
-- (\Processador|ROM1|memROM~17_combout\ & ((\Processador|ROM1|memROM~2_combout\))))) ) ) ) # ( \Processador|MUX1|saida_MUX[2]~15_combout\ & ( !\Processador|MUX1|saida_MUX[2]~16_combout\ & ( (!\Processador|ROM1|memROM~20_combout\ & 
-- ((!\Processador|ROM1|memROM~17_combout\) # (!\Processador|ROM1|memROM~24_combout\))) ) ) ) # ( !\Processador|MUX1|saida_MUX[2]~15_combout\ & ( !\Processador|MUX1|saida_MUX[2]~16_combout\ & ( (!\Processador|ROM1|memROM~17_combout\ & 
-- (\Processador|ROM1|memROM~24_combout\ & !\Processador|ROM1|memROM~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000111000001110000000100000001100011110000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datae => \Processador|MUX1|ALT_INV_saida_MUX[2]~15_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[2]~16_combout\,
	combout => \Processador|MUX1|saida_MUX[2]~18_combout\);

\Processador|MUX1|saida_MUX[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[2]~4_combout\ = ( \Processador|MUX1|saida_MUX[2]~17_combout\ & ( \Processador|MUX1|saida_MUX[2]~18_combout\ & ( (\Processador|ROM1|memROM~17_combout\ & (((\Processador|MUX1|saida_MUX[6]~3_combout\ & 
-- \Processador|MUX1|saida_MUX[2]~16_combout\)) # (\Processador|decoder|saida[6]~2_combout\))) ) ) ) # ( !\Processador|MUX1|saida_MUX[2]~17_combout\ & ( \Processador|MUX1|saida_MUX[2]~18_combout\ & ( ((\Processador|ROM1|memROM~17_combout\ & 
-- \Processador|decoder|saida[6]~2_combout\)) # (\Processador|MUX1|saida_MUX[6]~3_combout\) ) ) ) # ( \Processador|MUX1|saida_MUX[2]~17_combout\ & ( !\Processador|MUX1|saida_MUX[2]~18_combout\ & ( (\Processador|ROM1|memROM~17_combout\ & 
-- \Processador|decoder|saida[6]~2_combout\) ) ) ) # ( !\Processador|MUX1|saida_MUX[2]~17_combout\ & ( !\Processador|MUX1|saida_MUX[2]~18_combout\ & ( (\Processador|ROM1|memROM~17_combout\ & \Processador|decoder|saida[6]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100011111000111110001000100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~2_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[6]~3_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[2]~16_combout\,
	datae => \Processador|MUX1|ALT_INV_saida_MUX[2]~17_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[2]~18_combout\,
	combout => \Processador|MUX1|saida_MUX[2]~4_combout\);

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~144_q\);

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( !\Processador|ROM1|memROM~22_combout\ & ( \Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~32_q\ ) ) ) # ( \Processador|ROM1|memROM~22_combout\ & ( !\Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~144_q\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~22_combout\ & ( !\Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datab => \RAM|ALT_INV_ram~144_q\,
	datac => \RAM|ALT_INV_ram~32_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM|ram~555_combout\);

\Processador|MUX1|saida_MUX[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[1]~12_combout\ = ( \Processador|ROM1|memROM~15_combout\ & ( (!\Processador|ROM1|memROM~4_combout\ & (((!\Processador|ROM1|memROM~9_combout\ & \Processador|ROM1|memROM~12_combout\)))) # (\Processador|ROM1|memROM~4_combout\ & 
-- (\Processador|ROM1|memROM~7_combout\ & (\Processador|ROM1|memROM~9_combout\ & !\Processador|ROM1|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011010000000000000000000000000000110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	combout => \Processador|MUX1|saida_MUX[1]~12_combout\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( \Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~24_q\ & (!\Processador|ROM1|memROM~13_combout\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\)))) ) ) # ( 
-- !\Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~24_q\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000000000001010100010101000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~556_combout\);

\RAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~56_q\);

\RAM|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~184_q\);

\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( \Processador|ROM1|memROM~14_combout\ & ( (!\Processador|ROM1|memROM~6_combout\ & (\RAM|ram~56_q\)) # (\Processador|ROM1|memROM~6_combout\ & ((!\Processador|ROM1|memROM~21_combout\ & 
-- (\RAM|ram~56_q\)) # (\Processador|ROM1|memROM~21_combout\ & ((\RAM|ram~184_q\))))) ) ) ) # ( \Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~14_combout\ & ( (!\Processador|ROM1|memROM~6_combout\ & (\RAM|ram~56_q\)) # 
-- (\Processador|ROM1|memROM~6_combout\ & ((!\Processador|ROM1|memROM~21_combout\ & (\RAM|ram~56_q\)) # (\Processador|ROM1|memROM~21_combout\ & ((\RAM|ram~184_q\))))) ) ) ) # ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~14_combout\ & 
-- ( (!\Processador|ROM1|memROM~6_combout\ & (\RAM|ram~56_q\)) # (\Processador|ROM1|memROM~6_combout\ & ((!\Processador|ROM1|memROM~21_combout\ & (\RAM|ram~56_q\)) # (\Processador|ROM1|memROM~21_combout\ & ((\RAM|ram~184_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010011010101010101001101010101010100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~56_q\,
	datab => \RAM|ALT_INV_ram~184_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~557_combout\);

\Processador|MUX1|saida_MUX[1]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[1]~13_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( (!\Processador|ROM1|memROM~20_combout\ & ((!\Processador|ROM1|memROM~17_combout\ & (\RAM|ram~556_combout\)) # (\Processador|ROM1|memROM~17_combout\ & 
-- ((\RAM|ram~557_combout\))))) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( (!\Processador|ROM1|memROM~20_combout\ & !\Processador|ROM1|memROM~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000001000100000101010101010000000000010001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datab => \RAM|ALT_INV_ram~556_combout\,
	datac => \RAM|ALT_INV_ram~557_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \Processador|MUX1|saida_MUX[1]~13_combout\);

\RAM|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~272_q\);

\RAM|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~288_q\);

\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = ( \Processador|ROM1|memROM~13_combout\ & ( \Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~288_q\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) ) ) # ( 
-- !\Processador|ROM1|memROM~13_combout\ & ( \Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~272_q\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) ) ) # ( \Processador|ROM1|memROM~13_combout\ & ( 
-- !\Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~272_q\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) ) ) # ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~272_q\ 
-- & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001010101010100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~272_q\,
	datab => \RAM|ALT_INV_ram~288_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~558_combout\);

\RAM|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~296_q\);

\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( \Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~296_q\ & (\Processador|ROM1|memROM~13_combout\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010000000000000000000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~296_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~559_combout\);

\RAM|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~312_q\);

\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = ( \Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~312_q\ & (!\Processador|ROM1|memROM~13_combout\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\)))) ) ) # ( 
-- !\Processador|ROM1|memROM~14_combout\ & ( (\RAM|ram~312_q\ & ((!\Processador|ROM1|memROM~6_combout\) # (!\Processador|ROM1|memROM~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000000000001010100010101000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~312_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	combout => \RAM|ram~560_combout\);

\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~560_combout\ ) ) ) # ( !\Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~559_combout\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~17_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~558_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~558_combout\,
	datac => \RAM|ALT_INV_ram~559_combout\,
	datad => \RAM|ALT_INV_ram~560_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~561_combout\);

\RAM|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~520_q\);

\RAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~562_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( (\RAM|ram~520_q\ & (\Processador|ROM1|memROM~22_combout\ & (\Processador|ROM1|memROM~15_combout\ & \Processador|ROM1|memROM~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~520_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~562_combout\);

\Processador|MUX1|saida_MUX[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[1]~14_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( (!\Processador|ROM1|memROM~24_combout\) # ((!\Processador|ROM1|memROM~20_combout\ & (\RAM|ram~561_combout\)) # (\Processador|ROM1|memROM~20_combout\ & 
-- ((\RAM|ram~562_combout\)))) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( (\Processador|ROM1|memROM~24_combout\ & ((!\Processador|ROM1|memROM~20_combout\ & (\RAM|ram~561_combout\)) # (\Processador|ROM1|memROM~20_combout\ & ((\RAM|ram~562_combout\))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101011111001100000101000000111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~561_combout\,
	datab => \RAM|ALT_INV_ram~562_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \Processador|MUX1|saida_MUX[1]~14_combout\);

\Processador|MUX1|saida_MUX[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[1]~7_combout\ = ( \Processador|MUX1|saida_MUX[1]~13_combout\ & ( \Processador|MUX1|saida_MUX[1]~14_combout\ & ( (\Processador|MUX1|saida_MUX[1]~12_combout\) # (\Processador|MUX1|saida_MUX[6]~3_combout\) ) ) ) # ( 
-- !\Processador|MUX1|saida_MUX[1]~13_combout\ & ( \Processador|MUX1|saida_MUX[1]~14_combout\ & ( ((\Processador|MUX1|saida_MUX[6]~3_combout\ & \Processador|ROM1|memROM~24_combout\)) # (\Processador|MUX1|saida_MUX[1]~12_combout\) ) ) ) # ( 
-- \Processador|MUX1|saida_MUX[1]~13_combout\ & ( !\Processador|MUX1|saida_MUX[1]~14_combout\ & ( ((\Processador|MUX1|saida_MUX[6]~3_combout\ & (!\Processador|ROM1|memROM~24_combout\ & \RAM|ram~555_combout\))) # (\Processador|MUX1|saida_MUX[1]~12_combout\) ) 
-- ) ) # ( !\Processador|MUX1|saida_MUX[1]~13_combout\ & ( !\Processador|MUX1|saida_MUX[1]~14_combout\ & ( \Processador|MUX1|saida_MUX[1]~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000001001111111100010001111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|MUX1|ALT_INV_saida_MUX[6]~3_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datac => \RAM|ALT_INV_ram~555_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[1]~12_combout\,
	datae => \Processador|MUX1|ALT_INV_saida_MUX[1]~13_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[1]~14_combout\,
	combout => \Processador|MUX1|saida_MUX[1]~7_combout\);

\Processador|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~34_cout\ = CARRY(( ((!\Processador|ULA1|Equal1~0_combout\) # (\Processador|decoder|Equal13~1_combout\)) # (\Processador|decoder|Equal13~2_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_Equal13~2_combout\,
	datac => \Processador|decoder|ALT_INV_Equal13~1_combout\,
	datad => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	cin => GND,
	cout => \Processador|ULA1|Add0~34_cout\);

\Processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~17_sumout\ = SUM(( \Processador|Banco_Reg|registrador~30_combout\ ) + ( !\Processador|MUX1|saida_MUX[0]~2_combout\ $ (((!\Processador|decoder|Equal13~2_combout\ & (!\Processador|decoder|Equal13~1_combout\ & 
-- \Processador|ULA1|Equal1~0_combout\)))) ) + ( \Processador|ULA1|Add0~34_cout\ ))
-- \Processador|ULA1|Add0~18\ = CARRY(( \Processador|Banco_Reg|registrador~30_combout\ ) + ( !\Processador|MUX1|saida_MUX[0]~2_combout\ $ (((!\Processador|decoder|Equal13~2_combout\ & (!\Processador|decoder|Equal13~1_combout\ & 
-- \Processador|ULA1|Equal1~0_combout\)))) ) + ( \Processador|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011001010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|MUX1|ALT_INV_saida_MUX[0]~2_combout\,
	datab => \Processador|decoder|ALT_INV_Equal13~2_combout\,
	datac => \Processador|decoder|ALT_INV_Equal13~1_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~30_combout\,
	dataf => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	cin => \Processador|ULA1|Add0~34_cout\,
	sumout => \Processador|ULA1|Add0~17_sumout\,
	cout => \Processador|ULA1|Add0~18\);

\Processador|Banco_Reg|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~17_sumout\,
	asdata => \Processador|MUX1|saida_MUX[0]~2_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~19_q\);

\Processador|Banco_Reg|registrador~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~17_sumout\,
	asdata => \Processador|MUX1|saida_MUX[0]~2_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~11_q\);

\Processador|Banco_Reg|registrador~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~30_combout\ = (!\Processador|ROM1|memROM~1_combout\ & (((\Processador|Banco_Reg|registrador~11_q\)))) # (\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~27_combout\ & 
-- ((\Processador|Banco_Reg|registrador~11_q\))) # (\Processador|ROM1|memROM~27_combout\ & (\Processador|Banco_Reg|registrador~19_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~19_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~11_q\,
	combout => \Processador|Banco_Reg|registrador~30_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~271_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \Processador|ROM1|memROM~14_combout\ & ( \Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~271_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) ) ) # ( 
-- !\Processador|ROM1|memROM~14_combout\ & ( \Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~15_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) ) ) # ( \Processador|ROM1|memROM~14_combout\ & ( 
-- !\Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~15_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) ) ) # ( !\Processador|ROM1|memROM~14_combout\ & ( !\Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~15_q\ 
-- & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001010101010100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datab => \RAM|ALT_INV_ram~271_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~23_q\ & (!\Processador|ROM1|memROM~14_combout\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\)))) ) ) # ( 
-- !\Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~23_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000000000001010100010101000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~55_q\);

\RAM|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~311_q\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \Processador|ROM1|memROM~14_combout\ & ( \Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~311_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) ) ) # ( 
-- !\Processador|ROM1|memROM~14_combout\ & ( \Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~55_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) ) ) # ( \Processador|ROM1|memROM~14_combout\ & ( 
-- !\Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~55_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) ) ) # ( !\Processador|ROM1|memROM~14_combout\ & ( !\Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~55_q\ 
-- & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001010101010100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~55_q\,
	datab => \RAM|ALT_INV_ram~311_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~529_combout\ ) ) ) # ( !\Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~528_combout\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~17_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datac => \RAM|ALT_INV_ram~528_combout\,
	datad => \RAM|ALT_INV_ram~529_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~143_q\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~143_q\ & (!\Processador|ROM1|memROM~14_combout\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\)))) ) ) # ( 
-- !\Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~143_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000000000001010100010101000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~143_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~183_q\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~183_q\ & (!\Processador|ROM1|memROM~14_combout\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\)))) ) ) # ( 
-- !\Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~183_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000000000001010100010101000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~183_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~532_combout\ ) ) ) # ( !\Processador|ROM1|memROM~17_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~531_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~531_combout\,
	datad => \RAM|ALT_INV_ram~532_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \Processador|ROM1|memROM~16_combout\ & ( (\RAM|ram~31_q\ & (!\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\)))) ) ) # ( 
-- !\Processador|ROM1|memROM~16_combout\ & ( (\RAM|ram~31_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000000000001010100010101000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~31_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~287_q\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \Processador|ROM1|memROM~16_combout\ & ( (\RAM|ram~287_q\ & (!\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\)))) ) ) # ( 
-- !\Processador|ROM1|memROM~16_combout\ & ( (\RAM|ram~287_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000000000001010100010101000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~287_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~295_q\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( \Processador|ROM1|memROM~16_combout\ & ( (\RAM|ram~295_q\ & (!\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\)))) ) ) # ( 
-- !\Processador|ROM1|memROM~16_combout\ & ( (\RAM|ram~295_q\ & ((!\Processador|ROM1|memROM~18_combout\) # (!\Processador|ROM1|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000000000001010100010101000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~295_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~16_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( \Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~536_combout\ ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( \Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~535_combout\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~534_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~534_combout\,
	datac => \RAM|ALT_INV_ram~535_combout\,
	datad => \RAM|ALT_INV_ram~536_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~519_q\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \Processador|ROM1|memROM~23_combout\ & ( (\RAM|ram~519_q\ & (\Processador|ROM1|memROM~0_combout\ & (\Processador|ROM1|memROM~1_combout\ & \Processador|ROM1|memROM~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~519_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \Processador|ROM1|memROM~20_combout\ & ( \Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~538_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~538_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \Processador|ROM1|memROM~22_combout\ & ( \Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~539_combout\ ) ) ) # ( !\Processador|ROM1|memROM~22_combout\ & ( \Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~537_combout\ ) ) ) # ( 
-- \Processador|ROM1|memROM~22_combout\ & ( !\Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~533_combout\ ) ) ) # ( !\Processador|ROM1|memROM~22_combout\ & ( !\Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~530_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~530_combout\,
	datab => \RAM|ALT_INV_ram~533_combout\,
	datac => \RAM|ALT_INV_ram~537_combout\,
	datad => \RAM|ALT_INV_ram~539_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM|ram~540_combout\);

\Processador|decoder|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida[1]~3_combout\ = (!\Processador|ROM1|memROM~4_combout\ & ((!\Processador|ROM1|memROM~7_combout\ & (\Processador|ROM1|memROM~9_combout\ & !\Processador|ROM1|memROM~12_combout\)) # (\Processador|ROM1|memROM~7_combout\ & 
-- (!\Processador|ROM1|memROM~9_combout\ & \Processador|ROM1|memROM~12_combout\)))) # (\Processador|ROM1|memROM~4_combout\ & (!\Processador|ROM1|memROM~12_combout\ & ((!\Processador|ROM1|memROM~7_combout\) # (\Processador|ROM1|memROM~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100100000010011010010000001001101001000000100110100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|saida[1]~3_combout\);

\interfaceBaseTempo|baseTempo|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~85_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(0) ) + ( VCC ) + ( !VCC ))
-- \interfaceBaseTempo|baseTempo|Add0~86\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(0),
	cin => GND,
	sumout => \interfaceBaseTempo|baseTempo|Add0~85_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~86\);

\interfaceBaseTempo|baseTempo|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~1_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(19) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~42\ ))
-- \interfaceBaseTempo|baseTempo|Add0~2\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(19) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(19),
	cin => \interfaceBaseTempo|baseTempo|Add0~42\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~1_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~2\);

\interfaceBaseTempo|baseTempo|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~25_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(20) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~2\ ))
-- \interfaceBaseTempo|baseTempo|Add0~26\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(20) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(20),
	cin => \interfaceBaseTempo|baseTempo|Add0~2\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~25_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~26\);

\interfaceBaseTempo|baseTempo|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~25_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(20));

\interfaceBaseTempo|baseTempo|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~21_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(21) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~26\ ))
-- \interfaceBaseTempo|baseTempo|Add0~22\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(21) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(21),
	cin => \interfaceBaseTempo|baseTempo|Add0~26\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~21_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~22\);

\interfaceBaseTempo|baseTempo|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~21_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(21));

\interfaceBaseTempo|baseTempo|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~13_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(22) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~22\ ))
-- \interfaceBaseTempo|baseTempo|Add0~14\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(22) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(22),
	cin => \interfaceBaseTempo|baseTempo|Add0~22\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~13_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~14\);

\interfaceBaseTempo|baseTempo|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~13_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(22));

\interfaceBaseTempo|baseTempo|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~9_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(23) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~14\ ))
-- \interfaceBaseTempo|baseTempo|Add0~10\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(23) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(23),
	cin => \interfaceBaseTempo|baseTempo|Add0~14\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~9_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~10\);

\interfaceBaseTempo|baseTempo|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~9_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(23));

\interfaceBaseTempo|baseTempo|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~5_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(24) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(24),
	cin => \interfaceBaseTempo|baseTempo|Add0~10\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~5_sumout\);

\interfaceBaseTempo|baseTempo|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~5_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(24));

\interfaceBaseTempo|baseTempo|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Equal0~0_combout\ = ( \interfaceBaseTempo|baseTempo|contador\(21) & ( \interfaceBaseTempo|baseTempo|contador\(20) & ( (\interfaceBaseTempo|baseTempo|contador\(24) & (!\interfaceBaseTempo|baseTempo|contador\(23) & 
-- (\interfaceBaseTempo|baseTempo|contador\(22) & \interfaceBaseTempo|baseTempo|contador\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(24),
	datab => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(23),
	datac => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(22),
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(14),
	datae => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(21),
	dataf => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(20),
	combout => \interfaceBaseTempo|baseTempo|Equal0~0_combout\);

\interfaceBaseTempo|baseTempo|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Equal0~1_combout\ = ( !\interfaceBaseTempo|baseTempo|contador\(17) & ( \interfaceBaseTempo|baseTempo|contador\(16) & ( (\interfaceBaseTempo|baseTempo|contador\(11) & (\interfaceBaseTempo|baseTempo|contador\(12) & 
-- (\interfaceBaseTempo|baseTempo|contador\(13) & \interfaceBaseTempo|baseTempo|contador\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(11),
	datab => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(12),
	datac => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(13),
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(18),
	datae => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(17),
	dataf => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(16),
	combout => \interfaceBaseTempo|baseTempo|Equal0~1_combout\);

\interfaceBaseTempo|baseTempo|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Equal0~2_combout\ = ( !\interfaceBaseTempo|baseTempo|contador\(4) & ( !\interfaceBaseTempo|baseTempo|contador\(3) & ( (!\interfaceBaseTempo|baseTempo|contador\(15) & (!\interfaceBaseTempo|baseTempo|contador\(7) & 
-- (\interfaceBaseTempo|baseTempo|contador\(6) & !\interfaceBaseTempo|baseTempo|contador\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(15),
	datab => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(7),
	datac => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(6),
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(5),
	datae => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(4),
	dataf => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(3),
	combout => \interfaceBaseTempo|baseTempo|Equal0~2_combout\);

\interfaceBaseTempo|baseTempo|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Equal0~3_combout\ = ( !\interfaceBaseTempo|baseTempo|contador\(9) & ( !\interfaceBaseTempo|baseTempo|contador\(10) & ( (!\interfaceBaseTempo|baseTempo|contador\(2) & (!\interfaceBaseTempo|baseTempo|contador\(1) & 
-- (!\interfaceBaseTempo|baseTempo|contador\(0) & !\interfaceBaseTempo|baseTempo|contador\(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(2),
	datab => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(1),
	datac => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(0),
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(8),
	datae => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(9),
	dataf => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(10),
	combout => \interfaceBaseTempo|baseTempo|Equal0~3_combout\);

\interfaceBaseTempo|baseTempo|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Equal0~4_combout\ = ( \interfaceBaseTempo|baseTempo|Equal0~3_combout\ & ( (\interfaceBaseTempo|baseTempo|contador\(19) & (\interfaceBaseTempo|baseTempo|Equal0~0_combout\ & (\interfaceBaseTempo|baseTempo|Equal0~1_combout\ & 
-- \interfaceBaseTempo|baseTempo|Equal0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(19),
	datab => \interfaceBaseTempo|baseTempo|ALT_INV_Equal0~0_combout\,
	datac => \interfaceBaseTempo|baseTempo|ALT_INV_Equal0~1_combout\,
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_Equal0~2_combout\,
	datae => \interfaceBaseTempo|baseTempo|ALT_INV_Equal0~3_combout\,
	combout => \interfaceBaseTempo|baseTempo|Equal0~4_combout\);

\interfaceBaseTempo|baseTempo|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~85_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(0));

\interfaceBaseTempo|baseTempo|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~81_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(1) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~86\ ))
-- \interfaceBaseTempo|baseTempo|Add0~82\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(1) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(1),
	cin => \interfaceBaseTempo|baseTempo|Add0~86\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~81_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~82\);

\interfaceBaseTempo|baseTempo|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~81_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(1));

\interfaceBaseTempo|baseTempo|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~77_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(2) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~82\ ))
-- \interfaceBaseTempo|baseTempo|Add0~78\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(2) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(2),
	cin => \interfaceBaseTempo|baseTempo|Add0~82\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~77_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~78\);

\interfaceBaseTempo|baseTempo|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~77_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(2));

\interfaceBaseTempo|baseTempo|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~73_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(3) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~78\ ))
-- \interfaceBaseTempo|baseTempo|Add0~74\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(3) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(3),
	cin => \interfaceBaseTempo|baseTempo|Add0~78\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~73_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~74\);

\interfaceBaseTempo|baseTempo|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~73_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(3));

\interfaceBaseTempo|baseTempo|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~69_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(4) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~74\ ))
-- \interfaceBaseTempo|baseTempo|Add0~70\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(4) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(4),
	cin => \interfaceBaseTempo|baseTempo|Add0~74\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~69_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~70\);

\interfaceBaseTempo|baseTempo|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~69_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(4));

\interfaceBaseTempo|baseTempo|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~65_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(5) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~70\ ))
-- \interfaceBaseTempo|baseTempo|Add0~66\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(5) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(5),
	cin => \interfaceBaseTempo|baseTempo|Add0~70\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~65_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~66\);

\interfaceBaseTempo|baseTempo|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~65_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(5));

\interfaceBaseTempo|baseTempo|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~61_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(6) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~66\ ))
-- \interfaceBaseTempo|baseTempo|Add0~62\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(6) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(6),
	cin => \interfaceBaseTempo|baseTempo|Add0~66\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~61_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~62\);

\interfaceBaseTempo|baseTempo|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~61_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(6));

\interfaceBaseTempo|baseTempo|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~57_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(7) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~62\ ))
-- \interfaceBaseTempo|baseTempo|Add0~58\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(7) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(7),
	cin => \interfaceBaseTempo|baseTempo|Add0~62\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~57_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~58\);

\interfaceBaseTempo|baseTempo|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~57_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(7));

\interfaceBaseTempo|baseTempo|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~89_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(8) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~58\ ))
-- \interfaceBaseTempo|baseTempo|Add0~90\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(8) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(8),
	cin => \interfaceBaseTempo|baseTempo|Add0~58\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~89_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~90\);

\interfaceBaseTempo|baseTempo|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~89_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(8));

\interfaceBaseTempo|baseTempo|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~93_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(9) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~90\ ))
-- \interfaceBaseTempo|baseTempo|Add0~94\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(9) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(9),
	cin => \interfaceBaseTempo|baseTempo|Add0~90\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~93_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~94\);

\interfaceBaseTempo|baseTempo|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~93_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(9));

\interfaceBaseTempo|baseTempo|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~97_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(10) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~94\ ))
-- \interfaceBaseTempo|baseTempo|Add0~98\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(10) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(10),
	cin => \interfaceBaseTempo|baseTempo|Add0~94\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~97_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~98\);

\interfaceBaseTempo|baseTempo|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~97_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(10));

\interfaceBaseTempo|baseTempo|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~29_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(11) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~98\ ))
-- \interfaceBaseTempo|baseTempo|Add0~30\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(11) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(11),
	cin => \interfaceBaseTempo|baseTempo|Add0~98\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~29_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~30\);

\interfaceBaseTempo|baseTempo|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~29_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(11));

\interfaceBaseTempo|baseTempo|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~33_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(12) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~30\ ))
-- \interfaceBaseTempo|baseTempo|Add0~34\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(12) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(12),
	cin => \interfaceBaseTempo|baseTempo|Add0~30\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~33_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~34\);

\interfaceBaseTempo|baseTempo|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~33_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(12));

\interfaceBaseTempo|baseTempo|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~37_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(13) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~34\ ))
-- \interfaceBaseTempo|baseTempo|Add0~38\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(13) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(13),
	cin => \interfaceBaseTempo|baseTempo|Add0~34\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~37_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~38\);

\interfaceBaseTempo|baseTempo|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~37_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(13));

\interfaceBaseTempo|baseTempo|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~17_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(14) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~38\ ))
-- \interfaceBaseTempo|baseTempo|Add0~18\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(14) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(14),
	cin => \interfaceBaseTempo|baseTempo|Add0~38\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~17_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~18\);

\interfaceBaseTempo|baseTempo|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~17_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(14));

\interfaceBaseTempo|baseTempo|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~53_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(15) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~18\ ))
-- \interfaceBaseTempo|baseTempo|Add0~54\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(15) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(15),
	cin => \interfaceBaseTempo|baseTempo|Add0~18\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~53_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~54\);

\interfaceBaseTempo|baseTempo|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~53_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(15));

\interfaceBaseTempo|baseTempo|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~49_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(16) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~54\ ))
-- \interfaceBaseTempo|baseTempo|Add0~50\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(16) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(16),
	cin => \interfaceBaseTempo|baseTempo|Add0~54\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~49_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~50\);

\interfaceBaseTempo|baseTempo|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~49_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(16));

\interfaceBaseTempo|baseTempo|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~45_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(17) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~50\ ))
-- \interfaceBaseTempo|baseTempo|Add0~46\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(17) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(17),
	cin => \interfaceBaseTempo|baseTempo|Add0~50\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~45_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~46\);

\interfaceBaseTempo|baseTempo|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~45_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(17));

\interfaceBaseTempo|baseTempo|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|Add0~41_sumout\ = SUM(( \interfaceBaseTempo|baseTempo|contador\(18) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~46\ ))
-- \interfaceBaseTempo|baseTempo|Add0~42\ = CARRY(( \interfaceBaseTempo|baseTempo|contador\(18) ) + ( GND ) + ( \interfaceBaseTempo|baseTempo|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(18),
	cin => \interfaceBaseTempo|baseTempo|Add0~46\,
	sumout => \interfaceBaseTempo|baseTempo|Add0~41_sumout\,
	cout => \interfaceBaseTempo|baseTempo|Add0~42\);

\interfaceBaseTempo|baseTempo|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~41_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(18));

\interfaceBaseTempo|baseTempo|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|Add0~1_sumout\,
	sclr => \interfaceBaseTempo|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|contador\(19));

\interfaceBaseTempo|baseTempo|tick~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \interfaceBaseTempo|baseTempo|tick~0_combout\ = ( \interfaceBaseTempo|baseTempo|Equal0~2_combout\ & ( \interfaceBaseTempo|baseTempo|Equal0~3_combout\ & ( !\interfaceBaseTempo|baseTempo|tick~q\ $ (((!\interfaceBaseTempo|baseTempo|contador\(19)) # 
-- ((!\interfaceBaseTempo|baseTempo|Equal0~0_combout\) # (!\interfaceBaseTempo|baseTempo|Equal0~1_combout\)))) ) ) ) # ( !\interfaceBaseTempo|baseTempo|Equal0~2_combout\ & ( \interfaceBaseTempo|baseTempo|Equal0~3_combout\ & ( 
-- \interfaceBaseTempo|baseTempo|tick~q\ ) ) ) # ( \interfaceBaseTempo|baseTempo|Equal0~2_combout\ & ( !\interfaceBaseTempo|baseTempo|Equal0~3_combout\ & ( \interfaceBaseTempo|baseTempo|tick~q\ ) ) ) # ( !\interfaceBaseTempo|baseTempo|Equal0~2_combout\ & ( 
-- !\interfaceBaseTempo|baseTempo|Equal0~3_combout\ & ( \interfaceBaseTempo|baseTempo|tick~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \interfaceBaseTempo|baseTempo|ALT_INV_tick~q\,
	datab => \interfaceBaseTempo|baseTempo|ALT_INV_contador\(19),
	datac => \interfaceBaseTempo|baseTempo|ALT_INV_Equal0~0_combout\,
	datad => \interfaceBaseTempo|baseTempo|ALT_INV_Equal0~1_combout\,
	datae => \interfaceBaseTempo|baseTempo|ALT_INV_Equal0~2_combout\,
	dataf => \interfaceBaseTempo|baseTempo|ALT_INV_Equal0~3_combout\,
	combout => \interfaceBaseTempo|baseTempo|tick~0_combout\);

\interfaceBaseTempo|baseTempo|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \interfaceBaseTempo|baseTempo|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|baseTempo|tick~q\);

\limpa0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \limpa0~0_combout\ = ( \Processador|ROM1|memROM~23_combout\ & ( \Processador|ROM1|memROM~25_combout\ & ( (\Processador|ROM1|memROM~6_combout\ & (\Processador|ROM1|memROM~13_combout\ & (\Processador|ROM1|memROM~14_combout\ & 
-- \Processador|ROM1|memROM~21_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~21_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	combout => \limpa0~0_combout\);

limpa0 : cyclonev_lcell_comb
-- Equation(s):
-- \limpa0~combout\ = ( \Processador|ROM1|memROM~20_combout\ & ( \limpa0~0_combout\ & ( (\Processador|ROM1|memROM~2_combout\ & (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & \Processador|ROM1|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \ALT_INV_limpa0~0_combout\,
	combout => \limpa0~combout\);

\interfaceBaseTempo|registraUmSegundo|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \interfaceBaseTempo|baseTempo|tick~q\,
	d => VCC,
	clrn => \ALT_INV_limpa0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \interfaceBaseTempo|registraUmSegundo|DOUT~q\);

\Processador|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[0]~0_combout\ = ( \Processador|ROM1|memROM~25_combout\ & ( (\Processador|ROM1|memROM~6_combout\ & (!\Processador|ROM1|memROM~13_combout\ & (\Processador|ROM1|memROM~14_combout\ & \Processador|ROM1|memROM~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	combout => \Processador|MUX1|saida_MUX[0]~0_combout\);

\Processador|MUX1|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[0]~1_combout\ = ( \Processador|MUX1|saida_MUX[0]~0_combout\ & ( (!\Processador|ROM1|memROM~2_combout\ & (!\Processador|ROM1|memROM~17_combout\ & (!\Processador|ROM1|memROM~20_combout\ & 
-- !\interfaceBaseTempo|registraUmSegundo|DOUT~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datad => \interfaceBaseTempo|registraUmSegundo|ALT_INV_DOUT~q\,
	datae => \Processador|MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	combout => \Processador|MUX1|saida_MUX[0]~1_combout\);

\Processador|MUX1|saida_MUX[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[0]~2_combout\ = ( \RAM|process_0~0_combout\ & ( \Processador|MUX1|saida_MUX[0]~1_combout\ & ( (!\Processador|decoder|saida[6]~2_combout\ & ((!\Processador|decoder|saida[1]~3_combout\))) # 
-- (\Processador|decoder|saida[6]~2_combout\ & (\Processador|ROM1|memROM~2_combout\)) ) ) ) # ( !\RAM|process_0~0_combout\ & ( \Processador|MUX1|saida_MUX[0]~1_combout\ & ( (!\Processador|decoder|saida[6]~2_combout\ & 
-- ((!\Processador|decoder|saida[1]~3_combout\))) # (\Processador|decoder|saida[6]~2_combout\ & (\Processador|ROM1|memROM~2_combout\)) ) ) ) # ( \RAM|process_0~0_combout\ & ( !\Processador|MUX1|saida_MUX[0]~1_combout\ & ( 
-- (!\Processador|decoder|saida[6]~2_combout\ & (((!\Processador|decoder|saida[1]~3_combout\) # (\RAM|ram~540_combout\)))) # (\Processador|decoder|saida[6]~2_combout\ & (\Processador|ROM1|memROM~2_combout\)) ) ) ) # ( !\RAM|process_0~0_combout\ & ( 
-- !\Processador|MUX1|saida_MUX[0]~1_combout\ & ( (!\Processador|decoder|saida[6]~2_combout\) # (\Processador|ROM1|memROM~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101110111010001110111011101000100011101110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~2_combout\,
	datac => \RAM|ALT_INV_ram~540_combout\,
	datad => \Processador|decoder|ALT_INV_saida[1]~3_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[0]~1_combout\,
	combout => \Processador|MUX1|saida_MUX[0]~2_combout\);

\Processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~21_sumout\ = SUM(( \Processador|Banco_Reg|registrador~29_combout\ ) + ( !\Processador|MUX1|saida_MUX[1]~7_combout\ $ (((!\Processador|decoder|Equal13~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal13~2_combout\)))) ) + ( \Processador|ULA1|Add0~18\ ))
-- \Processador|ULA1|Add0~22\ = CARRY(( \Processador|Banco_Reg|registrador~29_combout\ ) + ( !\Processador|MUX1|saida_MUX[1]~7_combout\ $ (((!\Processador|decoder|Equal13~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal13~2_combout\)))) ) + ( \Processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal13~2_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~29_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[1]~7_combout\,
	cin => \Processador|ULA1|Add0~18\,
	sumout => \Processador|ULA1|Add0~21_sumout\,
	cout => \Processador|ULA1|Add0~22\);

\Processador|Banco_Reg|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~21_sumout\,
	asdata => \Processador|MUX1|saida_MUX[1]~7_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~20_q\);

\Processador|Banco_Reg|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~21_sumout\,
	asdata => \Processador|MUX1|saida_MUX[1]~7_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~12_q\);

\Processador|Banco_Reg|registrador~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~29_combout\ = (!\Processador|ROM1|memROM~1_combout\ & (((\Processador|Banco_Reg|registrador~12_q\)))) # (\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~27_combout\ & 
-- ((\Processador|Banco_Reg|registrador~12_q\))) # (\Processador|ROM1|memROM~27_combout\ & (\Processador|Banco_Reg|registrador~20_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~20_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~12_q\,
	combout => \Processador|Banco_Reg|registrador~29_combout\);

\Processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~25_sumout\ = SUM(( \Processador|Banco_Reg|registrador~27_combout\ ) + ( !\Processador|MUX1|saida_MUX[2]~4_combout\ $ (((!\Processador|decoder|Equal13~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal13~2_combout\)))) ) + ( \Processador|ULA1|Add0~22\ ))
-- \Processador|ULA1|Add0~26\ = CARRY(( \Processador|Banco_Reg|registrador~27_combout\ ) + ( !\Processador|MUX1|saida_MUX[2]~4_combout\ $ (((!\Processador|decoder|Equal13~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal13~2_combout\)))) ) + ( \Processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal13~2_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~27_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[2]~4_combout\,
	cin => \Processador|ULA1|Add0~22\,
	sumout => \Processador|ULA1|Add0~25_sumout\,
	cout => \Processador|ULA1|Add0~26\);

\Processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~29_sumout\ = SUM(( \Processador|Banco_Reg|registrador~28_combout\ ) + ( !\Processador|MUX1|saida_MUX[3]~6_combout\ $ (((!\Processador|decoder|Equal13~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal13~2_combout\)))) ) + ( \Processador|ULA1|Add0~26\ ))
-- \Processador|ULA1|Add0~30\ = CARRY(( \Processador|Banco_Reg|registrador~28_combout\ ) + ( !\Processador|MUX1|saida_MUX[3]~6_combout\ $ (((!\Processador|decoder|Equal13~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal13~2_combout\)))) ) + ( \Processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal13~2_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~28_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[3]~6_combout\,
	cin => \Processador|ULA1|Add0~26\,
	sumout => \Processador|ULA1|Add0~29_sumout\,
	cout => \Processador|ULA1|Add0~30\);

\Processador|Banco_Reg|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~29_sumout\,
	asdata => \Processador|MUX1|saida_MUX[3]~6_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~22_q\);

\Processador|Banco_Reg|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~29_sumout\,
	asdata => \Processador|MUX1|saida_MUX[3]~6_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~14_q\);

\Processador|Banco_Reg|registrador~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~28_combout\ = (!\Processador|ROM1|memROM~1_combout\ & (((\Processador|Banco_Reg|registrador~14_q\)))) # (\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~27_combout\ & 
-- ((\Processador|Banco_Reg|registrador~14_q\))) # (\Processador|ROM1|memROM~27_combout\ & (\Processador|Banco_Reg|registrador~22_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~22_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~14_q\,
	combout => \Processador|Banco_Reg|registrador~28_combout\);

\Processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~1_sumout\ = SUM(( \Processador|Banco_Reg|registrador~33_combout\ ) + ( !\Processador|MUX1|saida_MUX[4]~8_combout\ $ (((!\Processador|decoder|Equal13~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal13~2_combout\)))) ) + ( \Processador|ULA1|Add0~30\ ))
-- \Processador|ULA1|Add0~2\ = CARRY(( \Processador|Banco_Reg|registrador~33_combout\ ) + ( !\Processador|MUX1|saida_MUX[4]~8_combout\ $ (((!\Processador|decoder|Equal13~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal13~2_combout\)))) ) + ( \Processador|ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal13~2_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~33_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[4]~8_combout\,
	cin => \Processador|ULA1|Add0~30\,
	sumout => \Processador|ULA1|Add0~1_sumout\,
	cout => \Processador|ULA1|Add0~2\);

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~34_combout\,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~34_combout\,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~28_q\ ) ) ) # ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datac => \RAM|ALT_INV_ram~28_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~547_combout\);

\RAM|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~34_combout\,
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~148_q\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~148_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~148_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~548_combout\);

\RAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~34_combout\,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~60_q\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~60_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~549_combout\);

\RAM|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~34_combout\,
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~188_q\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~188_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RAM|ALT_INV_ram~188_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~550_combout\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \Processador|ROM1|memROM~22_combout\ & ( \Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~550_combout\ ) ) ) # ( !\Processador|ROM1|memROM~22_combout\ & ( \Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~549_combout\ ) ) ) # ( 
-- \Processador|ROM1|memROM~22_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~548_combout\ ) ) ) # ( !\Processador|ROM1|memROM~22_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~547_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~547_combout\,
	datab => \RAM|ALT_INV_ram~548_combout\,
	datac => \RAM|ALT_INV_ram~549_combout\,
	datad => \RAM|ALT_INV_ram~550_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~551_combout\);

\RAM|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~34_combout\,
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~316_q\);

\RAM|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~34_combout\,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~276_q\);

\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( !\Processador|ROM1|memROM~22_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( (\RAM|ram~316_q\ & (!\Processador|ROM1|memROM~20_combout\ & \Processador|ROM1|memROM~17_combout\)) ) ) ) # ( !\Processador|ROM1|memROM~22_combout\ 
-- & ( !\Processador|ROM1|memROM~2_combout\ & ( (!\Processador|ROM1|memROM~20_combout\ & (!\Processador|ROM1|memROM~17_combout\ & \RAM|ram~276_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~316_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_ram~276_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~552_combout\);

\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~34_combout\,
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( !\Processador|ROM1|memROM~17_combout\ & ( (\RAM|ram~36_q\ & (!\Processador|ROM1|memROM~20_combout\ & (!\Processador|ROM1|memROM~2_combout\ & !\Processador|ROM1|memROM~22_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~36_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~553_combout\);

\RAM|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~34_combout\,
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~300_q\);

\RAM|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~34_combout\,
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~524_q\);

\RAM|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~34_combout\,
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~292_q\);

\RAM|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~613_combout\ = ( !\Processador|ROM1|memROM~17_combout\ & ( (!\Processador|ROM1|memROM~22_combout\ & (!\Processador|ROM1|memROM~20_combout\ & ((!\Processador|ROM1|memROM~2_combout\ & ((\RAM|ram~292_q\))) # (\Processador|ROM1|memROM~2_combout\ & 
-- (\RAM|ram~300_q\))))) ) ) # ( \Processador|ROM1|memROM~17_combout\ & ( ((\Processador|ROM1|memROM~22_combout\ & (\RAM|ram~524_q\ & (\Processador|ROM1|memROM~2_combout\ & \Processador|ROM1|memROM~20_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110001000100000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~300_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datac => \RAM|ALT_INV_ram~524_q\,
	datad => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datag => \RAM|ALT_INV_ram~292_q\,
	combout => \RAM|ram~613_combout\);

\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( \Processador|ROM1|memROM~24_combout\ & ( \Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~613_combout\ ) ) ) # ( !\Processador|ROM1|memROM~24_combout\ & ( \Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~553_combout\ ) ) ) # ( 
-- \Processador|ROM1|memROM~24_combout\ & ( !\Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~552_combout\ ) ) ) # ( !\Processador|ROM1|memROM~24_combout\ & ( !\Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~551_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~551_combout\,
	datab => \RAM|ALT_INV_ram~552_combout\,
	datac => \RAM|ALT_INV_ram~553_combout\,
	datad => \RAM|ALT_INV_ram~613_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM|ram~554_combout\);

\Processador|MUX1|saida_MUX[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[5]~9_combout\ = (!\Processador|ROM1|memROM~24_combout\ & (((\Processador|MUX1|saida_MUX[6]~3_combout\ & \RAM|ram~554_combout\)))) # (\Processador|ROM1|memROM~24_combout\ & (((\Processador|MUX1|saida_MUX[6]~3_combout\ & 
-- \RAM|ram~554_combout\)) # (\Processador|decoder|saida[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~2_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[6]~3_combout\,
	datad => \RAM|ALT_INV_ram~554_combout\,
	combout => \Processador|MUX1|saida_MUX[5]~9_combout\);

\Processador|Banco_Reg|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~5_sumout\,
	asdata => \Processador|MUX1|saida_MUX[5]~9_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~24_q\);

\Processador|Banco_Reg|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~5_sumout\,
	asdata => \Processador|MUX1|saida_MUX[5]~9_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~16_q\);

\Processador|Banco_Reg|registrador~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~34_combout\ = (!\Processador|ROM1|memROM~1_combout\ & (((\Processador|Banco_Reg|registrador~16_q\)))) # (\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~27_combout\ & 
-- ((\Processador|Banco_Reg|registrador~16_q\))) # (\Processador|ROM1|memROM~27_combout\ & (\Processador|Banco_Reg|registrador~24_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~24_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~16_q\,
	combout => \Processador|Banco_Reg|registrador~34_combout\);

\Processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~5_sumout\ = SUM(( \Processador|Banco_Reg|registrador~34_combout\ ) + ( !\Processador|MUX1|saida_MUX[5]~9_combout\ $ (((!\Processador|decoder|Equal13~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal13~2_combout\)))) ) + ( \Processador|ULA1|Add0~2\ ))
-- \Processador|ULA1|Add0~6\ = CARRY(( \Processador|Banco_Reg|registrador~34_combout\ ) + ( !\Processador|MUX1|saida_MUX[5]~9_combout\ $ (((!\Processador|decoder|Equal13~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal13~2_combout\)))) ) + ( \Processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal13~2_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~34_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[5]~9_combout\,
	cin => \Processador|ULA1|Add0~2\,
	sumout => \Processador|ULA1|Add0~5_sumout\,
	cout => \Processador|ULA1|Add0~6\);

\RAM|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~35_combout\,
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~149_q\);

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~35_combout\,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~35_combout\,
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

\RAM|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~35_combout\,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~277_q\);

\RAM|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~35_combout\,
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~293_q\);

\RAM|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~578_combout\ = ( \Processador|ROM1|memROM~15_combout\ & ( \Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~293_q\ ) ) ) # ( !\Processador|ROM1|memROM~15_combout\ & ( \Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~277_q\ ) ) ) # ( 
-- \Processador|ROM1|memROM~15_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~37_q\ ) ) ) # ( !\Processador|ROM1|memROM~15_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datab => \RAM|ALT_INV_ram~37_q\,
	datac => \RAM|ALT_INV_ram~277_q\,
	datad => \RAM|ALT_INV_ram~293_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~578_combout\);

\RAM|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~579_combout\ = ( \Processador|ROM1|memROM~22_combout\ & ( !\Processador|ROM1|memROM~20_combout\ & ( (\RAM|ram~149_q\ & (!\Processador|ROM1|memROM~15_combout\ & !\Processador|ROM1|memROM~24_combout\)) ) ) ) # ( 
-- !\Processador|ROM1|memROM~22_combout\ & ( !\Processador|ROM1|memROM~20_combout\ & ( \RAM|ram~578_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~149_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datad => \RAM|ALT_INV_ram~578_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	combout => \RAM|ram~579_combout\);

\RAM|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~35_combout\,
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~301_q\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~35_combout\,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~580_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( \Processador|ROM1|memROM~24_combout\ & ( (\RAM|ram~301_q\ & (!\Processador|ROM1|memROM~22_combout\ & \Processador|ROM1|memROM~15_combout\)) ) ) ) # ( !\Processador|ROM1|memROM~20_combout\ 
-- & ( !\Processador|ROM1|memROM~24_combout\ & ( (!\Processador|ROM1|memROM~22_combout\ & (!\Processador|ROM1|memROM~15_combout\ & \RAM|ram~29_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~301_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datad => \RAM|ALT_INV_ram~29_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~580_combout\);

\RAM|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~35_combout\,
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~525_q\);

\RAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~35_combout\,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~61_q\);

\RAM|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~35_combout\,
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~317_q\);

\RAM|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~581_combout\ = ( !\Processador|ROM1|memROM~20_combout\ & ( \Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~317_q\ ) ) ) # ( !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~61_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~61_q\,
	datac => \RAM|ALT_INV_ram~317_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~581_combout\);

\RAM|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~35_combout\,
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~189_q\);

\RAM|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~609_combout\ = ( !\Processador|ROM1|memROM~24_combout\ & ( (!\Processador|ROM1|memROM~15_combout\ & ((!\Processador|ROM1|memROM~22_combout\ & (((\RAM|ram~581_combout\)))) # (\Processador|ROM1|memROM~22_combout\ & 
-- (!\Processador|ROM1|memROM~20_combout\ & (\RAM|ram~189_q\))))) ) ) # ( \Processador|ROM1|memROM~24_combout\ & ( (!\Processador|ROM1|memROM~15_combout\ & ((((!\Processador|ROM1|memROM~22_combout\ & \RAM|ram~581_combout\))))) # 
-- (\Processador|ROM1|memROM~15_combout\ & (\Processador|ROM1|memROM~20_combout\ & (\RAM|ram~525_q\ & (\Processador|ROM1|memROM~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000001000000000000000000111001100000010001100110000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datac => \RAM|ALT_INV_ram~525_q\,
	datad => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	dataf => \RAM|ALT_INV_ram~581_combout\,
	datag => \RAM|ALT_INV_ram~189_q\,
	combout => \RAM|ram~609_combout\);

\RAM|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~582_combout\ = ( \Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~609_combout\ ) ) ) # ( !\Processador|ROM1|memROM~17_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~580_combout\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~17_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~579_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~579_combout\,
	datac => \RAM|ALT_INV_ram~580_combout\,
	datad => \RAM|ALT_INV_ram~609_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~582_combout\);

\Processador|MUX1|saida_MUX[6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[6]~10_combout\ = (!\Processador|ROM1|memROM~26_combout\ & (((\Processador|MUX1|saida_MUX[6]~3_combout\ & \RAM|ram~582_combout\)))) # (\Processador|ROM1|memROM~26_combout\ & (((\Processador|MUX1|saida_MUX[6]~3_combout\ & 
-- \RAM|ram~582_combout\)) # (\Processador|decoder|saida[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011111000100010001111100010001000111110001000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~26_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~2_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[6]~3_combout\,
	datad => \RAM|ALT_INV_ram~582_combout\,
	combout => \Processador|MUX1|saida_MUX[6]~10_combout\);

\Processador|Banco_Reg|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~9_sumout\,
	asdata => \Processador|MUX1|saida_MUX[6]~10_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~25_q\);

\Processador|Banco_Reg|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~9_sumout\,
	asdata => \Processador|MUX1|saida_MUX[6]~10_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~17_q\);

\Processador|Banco_Reg|registrador~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~35_combout\ = (!\Processador|ROM1|memROM~1_combout\ & (((\Processador|Banco_Reg|registrador~17_q\)))) # (\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~27_combout\ & 
-- ((\Processador|Banco_Reg|registrador~17_q\))) # (\Processador|ROM1|memROM~27_combout\ & (\Processador|Banco_Reg|registrador~25_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~25_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~17_q\,
	combout => \Processador|Banco_Reg|registrador~35_combout\);

\Processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~9_sumout\ = SUM(( \Processador|Banco_Reg|registrador~35_combout\ ) + ( !\Processador|MUX1|saida_MUX[6]~10_combout\ $ (((!\Processador|decoder|Equal13~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal13~2_combout\)))) ) + ( \Processador|ULA1|Add0~6\ ))
-- \Processador|ULA1|Add0~10\ = CARRY(( \Processador|Banco_Reg|registrador~35_combout\ ) + ( !\Processador|MUX1|saida_MUX[6]~10_combout\ $ (((!\Processador|decoder|Equal13~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal13~2_combout\)))) ) + ( \Processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal13~2_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~35_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[6]~10_combout\,
	cin => \Processador|ULA1|Add0~6\,
	sumout => \Processador|ULA1|Add0~9_sumout\,
	cout => \Processador|ULA1|Add0~10\);

\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~36_combout\,
	ena => \RAM|ram~598_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

\RAM|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~36_combout\,
	ena => \RAM|ram~594_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~150_q\);

\RAM|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~36_combout\,
	ena => \RAM|ram~596_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~190_q\);

\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( \Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~190_q\ ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~150_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~150_q\,
	datad => \RAM|ALT_INV_ram~190_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~567_combout\);

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~36_combout\,
	ena => \RAM|ram~584_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~36_combout\,
	ena => \RAM|ram~588_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~36_combout\,
	ena => \RAM|ram~590_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~62_q\);

\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( \Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~62_q\ ) ) ) # ( \Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~30_q\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datab => \RAM|ALT_INV_ram~30_q\,
	datad => \RAM|ALT_INV_ram~62_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~566_combout\);

\RAM|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~605_combout\ = ( !\Processador|ROM1|memROM~15_combout\ & ( (((!\Processador|ROM1|memROM~22_combout\ & (\RAM|ram~566_combout\)) # (\Processador|ROM1|memROM~22_combout\ & ((\RAM|ram~567_combout\))))) ) ) # ( \Processador|ROM1|memROM~15_combout\ & ( 
-- (\RAM|ram~38_q\ & (!\Processador|ROM1|memROM~17_combout\ & (!\Processador|ROM1|memROM~2_combout\ & (!\Processador|ROM1|memROM~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000010000000000000000001111111111110100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~38_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	dataf => \RAM|ALT_INV_ram~567_combout\,
	datag => \RAM|ALT_INV_ram~566_combout\,
	combout => \RAM|ram~605_combout\);

\RAM|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~36_combout\,
	ena => \RAM|ram~586_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~278_q\);

\RAM|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~36_combout\,
	ena => \RAM|ram~592_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~318_q\);

\RAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~568_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( \Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~318_q\ ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~278_q\,
	datad => \RAM|ALT_INV_ram~318_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~568_combout\);

\RAM|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~36_combout\,
	ena => \RAM|ram~600_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~294_q\);

\RAM|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~36_combout\,
	ena => \RAM|ram~602_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~302_q\);

\RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~569_combout\ = ( \Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~302_q\ ) ) ) # ( !\Processador|ROM1|memROM~2_combout\ & ( !\Processador|ROM1|memROM~17_combout\ & ( \RAM|ram~294_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~294_q\,
	datab => \RAM|ALT_INV_ram~302_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	combout => \RAM|ram~569_combout\);

\RAM|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~570_combout\ = ( !\Processador|ROM1|memROM~22_combout\ & ( \Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~569_combout\ ) ) ) # ( !\Processador|ROM1|memROM~22_combout\ & ( !\Processador|ROM1|memROM~15_combout\ & ( \RAM|ram~568_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~568_combout\,
	datac => \RAM|ALT_INV_ram~569_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM|ram~570_combout\);

\RAM|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~36_combout\,
	ena => \RAM|ram~604_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~526_q\);

\RAM|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~571_combout\ = ( \Processador|ROM1|memROM~15_combout\ & ( (\RAM|ram~526_q\ & (\Processador|ROM1|memROM~2_combout\ & (\Processador|ROM1|memROM~17_combout\ & \Processador|ROM1|memROM~22_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~526_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~22_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	combout => \RAM|ram~571_combout\);

\RAM|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~572_combout\ = ( \Processador|ROM1|memROM~20_combout\ & ( \Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~571_combout\ ) ) ) # ( !\Processador|ROM1|memROM~20_combout\ & ( \Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~570_combout\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~20_combout\ & ( !\Processador|ROM1|memROM~24_combout\ & ( \RAM|ram~605_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~605_combout\,
	datac => \RAM|ALT_INV_ram~570_combout\,
	datad => \RAM|ALT_INV_ram~571_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~20_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	combout => \RAM|ram~572_combout\);

\Processador|MUX1|saida_MUX[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[7]~11_combout\ = ((\Processador|MUX1|saida_MUX[6]~3_combout\ & \RAM|ram~572_combout\)) # (\Processador|MUX1|saida_MUX[7]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111001101110011011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|MUX1|ALT_INV_saida_MUX[6]~3_combout\,
	datab => \Processador|MUX1|ALT_INV_saida_MUX[7]~5_combout\,
	datac => \RAM|ALT_INV_ram~572_combout\,
	combout => \Processador|MUX1|saida_MUX[7]~11_combout\);

\Processador|Banco_Reg|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~13_sumout\,
	asdata => \Processador|MUX1|saida_MUX[7]~11_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~26_q\);

\Processador|Banco_Reg|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~13_sumout\,
	asdata => \Processador|MUX1|saida_MUX[7]~11_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~18_q\);

\Processador|Banco_Reg|registrador~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~36_combout\ = (!\Processador|ROM1|memROM~1_combout\ & (((\Processador|Banco_Reg|registrador~18_q\)))) # (\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~27_combout\ & 
-- ((\Processador|Banco_Reg|registrador~18_q\))) # (\Processador|ROM1|memROM~27_combout\ & (\Processador|Banco_Reg|registrador~26_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	datac => \Processador|Banco_Reg|ALT_INV_registrador~26_q\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~18_q\,
	combout => \Processador|Banco_Reg|registrador~36_combout\);

\Processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~13_sumout\ = SUM(( \Processador|Banco_Reg|registrador~36_combout\ ) + ( !\Processador|MUX1|saida_MUX[7]~11_combout\ $ (((!\Processador|decoder|Equal13~1_combout\ & (\Processador|ULA1|Equal1~0_combout\ & 
-- !\Processador|decoder|Equal13~2_combout\)))) ) + ( \Processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001101111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal13~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Equal1~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal13~2_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~36_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[7]~11_combout\,
	cin => \Processador|ULA1|Add0~10\,
	sumout => \Processador|ULA1|Add0~13_sumout\);

\Processador|flag_ula|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|flag_ula|DOUT~1_combout\ = (!\Processador|ROM1|memROM~4_combout\ & (\Processador|ROM1|memROM~7_combout\ & (!\Processador|ROM1|memROM~9_combout\ & !\Processador|ROM1|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \Processador|flag_ula|DOUT~1_combout\);

\Processador|flag_ula|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|flag_ula|DOUT~2_combout\ = ( \Processador|flag_ula|DOUT~q\ & ( \Processador|flag_ula|DOUT~1_combout\ & ( (!\Processador|ULA1|Add0~17_sumout\ & (!\Processador|ULA1|Add0~21_sumout\ & (!\Processador|ULA1|Add0~25_sumout\ & 
-- !\Processador|ULA1|Add0~29_sumout\))) ) ) ) # ( !\Processador|flag_ula|DOUT~q\ & ( \Processador|flag_ula|DOUT~1_combout\ & ( (!\Processador|ULA1|Add0~17_sumout\ & (!\Processador|ULA1|Add0~21_sumout\ & (!\Processador|ULA1|Add0~25_sumout\ & 
-- !\Processador|ULA1|Add0~29_sumout\))) ) ) ) # ( \Processador|flag_ula|DOUT~q\ & ( !\Processador|flag_ula|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ULA1|ALT_INV_Add0~17_sumout\,
	datab => \Processador|ULA1|ALT_INV_Add0~21_sumout\,
	datac => \Processador|ULA1|ALT_INV_Add0~25_sumout\,
	datad => \Processador|ULA1|ALT_INV_Add0~29_sumout\,
	datae => \Processador|flag_ula|ALT_INV_DOUT~q\,
	dataf => \Processador|flag_ula|ALT_INV_DOUT~1_combout\,
	combout => \Processador|flag_ula|DOUT~2_combout\);

\Processador|flag_ula|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|flag_ula|DOUT~0_combout\ = ( \Processador|flag_ula|DOUT~1_combout\ & ( \Processador|flag_ula|DOUT~2_combout\ & ( (!\Processador|ULA1|Add0~1_sumout\ & (!\Processador|ULA1|Add0~5_sumout\ & (!\Processador|ULA1|Add0~9_sumout\ & 
-- !\Processador|ULA1|Add0~13_sumout\))) ) ) ) # ( !\Processador|flag_ula|DOUT~1_combout\ & ( \Processador|flag_ula|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ULA1|ALT_INV_Add0~1_sumout\,
	datab => \Processador|ULA1|ALT_INV_Add0~5_sumout\,
	datac => \Processador|ULA1|ALT_INV_Add0~9_sumout\,
	datad => \Processador|ULA1|ALT_INV_Add0~13_sumout\,
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
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|flag_ula|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|flag_ula|DOUT~q\);

\Processador|MUX_JMP|saida_MUX[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[6]~0_combout\ = ( \Processador|flag_ula|DOUT~q\ & ( (!\Processador|ROM1|memROM~4_combout\ & (\Processador|ROM1|memROM~7_combout\ & (\Processador|ROM1|memROM~9_combout\))) # (\Processador|ROM1|memROM~4_combout\ & 
-- (!\Processador|ROM1|memROM~7_combout\ & ((\Processador|ROM1|memROM~12_combout\)))) ) ) # ( !\Processador|flag_ula|DOUT~q\ & ( (!\Processador|ROM1|memROM~4_combout\ & (\Processador|ROM1|memROM~7_combout\ & (\Processador|ROM1|memROM~9_combout\ & 
-- !\Processador|ROM1|memROM~12_combout\))) # (\Processador|ROM1|memROM~4_combout\ & (!\Processador|ROM1|memROM~7_combout\ & (!\Processador|ROM1|memROM~9_combout\ & \Processador|ROM1|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000100100011000000010010000000000001001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	datae => \Processador|flag_ula|ALT_INV_DOUT~q\,
	combout => \Processador|MUX_JMP|saida_MUX[6]~0_combout\);

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

\Processador|MUX_JMP|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[8]~9_combout\ = (!\Processador|decoder|saida[9]~0_combout\ & ((!\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & ((\Processador|incrementaPC|Add0~33_sumout\))) # (\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & 
-- (\Processador|ROM1|memROM~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[9]~0_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[6]~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \Processador|MUX_JMP|saida_MUX[8]~9_combout\);

\Processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX_JMP|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(8));

\Processador|ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~2_combout\ = ( \Processador|ROM1|memROM~0_combout\ & ( (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(8) & (!\Processador|PC|DOUT\(7) & !\Processador|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(5),
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \Processador|PC|ALT_INV_DOUT\(7),
	datad => \Processador|PC|ALT_INV_DOUT\(6),
	datae => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	combout => \Processador|ROM1|memROM~2_combout\);

\Processador|MUX_JMP|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[0]~1_combout\ = (!\Processador|decoder|saida[9]~0_combout\ & ((!\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & ((\Processador|incrementaPC|Add0~1_sumout\))) # (\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & 
-- (\Processador|ROM1|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000000100110001000000010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|decoder|ALT_INV_saida[9]~0_combout\,
	datac => \Processador|MUX_JMP|ALT_INV_saida_MUX[6]~0_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \Processador|MUX_JMP|saida_MUX[0]~1_combout\);

\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX_JMP|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

\Processador|ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~3_combout\ = ( \Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(1) $ (!\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT\(0) & (((\Processador|PC|DOUT\(2) & 
-- !\Processador|PC|DOUT\(4))))) ) ) # ( !\Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000001010010100000000000000010000000010100101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	datae => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~3_combout\);

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

\Processador|decoder|saida[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida[9]~0_combout\ = (\Processador|ROM1|memROM~4_combout\ & (\Processador|ROM1|memROM~7_combout\ & (!\Processador|ROM1|memROM~9_combout\ & !\Processador|ROM1|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|saida[9]~0_combout\);

\Processador|MUX_JMP|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX_JMP|saida_MUX[5]~6_combout\ = (!\Processador|decoder|saida[9]~0_combout\ & ((!\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & ((\Processador|incrementaPC|Add0~21_sumout\))) # (\Processador|MUX_JMP|saida_MUX[6]~0_combout\ & 
-- (\Processador|ROM1|memROM~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[9]~0_combout\,
	datab => \Processador|MUX_JMP|ALT_INV_saida_MUX[6]~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~24_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \Processador|MUX_JMP|saida_MUX[5]~6_combout\);

\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX_JMP|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

\Processador|ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~1_combout\ = (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(8) & (!\Processador|PC|DOUT\(7) & !\Processador|PC|DOUT\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(5),
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \Processador|PC|ALT_INV_DOUT\(7),
	datad => \Processador|PC|ALT_INV_DOUT\(6),
	combout => \Processador|ROM1|memROM~1_combout\);

\Processador|Banco_Reg|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~25_sumout\,
	asdata => \Processador|MUX1|saida_MUX[2]~4_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~21_q\);

\Processador|Banco_Reg|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|Add0~25_sumout\,
	asdata => \Processador|MUX1|saida_MUX[2]~4_combout\,
	sload => \Processador|decoder|saida~4_combout\,
	ena => \Processador|Banco_Reg|registrador~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|Banco_Reg|registrador~13_q\);

\Processador|Banco_Reg|registrador~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|Banco_Reg|registrador~27_combout\ = (!\Processador|ROM1|memROM~1_combout\ & (((\Processador|Banco_Reg|registrador~13_q\)))) # (\Processador|ROM1|memROM~1_combout\ & ((!\Processador|ROM1|memROM~27_combout\ & 
-- ((\Processador|Banco_Reg|registrador~13_q\))) # (\Processador|ROM1|memROM~27_combout\ & (\Processador|Banco_Reg|registrador~21_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111011000000011111101100000001111110110000000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datab => \Processador|Banco_Reg|ALT_INV_registrador~21_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~27_combout\,
	datad => \Processador|Banco_Reg|ALT_INV_registrador~13_q\,
	combout => \Processador|Banco_Reg|registrador~27_combout\);

\BLOCO_7seg|hab_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|hab_1~0_combout\ = ( \Processador|ROM1|memROM~23_combout\ & ( \Processador|ROM1|memROM~25_combout\ & ( (!\Processador|ROM1|memROM~6_combout\ & (\Processador|ROM1|memROM~14_combout\ & ((!\Processador|ROM1|memROM~18_combout\) # 
-- (!\Processador|ROM1|memROM~19_combout\)))) ) ) ) # ( \Processador|ROM1|memROM~23_combout\ & ( !\Processador|ROM1|memROM~25_combout\ & ( (\Processador|ROM1|memROM~14_combout\ & ((!\Processador|ROM1|memROM~18_combout\) # 
-- (!\Processador|ROM1|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011000000000000000000000010001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~14_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~18_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~19_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~23_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~25_combout\,
	combout => \BLOCO_7seg|hab_1~0_combout\);

\BLOCO_7seg|hab_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|hab_0~0_combout\ = ( !\Processador|ROM1|memROM~17_combout\ & ( \BLOCO_7seg|hab_1~0_combout\ & ( (!\Processador|ROM1|memROM~2_combout\ & (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & 
-- !\Processador|ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \BLOCO_7seg|ALT_INV_hab_1~0_combout\,
	combout => \BLOCO_7seg|hab_0~0_combout\);

\BLOCO_7seg|REG_0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \BLOCO_7seg|hab_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_0|DOUT\(2));

\BLOCO_7seg|REG_0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \BLOCO_7seg|hab_0~0_combout\,
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
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \BLOCO_7seg|hab_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_0|DOUT\(1));

\BLOCO_7seg|REG_0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \BLOCO_7seg|hab_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_0|DOUT\(0));

\BLOCO_7seg|DEC_0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_0|rascSaida7seg[0]~0_combout\ = (!\BLOCO_7seg|REG_0|DOUT\(1) & (!\BLOCO_7seg|REG_0|DOUT\(2) $ (!\BLOCO_7seg|REG_0|DOUT\(3) $ (\BLOCO_7seg|REG_0|DOUT\(0))))) # (\BLOCO_7seg|REG_0|DOUT\(1) & (!\BLOCO_7seg|REG_0|DOUT\(2) & 
-- (\BLOCO_7seg|REG_0|DOUT\(3) & \BLOCO_7seg|REG_0|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010010010011000001001001001100000100100100110000010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_0|rascSaida7seg[0]~0_combout\);

\BLOCO_7seg|DEC_0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_0|rascSaida7seg[1]~1_combout\ = (!\BLOCO_7seg|REG_0|DOUT\(3) & (\BLOCO_7seg|REG_0|DOUT\(2) & (!\BLOCO_7seg|REG_0|DOUT\(1) $ (!\BLOCO_7seg|REG_0|DOUT\(0))))) # (\BLOCO_7seg|REG_0|DOUT\(3) & ((!\BLOCO_7seg|REG_0|DOUT\(0) & 
-- (\BLOCO_7seg|REG_0|DOUT\(2))) # (\BLOCO_7seg|REG_0|DOUT\(0) & ((\BLOCO_7seg|REG_0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000011000101010100001100010101010000110001010101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_0|rascSaida7seg[1]~1_combout\);

\BLOCO_7seg|DEC_0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_0|rascSaida7seg[2]~2_combout\ = (!\BLOCO_7seg|REG_0|DOUT\(2) & (!\BLOCO_7seg|REG_0|DOUT\(3) & (\BLOCO_7seg|REG_0|DOUT\(1) & !\BLOCO_7seg|REG_0|DOUT\(0)))) # (\BLOCO_7seg|REG_0|DOUT\(2) & (\BLOCO_7seg|REG_0|DOUT\(3) & 
-- ((!\BLOCO_7seg|REG_0|DOUT\(0)) # (\BLOCO_7seg|REG_0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(0),
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
-- (((!\BLOCO_7seg|REG_0|DOUT\(3) & \BLOCO_7seg|REG_0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011101100010000001110110001000000111011000100000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_0|rascSaida7seg[4]~4_combout\);

\BLOCO_7seg|DEC_0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_0|rascSaida7seg[5]~5_combout\ = (!\BLOCO_7seg|REG_0|DOUT\(2) & (!\BLOCO_7seg|REG_0|DOUT\(3) & ((\BLOCO_7seg|REG_0|DOUT\(0)) # (\BLOCO_7seg|REG_0|DOUT\(1))))) # (\BLOCO_7seg|REG_0|DOUT\(2) & (\BLOCO_7seg|REG_0|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_0|DOUT\(3) $ (!\BLOCO_7seg|REG_0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011100000010001001110000001000100111000000100010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_0|rascSaida7seg[5]~5_combout\);

\BLOCO_7seg|DEC_0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_0|rascSaida7seg[6]~6_combout\ = (!\BLOCO_7seg|REG_0|DOUT\(0) & (!\BLOCO_7seg|REG_0|DOUT\(1) & (!\BLOCO_7seg|REG_0|DOUT\(2) $ (\BLOCO_7seg|REG_0|DOUT\(3))))) # (\BLOCO_7seg|REG_0|DOUT\(0) & (!\BLOCO_7seg|REG_0|DOUT\(3) & 
-- (!\BLOCO_7seg|REG_0|DOUT\(2) $ (\BLOCO_7seg|REG_0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000100100100001000010010010000100001001001000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_0|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_0|rascSaida7seg[6]~6_combout\);

\BLOCO_7seg|hab_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|hab_1~1_combout\ = ( !\Processador|ROM1|memROM~17_combout\ & ( \BLOCO_7seg|hab_1~0_combout\ & ( (\Processador|ROM1|memROM~2_combout\ & (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & 
-- !\Processador|ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \BLOCO_7seg|ALT_INV_hab_1~0_combout\,
	combout => \BLOCO_7seg|hab_1~1_combout\);

\BLOCO_7seg|REG_1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \BLOCO_7seg|hab_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_1|DOUT\(2));

\BLOCO_7seg|REG_1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \BLOCO_7seg|hab_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_1|DOUT\(3));

\BLOCO_7seg|REG_1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \BLOCO_7seg|hab_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_1|DOUT\(1));

\BLOCO_7seg|REG_1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \BLOCO_7seg|hab_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_1|DOUT\(0));

\BLOCO_7seg|DEC_1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_1|rascSaida7seg[0]~0_combout\ = (!\BLOCO_7seg|REG_1|DOUT\(1) & (!\BLOCO_7seg|REG_1|DOUT\(2) $ (!\BLOCO_7seg|REG_1|DOUT\(3) $ (\BLOCO_7seg|REG_1|DOUT\(0))))) # (\BLOCO_7seg|REG_1|DOUT\(1) & (!\BLOCO_7seg|REG_1|DOUT\(2) & 
-- (\BLOCO_7seg|REG_1|DOUT\(3) & \BLOCO_7seg|REG_1|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010010010011000001001001001100000100100100110000010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_1|rascSaida7seg[0]~0_combout\);

\BLOCO_7seg|DEC_1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_1|rascSaida7seg[1]~1_combout\ = (!\BLOCO_7seg|REG_1|DOUT\(3) & (\BLOCO_7seg|REG_1|DOUT\(2) & (!\BLOCO_7seg|REG_1|DOUT\(1) $ (!\BLOCO_7seg|REG_1|DOUT\(0))))) # (\BLOCO_7seg|REG_1|DOUT\(3) & ((!\BLOCO_7seg|REG_1|DOUT\(0) & 
-- (\BLOCO_7seg|REG_1|DOUT\(2))) # (\BLOCO_7seg|REG_1|DOUT\(0) & ((\BLOCO_7seg|REG_1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000011000101010100001100010101010000110001010101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_1|rascSaida7seg[1]~1_combout\);

\BLOCO_7seg|DEC_1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_1|rascSaida7seg[2]~2_combout\ = (!\BLOCO_7seg|REG_1|DOUT\(2) & (!\BLOCO_7seg|REG_1|DOUT\(3) & (\BLOCO_7seg|REG_1|DOUT\(1) & !\BLOCO_7seg|REG_1|DOUT\(0)))) # (\BLOCO_7seg|REG_1|DOUT\(2) & (\BLOCO_7seg|REG_1|DOUT\(3) & 
-- ((!\BLOCO_7seg|REG_1|DOUT\(0)) # (\BLOCO_7seg|REG_1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_1|rascSaida7seg[2]~2_combout\);

\BLOCO_7seg|DEC_1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_1|rascSaida7seg[3]~3_combout\ = (!\BLOCO_7seg|REG_1|DOUT\(1) & (!\BLOCO_7seg|REG_1|DOUT\(3) & (!\BLOCO_7seg|REG_1|DOUT\(0) $ (!\BLOCO_7seg|REG_1|DOUT\(2))))) # (\BLOCO_7seg|REG_1|DOUT\(1) & ((!\BLOCO_7seg|REG_1|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_1|DOUT\(2) & \BLOCO_7seg|REG_1|DOUT\(3))) # (\BLOCO_7seg|REG_1|DOUT\(0) & (\BLOCO_7seg|REG_1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(1),
	datac => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(2),
	datad => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(3),
	combout => \BLOCO_7seg|DEC_1|rascSaida7seg[3]~3_combout\);

\BLOCO_7seg|DEC_1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_1|rascSaida7seg[4]~4_combout\ = (!\BLOCO_7seg|REG_1|DOUT\(1) & ((!\BLOCO_7seg|REG_1|DOUT\(2) & ((\BLOCO_7seg|REG_1|DOUT\(0)))) # (\BLOCO_7seg|REG_1|DOUT\(2) & (!\BLOCO_7seg|REG_1|DOUT\(3))))) # (\BLOCO_7seg|REG_1|DOUT\(1) & 
-- (((!\BLOCO_7seg|REG_1|DOUT\(3) & \BLOCO_7seg|REG_1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011101100010000001110110001000000111011000100000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_1|rascSaida7seg[4]~4_combout\);

\BLOCO_7seg|DEC_1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_1|rascSaida7seg[5]~5_combout\ = (!\BLOCO_7seg|REG_1|DOUT\(2) & (!\BLOCO_7seg|REG_1|DOUT\(3) & ((\BLOCO_7seg|REG_1|DOUT\(0)) # (\BLOCO_7seg|REG_1|DOUT\(1))))) # (\BLOCO_7seg|REG_1|DOUT\(2) & (\BLOCO_7seg|REG_1|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_1|DOUT\(3) $ (!\BLOCO_7seg|REG_1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011100000010001001110000001000100111000000100010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_1|rascSaida7seg[5]~5_combout\);

\BLOCO_7seg|DEC_1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_1|rascSaida7seg[6]~6_combout\ = (!\BLOCO_7seg|REG_1|DOUT\(0) & (!\BLOCO_7seg|REG_1|DOUT\(1) & (!\BLOCO_7seg|REG_1|DOUT\(2) $ (\BLOCO_7seg|REG_1|DOUT\(3))))) # (\BLOCO_7seg|REG_1|DOUT\(0) & (!\BLOCO_7seg|REG_1|DOUT\(3) & 
-- (!\BLOCO_7seg|REG_1|DOUT\(2) $ (\BLOCO_7seg|REG_1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000100100100001000010010010000100001001001000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_1|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_1|rascSaida7seg[6]~6_combout\);

\BLOCO_7seg|hab_2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|hab_2~0_combout\ = (!\Processador|PC|DOUT\(2) & (\Processador|ROM1|memROM~1_combout\ & (\Processador|ROM1|memROM~13_combout\ & !\Processador|ROM1|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~16_combout\,
	combout => \BLOCO_7seg|hab_2~0_combout\);

\BLOCO_7seg|hab_2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|hab_2~1_combout\ = ( \BLOCO_7seg|hab_2~0_combout\ & ( (!\Processador|ROM1|memROM~2_combout\ & (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & \BLOCO_7seg|hab_1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \BLOCO_7seg|ALT_INV_hab_1~0_combout\,
	datae => \BLOCO_7seg|ALT_INV_hab_2~0_combout\,
	combout => \BLOCO_7seg|hab_2~1_combout\);

\BLOCO_7seg|REG_2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \BLOCO_7seg|hab_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_2|DOUT\(2));

\BLOCO_7seg|REG_2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \BLOCO_7seg|hab_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_2|DOUT\(3));

\BLOCO_7seg|REG_2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \BLOCO_7seg|hab_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_2|DOUT\(1));

\BLOCO_7seg|REG_2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \BLOCO_7seg|hab_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_2|DOUT\(0));

\BLOCO_7seg|DEC_2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_2|rascSaida7seg[0]~0_combout\ = (!\BLOCO_7seg|REG_2|DOUT\(1) & (!\BLOCO_7seg|REG_2|DOUT\(2) $ (!\BLOCO_7seg|REG_2|DOUT\(3) $ (\BLOCO_7seg|REG_2|DOUT\(0))))) # (\BLOCO_7seg|REG_2|DOUT\(1) & (!\BLOCO_7seg|REG_2|DOUT\(2) & 
-- (\BLOCO_7seg|REG_2|DOUT\(3) & \BLOCO_7seg|REG_2|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010010010011000001001001001100000100100100110000010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_2|rascSaida7seg[0]~0_combout\);

\BLOCO_7seg|DEC_2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_2|rascSaida7seg[1]~1_combout\ = (!\BLOCO_7seg|REG_2|DOUT\(3) & (\BLOCO_7seg|REG_2|DOUT\(2) & (!\BLOCO_7seg|REG_2|DOUT\(1) $ (!\BLOCO_7seg|REG_2|DOUT\(0))))) # (\BLOCO_7seg|REG_2|DOUT\(3) & ((!\BLOCO_7seg|REG_2|DOUT\(0) & 
-- (\BLOCO_7seg|REG_2|DOUT\(2))) # (\BLOCO_7seg|REG_2|DOUT\(0) & ((\BLOCO_7seg|REG_2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000011000101010100001100010101010000110001010101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_2|rascSaida7seg[1]~1_combout\);

\BLOCO_7seg|DEC_2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_2|rascSaida7seg[2]~2_combout\ = (!\BLOCO_7seg|REG_2|DOUT\(2) & (!\BLOCO_7seg|REG_2|DOUT\(3) & (\BLOCO_7seg|REG_2|DOUT\(1) & !\BLOCO_7seg|REG_2|DOUT\(0)))) # (\BLOCO_7seg|REG_2|DOUT\(2) & (\BLOCO_7seg|REG_2|DOUT\(3) & 
-- ((!\BLOCO_7seg|REG_2|DOUT\(0)) # (\BLOCO_7seg|REG_2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_2|rascSaida7seg[2]~2_combout\);

\BLOCO_7seg|DEC_2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_2|rascSaida7seg[3]~3_combout\ = (!\BLOCO_7seg|REG_2|DOUT\(1) & (!\BLOCO_7seg|REG_2|DOUT\(3) & (!\BLOCO_7seg|REG_2|DOUT\(0) $ (!\BLOCO_7seg|REG_2|DOUT\(2))))) # (\BLOCO_7seg|REG_2|DOUT\(1) & ((!\BLOCO_7seg|REG_2|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_2|DOUT\(2) & \BLOCO_7seg|REG_2|DOUT\(3))) # (\BLOCO_7seg|REG_2|DOUT\(0) & (\BLOCO_7seg|REG_2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(1),
	datac => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(2),
	datad => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(3),
	combout => \BLOCO_7seg|DEC_2|rascSaida7seg[3]~3_combout\);

\BLOCO_7seg|DEC_2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_2|rascSaida7seg[4]~4_combout\ = (!\BLOCO_7seg|REG_2|DOUT\(1) & ((!\BLOCO_7seg|REG_2|DOUT\(2) & ((\BLOCO_7seg|REG_2|DOUT\(0)))) # (\BLOCO_7seg|REG_2|DOUT\(2) & (!\BLOCO_7seg|REG_2|DOUT\(3))))) # (\BLOCO_7seg|REG_2|DOUT\(1) & 
-- (((!\BLOCO_7seg|REG_2|DOUT\(3) & \BLOCO_7seg|REG_2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011101100010000001110110001000000111011000100000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_2|rascSaida7seg[4]~4_combout\);

\BLOCO_7seg|DEC_2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_2|rascSaida7seg[5]~5_combout\ = (!\BLOCO_7seg|REG_2|DOUT\(2) & (!\BLOCO_7seg|REG_2|DOUT\(3) & ((\BLOCO_7seg|REG_2|DOUT\(0)) # (\BLOCO_7seg|REG_2|DOUT\(1))))) # (\BLOCO_7seg|REG_2|DOUT\(2) & (\BLOCO_7seg|REG_2|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_2|DOUT\(3) $ (!\BLOCO_7seg|REG_2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011100000010001001110000001000100111000000100010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_2|rascSaida7seg[5]~5_combout\);

\BLOCO_7seg|DEC_2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_2|rascSaida7seg[6]~6_combout\ = (!\BLOCO_7seg|REG_2|DOUT\(0) & (!\BLOCO_7seg|REG_2|DOUT\(1) & (!\BLOCO_7seg|REG_2|DOUT\(2) $ (\BLOCO_7seg|REG_2|DOUT\(3))))) # (\BLOCO_7seg|REG_2|DOUT\(0) & (!\BLOCO_7seg|REG_2|DOUT\(3) & 
-- (!\BLOCO_7seg|REG_2|DOUT\(2) $ (\BLOCO_7seg|REG_2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000100100100001000010010010000100001001001000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_2|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_2|rascSaida7seg[6]~6_combout\);

\BLOCO_7seg|hab_3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|hab_3~0_combout\ = ( \BLOCO_7seg|hab_2~0_combout\ & ( (\Processador|ROM1|memROM~2_combout\ & (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & \BLOCO_7seg|hab_1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \BLOCO_7seg|ALT_INV_hab_1~0_combout\,
	datae => \BLOCO_7seg|ALT_INV_hab_2~0_combout\,
	combout => \BLOCO_7seg|hab_3~0_combout\);

\BLOCO_7seg|REG_3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \BLOCO_7seg|hab_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_3|DOUT\(2));

\BLOCO_7seg|REG_3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \BLOCO_7seg|hab_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_3|DOUT\(3));

\BLOCO_7seg|REG_3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \BLOCO_7seg|hab_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_3|DOUT\(1));

\BLOCO_7seg|REG_3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \BLOCO_7seg|hab_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_3|DOUT\(0));

\BLOCO_7seg|DEC_3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_3|rascSaida7seg[0]~0_combout\ = (!\BLOCO_7seg|REG_3|DOUT\(1) & (!\BLOCO_7seg|REG_3|DOUT\(2) $ (!\BLOCO_7seg|REG_3|DOUT\(3) $ (\BLOCO_7seg|REG_3|DOUT\(0))))) # (\BLOCO_7seg|REG_3|DOUT\(1) & (!\BLOCO_7seg|REG_3|DOUT\(2) & 
-- (\BLOCO_7seg|REG_3|DOUT\(3) & \BLOCO_7seg|REG_3|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010010010011000001001001001100000100100100110000010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_3|rascSaida7seg[0]~0_combout\);

\BLOCO_7seg|DEC_3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_3|rascSaida7seg[1]~1_combout\ = (!\BLOCO_7seg|REG_3|DOUT\(3) & (\BLOCO_7seg|REG_3|DOUT\(2) & (!\BLOCO_7seg|REG_3|DOUT\(1) $ (!\BLOCO_7seg|REG_3|DOUT\(0))))) # (\BLOCO_7seg|REG_3|DOUT\(3) & ((!\BLOCO_7seg|REG_3|DOUT\(0) & 
-- (\BLOCO_7seg|REG_3|DOUT\(2))) # (\BLOCO_7seg|REG_3|DOUT\(0) & ((\BLOCO_7seg|REG_3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000011000101010100001100010101010000110001010101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_3|rascSaida7seg[1]~1_combout\);

\BLOCO_7seg|DEC_3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_3|rascSaida7seg[2]~2_combout\ = (!\BLOCO_7seg|REG_3|DOUT\(2) & (!\BLOCO_7seg|REG_3|DOUT\(3) & (\BLOCO_7seg|REG_3|DOUT\(1) & !\BLOCO_7seg|REG_3|DOUT\(0)))) # (\BLOCO_7seg|REG_3|DOUT\(2) & (\BLOCO_7seg|REG_3|DOUT\(3) & 
-- ((!\BLOCO_7seg|REG_3|DOUT\(0)) # (\BLOCO_7seg|REG_3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_3|rascSaida7seg[2]~2_combout\);

\BLOCO_7seg|DEC_3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_3|rascSaida7seg[3]~3_combout\ = (!\BLOCO_7seg|REG_3|DOUT\(1) & (!\BLOCO_7seg|REG_3|DOUT\(3) & (!\BLOCO_7seg|REG_3|DOUT\(0) $ (!\BLOCO_7seg|REG_3|DOUT\(2))))) # (\BLOCO_7seg|REG_3|DOUT\(1) & ((!\BLOCO_7seg|REG_3|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_3|DOUT\(2) & \BLOCO_7seg|REG_3|DOUT\(3))) # (\BLOCO_7seg|REG_3|DOUT\(0) & (\BLOCO_7seg|REG_3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(1),
	datac => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(2),
	datad => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(3),
	combout => \BLOCO_7seg|DEC_3|rascSaida7seg[3]~3_combout\);

\BLOCO_7seg|DEC_3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_3|rascSaida7seg[4]~4_combout\ = (!\BLOCO_7seg|REG_3|DOUT\(1) & ((!\BLOCO_7seg|REG_3|DOUT\(2) & ((\BLOCO_7seg|REG_3|DOUT\(0)))) # (\BLOCO_7seg|REG_3|DOUT\(2) & (!\BLOCO_7seg|REG_3|DOUT\(3))))) # (\BLOCO_7seg|REG_3|DOUT\(1) & 
-- (((!\BLOCO_7seg|REG_3|DOUT\(3) & \BLOCO_7seg|REG_3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011101100010000001110110001000000111011000100000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_3|rascSaida7seg[4]~4_combout\);

\BLOCO_7seg|DEC_3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_3|rascSaida7seg[5]~5_combout\ = (!\BLOCO_7seg|REG_3|DOUT\(2) & (!\BLOCO_7seg|REG_3|DOUT\(3) & ((\BLOCO_7seg|REG_3|DOUT\(0)) # (\BLOCO_7seg|REG_3|DOUT\(1))))) # (\BLOCO_7seg|REG_3|DOUT\(2) & (\BLOCO_7seg|REG_3|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_3|DOUT\(3) $ (!\BLOCO_7seg|REG_3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011100000010001001110000001000100111000000100010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_3|rascSaida7seg[5]~5_combout\);

\BLOCO_7seg|DEC_3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_3|rascSaida7seg[6]~6_combout\ = (!\BLOCO_7seg|REG_3|DOUT\(0) & (!\BLOCO_7seg|REG_3|DOUT\(1) & (!\BLOCO_7seg|REG_3|DOUT\(2) $ (\BLOCO_7seg|REG_3|DOUT\(3))))) # (\BLOCO_7seg|REG_3|DOUT\(0) & (!\BLOCO_7seg|REG_3|DOUT\(3) & 
-- (!\BLOCO_7seg|REG_3|DOUT\(2) $ (\BLOCO_7seg|REG_3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000100100100001000010010010000100001001001000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_3|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_3|rascSaida7seg[6]~6_combout\);

\BLOCO_7seg|hab_4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|hab_4~0_combout\ = ( \Processador|ROM1|memROM~17_combout\ & ( \BLOCO_7seg|hab_1~0_combout\ & ( (!\Processador|ROM1|memROM~2_combout\ & (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & 
-- !\Processador|ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \BLOCO_7seg|ALT_INV_hab_1~0_combout\,
	combout => \BLOCO_7seg|hab_4~0_combout\);

\BLOCO_7seg|REG_4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \BLOCO_7seg|hab_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_4|DOUT\(2));

\BLOCO_7seg|REG_4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \BLOCO_7seg|hab_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_4|DOUT\(3));

\BLOCO_7seg|REG_4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \BLOCO_7seg|hab_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_4|DOUT\(1));

\BLOCO_7seg|REG_4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \BLOCO_7seg|hab_4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_4|DOUT\(0));

\BLOCO_7seg|DEC_4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_4|rascSaida7seg[0]~0_combout\ = (!\BLOCO_7seg|REG_4|DOUT\(1) & (!\BLOCO_7seg|REG_4|DOUT\(2) $ (!\BLOCO_7seg|REG_4|DOUT\(3) $ (\BLOCO_7seg|REG_4|DOUT\(0))))) # (\BLOCO_7seg|REG_4|DOUT\(1) & (!\BLOCO_7seg|REG_4|DOUT\(2) & 
-- (\BLOCO_7seg|REG_4|DOUT\(3) & \BLOCO_7seg|REG_4|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010010010011000001001001001100000100100100110000010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_4|rascSaida7seg[0]~0_combout\);

\BLOCO_7seg|DEC_4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_4|rascSaida7seg[1]~1_combout\ = (!\BLOCO_7seg|REG_4|DOUT\(3) & (\BLOCO_7seg|REG_4|DOUT\(2) & (!\BLOCO_7seg|REG_4|DOUT\(1) $ (!\BLOCO_7seg|REG_4|DOUT\(0))))) # (\BLOCO_7seg|REG_4|DOUT\(3) & ((!\BLOCO_7seg|REG_4|DOUT\(0) & 
-- (\BLOCO_7seg|REG_4|DOUT\(2))) # (\BLOCO_7seg|REG_4|DOUT\(0) & ((\BLOCO_7seg|REG_4|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000011000101010100001100010101010000110001010101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_4|rascSaida7seg[1]~1_combout\);

\BLOCO_7seg|DEC_4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_4|rascSaida7seg[2]~2_combout\ = (!\BLOCO_7seg|REG_4|DOUT\(2) & (!\BLOCO_7seg|REG_4|DOUT\(3) & (\BLOCO_7seg|REG_4|DOUT\(1) & !\BLOCO_7seg|REG_4|DOUT\(0)))) # (\BLOCO_7seg|REG_4|DOUT\(2) & (\BLOCO_7seg|REG_4|DOUT\(3) & 
-- ((!\BLOCO_7seg|REG_4|DOUT\(0)) # (\BLOCO_7seg|REG_4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_4|rascSaida7seg[2]~2_combout\);

\BLOCO_7seg|DEC_4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_4|rascSaida7seg[3]~3_combout\ = (!\BLOCO_7seg|REG_4|DOUT\(1) & (!\BLOCO_7seg|REG_4|DOUT\(3) & (!\BLOCO_7seg|REG_4|DOUT\(0) $ (!\BLOCO_7seg|REG_4|DOUT\(2))))) # (\BLOCO_7seg|REG_4|DOUT\(1) & ((!\BLOCO_7seg|REG_4|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_4|DOUT\(2) & \BLOCO_7seg|REG_4|DOUT\(3))) # (\BLOCO_7seg|REG_4|DOUT\(0) & (\BLOCO_7seg|REG_4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(0),
	datab => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(1),
	datac => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(2),
	datad => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(3),
	combout => \BLOCO_7seg|DEC_4|rascSaida7seg[3]~3_combout\);

\BLOCO_7seg|DEC_4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_4|rascSaida7seg[4]~4_combout\ = (!\BLOCO_7seg|REG_4|DOUT\(1) & ((!\BLOCO_7seg|REG_4|DOUT\(2) & ((\BLOCO_7seg|REG_4|DOUT\(0)))) # (\BLOCO_7seg|REG_4|DOUT\(2) & (!\BLOCO_7seg|REG_4|DOUT\(3))))) # (\BLOCO_7seg|REG_4|DOUT\(1) & 
-- (((!\BLOCO_7seg|REG_4|DOUT\(3) & \BLOCO_7seg|REG_4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011101100010000001110110001000000111011000100000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_4|rascSaida7seg[4]~4_combout\);

\BLOCO_7seg|DEC_4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_4|rascSaida7seg[5]~5_combout\ = (!\BLOCO_7seg|REG_4|DOUT\(2) & (!\BLOCO_7seg|REG_4|DOUT\(3) & ((\BLOCO_7seg|REG_4|DOUT\(0)) # (\BLOCO_7seg|REG_4|DOUT\(1))))) # (\BLOCO_7seg|REG_4|DOUT\(2) & (\BLOCO_7seg|REG_4|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_4|DOUT\(3) $ (!\BLOCO_7seg|REG_4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011100000010001001110000001000100111000000100010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_4|rascSaida7seg[5]~5_combout\);

\BLOCO_7seg|DEC_4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_4|rascSaida7seg[6]~6_combout\ = (!\BLOCO_7seg|REG_4|DOUT\(0) & (!\BLOCO_7seg|REG_4|DOUT\(1) & (!\BLOCO_7seg|REG_4|DOUT\(2) $ (\BLOCO_7seg|REG_4|DOUT\(3))))) # (\BLOCO_7seg|REG_4|DOUT\(0) & (!\BLOCO_7seg|REG_4|DOUT\(3) & 
-- (!\BLOCO_7seg|REG_4|DOUT\(2) $ (\BLOCO_7seg|REG_4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000100100100001000010010010000100001001001000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_4|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_4|rascSaida7seg[6]~6_combout\);

\BLOCO_7seg|hab_5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|hab_5~0_combout\ = ( \Processador|ROM1|memROM~17_combout\ & ( \BLOCO_7seg|hab_1~0_combout\ & ( (\Processador|ROM1|memROM~2_combout\ & (\Processador|decoder|Equal13~0_combout\ & (\Processador|decoder|saida~1_combout\ & 
-- !\Processador|ROM1|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|decoder|ALT_INV_Equal13~0_combout\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~17_combout\,
	dataf => \BLOCO_7seg|ALT_INV_hab_1~0_combout\,
	combout => \BLOCO_7seg|hab_5~0_combout\);

\BLOCO_7seg|REG_5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~27_combout\,
	ena => \BLOCO_7seg|hab_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_5|DOUT\(2));

\BLOCO_7seg|REG_5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~28_combout\,
	ena => \BLOCO_7seg|hab_5~0_combout\,
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
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~29_combout\,
	ena => \BLOCO_7seg|hab_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_5|DOUT\(1));

\BLOCO_7seg|REG_5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|Banco_Reg|registrador~30_combout\,
	ena => \BLOCO_7seg|hab_5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_7seg|REG_5|DOUT\(0));

\BLOCO_7seg|DEC_5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_5|rascSaida7seg[0]~0_combout\ = (!\BLOCO_7seg|REG_5|DOUT\(1) & (!\BLOCO_7seg|REG_5|DOUT\(2) $ (!\BLOCO_7seg|REG_5|DOUT\(3) $ (\BLOCO_7seg|REG_5|DOUT\(0))))) # (\BLOCO_7seg|REG_5|DOUT\(1) & (!\BLOCO_7seg|REG_5|DOUT\(2) & 
-- (\BLOCO_7seg|REG_5|DOUT\(3) & \BLOCO_7seg|REG_5|DOUT\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010010010011000001001001001100000100100100110000010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_5|rascSaida7seg[0]~0_combout\);

\BLOCO_7seg|DEC_5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_5|rascSaida7seg[1]~1_combout\ = (!\BLOCO_7seg|REG_5|DOUT\(3) & (\BLOCO_7seg|REG_5|DOUT\(2) & (!\BLOCO_7seg|REG_5|DOUT\(1) $ (!\BLOCO_7seg|REG_5|DOUT\(0))))) # (\BLOCO_7seg|REG_5|DOUT\(3) & ((!\BLOCO_7seg|REG_5|DOUT\(0) & 
-- (\BLOCO_7seg|REG_5|DOUT\(2))) # (\BLOCO_7seg|REG_5|DOUT\(0) & ((\BLOCO_7seg|REG_5|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000011000101010100001100010101010000110001010101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_5|rascSaida7seg[1]~1_combout\);

\BLOCO_7seg|DEC_5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_5|rascSaida7seg[2]~2_combout\ = (!\BLOCO_7seg|REG_5|DOUT\(2) & (!\BLOCO_7seg|REG_5|DOUT\(3) & (\BLOCO_7seg|REG_5|DOUT\(1) & !\BLOCO_7seg|REG_5|DOUT\(0)))) # (\BLOCO_7seg|REG_5|DOUT\(2) & (\BLOCO_7seg|REG_5|DOUT\(3) & 
-- ((!\BLOCO_7seg|REG_5|DOUT\(0)) # (\BLOCO_7seg|REG_5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100100000001000110010000000100011001000000010001100100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(0),
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
-- (((!\BLOCO_7seg|REG_5|DOUT\(3) & \BLOCO_7seg|REG_5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011101100010000001110110001000000111011000100000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_5|rascSaida7seg[4]~4_combout\);

\BLOCO_7seg|DEC_5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_5|rascSaida7seg[5]~5_combout\ = (!\BLOCO_7seg|REG_5|DOUT\(2) & (!\BLOCO_7seg|REG_5|DOUT\(3) & ((\BLOCO_7seg|REG_5|DOUT\(0)) # (\BLOCO_7seg|REG_5|DOUT\(1))))) # (\BLOCO_7seg|REG_5|DOUT\(2) & (\BLOCO_7seg|REG_5|DOUT\(0) & 
-- (!\BLOCO_7seg|REG_5|DOUT\(3) $ (!\BLOCO_7seg|REG_5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100010011100000010001001110000001000100111000000100010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_5|rascSaida7seg[5]~5_combout\);

\BLOCO_7seg|DEC_5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_7seg|DEC_5|rascSaida7seg[6]~6_combout\ = (!\BLOCO_7seg|REG_5|DOUT\(0) & (!\BLOCO_7seg|REG_5|DOUT\(1) & (!\BLOCO_7seg|REG_5|DOUT\(2) $ (\BLOCO_7seg|REG_5|DOUT\(3))))) # (\BLOCO_7seg|REG_5|DOUT\(0) & (!\BLOCO_7seg|REG_5|DOUT\(3) & 
-- (!\BLOCO_7seg|REG_5|DOUT\(2) $ (\BLOCO_7seg|REG_5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010000100100100001000010010010000100001001001000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(2),
	datab => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(3),
	datac => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(1),
	datad => \BLOCO_7seg|REG_5|ALT_INV_DOUT\(0),
	combout => \BLOCO_7seg|DEC_5|rascSaida7seg[6]~6_combout\);

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

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

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

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

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

ww_PC_out(0) <= \PC_out[0]~output_o\;

ww_PC_out(1) <= \PC_out[1]~output_o\;

ww_PC_out(2) <= \PC_out[2]~output_o\;

ww_PC_out(3) <= \PC_out[3]~output_o\;

ww_PC_out(4) <= \PC_out[4]~output_o\;

ww_PC_out(5) <= \PC_out[5]~output_o\;

ww_PC_out(6) <= \PC_out[6]~output_o\;

ww_PC_out(7) <= \PC_out[7]~output_o\;

ww_PC_out(8) <= \PC_out[8]~output_o\;
END structure;


