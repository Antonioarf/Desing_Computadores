library ieee;
use ieee.std_logic_1164.all;

entity muxGenerico4x2 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 9);
  port (
    entrada00, entrada01,entrada10,entrada11 : in std_logic_vector((larguraDados-1) downto 0);
    seletor_MUX : in std_logic_vector(1 downto 0);
    saida_MUX : out std_logic_vector((larguraDados-1) downto 0)
  );
end entity;

architecture comportamento of muxGenerico4x2 is
  begin
    saida_MUX <= entrada00 when (seletor_MUX = "00") else
						entrada01 when (seletor_MUX = "01") else 
						entrada10 when (seletor_MUX = "10") else 
						entrada11 when (seletor_MUX = "11");

end architecture;