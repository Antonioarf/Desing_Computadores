library ieee;
use ieee.std_logic_1164.all;

entity logDesvio is
  port ( jeq : in std_logic;
         jmp : in std_logic;
			flag : in std_logic;
			saida : out std_logic
  );
end entity;

architecture comportamento of logDesvio is

	
  begin
--JMP-6	SelMUX-5	HabilitaA-4	Operação-32	habLeituraMEM-1	habEscritaMEM-0
saida <= jmp or (jeq and flag);
end architecture;