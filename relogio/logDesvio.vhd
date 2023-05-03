library ieee;
use ieee.std_logic_1164.all;

entity logDesvio is
  port ( flag : in std_logic;
         jeq: in std_logic;
			jsr : in std_logic;
			ret : in std_logic;
			jmp : in std_logic;
			jsq : in std_logic;
			saida : out STD_LOGIC_VECTOR(1 downto 0)
  );
end entity;

architecture comportamento of logDesvio is

	
  begin
--JMP-6	SelMUX-5	HabilitaA-4	Operação-32	habLeituraMEM-1	habEscritaMEM-0
saida(0) <= jmp or (jeq and flag) or jsr or (jsq and flag) ;
saida(1) <= ret;
end architecture;