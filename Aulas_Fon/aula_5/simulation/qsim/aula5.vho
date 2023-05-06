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

-- DATE "03/15/2023 23:36:59"

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

ENTITY 	aula5 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : OUT std_logic_vector(12 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END aula5;

ARCHITECTURE structure OF aula5 IS
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
SIGNAL ww_SW : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[0]~output_o\ : std_logic;
SIGNAL \SW[1]~output_o\ : std_logic;
SIGNAL \SW[2]~output_o\ : std_logic;
SIGNAL \SW[3]~output_o\ : std_logic;
SIGNAL \SW[4]~output_o\ : std_logic;
SIGNAL \SW[5]~output_o\ : std_logic;
SIGNAL \SW[6]~output_o\ : std_logic;
SIGNAL \SW[7]~output_o\ : std_logic;
SIGNAL \SW[8]~output_o\ : std_logic;
SIGNAL \SW[9]~output_o\ : std_logic;
SIGNAL \SW[10]~output_o\ : std_logic;
SIGNAL \SW[11]~output_o\ : std_logic;
SIGNAL \SW[12]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \decoder|Equal10~1_combout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[3]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[2]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[4]~9_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~34\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[5]~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \decoder|Equal10~0_combout\ : std_logic;
SIGNAL \decoder|Equal10~2_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \decoder|saida~1_combout\ : std_logic;
SIGNAL \decoder|saida~2_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~473_combout\ : std_logic;
SIGNAL \RAM|ram~341_combout\ : std_logic;
SIGNAL \RAM|ram~477_combout\ : std_logic;
SIGNAL \RAM|ram~345_combout\ : std_logic;
SIGNAL \RAM|ram~481_combout\ : std_logic;
SIGNAL \RAM|ram~349_combout\ : std_logic;
SIGNAL \RAM|ram~485_combout\ : std_logic;
SIGNAL \RAM|ram~353_combout\ : std_logic;
SIGNAL \RAM|ram~357_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~409_combout\ : std_logic;
SIGNAL \RAM|ram~273_combout\ : std_logic;
SIGNAL \RAM|ram~413_combout\ : std_logic;
SIGNAL \RAM|ram~277_combout\ : std_logic;
SIGNAL \RAM|ram~417_combout\ : std_logic;
SIGNAL \RAM|ram~281_combout\ : std_logic;
SIGNAL \RAM|ram~421_combout\ : std_logic;
SIGNAL \RAM|ram~285_combout\ : std_logic;
SIGNAL \RAM|ram~289_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~425_combout\ : std_logic;
SIGNAL \RAM|ram~290_combout\ : std_logic;
SIGNAL \RAM|ram~429_combout\ : std_logic;
SIGNAL \RAM|ram~294_combout\ : std_logic;
SIGNAL \RAM|ram~433_combout\ : std_logic;
SIGNAL \RAM|ram~298_combout\ : std_logic;
SIGNAL \RAM|ram~437_combout\ : std_logic;
SIGNAL \RAM|ram~302_combout\ : std_logic;
SIGNAL \RAM|ram~306_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~441_combout\ : std_logic;
SIGNAL \RAM|ram~307_combout\ : std_logic;
SIGNAL \RAM|ram~445_combout\ : std_logic;
SIGNAL \RAM|ram~311_combout\ : std_logic;
SIGNAL \RAM|ram~449_combout\ : std_logic;
SIGNAL \RAM|ram~315_combout\ : std_logic;
SIGNAL \RAM|ram~453_combout\ : std_logic;
SIGNAL \RAM|ram~319_combout\ : std_logic;
SIGNAL \RAM|ram~323_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~457_combout\ : std_logic;
SIGNAL \RAM|ram~324_combout\ : std_logic;
SIGNAL \RAM|ram~461_combout\ : std_logic;
SIGNAL \RAM|ram~328_combout\ : std_logic;
SIGNAL \RAM|ram~465_combout\ : std_logic;
SIGNAL \RAM|ram~332_combout\ : std_logic;
SIGNAL \RAM|ram~469_combout\ : std_logic;
SIGNAL \RAM|ram~336_combout\ : std_logic;
SIGNAL \RAM|ram~340_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~489_combout\ : std_logic;
SIGNAL \RAM|ram~358_combout\ : std_logic;
SIGNAL \RAM|ram~493_combout\ : std_logic;
SIGNAL \RAM|ram~362_combout\ : std_logic;
SIGNAL \RAM|ram~497_combout\ : std_logic;
SIGNAL \RAM|ram~366_combout\ : std_logic;
SIGNAL \RAM|ram~501_combout\ : std_logic;
SIGNAL \RAM|ram~370_combout\ : std_logic;
SIGNAL \RAM|ram~374_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~505_combout\ : std_logic;
SIGNAL \RAM|ram~375_combout\ : std_logic;
SIGNAL \RAM|ram~509_combout\ : std_logic;
SIGNAL \RAM|ram~379_combout\ : std_logic;
SIGNAL \RAM|ram~513_combout\ : std_logic;
SIGNAL \RAM|ram~383_combout\ : std_logic;
SIGNAL \RAM|ram~517_combout\ : std_logic;
SIGNAL \RAM|ram~387_combout\ : std_logic;
SIGNAL \RAM|ram~391_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~521_combout\ : std_logic;
SIGNAL \RAM|ram~392_combout\ : std_logic;
SIGNAL \RAM|ram~525_combout\ : std_logic;
SIGNAL \RAM|ram~396_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~400_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~404_combout\ : std_logic;
SIGNAL \RAM|ram~408_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \flag_ula|DOUT~1_combout\ : std_logic;
SIGNAL \flag_ula|DOUT~2_combout\ : std_logic;
SIGNAL \flag_ula|DOUT~0_combout\ : std_logic;
SIGNAL \flag_ula|DOUT~q\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[0]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \decoder|saida[9]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUX_JMP|saida_MUX[8]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \Salva_Ret|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \flag_ula|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \flag_ula|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \decoder|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~408_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~391_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~374_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~357_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~340_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~323_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~306_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~289_combout\ : std_logic;
SIGNAL \decoder|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \Salva_Ret|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MUX_JMP|ALT_INV_saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \flag_ula|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \decoder|ALT_INV_saida[9]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~525_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~521_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~517_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~513_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~509_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~505_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~501_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~497_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~493_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~489_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~485_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~481_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~477_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~473_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~469_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~465_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~461_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~457_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~453_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~449_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~445_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~441_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~437_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~433_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~429_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~425_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~421_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~417_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~413_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~409_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~404_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~400_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~396_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~392_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~387_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~383_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~379_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~375_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~370_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~366_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~362_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~358_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~353_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~349_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~345_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~341_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~336_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~332_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~328_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~324_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~319_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~315_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~311_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~307_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~302_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~298_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~294_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~290_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~285_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~281_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~277_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~273_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
SW <= ww_SW;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\flag_ula|ALT_INV_DOUT~2_combout\ <= NOT \flag_ula|DOUT~2_combout\;
\flag_ula|ALT_INV_DOUT~1_combout\ <= NOT \flag_ula|DOUT~1_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\decoder|ALT_INV_Equal10~2_combout\ <= NOT \decoder|Equal10~2_combout\;
\RAM|ALT_INV_ram~408_combout\ <= NOT \RAM|ram~408_combout\;
\RAM|ALT_INV_ram~391_combout\ <= NOT \RAM|ram~391_combout\;
\RAM|ALT_INV_ram~374_combout\ <= NOT \RAM|ram~374_combout\;
\RAM|ALT_INV_ram~357_combout\ <= NOT \RAM|ram~357_combout\;
\RAM|ALT_INV_ram~340_combout\ <= NOT \RAM|ram~340_combout\;
\RAM|ALT_INV_ram~323_combout\ <= NOT \RAM|ram~323_combout\;
\RAM|ALT_INV_ram~306_combout\ <= NOT \RAM|ram~306_combout\;
\RAM|ALT_INV_ram~289_combout\ <= NOT \RAM|ram~289_combout\;
\decoder|ALT_INV_Equal10~0_combout\ <= NOT \decoder|Equal10~0_combout\;
\Salva_Ret|ALT_INV_DOUT\(4) <= NOT \Salva_Ret|DOUT\(4);
\Salva_Ret|ALT_INV_DOUT\(5) <= NOT \Salva_Ret|DOUT\(5);
\Salva_Ret|ALT_INV_DOUT\(6) <= NOT \Salva_Ret|DOUT\(6);
\Salva_Ret|ALT_INV_DOUT\(7) <= NOT \Salva_Ret|DOUT\(7);
\Salva_Ret|ALT_INV_DOUT\(8) <= NOT \Salva_Ret|DOUT\(8);
\Salva_Ret|ALT_INV_DOUT\(3) <= NOT \Salva_Ret|DOUT\(3);
\Salva_Ret|ALT_INV_DOUT\(2) <= NOT \Salva_Ret|DOUT\(2);
\Salva_Ret|ALT_INV_DOUT\(1) <= NOT \Salva_Ret|DOUT\(1);
\Salva_Ret|ALT_INV_DOUT\(0) <= NOT \Salva_Ret|DOUT\(0);
\MUX_JMP|ALT_INV_saida_MUX[7]~0_combout\ <= NOT \MUX_JMP|saida_MUX[7]~0_combout\;
\flag_ula|ALT_INV_DOUT~q\ <= NOT \flag_ula|DOUT~q\;
\decoder|ALT_INV_saida[9]~0_combout\ <= NOT \decoder|saida[9]~0_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~525_combout\ <= NOT \RAM|ram~525_combout\;
\RAM|ALT_INV_ram~521_combout\ <= NOT \RAM|ram~521_combout\;
\RAM|ALT_INV_ram~517_combout\ <= NOT \RAM|ram~517_combout\;
\RAM|ALT_INV_ram~513_combout\ <= NOT \RAM|ram~513_combout\;
\RAM|ALT_INV_ram~509_combout\ <= NOT \RAM|ram~509_combout\;
\RAM|ALT_INV_ram~505_combout\ <= NOT \RAM|ram~505_combout\;
\RAM|ALT_INV_ram~501_combout\ <= NOT \RAM|ram~501_combout\;
\RAM|ALT_INV_ram~497_combout\ <= NOT \RAM|ram~497_combout\;
\RAM|ALT_INV_ram~493_combout\ <= NOT \RAM|ram~493_combout\;
\RAM|ALT_INV_ram~489_combout\ <= NOT \RAM|ram~489_combout\;
\RAM|ALT_INV_ram~485_combout\ <= NOT \RAM|ram~485_combout\;
\RAM|ALT_INV_ram~481_combout\ <= NOT \RAM|ram~481_combout\;
\RAM|ALT_INV_ram~477_combout\ <= NOT \RAM|ram~477_combout\;
\RAM|ALT_INV_ram~473_combout\ <= NOT \RAM|ram~473_combout\;
\RAM|ALT_INV_ram~469_combout\ <= NOT \RAM|ram~469_combout\;
\RAM|ALT_INV_ram~465_combout\ <= NOT \RAM|ram~465_combout\;
\RAM|ALT_INV_ram~461_combout\ <= NOT \RAM|ram~461_combout\;
\RAM|ALT_INV_ram~457_combout\ <= NOT \RAM|ram~457_combout\;
\RAM|ALT_INV_ram~453_combout\ <= NOT \RAM|ram~453_combout\;
\RAM|ALT_INV_ram~449_combout\ <= NOT \RAM|ram~449_combout\;
\RAM|ALT_INV_ram~445_combout\ <= NOT \RAM|ram~445_combout\;
\RAM|ALT_INV_ram~441_combout\ <= NOT \RAM|ram~441_combout\;
\RAM|ALT_INV_ram~437_combout\ <= NOT \RAM|ram~437_combout\;
\RAM|ALT_INV_ram~433_combout\ <= NOT \RAM|ram~433_combout\;
\RAM|ALT_INV_ram~429_combout\ <= NOT \RAM|ram~429_combout\;
\RAM|ALT_INV_ram~425_combout\ <= NOT \RAM|ram~425_combout\;
\RAM|ALT_INV_ram~421_combout\ <= NOT \RAM|ram~421_combout\;
\RAM|ALT_INV_ram~417_combout\ <= NOT \RAM|ram~417_combout\;
\RAM|ALT_INV_ram~413_combout\ <= NOT \RAM|ram~413_combout\;
\RAM|ALT_INV_ram~409_combout\ <= NOT \RAM|ram~409_combout\;
\RAM|ALT_INV_ram~404_combout\ <= NOT \RAM|ram~404_combout\;
\RAM|ALT_INV_ram~400_combout\ <= NOT \RAM|ram~400_combout\;
\RAM|ALT_INV_ram~396_combout\ <= NOT \RAM|ram~396_combout\;
\RAM|ALT_INV_ram~392_combout\ <= NOT \RAM|ram~392_combout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\RAM|ALT_INV_ram~387_combout\ <= NOT \RAM|ram~387_combout\;
\RAM|ALT_INV_ram~383_combout\ <= NOT \RAM|ram~383_combout\;
\RAM|ALT_INV_ram~379_combout\ <= NOT \RAM|ram~379_combout\;
\RAM|ALT_INV_ram~375_combout\ <= NOT \RAM|ram~375_combout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\RAM|ALT_INV_ram~370_combout\ <= NOT \RAM|ram~370_combout\;
\RAM|ALT_INV_ram~366_combout\ <= NOT \RAM|ram~366_combout\;
\RAM|ALT_INV_ram~362_combout\ <= NOT \RAM|ram~362_combout\;
\RAM|ALT_INV_ram~358_combout\ <= NOT \RAM|ram~358_combout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\RAM|ALT_INV_ram~353_combout\ <= NOT \RAM|ram~353_combout\;
\RAM|ALT_INV_ram~349_combout\ <= NOT \RAM|ram~349_combout\;
\RAM|ALT_INV_ram~345_combout\ <= NOT \RAM|ram~345_combout\;
\RAM|ALT_INV_ram~341_combout\ <= NOT \RAM|ram~341_combout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\RAM|ALT_INV_ram~336_combout\ <= NOT \RAM|ram~336_combout\;
\RAM|ALT_INV_ram~332_combout\ <= NOT \RAM|ram~332_combout\;
\RAM|ALT_INV_ram~328_combout\ <= NOT \RAM|ram~328_combout\;
\RAM|ALT_INV_ram~324_combout\ <= NOT \RAM|ram~324_combout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\RAM|ALT_INV_ram~319_combout\ <= NOT \RAM|ram~319_combout\;
\RAM|ALT_INV_ram~315_combout\ <= NOT \RAM|ram~315_combout\;
\RAM|ALT_INV_ram~311_combout\ <= NOT \RAM|ram~311_combout\;
\RAM|ALT_INV_ram~307_combout\ <= NOT \RAM|ram~307_combout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\RAM|ALT_INV_ram~302_combout\ <= NOT \RAM|ram~302_combout\;
\RAM|ALT_INV_ram~298_combout\ <= NOT \RAM|ram~298_combout\;
\RAM|ALT_INV_ram~294_combout\ <= NOT \RAM|ram~294_combout\;
\RAM|ALT_INV_ram~290_combout\ <= NOT \RAM|ram~290_combout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\RAM|ALT_INV_ram~285_combout\ <= NOT \RAM|ram~285_combout\;
\RAM|ALT_INV_ram~281_combout\ <= NOT \RAM|ram~281_combout\;
\RAM|ALT_INV_ram~277_combout\ <= NOT \RAM|ram~277_combout\;
\RAM|ALT_INV_ram~273_combout\ <= NOT \RAM|ram~273_combout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);

\SW[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~1_combout\,
	devoe => ww_devoe,
	o => \SW[0]~output_o\);

\SW[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~2_combout\,
	devoe => ww_devoe,
	o => \SW[1]~output_o\);

\SW[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~4_combout\,
	devoe => ww_devoe,
	o => \SW[2]~output_o\);

\SW[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~5_combout\,
	devoe => ww_devoe,
	o => \SW[3]~output_o\);

\SW[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~6_combout\,
	devoe => ww_devoe,
	o => \SW[4]~output_o\);

\SW[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SW[5]~output_o\);

\SW[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SW[6]~output_o\);

\SW[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SW[7]~output_o\);

\SW[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~8_combout\,
	devoe => ww_devoe,
	o => \SW[8]~output_o\);

\SW[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~10_combout\,
	devoe => ww_devoe,
	o => \SW[9]~output_o\);

\SW[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~12_combout\,
	devoe => ww_devoe,
	o => \SW[10]~output_o\);

\SW[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~14_combout\,
	devoe => ww_devoe,
	o => \SW[11]~output_o\);

\SW[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM1|memROM~16_combout\,
	devoe => ww_devoe,
	o => \SW[12]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
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
	i => \PC|DOUT\(1),
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
	i => \PC|DOUT\(2),
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
	i => \PC|DOUT\(3),
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
	i => \PC|DOUT\(4),
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
	i => \PC|DOUT\(5),
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
	i => \PC|DOUT\(6),
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
	i => \PC|DOUT\(7),
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
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(0),
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
	i => \REGA|DOUT\(1),
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
	i => \REGA|DOUT\(2),
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
	i => \REGA|DOUT\(3),
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
	i => \REGA|DOUT\(4),
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
	i => \REGA|DOUT\(5),
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
	i => \REGA|DOUT\(6),
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
	i => \REGA|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & \ROM1|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~5_combout\);

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ ((!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(0))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~13_combout\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) # (\PC|DOUT\(0) & (\PC|DOUT\(1) & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~15_combout\);

\decoder|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|Equal10~1_combout\ = ( \ROM1|memROM~15_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~9_combout\ & (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~13_combout\,
	datae => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \decoder|Equal10~1_combout\);

\Salva_Ret|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Salva_Ret|DOUT\(3));

\MUX_JMP|saida_MUX[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[3]~4_combout\ = ( \Salva_Ret|DOUT\(3) & ( (!\decoder|saida[9]~0_combout\ & ((!\MUX_JMP|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~13_sumout\))) # (\MUX_JMP|saida_MUX[7]~0_combout\ & (\ROM1|memROM~5_combout\)))) # 
-- (\decoder|saida[9]~0_combout\ & (!\MUX_JMP|saida_MUX[7]~0_combout\)) ) ) # ( !\Salva_Ret|DOUT\(3) & ( (!\decoder|saida[9]~0_combout\ & ((!\MUX_JMP|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~13_sumout\))) # (\MUX_JMP|saida_MUX[7]~0_combout\ & 
-- (\ROM1|memROM~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000000010100010100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida[9]~0_combout\,
	datab => \MUX_JMP|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \incrementaPC|ALT_INV_Add0~13_sumout\,
	datae => \Salva_Ret|ALT_INV_DOUT\(3),
	combout => \MUX_JMP|saida_MUX[3]~4_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & (!\PC|DOUT\(1) $ (\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000100000110001000010000011000100001000001100010000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \ROM1|memROM~4_combout\);

\Salva_Ret|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Salva_Ret|DOUT\(2));

\MUX_JMP|saida_MUX[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[2]~3_combout\ = ( \Salva_Ret|DOUT\(2) & ( (!\decoder|saida[9]~0_combout\ & ((!\MUX_JMP|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~9_sumout\))) # (\MUX_JMP|saida_MUX[7]~0_combout\ & (\ROM1|memROM~4_combout\)))) # 
-- (\decoder|saida[9]~0_combout\ & (((!\MUX_JMP|saida_MUX[7]~0_combout\)))) ) ) # ( !\Salva_Ret|DOUT\(2) & ( (!\decoder|saida[9]~0_combout\ & ((!\MUX_JMP|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~9_sumout\))) # (\MUX_JMP|saida_MUX[7]~0_combout\ & 
-- (\ROM1|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000100110001000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \decoder|ALT_INV_saida[9]~0_combout\,
	datac => \MUX_JMP|ALT_INV_saida_MUX[7]~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~9_sumout\,
	datae => \Salva_Ret|ALT_INV_DOUT\(2),
	combout => \MUX_JMP|saida_MUX[2]~3_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \ROM1|memROM~0_combout\ & ( (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (\PC|DOUT\(2) & \PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~6_combout\);

\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~34\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~33_sumout\,
	cout => \incrementaPC|Add0~34\);

\Salva_Ret|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Salva_Ret|DOUT\(4));

\MUX_JMP|saida_MUX[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[4]~9_combout\ = ( \Salva_Ret|DOUT\(4) & ( (!\decoder|saida[9]~0_combout\ & ((!\MUX_JMP|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~33_sumout\))) # (\MUX_JMP|saida_MUX[7]~0_combout\ & (\ROM1|memROM~6_combout\)))) # 
-- (\decoder|saida[9]~0_combout\ & (!\MUX_JMP|saida_MUX[7]~0_combout\)) ) ) # ( !\Salva_Ret|DOUT\(4) & ( (!\decoder|saida[9]~0_combout\ & ((!\MUX_JMP|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~33_sumout\))) # (\MUX_JMP|saida_MUX[7]~0_combout\ & 
-- (\ROM1|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010010001101100111000000010100010100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida[9]~0_combout\,
	datab => \MUX_JMP|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \incrementaPC|ALT_INV_Add0~33_sumout\,
	datae => \Salva_Ret|ALT_INV_DOUT\(4),
	combout => \MUX_JMP|saida_MUX[4]~9_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~34\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

\Salva_Ret|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Salva_Ret|DOUT\(5));

\MUX_JMP|saida_MUX[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[5]~8_combout\ = (!\MUX_JMP|saida_MUX[7]~0_combout\ & ((!\decoder|saida[9]~0_combout\ & ((\incrementaPC|Add0~29_sumout\))) # (\decoder|saida[9]~0_combout\ & (\Salva_Ret|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida[9]~0_combout\,
	datab => \MUX_JMP|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \Salva_Ret|ALT_INV_DOUT\(5),
	datad => \incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \MUX_JMP|saida_MUX[5]~8_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

\Salva_Ret|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Salva_Ret|DOUT\(6));

\MUX_JMP|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[6]~7_combout\ = (!\MUX_JMP|saida_MUX[7]~0_combout\ & ((!\decoder|saida[9]~0_combout\ & ((\incrementaPC|Add0~25_sumout\))) # (\decoder|saida[9]~0_combout\ & (\Salva_Ret|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida[9]~0_combout\,
	datab => \MUX_JMP|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \Salva_Ret|ALT_INV_DOUT\(6),
	datad => \incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \MUX_JMP|saida_MUX[6]~7_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(0))) # (\PC|DOUT\(2) & ((\PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001100100000001000110010000000100011001000000010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~18_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( !\PC|DOUT\(4) & ( \ROM1|memROM~18_combout\ & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~18_combout\,
	combout => \ROM1|memROM~2_combout\);

\Salva_Ret|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Salva_Ret|DOUT\(1));

\MUX_JMP|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[1]~2_combout\ = ( \Salva_Ret|DOUT\(1) & ( (!\decoder|saida[9]~0_combout\ & ((!\MUX_JMP|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~5_sumout\))) # (\MUX_JMP|saida_MUX[7]~0_combout\ & (\ROM1|memROM~2_combout\)))) # 
-- (\decoder|saida[9]~0_combout\ & (((!\MUX_JMP|saida_MUX[7]~0_combout\)))) ) ) # ( !\Salva_Ret|DOUT\(1) & ( (!\decoder|saida[9]~0_combout\ & ((!\MUX_JMP|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~5_sumout\))) # (\MUX_JMP|saida_MUX[7]~0_combout\ & 
-- (\ROM1|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000100110001000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \decoder|ALT_INV_saida[9]~0_combout\,
	datac => \MUX_JMP|ALT_INV_saida_MUX[7]~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~5_sumout\,
	datae => \Salva_Ret|ALT_INV_DOUT\(1),
	combout => \MUX_JMP|saida_MUX[1]~2_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (!\PC|DOUT\(1))) # (\PC|DOUT\(0) & ((\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~12_combout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~13_combout\,
	combout => \ROM1|memROM~14_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~15_combout\,
	combout => \ROM1|memROM~16_combout\);

\decoder|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|Equal10~0_combout\ = (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & !\ROM1|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \decoder|Equal10~0_combout\);

\decoder|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|Equal10~2_combout\ = (!\ROM1|memROM~10_combout\ & (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & !\ROM1|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \decoder|Equal10~2_combout\);

\MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[4]~4_combout\ = (!\decoder|Equal10~0_combout\ & ((\RAM|ram~357_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \decoder|ALT_INV_Equal10~0_combout\,
	datac => \RAM|ALT_INV_ram~357_combout\,
	combout => \MUX1|saida_MUX[4]~4_combout\);

\decoder|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|saida~1_combout\ = (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~16_combout\ & ((\ROM1|memROM~14_combout\) # (\ROM1|memROM~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110000000000010011000000000001001100000000000100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \decoder|saida~1_combout\);

\decoder|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|saida~2_combout\ = (!\ROM1|memROM~16_combout\ & (!\ROM1|memROM~14_combout\ $ (((!\ROM1|memROM~12_combout\ & !\ROM1|memROM~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010001000001010001000100000101000100010000010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~16_combout\,
	datab => \ROM1|ALT_INV_memROM~14_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \decoder|saida~2_combout\);

\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \MUX1|saida_MUX[4]~4_combout\,
	sload => \decoder|saida~1_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( \ROM1|memROM~0_combout\ & ( (!\PC|DOUT\(3) & (\PC|DOUT\(2) & (\PC|DOUT\(1) & !\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM|process_0~0_combout\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \ROM1|memROM~3_combout\ & ( \ROM1|memROM~0_combout\ ) ) # ( !\ROM1|memROM~3_combout\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & (!\PC|DOUT\(3) & \ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001111111100000000100000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( !\RAM|ram~537_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~6_combout\ & \RAM|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	datae => \RAM|ALT_INV_ram~537_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( !\RAM|ram~537_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~6_combout\ & \RAM|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	datae => \RAM|ALT_INV_ram~537_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~45_q\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( !\RAM|ram~537_combout\ & ( (!\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~6_combout\ & \RAM|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	datae => \RAM|ALT_INV_ram~537_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( !\RAM|ram~537_combout\ & ( (!\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & (!\ROM1|memROM~6_combout\ & \RAM|process_0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_process_0~0_combout\,
	datae => \RAM|ALT_INV_ram~537_combout\,
	combout => \RAM|ram~540_combout\);

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~473\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~473_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~21_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~29_q\)))) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~37_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~45_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~29_q\,
	datab => \RAM|ALT_INV_ram~45_q\,
	datac => \RAM|ALT_INV_ram~37_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~21_q\,
	combout => \RAM|ram~473_combout\);

\RAM|ram~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~341_combout\ = ( \RAM|ram~473_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~473_combout\,
	combout => \RAM|ram~341_combout\);

\RAM|ram~477\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~477_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~477_combout\);

\RAM|ram~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~345_combout\ = ( \RAM|ram~477_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~477_combout\,
	combout => \RAM|ram~345_combout\);

\RAM|ram~481\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~481_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~481_combout\);

\RAM|ram~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~349_combout\ = ( \RAM|ram~481_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~481_combout\,
	combout => \RAM|ram~349_combout\);

\RAM|ram~485\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~485_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~485_combout\);

\RAM|ram~353\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~353_combout\ = ( \RAM|ram~485_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~485_combout\,
	combout => \RAM|ram~353_combout\);

\RAM|ram~357\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~357_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~353_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~349_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ 
-- & ( \RAM|ram~345_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~341_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~341_combout\,
	datab => \RAM|ALT_INV_ram~345_combout\,
	datac => \RAM|ALT_INV_ram~349_combout\,
	datad => \RAM|ALT_INV_ram~353_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~357_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( !\decoder|Equal10~2_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \decoder|ALT_INV_Equal10~2_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & ((\RAM|ram~289_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~1_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & ((\RAM|ram~289_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~1_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \decoder|ALT_INV_Equal10~2_combout\,
	datad => \RAM|ALT_INV_ram~289_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = (!\decoder|Equal10~0_combout\ & ((\RAM|ram~289_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \decoder|ALT_INV_Equal10~0_combout\,
	datac => \RAM|ALT_INV_ram~289_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \MUX1|saida_MUX[0]~0_combout\,
	sload => \decoder|saida~1_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~409\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~409_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~17_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~25_q\)))) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~33_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~41_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~25_q\,
	datab => \RAM|ALT_INV_ram~41_q\,
	datac => \RAM|ALT_INV_ram~33_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~17_q\,
	combout => \RAM|ram~409_combout\);

\RAM|ram~273\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~273_combout\ = ( \RAM|ram~409_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~409_combout\,
	combout => \RAM|ram~273_combout\);

\RAM|ram~413\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~413_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~413_combout\);

\RAM|ram~277\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~277_combout\ = ( \RAM|ram~413_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~413_combout\,
	combout => \RAM|ram~277_combout\);

\RAM|ram~417\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~417_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~417_combout\);

\RAM|ram~281\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~281_combout\ = ( \RAM|ram~417_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~417_combout\,
	combout => \RAM|ram~281_combout\);

\RAM|ram~421\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~421_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~421_combout\);

\RAM|ram~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~285_combout\ = ( \RAM|ram~421_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~421_combout\,
	combout => \RAM|ram~285_combout\);

\RAM|ram~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~289_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~285_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~281_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ 
-- & ( \RAM|ram~277_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~273_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~273_combout\,
	datab => \RAM|ALT_INV_ram~277_combout\,
	datac => \RAM|ALT_INV_ram~281_combout\,
	datad => \RAM|ALT_INV_ram~285_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~289_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & ((\RAM|ram~306_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~2_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & ((\RAM|ram~306_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~2_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \decoder|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~306_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~1_combout\ = (!\decoder|Equal10~0_combout\ & ((\RAM|ram~306_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \decoder|ALT_INV_Equal10~0_combout\,
	datac => \RAM|ALT_INV_ram~306_combout\,
	combout => \MUX1|saida_MUX[1]~1_combout\);

\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \MUX1|saida_MUX[1]~1_combout\,
	sload => \decoder|saida~1_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~425\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~425_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~18_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~26_q\)))) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~34_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~42_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datab => \RAM|ALT_INV_ram~42_q\,
	datac => \RAM|ALT_INV_ram~34_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~18_q\,
	combout => \RAM|ram~425_combout\);

\RAM|ram~290\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~290_combout\ = ( \RAM|ram~425_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~425_combout\,
	combout => \RAM|ram~290_combout\);

\RAM|ram~429\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~429_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~429_combout\);

\RAM|ram~294\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~294_combout\ = ( \RAM|ram~429_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~429_combout\,
	combout => \RAM|ram~294_combout\);

\RAM|ram~433\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~433_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~433_combout\);

\RAM|ram~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~298_combout\ = ( \RAM|ram~433_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~433_combout\,
	combout => \RAM|ram~298_combout\);

\RAM|ram~437\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~437_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~437_combout\);

\RAM|ram~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~302_combout\ = ( \RAM|ram~437_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~437_combout\,
	combout => \RAM|ram~302_combout\);

\RAM|ram~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~306_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~302_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~298_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ 
-- & ( \RAM|ram~294_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~290_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~290_combout\,
	datab => \RAM|ALT_INV_ram~294_combout\,
	datac => \RAM|ALT_INV_ram~298_combout\,
	datad => \RAM|ALT_INV_ram~302_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~306_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & ((\RAM|ram~323_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & ((\RAM|ram~323_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \decoder|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~323_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~2_combout\ = (!\decoder|Equal10~0_combout\ & ((\RAM|ram~323_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \decoder|ALT_INV_Equal10~0_combout\,
	datac => \RAM|ALT_INV_ram~323_combout\,
	combout => \MUX1|saida_MUX[2]~2_combout\);

\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \MUX1|saida_MUX[2]~2_combout\,
	sload => \decoder|saida~1_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~43_q\);

\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~441\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~441_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~19_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~27_q\)))) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~35_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~43_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~27_q\,
	datab => \RAM|ALT_INV_ram~43_q\,
	datac => \RAM|ALT_INV_ram~35_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~19_q\,
	combout => \RAM|ram~441_combout\);

\RAM|ram~307\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~307_combout\ = ( \RAM|ram~441_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~441_combout\,
	combout => \RAM|ram~307_combout\);

\RAM|ram~445\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~445_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~445_combout\);

\RAM|ram~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~311_combout\ = ( \RAM|ram~445_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~445_combout\,
	combout => \RAM|ram~311_combout\);

\RAM|ram~449\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~449_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~449_combout\);

\RAM|ram~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~315_combout\ = ( \RAM|ram~449_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~449_combout\,
	combout => \RAM|ram~315_combout\);

\RAM|ram~453\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~453_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~453_combout\);

\RAM|ram~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~319_combout\ = ( \RAM|ram~453_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~453_combout\,
	combout => \RAM|ram~319_combout\);

\RAM|ram~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~323_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~319_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~315_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ 
-- & ( \RAM|ram~311_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~307_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~307_combout\,
	datab => \RAM|ALT_INV_ram~311_combout\,
	datac => \RAM|ALT_INV_ram~315_combout\,
	datad => \RAM|ALT_INV_ram~319_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~323_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & ((\RAM|ram~340_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & ((\RAM|ram~340_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \decoder|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM|ALT_INV_ram~340_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~3_combout\ = (!\decoder|Equal10~0_combout\ & ((\RAM|ram~340_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \decoder|ALT_INV_Equal10~0_combout\,
	datac => \RAM|ALT_INV_ram~340_combout\,
	combout => \MUX1|saida_MUX[3]~3_combout\);

\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \MUX1|saida_MUX[3]~3_combout\,
	sload => \decoder|saida~1_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~44_q\);

\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~457\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~457_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~20_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~28_q\)))) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~36_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~44_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datab => \RAM|ALT_INV_ram~44_q\,
	datac => \RAM|ALT_INV_ram~36_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~20_q\,
	combout => \RAM|ram~457_combout\);

\RAM|ram~324\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~324_combout\ = ( \RAM|ram~457_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~457_combout\,
	combout => \RAM|ram~324_combout\);

\RAM|ram~461\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~461_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~461_combout\);

\RAM|ram~328\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~328_combout\ = ( \RAM|ram~461_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~461_combout\,
	combout => \RAM|ram~328_combout\);

\RAM|ram~465\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~465_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~465_combout\);

\RAM|ram~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~332_combout\ = ( \RAM|ram~465_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~465_combout\,
	combout => \RAM|ram~332_combout\);

\RAM|ram~469\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~469_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~469_combout\);

\RAM|ram~336\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~336_combout\ = ( \RAM|ram~469_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~469_combout\,
	combout => \RAM|ram~336_combout\);

\RAM|ram~340\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~340_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~336_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~332_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ 
-- & ( \RAM|ram~328_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~324_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~324_combout\,
	datab => \RAM|ALT_INV_ram~328_combout\,
	datac => \RAM|ALT_INV_ram~332_combout\,
	datad => \RAM|ALT_INV_ram~336_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~340_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & ((\RAM|ram~357_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & ((\RAM|ram~357_combout\))) # (\decoder|Equal10~0_combout\ & (\ROM1|memROM~6_combout\)))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \decoder|ALT_INV_Equal10~2_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_ram~357_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[5]~5_combout\ = (!\decoder|Equal10~0_combout\ & \RAM|ram~374_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \RAM|ALT_INV_ram~374_combout\,
	combout => \MUX1|saida_MUX[5]~5_combout\);

\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \MUX1|saida_MUX[5]~5_combout\,
	sload => \decoder|saida~1_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~46_q\);

\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~489\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~489_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~22_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~30_q\)))) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~38_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~46_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datab => \RAM|ALT_INV_ram~46_q\,
	datac => \RAM|ALT_INV_ram~38_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~22_q\,
	combout => \RAM|ram~489_combout\);

\RAM|ram~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~358_combout\ = ( \RAM|ram~489_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~489_combout\,
	combout => \RAM|ram~358_combout\);

\RAM|ram~493\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~493_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~493_combout\);

\RAM|ram~362\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~362_combout\ = ( \RAM|ram~493_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~493_combout\,
	combout => \RAM|ram~362_combout\);

\RAM|ram~497\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~497_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~497_combout\);

\RAM|ram~366\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~366_combout\ = ( \RAM|ram~497_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~497_combout\,
	combout => \RAM|ram~366_combout\);

\RAM|ram~501\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~501_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~501_combout\);

\RAM|ram~370\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~370_combout\ = ( \RAM|ram~501_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~501_combout\,
	combout => \RAM|ram~370_combout\);

\RAM|ram~374\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~374_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~370_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~366_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ 
-- & ( \RAM|ram~362_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~358_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~358_combout\,
	datab => \RAM|ALT_INV_ram~362_combout\,
	datac => \RAM|ALT_INV_ram~366_combout\,
	datad => \RAM|ALT_INV_ram~370_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~374_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & \RAM|ram~374_combout\))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & \RAM|ram~374_combout\))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~2_combout\,
	datab => \decoder|ALT_INV_Equal10~0_combout\,
	datad => \RAM|ALT_INV_ram~374_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[6]~6_combout\ = (!\decoder|Equal10~0_combout\ & \RAM|ram~391_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \RAM|ALT_INV_ram~391_combout\,
	combout => \MUX1|saida_MUX[6]~6_combout\);

\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \MUX1|saida_MUX[6]~6_combout\,
	sload => \decoder|saida~1_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~505\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~505_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~23_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~31_q\)))) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~39_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~47_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~31_q\,
	datab => \RAM|ALT_INV_ram~47_q\,
	datac => \RAM|ALT_INV_ram~39_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~23_q\,
	combout => \RAM|ram~505_combout\);

\RAM|ram~375\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~375_combout\ = ( \RAM|ram~505_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~505_combout\,
	combout => \RAM|ram~375_combout\);

\RAM|ram~509\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~509_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~509_combout\);

\RAM|ram~379\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~379_combout\ = ( \RAM|ram~509_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~509_combout\,
	combout => \RAM|ram~379_combout\);

\RAM|ram~513\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~513_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~513_combout\);

\RAM|ram~383\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~383_combout\ = ( \RAM|ram~513_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~513_combout\,
	combout => \RAM|ram~383_combout\);

\RAM|ram~517\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~517_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~517_combout\);

\RAM|ram~387\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~387_combout\ = ( \RAM|ram~517_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~517_combout\,
	combout => \RAM|ram~387_combout\);

\RAM|ram~391\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~391_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~387_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~383_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ 
-- & ( \RAM|ram~379_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~375_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~375_combout\,
	datab => \RAM|ALT_INV_ram~379_combout\,
	datac => \RAM|ALT_INV_ram~383_combout\,
	datad => \RAM|ALT_INV_ram~387_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~391_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & \RAM|ram~391_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & \RAM|ram~391_combout\))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~2_combout\,
	datab => \decoder|ALT_INV_Equal10~0_combout\,
	datad => \RAM|ALT_INV_ram~391_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~7_combout\ = (!\decoder|Equal10~0_combout\ & \RAM|ram~408_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~0_combout\,
	datab => \RAM|ALT_INV_ram~408_combout\,
	combout => \MUX1|saida_MUX[7]~7_combout\);

\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \MUX1|saida_MUX[7]~7_combout\,
	sload => \decoder|saida~1_combout\,
	ena => \decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM|ram~538_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM|ram~539_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~48_q\);

\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM|ram~541_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM|ram~540_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~521\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~521_combout\ = ( !\ROM1|memROM~2_combout\ & ( ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~24_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~32_q\)))) ) ) # ( \ROM1|memROM~2_combout\ & ( 
-- ((!\ROM1|memROM~1_combout\ & (((\RAM|ram~40_q\ & !\ROM1|memROM~4_combout\)))) # (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~4_combout\)) # (\RAM|ram~48_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111101010101000011110011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~32_q\,
	datab => \RAM|ALT_INV_ram~48_q\,
	datac => \RAM|ALT_INV_ram~40_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	datag => \RAM|ALT_INV_ram~24_q\,
	combout => \RAM|ram~521_combout\);

\RAM|ram~392\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~392_combout\ = ( \RAM|ram~521_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~521_combout\,
	combout => \RAM|ram~392_combout\);

\RAM|ram~525\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~525_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~525_combout\);

\RAM|ram~396\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~396_combout\ = ( \RAM|ram~525_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~525_combout\,
	combout => \RAM|ram~396_combout\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|ram~400\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~400_combout\ = ( \RAM|ram~529_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~529_combout\,
	combout => \RAM|ram~400_combout\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~404\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~404_combout\ = ( \RAM|ram~533_combout\ & ( !\ROM1|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \RAM|ALT_INV_ram~533_combout\,
	combout => \RAM|ram~404_combout\);

\RAM|ram~408\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~408_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~404_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~400_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ 
-- & ( \RAM|ram~396_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~392_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~392_combout\,
	datab => \RAM|ALT_INV_ram~396_combout\,
	datac => \RAM|ALT_INV_ram~400_combout\,
	datad => \RAM|ALT_INV_ram~404_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~408_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\decoder|Equal10~2_combout\ $ (((!\decoder|Equal10~0_combout\ & \RAM|ram~408_combout\))) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Equal10~2_combout\,
	datab => \decoder|ALT_INV_Equal10~0_combout\,
	datad => \RAM|ALT_INV_ram~408_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\flag_ula|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag_ula|DOUT~1_combout\ = (!\ROM1|memROM~10_combout\ & (!\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & \ROM1|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \flag_ula|DOUT~1_combout\);

\flag_ula|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag_ula|DOUT~2_combout\ = ( \flag_ula|DOUT~q\ & ( \flag_ula|DOUT~1_combout\ & ( (!\ULA1|Add0~1_sumout\ & (!\ULA1|Add0~5_sumout\ & (!\ULA1|Add0~9_sumout\ & !\ULA1|Add0~13_sumout\))) ) ) ) # ( !\flag_ula|DOUT~q\ & ( \flag_ula|DOUT~1_combout\ & ( 
-- (!\ULA1|Add0~1_sumout\ & (!\ULA1|Add0~5_sumout\ & (!\ULA1|Add0~9_sumout\ & !\ULA1|Add0~13_sumout\))) ) ) ) # ( \flag_ula|DOUT~q\ & ( !\flag_ula|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~1_sumout\,
	datab => \ULA1|ALT_INV_Add0~5_sumout\,
	datac => \ULA1|ALT_INV_Add0~9_sumout\,
	datad => \ULA1|ALT_INV_Add0~13_sumout\,
	datae => \flag_ula|ALT_INV_DOUT~q\,
	dataf => \flag_ula|ALT_INV_DOUT~1_combout\,
	combout => \flag_ula|DOUT~2_combout\);

\flag_ula|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flag_ula|DOUT~0_combout\ = ( \flag_ula|DOUT~1_combout\ & ( \flag_ula|DOUT~2_combout\ & ( (!\ULA1|Add0~17_sumout\ & (!\ULA1|Add0~21_sumout\ & (!\ULA1|Add0~25_sumout\ & !\ULA1|Add0~29_sumout\))) ) ) ) # ( !\flag_ula|DOUT~1_combout\ & ( 
-- \flag_ula|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add0~17_sumout\,
	datab => \ULA1|ALT_INV_Add0~21_sumout\,
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	datad => \ULA1|ALT_INV_Add0~29_sumout\,
	datae => \flag_ula|ALT_INV_DOUT~1_combout\,
	dataf => \flag_ula|ALT_INV_DOUT~2_combout\,
	combout => \flag_ula|DOUT~0_combout\);

\flag_ula|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \flag_ula|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flag_ula|DOUT~q\);

\MUX_JMP|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[7]~0_combout\ = ( \flag_ula|DOUT~q\ & ( (!\ROM1|memROM~12_combout\ & (\ROM1|memROM~10_combout\ & (!\ROM1|memROM~14_combout\ & \ROM1|memROM~16_combout\))) # (\ROM1|memROM~12_combout\ & (((\ROM1|memROM~14_combout\ & 
-- !\ROM1|memROM~16_combout\)))) ) ) # ( !\flag_ula|DOUT~q\ & ( (!\ROM1|memROM~10_combout\ & (\ROM1|memROM~12_combout\ & (\ROM1|memROM~14_combout\ & !\ROM1|memROM~16_combout\))) # (\ROM1|memROM~10_combout\ & (!\ROM1|memROM~12_combout\ & 
-- (!\ROM1|memROM~14_combout\ & \ROM1|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000110100000000000010010000000000001101000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	datae => \flag_ula|ALT_INV_DOUT~q\,
	combout => \MUX_JMP|saida_MUX[7]~0_combout\);

\Salva_Ret|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Salva_Ret|DOUT\(0));

\MUX_JMP|saida_MUX[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[0]~1_combout\ = ( \Salva_Ret|DOUT\(0) & ( (!\decoder|saida[9]~0_combout\ & ((!\MUX_JMP|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~1_sumout\))) # (\MUX_JMP|saida_MUX[7]~0_combout\ & (\ROM1|memROM~1_combout\)))) # 
-- (\decoder|saida[9]~0_combout\ & (((!\MUX_JMP|saida_MUX[7]~0_combout\)))) ) ) # ( !\Salva_Ret|DOUT\(0) & ( (!\decoder|saida[9]~0_combout\ & ((!\MUX_JMP|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~1_sumout\))) # (\MUX_JMP|saida_MUX[7]~0_combout\ & 
-- (\ROM1|memROM~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000100110001000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \decoder|ALT_INV_saida[9]~0_combout\,
	datac => \MUX_JMP|ALT_INV_saida_MUX[7]~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~1_sumout\,
	datae => \Salva_Ret|ALT_INV_DOUT\(0),
	combout => \MUX_JMP|saida_MUX[0]~1_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(3) $ (((!\PC|DOUT\(1) & \PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000001000101000100000100010100010000010001010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~10_combout\);

\decoder|saida[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|saida[9]~0_combout\ = (!\ROM1|memROM~10_combout\ & (\ROM1|memROM~12_combout\ & (!\ROM1|memROM~14_combout\ & \ROM1|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \ROM1|ALT_INV_memROM~14_combout\,
	datad => \ROM1|ALT_INV_memROM~16_combout\,
	combout => \decoder|saida[9]~0_combout\);

\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

\Salva_Ret|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Salva_Ret|DOUT\(7));

\MUX_JMP|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[7]~6_combout\ = (!\MUX_JMP|saida_MUX[7]~0_combout\ & ((!\decoder|saida[9]~0_combout\ & ((\incrementaPC|Add0~21_sumout\))) # (\decoder|saida[9]~0_combout\ & (\Salva_Ret|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000000100100011000000010010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_saida[9]~0_combout\,
	datab => \MUX_JMP|ALT_INV_saida_MUX[7]~0_combout\,
	datac => \Salva_Ret|ALT_INV_DOUT\(7),
	datad => \incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \MUX_JMP|saida_MUX[7]~6_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (\PC|DOUT\(1) & ((!\PC|DOUT\(2) & (\PC|DOUT\(0) & \PC|DOUT\(3))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010000000000110001000000000011000100000000001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~17_sumout\);

\Salva_Ret|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Salva_Ret|DOUT\(8));

\MUX_JMP|saida_MUX[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX_JMP|saida_MUX[8]~5_combout\ = ( \Salva_Ret|DOUT\(8) & ( (!\decoder|saida[9]~0_combout\ & ((!\MUX_JMP|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~17_sumout\))) # (\MUX_JMP|saida_MUX[7]~0_combout\ & (\ROM1|memROM~8_combout\)))) # 
-- (\decoder|saida[9]~0_combout\ & (((!\MUX_JMP|saida_MUX[7]~0_combout\)))) ) ) # ( !\Salva_Ret|DOUT\(8) & ( (!\decoder|saida[9]~0_combout\ & ((!\MUX_JMP|saida_MUX[7]~0_combout\ & ((\incrementaPC|Add0~17_sumout\))) # (\MUX_JMP|saida_MUX[7]~0_combout\ & 
-- (\ROM1|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000100110001000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \decoder|ALT_INV_saida[9]~0_combout\,
	datac => \MUX_JMP|ALT_INV_saida_MUX[7]~0_combout\,
	datad => \incrementaPC|ALT_INV_Add0~17_sumout\,
	datae => \Salva_Ret|ALT_INV_DOUT\(8),
	combout => \MUX_JMP|saida_MUX[8]~5_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX_JMP|saida_MUX[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(3) & (\PC|DOUT\(0))) # (\PC|DOUT\(3) & ((\PC|DOUT\(2)))))) # (\PC|DOUT\(1) & (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001100011001000000110001100100000011000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~17_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(4) & ( \ROM1|memROM~17_combout\ & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~17_combout\,
	combout => \ROM1|memROM~1_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

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

ww_SW(0) <= \SW[0]~output_o\;

ww_SW(1) <= \SW[1]~output_o\;

ww_SW(2) <= \SW[2]~output_o\;

ww_SW(3) <= \SW[3]~output_o\;

ww_SW(4) <= \SW[4]~output_o\;

ww_SW(5) <= \SW[5]~output_o\;

ww_SW(6) <= \SW[6]~output_o\;

ww_SW(7) <= \SW[7]~output_o\;

ww_SW(8) <= \SW[8]~output_o\;

ww_SW(9) <= \SW[9]~output_o\;

ww_SW(10) <= \SW[10]~output_o\;

ww_SW(11) <= \SW[11]~output_o\;

ww_SW(12) <= \SW[12]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


