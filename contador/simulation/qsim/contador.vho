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

-- DATE "04/06/2023 15:27:47"

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
	SW : OUT std_logic_vector(12 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
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
SIGNAL ww_SW : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
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
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~5_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~10_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~4_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~6_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~7_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~0_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~8_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~14_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~0_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~9_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~13_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~1_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~2_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~11_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~12_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~15_combout\ : std_logic;
SIGNAL \Processador|ROM1|memROM~3_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|decoder|saida[6]~0_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \RAM|ram~571_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~560_combout\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~561_combout\ : std_logic;
SIGNAL \RAM|ram~562_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~558_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Processador|decoder|saida[4]~1_combout\ : std_logic;
SIGNAL \Processador|decoder|saida[5]~2_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|hab_bloco~0_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|hab_bloco~1_combout\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~570_combout\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~2\ : std_logic;
SIGNAL \Processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~564_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~6\ : std_logic;
SIGNAL \Processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~565_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~10\ : std_logic;
SIGNAL \Processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~566_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~14\ : std_logic;
SIGNAL \Processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~18\ : std_logic;
SIGNAL \Processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~552_combout\ : std_logic;
SIGNAL \RAM|ram~553_combout\ : std_logic;
SIGNAL \RAM|ram~568_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~22\ : std_logic;
SIGNAL \Processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~554_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~556_combout\ : std_logic;
SIGNAL \RAM|ram~557_combout\ : std_logic;
SIGNAL \RAM|ram~569_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~26\ : std_logic;
SIGNAL \Processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|FF_8|DOUT~0_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|FF_8|DOUT~q\ : std_logic;
SIGNAL \BLOCO_LEDs|FF_9|DOUT~0_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|FF_9|DOUT~q\ : std_logic;
SIGNAL \BLOCO_LEDs|REG_07|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida[6]~0_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|ALT_INV_hab_bloco~0_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \BLOCO_LEDs|FF_9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \BLOCO_LEDs|FF_8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \Processador|ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
SW <= ww_SW;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\Processador|decoder|ALT_INV_saida[6]~0_combout\ <= NOT \Processador|decoder|saida[6]~0_combout\;
\Processador|ROM1|ALT_INV_memROM~13_combout\ <= NOT \Processador|ROM1|memROM~13_combout\;
\Processador|ROM1|ALT_INV_memROM~12_combout\ <= NOT \Processador|ROM1|memROM~12_combout\;
\Processador|ROM1|ALT_INV_memROM~11_combout\ <= NOT \Processador|ROM1|memROM~11_combout\;
\Processador|ROM1|ALT_INV_memROM~10_combout\ <= NOT \Processador|ROM1|memROM~10_combout\;
\BLOCO_LEDs|ALT_INV_hab_bloco~0_combout\ <= NOT \BLOCO_LEDs|hab_bloco~0_combout\;
\Processador|ROM1|ALT_INV_memROM~9_combout\ <= NOT \Processador|ROM1|memROM~9_combout\;
\Processador|ROM1|ALT_INV_memROM~8_combout\ <= NOT \Processador|ROM1|memROM~8_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\Processador|ROM1|ALT_INV_memROM~7_combout\ <= NOT \Processador|ROM1|memROM~7_combout\;
\Processador|ROM1|ALT_INV_memROM~6_combout\ <= NOT \Processador|ROM1|memROM~6_combout\;
\Processador|ROM1|ALT_INV_memROM~5_combout\ <= NOT \Processador|ROM1|memROM~5_combout\;
\Processador|ROM1|ALT_INV_memROM~4_combout\ <= NOT \Processador|ROM1|memROM~4_combout\;
\Processador|ROM1|ALT_INV_memROM~3_combout\ <= NOT \Processador|ROM1|memROM~3_combout\;
\Processador|ROM1|ALT_INV_memROM~2_combout\ <= NOT \Processador|ROM1|memROM~2_combout\;
\Processador|ROM1|ALT_INV_memROM~1_combout\ <= NOT \Processador|ROM1|memROM~1_combout\;
\Processador|ROM1|ALT_INV_memROM~0_combout\ <= NOT \Processador|ROM1|memROM~0_combout\;
\BLOCO_LEDs|FF_9|ALT_INV_DOUT~q\ <= NOT \BLOCO_LEDs|FF_9|DOUT~q\;
\BLOCO_LEDs|FF_8|ALT_INV_DOUT~q\ <= NOT \BLOCO_LEDs|FF_8|DOUT~q\;
\Processador|REGA|ALT_INV_DOUT\(7) <= NOT \Processador|REGA|DOUT\(7);
\Processador|REGA|ALT_INV_DOUT\(6) <= NOT \Processador|REGA|DOUT\(6);
\Processador|REGA|ALT_INV_DOUT\(5) <= NOT \Processador|REGA|DOUT\(5);
\Processador|REGA|ALT_INV_DOUT\(4) <= NOT \Processador|REGA|DOUT\(4);
\Processador|REGA|ALT_INV_DOUT\(3) <= NOT \Processador|REGA|DOUT\(3);
\Processador|REGA|ALT_INV_DOUT\(2) <= NOT \Processador|REGA|DOUT\(2);
\Processador|REGA|ALT_INV_DOUT\(1) <= NOT \Processador|REGA|DOUT\(1);
\Processador|REGA|ALT_INV_DOUT\(0) <= NOT \Processador|REGA|DOUT\(0);
\Processador|PC|ALT_INV_DOUT\(8) <= NOT \Processador|PC|DOUT\(8);
\Processador|PC|ALT_INV_DOUT\(7) <= NOT \Processador|PC|DOUT\(7);
\Processador|PC|ALT_INV_DOUT\(6) <= NOT \Processador|PC|DOUT\(6);
\Processador|PC|ALT_INV_DOUT\(5) <= NOT \Processador|PC|DOUT\(5);
\Processador|PC|ALT_INV_DOUT\(4) <= NOT \Processador|PC|DOUT\(4);
\Processador|PC|ALT_INV_DOUT\(3) <= NOT \Processador|PC|DOUT\(3);
\Processador|PC|ALT_INV_DOUT\(2) <= NOT \Processador|PC|DOUT\(2);
\Processador|PC|ALT_INV_DOUT\(1) <= NOT \Processador|PC|DOUT\(1);
\Processador|PC|ALT_INV_DOUT\(0) <= NOT \Processador|PC|DOUT\(0);
\RAM|ALT_INV_ram~570_combout\ <= NOT \RAM|ram~570_combout\;
\Processador|ROM1|ALT_INV_memROM~15_combout\ <= NOT \Processador|ROM1|memROM~15_combout\;
\RAM|ALT_INV_ram~569_combout\ <= NOT \RAM|ram~569_combout\;
\RAM|ALT_INV_ram~568_combout\ <= NOT \RAM|ram~568_combout\;
\RAM|ALT_INV_ram~567_combout\ <= NOT \RAM|ram~567_combout\;
\RAM|ALT_INV_ram~566_combout\ <= NOT \RAM|ram~566_combout\;
\RAM|ALT_INV_ram~565_combout\ <= NOT \RAM|ram~565_combout\;
\RAM|ALT_INV_ram~564_combout\ <= NOT \RAM|ram~564_combout\;
\RAM|ALT_INV_ram~563_combout\ <= NOT \RAM|ram~563_combout\;
\RAM|ALT_INV_ram~561_combout\ <= NOT \RAM|ram~561_combout\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;
\RAM|ALT_INV_ram~558_combout\ <= NOT \RAM|ram~558_combout\;
\Processador|decoder|ALT_INV_Equal10~1_combout\ <= NOT \Processador|decoder|Equal10~1_combout\;
\RAM|ALT_INV_ram~557_combout\ <= NOT \RAM|ram~557_combout\;
\RAM|ALT_INV_ram~556_combout\ <= NOT \RAM|ram~556_combout\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~554_combout\ <= NOT \RAM|ram~554_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~553_combout\ <= NOT \RAM|ram~553_combout\;
\RAM|ALT_INV_ram~552_combout\ <= NOT \RAM|ram~552_combout\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~550_combout\ <= NOT \RAM|ram~550_combout\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~549_combout\ <= NOT \RAM|ram~549_combout\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;

\SW[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => \Processador|incrementaPC|Add0~1_sumout\,
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
	i => \Processador|incrementaPC|Add0~5_sumout\,
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
	i => \Processador|incrementaPC|Add0~9_sumout\,
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
	i => \Processador|incrementaPC|Add0~13_sumout\,
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
	i => \Processador|incrementaPC|Add0~17_sumout\,
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
	i => \Processador|incrementaPC|Add0~21_sumout\,
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
	i => \Processador|incrementaPC|Add0~25_sumout\,
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
	i => \Processador|incrementaPC|Add0~29_sumout\,
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
	i => \Processador|incrementaPC|Add0~33_sumout\,
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
	i => \BLOCO_LEDs|REG_07|DOUT\(0),
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
	i => \BLOCO_LEDs|REG_07|DOUT\(1),
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
	i => \BLOCO_LEDs|REG_07|DOUT\(2),
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
	i => \BLOCO_LEDs|REG_07|DOUT\(3),
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
	i => \BLOCO_LEDs|REG_07|DOUT\(4),
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
	i => \BLOCO_LEDs|REG_07|DOUT\(5),
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
	i => \BLOCO_LEDs|REG_07|DOUT\(6),
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
	i => \BLOCO_LEDs|REG_07|DOUT\(7),
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

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

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

\Processador|ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~5_combout\ = (!\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & !\Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(1) & \Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000010000100000000001000010000000000100001000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~5_combout\);

\Processador|ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~10_combout\ = (\Processador|ROM1|memROM~0_combout\ & \Processador|ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~5_combout\,
	combout => \Processador|ROM1|memROM~10_combout\);

\Processador|ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~4_combout\ = (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(1)) # (\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(3) & ((\Processador|PC|DOUT\(2)) # 
-- (\Processador|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101000010101100010100001010110001010000101011000101000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~4_combout\);

\Processador|ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~6_combout\ = (\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(0) $ (\Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000001000000100000000100000010000000010000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~6_combout\);

\Processador|ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~7_combout\ = (!\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000000000000101000000000000010100000000000001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~7_combout\);

\Processador|decoder|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~0_combout\ = (\Processador|ROM1|memROM~0_combout\ & (\Processador|ROM1|memROM~4_combout\ & (\Processador|ROM1|memROM~6_combout\ & !\Processador|ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	combout => \Processador|decoder|Equal10~0_combout\);

\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incrementaPC|Add0~25_sumout\,
	asdata => \Processador|ROM1|memROM~10_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
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

\Processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incrementaPC|Add0~29_sumout\,
	asdata => \Processador|ROM1|memROM~13_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
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

\Processador|ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~8_combout\ = (!\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(1))) # (\Processador|PC|DOUT\(2) & ((\Processador|PC|DOUT\(3)))))) # (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & 
-- ((!\Processador|PC|DOUT\(1)) # (!\Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001101010011100000110101001110000011010100111000001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~8_combout\);

\Processador|ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~14_combout\ = (\Processador|ROM1|memROM~8_combout\ & \Processador|ROM1|memROM~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~8_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	combout => \Processador|ROM1|memROM~14_combout\);

\Processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incrementaPC|Add0~33_sumout\,
	asdata => \Processador|ROM1|memROM~14_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(8));

\Processador|ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~0_combout\ = ( !\Processador|PC|DOUT\(8) & ( (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \Processador|PC|ALT_INV_DOUT\(8),
	combout => \Processador|ROM1|memROM~0_combout\);

\Processador|ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~9_combout\ = (!\Processador|PC|DOUT\(1) & ((!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000100100000000000010010000000000001001000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~9_combout\);

\Processador|ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~13_combout\ = (\Processador|ROM1|memROM~0_combout\ & \Processador|ROM1|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	combout => \Processador|ROM1|memROM~13_combout\);

\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incrementaPC|Add0~21_sumout\,
	asdata => \Processador|ROM1|memROM~13_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

\Processador|ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~1_combout\ = (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(1) $ (\Processador|PC|DOUT\(3))))) # (\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(1) & 
-- !\Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(2) & ((\Processador|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000100101100100000010010110010000001001011001000000100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~1_combout\);

\Processador|ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~2_combout\ = ( !\Processador|PC|DOUT\(8) & ( \Processador|ROM1|memROM~1_combout\ & ( (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \Processador|PC|ALT_INV_DOUT\(8),
	dataf => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \Processador|ROM1|memROM~2_combout\);

\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incrementaPC|Add0~5_sumout\,
	asdata => \Processador|ROM1|memROM~2_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));

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

\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incrementaPC|Add0~9_sumout\,
	asdata => \Processador|ROM1|memROM~10_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

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

\Processador|ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~11_combout\ = (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3)))) # (\Processador|PC|DOUT\(0) & (((\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000101100000000000010110000000000001011000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~11_combout\);

\Processador|ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~12_combout\ = ( !\Processador|PC|DOUT\(8) & ( \Processador|ROM1|memROM~11_combout\ & ( (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \Processador|PC|ALT_INV_DOUT\(8),
	dataf => \Processador|ROM1|ALT_INV_memROM~11_combout\,
	combout => \Processador|ROM1|memROM~12_combout\);

\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incrementaPC|Add0~13_sumout\,
	asdata => \Processador|ROM1|memROM~12_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incrementaPC|Add0~17_sumout\,
	asdata => \Processador|ROM1|memROM~10_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

\Processador|ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~15_combout\ = (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(1)) # (!\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2) & ((\Processador|PC|DOUT\(3)))) # 
-- (\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100101010001101010010101000110101001010100011010100101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \Processador|ROM1|memROM~15_combout\);

\Processador|ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ROM1|memROM~3_combout\ = ( !\Processador|PC|DOUT\(8) & ( \Processador|ROM1|memROM~15_combout\ & ( (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \Processador|PC|ALT_INV_DOUT\(8),
	dataf => \Processador|ROM1|ALT_INV_memROM~15_combout\,
	combout => \Processador|ROM1|memROM~3_combout\);

\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|incrementaPC|Add0~1_sumout\,
	asdata => \Processador|ROM1|memROM~3_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

\Processador|decoder|saida[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida[6]~0_combout\ = (\Processador|ROM1|memROM~0_combout\ & (\Processador|ROM1|memROM~4_combout\ & (!\Processador|ROM1|memROM~6_combout\ & !\Processador|ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	combout => \Processador|decoder|saida[6]~0_combout\);

\Processador|decoder|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~1_combout\ = (\Processador|ROM1|memROM~0_combout\ & (\Processador|ROM1|memROM~4_combout\ & (\Processador|ROM1|memROM~6_combout\ & \Processador|ROM1|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	combout => \Processador|decoder|Equal10~1_combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\RAM|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~571_combout\ = ( !\Processador|PC|DOUT\(0) & ( (\Processador|PC|DOUT\(3) & (\Processador|ROM1|memROM~0_combout\ & (\Processador|PC|DOUT\(2) & (!\Processador|ROM1|memROM~3_combout\ & !\Processador|ROM1|memROM~2_combout\)))) ) ) # ( 
-- \Processador|PC|DOUT\(0) & ( (!\Processador|PC|DOUT\(3) & (\Processador|ROM1|memROM~0_combout\ & (!\Processador|PC|DOUT\(1) & (!\Processador|ROM1|memROM~3_combout\ & !\Processador|ROM1|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	datae => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datag => \Processador|PC|ALT_INV_DOUT\(2),
	combout => \RAM|ram~571_combout\);

\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( !\Processador|ROM1|memROM~7_combout\ & ( (\Processador|ROM1|memROM~0_combout\ & (!\Processador|ROM1|memROM~4_combout\ & (!\Processador|ROM1|memROM~5_combout\ & !\Processador|ROM1|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~5_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	combout => \RAM|process_0~0_combout\);

\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( \Processador|ROM1|memROM~0_combout\ & ( (!\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(3) $ (!\Processador|PC|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000100000000000000000000000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	datae => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~559_combout\);

\RAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~560_combout\ = (!\Processador|ROM1|memROM~2_combout\ & (!\Processador|ROM1|memROM~3_combout\ & (\RAM|process_0~0_combout\ & \RAM|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \RAM|ALT_INV_ram~559_combout\,
	combout => \RAM|ram~560_combout\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \Processador|ROM1|memROM~1_combout\ & ( (!\Processador|ROM1|memROM~0_combout\ & (\RAM|ram~15_q\)) # (\Processador|ROM1|memROM~0_combout\ & (((\RAM|ram~31_q\ & !\Processador|ROM1|memROM~11_combout\)))) ) ) # ( 
-- !\Processador|ROM1|memROM~1_combout\ & ( (\RAM|ram~15_q\ & ((!\Processador|ROM1|memROM~0_combout\) # (!\Processador|ROM1|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010100110101000001010101010100000101001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datab => \RAM|ALT_INV_ram~31_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~11_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~561_combout\ = ( \Processador|ROM1|memROM~0_combout\ & ( (!\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(1) & !\Processador|PC|DOUT\(0))) # (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(1) $ 
-- (\Processador|PC|DOUT\(0)))))) # (\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(1) & \Processador|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010000100001000000000000000000010100001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	datae => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	combout => \RAM|ram~561_combout\);

\RAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~562_combout\ = (!\Processador|ROM1|memROM~2_combout\ & (!\Processador|ROM1|memROM~3_combout\ & (\RAM|process_0~0_combout\ & \RAM|ram~561_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \RAM|ALT_INV_ram~561_combout\,
	combout => \RAM|ram~562_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \Processador|ROM1|memROM~1_combout\ & ( (\RAM|ram~23_q\ & !\Processador|ROM1|memROM~0_combout\) ) ) # ( !\Processador|ROM1|memROM~1_combout\ & ( (\RAM|ram~23_q\ & ((!\Processador|ROM1|memROM~0_combout\) # 
-- (!\Processador|ROM1|memROM~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010100000101000001010101010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~11_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( \Processador|ROM1|memROM~3_combout\ & ( \RAM|ram~528_combout\ ) ) ) # ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~3_combout\ & ( \RAM|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~527_combout\,
	datac => \RAM|ALT_INV_ram~528_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~558_combout\ = (!\Processador|ROM1|memROM~10_combout\ & \RAM|ram~529_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~529_combout\,
	combout => \RAM|ram~558_combout\);

\Processador|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~34_cout\ = CARRY(( !\Processador|decoder|Equal10~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	cin => GND,
	cout => \Processador|ULA1|Add0~34_cout\);

\Processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~1_sumout\ = SUM(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~558_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~3_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( \Processador|ULA1|Add0~34_cout\ ))
-- \Processador|ULA1|Add0~2\ = CARRY(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~558_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~3_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( \Processador|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_ram~558_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	cin => \Processador|ULA1|Add0~34_cout\,
	sumout => \Processador|ULA1|Add0~1_sumout\,
	cout => \Processador|ULA1|Add0~2\);

\Processador|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[0]~0_combout\ = ( \RAM|ram~529_combout\ & ( (!\Processador|decoder|saida[6]~0_combout\ & (!\Processador|ROM1|memROM~10_combout\)) # (\Processador|decoder|saida[6]~0_combout\ & ((\Processador|ROM1|memROM~3_combout\))) ) ) # ( 
-- !\RAM|ram~529_combout\ & ( (\Processador|ROM1|memROM~3_combout\ & \Processador|decoder|saida[6]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011101000111010001100000011000000111010001110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	datac => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datae => \RAM|ALT_INV_ram~529_combout\,
	combout => \Processador|MUX1|saida_MUX[0]~0_combout\);

\Processador|decoder|saida[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida[4]~1_combout\ = (\Processador|ROM1|memROM~0_combout\ & (!\Processador|ROM1|memROM~6_combout\ & ((!\Processador|ROM1|memROM~4_combout\) # (!\Processador|ROM1|memROM~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001000000010100000100000001010000010000000101000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	combout => \Processador|decoder|saida[4]~1_combout\);

\Processador|decoder|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida[5]~2_combout\ = (\Processador|ROM1|memROM~0_combout\ & (!\Processador|ROM1|memROM~7_combout\ $ (((!\Processador|ROM1|memROM~4_combout\) # (\Processador|ROM1|memROM~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000101000100000100010100010000010001010001000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~4_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~6_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~7_combout\,
	combout => \Processador|decoder|saida[5]~2_combout\);

\Processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA1|Add0~1_sumout\,
	asdata => \Processador|MUX1|saida_MUX[0]~0_combout\,
	sload => \Processador|decoder|saida[4]~1_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(0));

\BLOCO_LEDs|hab_bloco~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_LEDs|hab_bloco~0_combout\ = (\Processador|ROM1|memROM~8_combout\ & (\Processador|ROM1|memROM~0_combout\ & !\Processador|ROM1|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~8_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	combout => \BLOCO_LEDs|hab_bloco~0_combout\);

\BLOCO_LEDs|hab_bloco~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_LEDs|hab_bloco~1_combout\ = (!\Processador|ROM1|memROM~2_combout\ & (!\Processador|ROM1|memROM~3_combout\ & (\RAM|process_0~0_combout\ & \BLOCO_LEDs|hab_bloco~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	datac => \RAM|ALT_INV_process_0~0_combout\,
	datad => \BLOCO_LEDs|ALT_INV_hab_bloco~0_combout\,
	combout => \BLOCO_LEDs|hab_bloco~1_combout\);

\BLOCO_LEDs|REG_07|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \BLOCO_LEDs|hab_bloco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_LEDs|REG_07|DOUT\(0));

\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

\RAM|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~570_combout\ = (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & !\Processador|PC|DOUT\(8))))

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
	combout => \RAM|ram~570_combout\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( \Processador|ROM1|memROM~11_combout\ & ( \RAM|ram~570_combout\ & ( (\RAM|ram~16_q\ & (\Processador|PC|DOUT\(4) & ((!\Processador|ROM1|memROM~0_combout\) # (!\Processador|ROM1|memROM~9_combout\)))) ) ) ) # ( 
-- !\Processador|ROM1|memROM~11_combout\ & ( \RAM|ram~570_combout\ & ( (\RAM|ram~16_q\ & ((!\Processador|ROM1|memROM~0_combout\) # (!\Processador|ROM1|memROM~9_combout\))) ) ) ) # ( \Processador|ROM1|memROM~11_combout\ & ( !\RAM|ram~570_combout\ & ( 
-- (\RAM|ram~16_q\ & ((!\Processador|ROM1|memROM~0_combout\) # (!\Processador|ROM1|memROM~9_combout\))) ) ) ) # ( !\Processador|ROM1|memROM~11_combout\ & ( !\RAM|ram~570_combout\ & ( (\RAM|ram~16_q\ & ((!\Processador|ROM1|memROM~0_combout\) # 
-- (!\Processador|ROM1|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010001010100010101000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~16_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	datae => \Processador|ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~570_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \Processador|ROM1|memROM~11_combout\ & ( \RAM|ram~570_combout\ & ( (\RAM|ram~24_q\ & (\Processador|PC|DOUT\(4) & ((!\Processador|ROM1|memROM~0_combout\) # (!\Processador|ROM1|memROM~9_combout\)))) ) ) ) # ( 
-- !\Processador|ROM1|memROM~11_combout\ & ( \RAM|ram~570_combout\ & ( (\RAM|ram~24_q\ & ((!\Processador|ROM1|memROM~0_combout\) # (!\Processador|ROM1|memROM~9_combout\))) ) ) ) # ( \Processador|ROM1|memROM~11_combout\ & ( !\RAM|ram~570_combout\ & ( 
-- (\RAM|ram~24_q\ & ((!\Processador|ROM1|memROM~0_combout\) # (!\Processador|ROM1|memROM~9_combout\))) ) ) ) # ( !\Processador|ROM1|memROM~11_combout\ & ( !\RAM|ram~570_combout\ & ( (\RAM|ram~24_q\ & ((!\Processador|ROM1|memROM~0_combout\) # 
-- (!\Processador|ROM1|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010001010100010101000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	datae => \Processador|ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~570_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \Processador|ROM1|memROM~11_combout\ & ( (\RAM|ram~32_q\ & !\Processador|ROM1|memROM~0_combout\) ) ) # ( !\Processador|ROM1|memROM~11_combout\ & ( (\RAM|ram~32_q\ & ((!\Processador|ROM1|memROM~0_combout\) # 
-- (!\Processador|ROM1|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010100000101000001010101010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~32_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( !\Processador|ROM1|memROM~3_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~532_combout\ ) ) ) # ( \Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~531_combout\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~530_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~530_combout\,
	datab => \RAM|ALT_INV_ram~531_combout\,
	datac => \RAM|ALT_INV_ram~532_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = (!\Processador|ROM1|memROM~10_combout\ & \RAM|ram~533_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~533_combout\,
	combout => \RAM|ram~563_combout\);

\Processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~5_sumout\ = SUM(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~563_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~2_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add0~2\ ))
-- \Processador|ULA1|Add0~6\ = CARRY(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~563_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~2_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datad => \RAM|ALT_INV_ram~563_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	cin => \Processador|ULA1|Add0~2\,
	sumout => \Processador|ULA1|Add0~5_sumout\,
	cout => \Processador|ULA1|Add0~6\);

\Processador|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[1]~1_combout\ = ( \RAM|ram~533_combout\ & ( (!\Processador|decoder|saida[6]~0_combout\ & (!\Processador|ROM1|memROM~10_combout\)) # (\Processador|decoder|saida[6]~0_combout\ & ((\Processador|ROM1|memROM~2_combout\))) ) ) # ( 
-- !\RAM|ram~533_combout\ & ( (\Processador|ROM1|memROM~2_combout\ & \Processador|decoder|saida[6]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011101000111010001100000011000000111010001110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datac => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datae => \RAM|ALT_INV_ram~533_combout\,
	combout => \Processador|MUX1|saida_MUX[1]~1_combout\);

\Processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA1|Add0~5_sumout\,
	asdata => \Processador|MUX1|saida_MUX[1]~1_combout\,
	sload => \Processador|decoder|saida[4]~1_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(1));

\BLOCO_LEDs|REG_07|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \BLOCO_LEDs|hab_bloco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_LEDs|REG_07|DOUT\(1));

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \Processador|ROM1|memROM~11_combout\ & ( \RAM|ram~570_combout\ & ( (\RAM|ram~17_q\ & (\Processador|PC|DOUT\(4) & ((!\Processador|ROM1|memROM~0_combout\) # (!\Processador|ROM1|memROM~9_combout\)))) ) ) ) # ( 
-- !\Processador|ROM1|memROM~11_combout\ & ( \RAM|ram~570_combout\ & ( (\RAM|ram~17_q\ & ((!\Processador|ROM1|memROM~0_combout\) # (!\Processador|ROM1|memROM~9_combout\))) ) ) ) # ( \Processador|ROM1|memROM~11_combout\ & ( !\RAM|ram~570_combout\ & ( 
-- (\RAM|ram~17_q\ & ((!\Processador|ROM1|memROM~0_combout\) # (!\Processador|ROM1|memROM~9_combout\))) ) ) ) # ( !\Processador|ROM1|memROM~11_combout\ & ( !\RAM|ram~570_combout\ & ( (\RAM|ram~17_q\ & ((!\Processador|ROM1|memROM~0_combout\) # 
-- (!\Processador|ROM1|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010001010100010101000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~17_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	datae => \Processador|ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~570_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \Processador|ROM1|memROM~11_combout\ & ( \RAM|ram~570_combout\ & ( (\RAM|ram~25_q\ & (\Processador|PC|DOUT\(4) & ((!\Processador|ROM1|memROM~0_combout\) # (!\Processador|ROM1|memROM~9_combout\)))) ) ) ) # ( 
-- !\Processador|ROM1|memROM~11_combout\ & ( \RAM|ram~570_combout\ & ( (\RAM|ram~25_q\ & ((!\Processador|ROM1|memROM~0_combout\) # (!\Processador|ROM1|memROM~9_combout\))) ) ) ) # ( \Processador|ROM1|memROM~11_combout\ & ( !\RAM|ram~570_combout\ & ( 
-- (\RAM|ram~25_q\ & ((!\Processador|ROM1|memROM~0_combout\) # (!\Processador|ROM1|memROM~9_combout\))) ) ) ) # ( !\Processador|ROM1|memROM~11_combout\ & ( !\RAM|ram~570_combout\ & ( (\RAM|ram~25_q\ & ((!\Processador|ROM1|memROM~0_combout\) # 
-- (!\Processador|ROM1|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010001010100010101000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~25_q\,
	datab => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	datae => \Processador|ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~570_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( \Processador|ROM1|memROM~11_combout\ & ( (\RAM|ram~33_q\ & !\Processador|ROM1|memROM~0_combout\) ) ) # ( !\Processador|ROM1|memROM~11_combout\ & ( (\RAM|ram~33_q\ & ((!\Processador|ROM1|memROM~0_combout\) # 
-- (!\Processador|ROM1|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010100000101000001010101010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~33_q\,
	datac => \Processador|ROM1|ALT_INV_memROM~0_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~9_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( !\Processador|ROM1|memROM~3_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~536_combout\ ) ) ) # ( \Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~535_combout\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~534_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~534_combout\,
	datab => \RAM|ALT_INV_ram~535_combout\,
	datac => \RAM|ALT_INV_ram~536_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~564_combout\ = (!\Processador|ROM1|memROM~10_combout\ & \RAM|ram~537_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~537_combout\,
	combout => \RAM|ram~564_combout\);

\Processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~9_sumout\ = SUM(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~564_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~10_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add0~6\ ))
-- \Processador|ULA1|Add0~10\ = CARRY(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~564_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~10_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~564_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	cin => \Processador|ULA1|Add0~6\,
	sumout => \Processador|ULA1|Add0~9_sumout\,
	cout => \Processador|ULA1|Add0~10\);

\Processador|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[2]~2_combout\ = (!\Processador|ROM1|memROM~10_combout\ & (!\Processador|decoder|saida[6]~0_combout\ & \RAM|ram~537_combout\)) # (\Processador|ROM1|memROM~10_combout\ & (\Processador|decoder|saida[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001000100011001100100010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datad => \RAM|ALT_INV_ram~537_combout\,
	combout => \Processador|MUX1|saida_MUX[2]~2_combout\);

\Processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA1|Add0~9_sumout\,
	asdata => \Processador|MUX1|saida_MUX[2]~2_combout\,
	sload => \Processador|decoder|saida[4]~1_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(2));

\BLOCO_LEDs|REG_07|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \BLOCO_LEDs|hab_bloco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_LEDs|REG_07|DOUT\(2));

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~18_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~34_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~540_combout\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( !\Processador|ROM1|memROM~3_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~540_combout\ ) ) ) # ( \Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~539_combout\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~538_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~538_combout\,
	datab => \RAM|ALT_INV_ram~539_combout\,
	datac => \RAM|ALT_INV_ram~540_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~565_combout\ = (!\Processador|ROM1|memROM~10_combout\ & \RAM|ram~541_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~541_combout\,
	combout => \RAM|ram~565_combout\);

\Processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~13_sumout\ = SUM(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~565_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~12_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add0~10\ ))
-- \Processador|ULA1|Add0~14\ = CARRY(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~565_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~12_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~565_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	cin => \Processador|ULA1|Add0~10\,
	sumout => \Processador|ULA1|Add0~13_sumout\,
	cout => \Processador|ULA1|Add0~14\);

\Processador|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[3]~3_combout\ = ( \RAM|ram~541_combout\ & ( (!\Processador|decoder|saida[6]~0_combout\ & (!\Processador|ROM1|memROM~10_combout\)) # (\Processador|decoder|saida[6]~0_combout\ & ((\Processador|ROM1|memROM~12_combout\))) ) ) # ( 
-- !\RAM|ram~541_combout\ & ( (\Processador|ROM1|memROM~12_combout\ & \Processador|decoder|saida[6]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011101000111010001100000011000000111010001110100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	datac => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datae => \RAM|ALT_INV_ram~541_combout\,
	combout => \Processador|MUX1|saida_MUX[3]~3_combout\);

\Processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA1|Add0~13_sumout\,
	asdata => \Processador|MUX1|saida_MUX[3]~3_combout\,
	sload => \Processador|decoder|saida[4]~1_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(3));

\BLOCO_LEDs|REG_07|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \BLOCO_LEDs|hab_bloco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_LEDs|REG_07|DOUT\(3));

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(4),
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~19_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~542_combout\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(4),
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~27_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~27_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~543_combout\);

\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(4),
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~35_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~544_combout\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( !\Processador|ROM1|memROM~3_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~544_combout\ ) ) ) # ( \Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~543_combout\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~542_combout\,
	datab => \RAM|ALT_INV_ram~543_combout\,
	datac => \RAM|ALT_INV_ram~544_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~545_combout\);

\RAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~566_combout\ = (!\Processador|ROM1|memROM~10_combout\ & \RAM|ram~545_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~545_combout\,
	combout => \RAM|ram~566_combout\);

\Processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~17_sumout\ = SUM(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~566_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~10_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add0~14\ ))
-- \Processador|ULA1|Add0~18\ = CARRY(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~566_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~10_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~566_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	cin => \Processador|ULA1|Add0~14\,
	sumout => \Processador|ULA1|Add0~17_sumout\,
	cout => \Processador|ULA1|Add0~18\);

\Processador|MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[4]~4_combout\ = (!\Processador|ROM1|memROM~10_combout\ & (!\Processador|decoder|saida[6]~0_combout\ & \RAM|ram~545_combout\)) # (\Processador|ROM1|memROM~10_combout\ & (\Processador|decoder|saida[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001000100011001100100010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datad => \RAM|ALT_INV_ram~545_combout\,
	combout => \Processador|MUX1|saida_MUX[4]~4_combout\);

\Processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA1|Add0~17_sumout\,
	asdata => \Processador|MUX1|saida_MUX[4]~4_combout\,
	sload => \Processador|decoder|saida[4]~1_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(4));

\BLOCO_LEDs|REG_07|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|REGA|DOUT\(4),
	ena => \BLOCO_LEDs|hab_bloco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_LEDs|REG_07|DOUT\(4));

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(5),
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~20_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(5),
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~547_combout\);

\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(5),
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~36_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~548_combout\);

\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( !\Processador|ROM1|memROM~3_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~548_combout\ ) ) ) # ( \Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~547_combout\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~546_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~546_combout\,
	datab => \RAM|ALT_INV_ram~547_combout\,
	datac => \RAM|ALT_INV_ram~548_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~549_combout\);

\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = (!\Processador|ROM1|memROM~10_combout\ & \RAM|ram~549_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~549_combout\,
	combout => \RAM|ram~567_combout\);

\Processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~21_sumout\ = SUM(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~567_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~13_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add0~18\ ))
-- \Processador|ULA1|Add0~22\ = CARRY(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~567_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~13_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_ram~567_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	cin => \Processador|ULA1|Add0~18\,
	sumout => \Processador|ULA1|Add0~21_sumout\,
	cout => \Processador|ULA1|Add0~22\);

\Processador|MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[5]~5_combout\ = ( \RAM|ram~549_combout\ & ( (!\Processador|decoder|saida[6]~0_combout\ & ((!\Processador|ROM1|memROM~10_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~13_combout\)) ) ) # ( 
-- !\RAM|ram~549_combout\ & ( (\Processador|ROM1|memROM~13_combout\ & \Processador|decoder|saida[6]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101110001011100010100000101000001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datac => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datae => \RAM|ALT_INV_ram~549_combout\,
	combout => \Processador|MUX1|saida_MUX[5]~5_combout\);

\Processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA1|Add0~21_sumout\,
	asdata => \Processador|MUX1|saida_MUX[5]~5_combout\,
	sload => \Processador|decoder|saida[4]~1_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(5));

\BLOCO_LEDs|REG_07|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|REGA|DOUT\(5),
	ena => \BLOCO_LEDs|hab_bloco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_LEDs|REG_07|DOUT\(5));

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(6),
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~21_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~550_combout\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(6),
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~29_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~551_combout\);

\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(6),
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

\RAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~552_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~37_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~552_combout\);

\RAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~553_combout\ = ( !\Processador|ROM1|memROM~3_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~552_combout\ ) ) ) # ( \Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~551_combout\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~550_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~550_combout\,
	datab => \RAM|ALT_INV_ram~551_combout\,
	datac => \RAM|ALT_INV_ram~552_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~553_combout\);

\RAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~568_combout\ = (!\Processador|ROM1|memROM~10_combout\ & \RAM|ram~553_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~553_combout\,
	combout => \RAM|ram~568_combout\);

\Processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~25_sumout\ = SUM(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~568_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~10_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add0~22\ ))
-- \Processador|ULA1|Add0~26\ = CARRY(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~568_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~10_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100100101100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~568_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	cin => \Processador|ULA1|Add0~22\,
	sumout => \Processador|ULA1|Add0~25_sumout\,
	cout => \Processador|ULA1|Add0~26\);

\Processador|MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[6]~6_combout\ = (!\Processador|ROM1|memROM~10_combout\ & (!\Processador|decoder|saida[6]~0_combout\ & \RAM|ram~553_combout\)) # (\Processador|ROM1|memROM~10_combout\ & (\Processador|decoder|saida[6]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001000100011001100100010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datab => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datad => \RAM|ALT_INV_ram~553_combout\,
	combout => \Processador|MUX1|saida_MUX[6]~6_combout\);

\Processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA1|Add0~25_sumout\,
	asdata => \Processador|MUX1|saida_MUX[6]~6_combout\,
	sload => \Processador|decoder|saida[4]~1_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(6));

\BLOCO_LEDs|REG_07|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|REGA|DOUT\(6),
	ena => \BLOCO_LEDs|hab_bloco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_LEDs|REG_07|DOUT\(6));

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(7),
	ena => \RAM|ram~571_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~554_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~22_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~554_combout\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(7),
	ena => \RAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~555_combout\);

\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(7),
	ena => \RAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

\RAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~556_combout\ = ( !\Processador|ROM1|memROM~13_combout\ & ( !\Processador|ROM1|memROM~12_combout\ & ( \RAM|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~38_q\,
	datae => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~556_combout\);

\RAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~557_combout\ = ( !\Processador|ROM1|memROM~3_combout\ & ( \Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~556_combout\ ) ) ) # ( \Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~555_combout\ ) ) ) # ( 
-- !\Processador|ROM1|memROM~3_combout\ & ( !\Processador|ROM1|memROM~2_combout\ & ( \RAM|ram~554_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~554_combout\,
	datab => \RAM|ALT_INV_ram~555_combout\,
	datac => \RAM|ALT_INV_ram~556_combout\,
	datae => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	dataf => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~557_combout\);

\RAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~569_combout\ = (!\Processador|ROM1|memROM~10_combout\ & \RAM|ram~557_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM|ALT_INV_ram~557_combout\,
	combout => \RAM|ram~569_combout\);

\Processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~29_sumout\ = SUM(( !\Processador|decoder|Equal10~1_combout\ $ (((!\Processador|decoder|saida[6]~0_combout\ & ((\RAM|ram~569_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~13_combout\)))) ) + ( 
-- \Processador|REGA|DOUT\(7) ) + ( \Processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_ram~569_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	cin => \Processador|ULA1|Add0~26\,
	sumout => \Processador|ULA1|Add0~29_sumout\);

\Processador|MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[7]~7_combout\ = ( \RAM|ram~557_combout\ & ( (!\Processador|decoder|saida[6]~0_combout\ & ((!\Processador|ROM1|memROM~10_combout\))) # (\Processador|decoder|saida[6]~0_combout\ & (\Processador|ROM1|memROM~13_combout\)) ) ) # ( 
-- !\RAM|ram~557_combout\ & ( (\Processador|ROM1|memROM~13_combout\ & \Processador|decoder|saida[6]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101110001011100010100000101000001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ROM1|ALT_INV_memROM~13_combout\,
	datab => \Processador|ROM1|ALT_INV_memROM~10_combout\,
	datac => \Processador|decoder|ALT_INV_saida[6]~0_combout\,
	datae => \RAM|ALT_INV_ram~557_combout\,
	combout => \Processador|MUX1|saida_MUX[7]~7_combout\);

\Processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|ULA1|Add0~29_sumout\,
	asdata => \Processador|MUX1|saida_MUX[7]~7_combout\,
	sload => \Processador|decoder|saida[4]~1_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(7));

\BLOCO_LEDs|REG_07|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Processador|REGA|DOUT\(7),
	ena => \BLOCO_LEDs|hab_bloco~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BLOCO_LEDs|REG_07|DOUT\(7));

\BLOCO_LEDs|FF_8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BLOCO_LEDs|FF_8|DOUT~0_combout\ = ( \RAM|process_0~0_combout\ & ( \BLOCO_LEDs|hab_bloco~0_combout\ & ( (!\Processador|ROM1|memROM~2_combout\ & ((!\Processador|ROM1|memROM~3_combout\ & (\BLOCO_LEDs|FF_8|DOUT~q\)) # (\Processador|ROM1|memROM~3_combout\ & 
-- ((\Processador|REGA|DOUT\(0)))))) # (\Processador|ROM1|memROM~2_combout\ & (\BLOCO_LEDs|FF_8|DOUT~q\)) ) ) ) # ( !\RAM|process_0~0_combout\ & ( \BLOCO_LEDs|hab_bloco~0_combout\ & ( \BLOCO_LEDs|FF_8|DOUT~q\ ) ) ) # ( \RAM|process_0~0_combout\ & ( 
-- !\BLOCO_LEDs|hab_bloco~0_combout\ & ( \BLOCO_LEDs|FF_8|DOUT~q\ ) ) ) # ( !\RAM|process_0~0_combout\ & ( !\BLOCO_LEDs|hab_bloco~0_combout\ & ( \BLOCO_LEDs|FF_8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_LEDs|FF_8|ALT_INV_DOUT~q\,
	datab => \Processador|REGA|ALT_INV_DOUT\(0),
	datac => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \BLOCO_LEDs|ALT_INV_hab_bloco~0_combout\,
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
-- \BLOCO_LEDs|FF_9|DOUT~0_combout\ = ( \RAM|process_0~0_combout\ & ( \BLOCO_LEDs|hab_bloco~0_combout\ & ( (!\Processador|ROM1|memROM~2_combout\ & (\BLOCO_LEDs|FF_9|DOUT~q\)) # (\Processador|ROM1|memROM~2_combout\ & ((!\Processador|ROM1|memROM~3_combout\ & 
-- ((\Processador|REGA|DOUT\(0)))) # (\Processador|ROM1|memROM~3_combout\ & (\BLOCO_LEDs|FF_9|DOUT~q\)))) ) ) ) # ( !\RAM|process_0~0_combout\ & ( \BLOCO_LEDs|hab_bloco~0_combout\ & ( \BLOCO_LEDs|FF_9|DOUT~q\ ) ) ) # ( \RAM|process_0~0_combout\ & ( 
-- !\BLOCO_LEDs|hab_bloco~0_combout\ & ( \BLOCO_LEDs|FF_9|DOUT~q\ ) ) ) # ( !\RAM|process_0~0_combout\ & ( !\BLOCO_LEDs|hab_bloco~0_combout\ & ( \BLOCO_LEDs|FF_9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BLOCO_LEDs|FF_9|ALT_INV_DOUT~q\,
	datab => \Processador|REGA|ALT_INV_DOUT\(0),
	datac => \Processador|ROM1|ALT_INV_memROM~2_combout\,
	datad => \Processador|ROM1|ALT_INV_memROM~3_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	dataf => \BLOCO_LEDs|ALT_INV_hab_bloco~0_combout\,
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

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;
END structure;


