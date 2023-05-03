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
tmp(26)  := "011101001100100";  --   pula para a rotina de ler as chaves e colocar no hex
tmp(27)  := "100101000011111";  --  else pula para INC_0
tmp(28)  := "000000000000000";  -- 
tmp(29)  := "011001000010110";  --  volta para o comeco da main, linha 29
tmp(30)  := "000000000000000";  -- 
tmp(31)  := "010110111111111";  --  limpa KEY_0 , linha 31
tmp(32)  := "000101000000000";  --  contador 0
tmp(33)  := "100001000001001";  --  if count_0 - 9 = 0
tmp(34)  := "011101000101001";  --  pula para a subrotina do proximo contador
tmp(35)  := "000000000000000";  -- 
tmp(36)  := "101101000000001";  --  soma 1 ao contador 
tmp(37)  := "010101100100000";  --  salva o valor de R1 no hex0
tmp(38)  := "010101000000000";  --  salva de volta o novo valor do contador
tmp(39)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(40)  := "000000000000000";  -- 
tmp(41)  := "010000000000000";  -- Contador 1, linha 41
tmp(42)  := "010100100100000";  --  zerar o hex anterior
tmp(43)  := "010100000000000";  --  zera o contador anterior
tmp(44)  := "000101000000001";  --  le o valor do contador 1
tmp(45)  := "100001000001001";  --  if count_1 - 9 = 0
tmp(46)  := "011101000110100";  -- 
tmp(47)  := "000000000000000";  -- 
tmp(48)  := "101101000000001";  --  soma 1 ao contador 
tmp(49)  := "010101100100001";  --  salva o valor de R1 no hex1
tmp(50)  := "010101000000001";  --  salva de volta o novo valor do contador
tmp(51)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(52)  := "000000000000000";  --  linha 51
tmp(53)  := "010000000000000";  --  Contador 2, linha 41
tmp(54)  := "010100100100000";  --  zerar o hex anterior
tmp(55)  := "010100000000001";  --  zera o contador anterior
tmp(56)  := "000101000000010";  --  le o valor do contador 2
tmp(57)  := "100001000001001";  --  if count_1 - 9 = 0
tmp(58)  := "011101001000001";  -- 
tmp(59)  := "000000000000000";  -- 
tmp(60)  := "101101000000001";  --  soma 1 ao contador 2 
tmp(61)  := "010101100100010";  --  salva o valor de R1 no hex2
tmp(62)  := "010101000000010";  --  salva de volta o novo valor do contador
tmp(63)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(64)  := "000000000000000";  --  linha 51
tmp(65)  := "010000000000000";  --  Contador 3, linha 65
tmp(66)  := "010100100100001";  --  zerar o hex anterior
tmp(67)  := "010100000000010";  --  zera o contador anterior
tmp(68)  := "000101000000011";  --  le o valor do contador 
tmp(69)  := "100001000001001";  --  if count_1 - 9 = 0
tmp(70)  := "011101001001101";  -- 
tmp(71)  := "000000000000000";  -- 
tmp(72)  := "101101000000001";  --  soma 1 ao contador 2 
tmp(73)  := "010101100100011";  --  salva o valor de R1 no hex3
tmp(74)  := "010101000000011";  --  salva de volta o novo valor do contador
tmp(75)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(76)  := "000000000000000";  --  linha 51
tmp(77)  := "010000000000000";  --  Contador 4, linha 77
tmp(78)  := "010100100100010";  --  zerar o hex anterior
tmp(79)  := "010100000000011";  --  zera o contador anterior
tmp(80)  := "000101000000100";  --  le o valor do contador 
tmp(81)  := "100001000001001";  --  if count_1 - 9 = 0
tmp(82)  := "000000000000000";  -- 
tmp(83)  := "101101000000001";  --  soma 1 ao contador 2 
tmp(84)  := "010101100100100";  --  salva o valor de R1 no hex4
tmp(85)  := "010101000000100";  --  salva de volta o novo valor do contador
tmp(86)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(87)  := "000000000000000";  --  linha 87
tmp(88)  := "010000000000000";  --  Contador 5, linha 88
tmp(89)  := "010100100100011";  --  zerar o hex anterior
tmp(90)  := "010100000000100";  --  zera o contador anterior
tmp(91)  := "000101000000101";  --  le o valor do contador 
tmp(92)  := "100001000001001";  --  if count_1 - 9 = 0
tmp(93)  := "011101000000000";  --   reseta a contagem 
tmp(94)  := "000000000000000";  -- 
tmp(95)  := "101101000000001";  --  soma 1 ao contador 2 
tmp(96)  := "010101100100100";  --  salva o valor de R1 no hex4
tmp(97)  := "010101000000101";  --  salva de volta o novo valor do contador
tmp(98)  := "011001000010110";  --  volta para o comeco do loop princiapl
tmp(99)  := "000000000000000";  --  linha ??
tmp(100)  := "000101101000000";  --  carrega o valor lido das chaves, linha 100
tmp(101)  := "010101000111110";  --  salva o valor das chaves no LIM
tmp(102)  := "010101100100101";  --  salva o valor das chaves no hex5, linha 
tmp(103)  := "011001000010110";  --  volta para o comeco da main

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;