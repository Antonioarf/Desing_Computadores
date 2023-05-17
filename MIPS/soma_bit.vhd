library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;      

entity soma_bit is
    port
    (
      entradaA, entradaB : in std_logic;
		cIn                : in std_logic;
      saida              : out std_logic;
		cOut               : out std_logic 
    );
end entity;

architecture comportamento of soma_bit is
  begin
    saida <= cIn xor (entradaA xor entradaB);
    cOut <= (entradaA and entradaB) or (cIn and (entradaA xor entradaB));
end architecture;