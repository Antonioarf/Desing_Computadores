library ieee;
use ieee.std_logic_1164.all;

entity decoderInstru is
  port ( opcode : in std_logic_vector(3 downto 0);
         saida : out std_logic_vector(5 downto 0)
  );
end entity;

architecture comportamento of decoderInstru is


--NOP	0000					
--LDA	0001					
--SOMA	0010					
--SUB	0011					
--LDI	0100					
--STA	0101

  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI : std_logic_vector(3 downto 0) := "0100";
  constant STA : std_logic_vector(3 downto 0) := "0101";

  begin
 --Write <= Sinais_Controle(5);
-- Read <= Sinais_Controle(4);
--selMUX <= Sinais_Controle(3); 0 = memoria, 1= ime
--Habilita_A <= Sinais_Controle(2);
--Operacao_ULA <= Sinais_Controle(0,1);
saida <= "000010" when opcode = NOP else --ISSO TA TUDO CAGADO!!
         "010110" when opcode = LDA else
         "010101" when opcode = SOMA else
         "010100" when opcode = SUB else
			"001110" when opcode = LDI else
			"100010" when opcode = STA else
         "000000";  -- NOP para os opcodes Indefinidos
end architecture;