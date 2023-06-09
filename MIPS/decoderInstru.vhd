library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
			funct: in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(12 downto 0);
			tipo_r: out std_logic
  );
end entity;

architecture comportamento of decoderInstru is
-- GRUPO A
constant UPCODE_R 	: std_logic_vector(5 downto 0) := "000000";


constant LW  	: std_logic_vector(5 downto 0) 	:= "100011";
constant SW  	: std_logic_vector(5 downto 0) 	:= "101011";

constant BEQ  : std_logic_vector(5 downto 0) 	:= "000100";
constant JMP : std_logic_vector(5 downto 0) 		:= "000010";

-- GRUPO B
constant LUI  : std_logic_vector(5 downto 0) 	:= "001111"; --feito

constant ADDI  : std_logic_vector(5 downto 0) 	:= "001000"; --feito
constant ANDI : std_logic_vector(5 downto 0) 	:= "001100"; --feito
constant ORI  : std_logic_vector(5 downto 0) 	:= "001101"; --feito
constant SLTI  : std_logic_vector(5 downto 0) 	:= "001010";

constant BNE : std_logic_vector(5 downto 0) 		:= "000101"; --feito
constant JAL  : std_logic_vector(5 downto 0) 	:= "000011"; --feito
--constant JR  : std_logic_vector(5 downto 0) 		:= "001000"; ---feito - TIPO R
signal JR: std_logic;
begin
JR<= '1' when ((opcode = UPCODE_R)and(funct = "001000")) else '0';
saida(0) <= '1' when (opcode = JMP)or(opcode = JAL)												else '0'; -- muxPC
saida(1) <= '1' when (opcode = UPCODE_R)													else '0'; -- mux Reg 2 e 3
saida(2) <= '1' when (opcode = UPCODE_R)or(opcode = LW)or(opcode = ADDI)or(opcode = ANDI)or(opcode = ORI)or(opcode = JAL)or(opcode = SLTI)	else '0'; -- hab escrita reg 3
saida(3) <= '1' when (opcode = SW) or (opcode = LW) or(opcode = ADDI)or(opcode = ANDI)or(opcode = ORI)or(opcode = SLTI)			else '0'; -- mux antes ULA (R2 e ExSig)
saida(4) <= '1' when (opcode = LW)or(opcode = JAL)				 									else '0'; -- mux retorno (ULA e RAM)
saida(5) <= '1' when (opcode = BEQ) 														else '0'; -- BEQ
saida(6) <= '1' when (opcode = LW)  														else '0'; -- hab leitura RAM
saida(7) <= '1' when (opcode = SW) 															else '0'; -- hab escrita RAM 

saida(8) <= '1' when (opcode = ANDI)or(opcode = ORI)									else '0'; -- complemento 0
saida(9) <= '1' when (opcode = BNE) 														else '0'; -- BNE
saida(10) <= '1' when JR				 														else '0'; -- JR
saida(11) <= '1' when (opcode = LUI)or(opcode = JAL)			 									else '0'; -- LUI
saida(12) <= '1' when (opcode = JAL)			 														else '0'; -- AMPLIA MUX REG (junto com pino 1)



tipo_r 	<= '1' when (opcode = UPCODE_R)  else '0'; -- tanto faz com qual q compara
end architecture;