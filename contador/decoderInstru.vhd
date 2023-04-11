library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(11 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is
-- FAZER CEQI -> comparacao com imediato
constant NOP  : std_logic_vector(3 downto 0) := "0000";
constant LDA  : std_logic_vector(3 downto 0) := "0001";
constant SOMA : std_logic_vector(3 downto 0) := "0010";
constant SUB  : std_logic_vector(3 downto 0) := "0011";
constant LDI  : std_logic_vector(3 downto 0) := "0100";
constant STA  : std_logic_vector(3 downto 0) := "0101";
constant JMP  : std_logic_vector(3 downto 0) := "0110";
constant JEQ  : std_logic_vector(3 downto 0) := "0111";
constant CEQ  : std_logic_vector(3 downto 0) := "1000";
constant JSR  : std_logic_vector(3 downto 0) := "1001";
constant RET  : std_logic_vector(3 downto 0) := "1010";
constant SOMI  : std_logic_vector(3 downto 0) := "1011";
constant SUBI  : std_logic_vector(3 downto 0) := "1100";
  begin
--JMP-6	SelMUX-5	HabilitaA-4	Operação-32	habLeituraMEM-1	habEscritaMEM-0
--JMP	JEQ	Sel MUX	Hab_A	Operação	habFlag	RD	WR
--		habRet jmp10 ret9   jsr8  jeq7  mux16  hab15 ula3 habflg2 RD1   WD0
saida <= "0" & "0" & "0" & "0" & "0" & "0" & "0" & "00" & "0" & "0" & "0" when opcode = NOP else 
         "0" & "0" & "0" & "0" & "0" & "0" & "1" & "10" & "0" & "1" & "0" when opcode = LDA else
         "0" & "0" & "0" & "0" & "0" & "0" & "1" & "01" & "0" & "1" & "0" when opcode = SOMA else
			"0" & "0" & "0" & "0" & "0" & "1" & "1" & "01" & "0" & "1" & "0" when opcode = SOMI else --novo
         "0" & "0" & "0" & "0" & "0" & "0" & "1" & "00" & "0" & "1" & "0" when opcode = SUB else
         "0" & "0" & "0" & "0" & "0" & "1" & "1" & "00" & "0" & "1" & "0" when opcode = SUBI else --novo		
		   "0" & "0" & "0" & "0" & "0" & "1" & "1" & "10" & "0" & "0" & "0" when opcode = LDI else
		   "0" & "0" & "0" & "0" & "0" & "0" & "0" & "10" & "0" & "0" & "1" when opcode = STA else
			"0" & "1" & "0" & "0" & "0" & "0" & "0" & "00" & "0" & "0" & "0" when opcode = JMP else
			"0" & "0" & "0" & "0" & "1" & "0" & "0" & "00" & "0" & "0" & "0" when opcode = JEQ else
			"0" & "0" & "0" & "0" & "0" & "0" & "0" & "00" & "1" & "0" & "0" when opcode = CEQ else
			"1" & "0" & "0" & "1" & "0" & "0" & "0" & "00" & "0" & "0" & "0" when opcode = JSR else
			"0" & "0" & "1" & "0" & "0" & "0" & "0" & "00" & "0" & "0" & "0" when opcode = RET else
         "000000000000";  -- NOP para os opcodes Indefinidos
end architecture;