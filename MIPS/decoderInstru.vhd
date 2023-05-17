library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(7 downto 0);
			tipo_r: out std_logic
  );
end entity;

architecture comportamento of decoderInstru is
-- GRUPO A
constant LW  	: std_logic_vector(5 downto 0) := "100011";
constant SW  	: std_logic_vector(5 downto 0) := "101011";

constant ADD 	: std_logic_vector(5 downto 0) := "000000";
constant SUB  	: std_logic_vector(5 downto 0) := "000000";
constant ANDD  : std_logic_vector(5 downto 0) := "000000";
constant ORR	: std_logic_vector(5 downto 0) := "000000";

constant SLT  : std_logic_vector(5 downto 0) := "101010";
constant BEQ  : std_logic_vector(5 downto 0) := "000100";
constant JMP : std_logic_vector(5 downto 0) := "000010";

-- GRUPO B
constant LUI  : std_logic_vector(5 downto 0) := "000000";

constant ADDI  : std_logic_vector(5 downto 0) := "000000";
constant ANDI : std_logic_vector(5 downto 0) := "000000";
constant ORI  : std_logic_vector(5 downto 0) := "000000";
constant SLTI  : std_logic_vector(5 downto 0) := "000000";

constant BNE : std_logic_vector(5 downto 0) := "000000";
constant JAL  : std_logic_vector(5 downto 0) := "000000";
constant JR  : std_logic_vector(5 downto 0) := "000000";

begin

saida(0) <= '1' when (opcode = ADD) or (opcode = SUB) else '0'; -- muxPC
saida(1) <= '1' when (opcode = ADD) or (opcode = SUB) else '0'; -- mux Reg 2 e 3
saida(2) <= '1' when (opcode = ADD) or (opcode = SUB) else '0'; -- hab escrita reg 3
saida(3) <= '1' when (opcode = ADD) or (opcode = SUB) else '0'; -- mux antes ULA (R2 e ExSig)
saida(4) <= '1' when (opcode = ADD) or (opcode = SUB) else '0'; -- mux retorno (ULA e RAM)
saida(5) <= '1' when (opcode = ADD) or (opcode = SUB) else '0'; -- BEQ
saida(6) <= '1' when (opcode = ADD) or (opcode = SUB) else '0'; -- hab leitura RAM
saida(7) <= '1' when (opcode = ADD) or (opcode = SUB) else '0'; -- hab escrita RAM

tipo_r 	<= '1' when (opcode = ADD) or (opcode = SUB)  else '0'; -- tanto faz com qual q compara
end architecture;