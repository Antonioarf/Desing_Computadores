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
tmp(25)  := "100001000000001";  --  if(R1 - 1) == 0
tmp(26)  := "011101000100110";  --   pula para a rotina de ler as chaves e colocar no hex
tmp(27)  := "100101000011111";  --  else pula para INC_0
tmp(28)  := "000000000000000";  -- 
tmp(29)  := "011001000010110";  --  volta para o comeco da main, linha 28
tmp(30)  := "000000000000000";  -- 
tmp(31)  := "010110111111111";  --  limpa KEY_0 , linha 30
tmp(32)  := "000101000000000";  --  le o valor do contador zero
tmp(33)  := "101101000000001";  --  soma 1 ao contador 
tmp(34)  := "010101100100000";  --  salva o valor de R1 no hex0
tmp(35)  := "010101000000000";  --  salva de volta o novo valor do contador
tmp(36)  := "100001000001001";  --  if count_0 - 9 = 0
tmp(37)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(38)  := "000000000000000";  -- 
tmp(39)  := "000101000000001";  --  le o valor do contador 1, linha 39
tmp(40)  := "101101000000001";  --  soma 1 ao contador 
tmp(41)  := "010101100100001";  --  salva o valor de R1 no hex0
tmp(42)  := "010101000000001";  --  salva de volta o novo valor do contador
tmp(43)  := "100001000001010";  --  if count_0 - 10 = 0
tmp(44)  := "011101000101110";  -- 
tmp(45)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(46)  := "000000000000000";  -- 
tmp(47)  := "000101000000010";  --  le o valor do contador 2, linha 46
tmp(48)  := "101101000000001";  --  soma 1 ao contador 
tmp(49)  := "010101100100010";  --  salva o valor de R1 no hex0
tmp(50)  := "010101000000010";  --  salva de volta o novo valor do contador
tmp(51)  := "100001000001010";  --  if count_0 - 9 = 0
tmp(52)  := "011101000110110";  -- 
tmp(53)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(54)  := "000000000000000";  -- 
tmp(55)  := "000101000000011";  --  le o valor do contador zero, linha 54
tmp(56)  := "101101000000001";  --  soma 1 ao contador 
tmp(57)  := "010101100100011";  --  salva o valor de R1 no hex0
tmp(58)  := "010101000000011";  --  salva de volta o novo valor do contador
tmp(59)  := "100001000001010";  --  if count_0 - 10 = 0
tmp(60)  := "011101000111110";  -- 
tmp(61)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(62)  := "000000000000000";  -- 
tmp(63)  := "000101000000100";  --  le o valor do contador zero, linha 62
tmp(64)  := "101101000000001";  --  soma 1 ao contador 
tmp(65)  := "010101100100100";  --  salva o valor de R1 no hex0
tmp(66)  := "010101000000100";  --  salva de volta o novo valor do contador
tmp(67)  := "100001000001010";  --  if count_0 - 10 = 0
tmp(68)  := "011101001000110";  -- 
tmp(69)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(70)  := "000000000000000";  -- 
tmp(71)  := "000101000000100";  --  le o valor do contador zero, linha 70
tmp(72)  := "101101000000001";  --  soma 1 ao contador 
tmp(73)  := "010101100100101";  --  salva o valor de R1 no hex0
tmp(74)  := "010101000000100";  --  salva de volta o novo valor do contador
tmp(75)  := "100001000001010";  --  if count_0 - 10 = 0
tmp(76)  := "011101001001110";  -- 
tmp(77)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(78)  := "000000000000000";  -- 
tmp(79)  := "000101000000101";  --  le o valor do contador 5, linha 78
tmp(80)  := "101101000000001";  --  soma 1 ao contador 
tmp(81)  := "010101100100110";  --  salva o valor de R1 no hex0
tmp(82)  := "010101000000101";  --  salva de volta o novo valor do contador
tmp(83)  := "100001000001010";  --  if count_0 - 10 = 0
tmp(84)  := "011101000000000";  -- 
tmp(85)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(86)  := "000000000000000";  -- 
tmp(87)  := "000101101000000";  --  carrega o valor lido das chaves, linha 86
tmp(88)  := "010101000111110";  --  salva o valor das chaves no LIM
tmp(89)  := "010101100100101";  --  salva o valor das chaves no hex5, linha 
tmp(90)  := "011001000010110";  --  volta para o comeco da main
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;