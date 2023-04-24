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
tmp(0)  := "010001000001010";  -- 
tmp(1)  := "010101000001001";  -- const 10 no end 9 
tmp(2)  := "010001000000001";  -- 
tmp(3)  := "010101000001010";  -- const 1 no end 10
tmp(4)  := "010000000000000";  -- 
tmp(5)  := "010100100100000";  --  zerar os displays
tmp(6)  := "010100100100001";  -- 
tmp(7)  := "010100100100010";  -- 
tmp(8)  := "010100100100011";  -- 
tmp(9)  := "010100100100100";  -- 
tmp(10)  := "010100100100101";  -- 
tmp(11)  := "010100100000000";  --  zerar os leds
tmp(12)  := "010100100000001";  -- 
tmp(13)  := "010100100000010";  -- 
tmp(14)  := "010100000000000";  --  zerar memoria para os contadores
tmp(15)  := "010100000000001";  -- 
tmp(16)  := "010100000000010";  -- 
tmp(17)  := "010100000000011";  -- 
tmp(18)  := "010100000000100";  -- 
tmp(19)  := "010100000000101";  -- 
tmp(20)  := "010100000111111";  --  zerar memoria para o contador geral
tmp(21)  := "010100000111110";  --  zerar memoria para o LIM , linha 21
tmp(22)  := "010110111111111";  --  linha 22
tmp(23)  := "000101101100000";  --  le KEY0 no registrador 1, 
tmp(24)  := "010101100100000";  --  salva o valor de R1 no hex0 -> ate aqui esta funcionando
tmp(25)  := "100001000000001";  --  if(R1 - 1) == 0:
tmp(26)  := "011101000100110";  --  pula para a rotina de ler as chaves e colocar no hex
tmp(27)  := "100101000011111";  --  else pula para INC_0
tmp(28)  := "000000000000000";  -- 
tmp(29)  := "011001000010110";  --  volta para o comeco da main, linha 28
tmp(30)  := "000000000000000";  -- 
tmp(31)  := "010110111111111";  --  limpa KEY_0 , linha 30
tmp(32)  := "000101000000000";  --  le o valor do contador zero
tmp(33)  := "101101000000001";  --  soma 1 ao contador 
tmp(34)  := "010101100100000";  --  salva o valor de R1 no hex0
tmp(35)  := "010101000000000";  --  salva de volta o novo valor do contador
tmp(36)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(37)  := "000000000000000";  -- 
tmp(38)  := "000101101000000";  --  carrega o valor lido das chaves, linha 37
tmp(39)  := "010101000111110";  --  salva o valor das chaves no LIM
tmp(40)  := "010101100100101";  --  salva o valor das chaves no hex5, linha 
tmp(41)  := "011001000010110";  --  volta para o comeco da main
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;