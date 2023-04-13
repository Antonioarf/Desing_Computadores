library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 4;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
tmp(0)  := "000000000000000";  -- 
tmp(1)  := "010000000000000";  -- 	Carrega o acumulador com o valor 0
tmp(2)  := "000101101100000";  -- 
tmp(3)  := "010101000111010";  -- 
tmp(4)  := "010100111111111";  -- 
tmp(5)  := "011000000000000";  -- 
tmp(6)  := "010001000000000";  -- 
tmp(7)  := "010010000000000";  -- 
tmp(8)  := "010011000000000";  -- 
tmp(9)  := "010100000000000";  -- Armazena o valor do acumulador em MEM[0] (constante 0)
tmp(10)  := "010100000000010";  -- 	Armazena o valor do acumulador em MEM[2] (contador)
tmp(11)  := "010000000000001";  -- 	Carrega o acumulador com o valor 1
tmp(12)  := "010100000000001";  -- 	Armazena o valor do acumulador em MEM[1] (constante 1)
tmp(13)  := "000000000000000";  -- 
tmp(14)  := "000110101100000";  -- 		Carrega o acumulador com a leitura do botão KEY0
tmp(15)  := "010110100100000";  -- 		Armazena o valor lido em HEX0 (para verificar erros de leitura)
tmp(16)  := "100010000000000";  -- 	Compara com o valor de MEM[0] (constante 0)
tmp(17)  := "011100000001011";  -- 	Desvia se igual a 0 (botão não foi pressionado)
tmp(18)  := "100100000010101";  -- 	O botão foi pressionado, chama a sub-rotina de incremento
tmp(19)  := "000000000000000";  -- Retorno da sub-rotina de incremento
tmp(20)  := "011000000001001";  -- 	Fecha o laço principal, faz uma nova leitura de KEY0
tmp(21)  := "000000000000000";  -- 
tmp(22)  := "010111111111111";  -- Limpa a leitura do botão
tmp(23)  := "000101000000010";  -- Carrega o valor de MEM[2] (contador)
tmp(24)  := "001001000000001";  -- Soma com a constante em MEM[1]
tmp(25)  := "010101000000010";  -- Salva o incremento em MEM[2] (contador)
tmp(26)  := "010101100000010";  -- Armazena o valor do bit0 do acumulador no LDR9
tmp(27)  := "010101100100101";  -- Armazena o valor do acumulador no HEX5
tmp(28)  := "101000000000000";  -- 	Retorna da sub-rotina
tmp(29)  := "011000000000000";  -- 	Desvia para o endereço 0 (início do programa)
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;