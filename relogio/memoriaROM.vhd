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
tmp(0)  := "000000000000000";  --  rotina de inicializacao
tmp(1)  := "010000000000000";  --  carrega 0 no R0 para zerar os registradores
tmp(2)  := "000100000000000";  --  zera R0
tmp(3)  := "000101000000000";  --  zera R1
tmp(4)  := "000110000000000";  --  zera R2
tmp(5)  := "000111000000000";  --  zera R3
tmp(6)  := "010100111111110";  --  limpa a leitura
tmp(7)  := "010100111111111";  --  limpa a leitura
tmp(8)  := "010100000000000";  --  salva 0 no endereco 0
tmp(9)  := "010000000000001";  --  carrega 1 no r0
tmp(10)  := "010100000000001";  --  salva 1 no endereco 2
tmp(11)  := "010000000000011";  --  carrega 3 no r0
tmp(12)  := "010100000000011";  --  salva 3 no endereco 3
tmp(13)  := "010000000000100";  --  carrega 4 no r0
tmp(14)  := "010100000000100";  --  salva 4 no endereco 4
tmp(15)  := "010000000000110";  --  carrega 6 no r0
tmp(16)  := "010100000000110";  --  salva 6 no endereco 6
tmp(17)  := "010000000001010";  --  carrega 10 no r0
tmp(18)  := "010100000001010";  --  salva 10 no endereco 10
tmp(19)  := "010000000011000";  --  carrega 24 no r0
tmp(20)  := "010100000011000";  --  salva 24 no endereco 24
tmp(21)  := "010000000111100";  --  carrega 60 no r0
tmp(22)  := "010100000111100";  --  salva 60 no endereco 60
tmp(23)  := "010000000000000";  --  carrega 0 no R0
tmp(24)  := "010100000010100";  --  alocacao do contador de segundos
tmp(25)  := "010100000010101";  --  alocacao do contador de minutos
tmp(26)  := "010100000010110";  --  alocacao do contador de horas
tmp(27)  := "010100100100000";  --  zera 7seg_0
tmp(28)  := "010100100100010";  --  zera 7seg_1
tmp(29)  := "010100100100100";  --  zera 7seg_2
tmp(30)  := "000000000000000";  -- 
tmp(31)  := "000100101100000";  --  carrega o valor lido do botao 0 no R0
tmp(32)  := "100000000000000";  --  se o botao nao ta apertado, volta para o comeco do loop
tmp(33)  := "011100000100011";  -- 
tmp(34)  := "011000000110001";  --  se o botao  nao ta apertado, pula para a func
tmp(35)  := "000000000000000";  -- 
tmp(36)  := "000000000000000";  -- 
tmp(37)  := "000100101100010";  -- 
tmp(38)  := "100000000000001";  -- 
tmp(39)  := "110100001010101";  -- 
tmp(40)  := "000100101100011";  --  carrega o valor lido do botao 0 no R0
tmp(41)  := "100000000000001";  --  se o botao nao ta apertado, volta para o comeco do loop
tmp(42)  := "110100001001111";  --  se o botao  nao ta apertado, pula para a func 
tmp(43)  := "000100101100100";  -- 
tmp(44)  := "100000000000001";  -- 
tmp(45)  := "011100000000000";  -- 
tmp(46)  := "000000000000000";  -- 
tmp(47)  := "011000000011110";  -- 
tmp(48)  := "000000000000000";  -- 
tmp(49)  := "000000000000000";  -- 
tmp(50)  := "010100111111111";  --   limpa a leitura 
tmp(51)  := "000100000010100";  --  carrega o contador dos segundos
tmp(52)  := "101100000000001";  --  soma 1 ao valor do contador
tmp(53)  := "100000000111100";  --  compara para ver se chegou em 60
tmp(54)  := "011100000111011";  --  
tmp(55)  := "010100000010100";  --  salva o valor de volta no contador
tmp(56)  := "010100100100000";  --  coloca o valor na 7seg_0 TODO -> trocar para a func que lida com os displays
tmp(57)  := "011000000011110";  -- 
tmp(58)  := "000000000000000";  -- 
tmp(59)  := "000000000000000";  -- 
tmp(60)  := "010101100100000";  --  zera o 7seg_0
tmp(61)  := "010101000010100";  --  zera o contador dos segundos
tmp(62)  := "000100000010101";  --  carrega o contador dos miutos
tmp(63)  := "101100000000001";  --  soma 1 ao valor do contador
tmp(64)  := "100000000111100";  --  compara para ver se chegou em 60 
tmp(65)  := "011100001000101";  --  
tmp(66)  := "010100000010101";  --  salva o valor de volta no contador
tmp(67)  := "010100100100010";  --  coloca o valor na 7seg_1 TODO -> trocar para a func que lida com os displays
tmp(68)  := "011000000011110";  -- 
tmp(69)  := "000000000000000";  -- 
tmp(70)  := "010101100100010";  --  zera o 7seg_1
tmp(71)  := "010101000010101";  --  zera o contador dos minutos
tmp(72)  := "000100000010110";  --  carrega o contador das horas
tmp(73)  := "101100000000001";  --  soma 1 ao valor do contador
tmp(74)  := "100000000011000";  --  compara para ver se chegou em 24
tmp(75)  := "011100000000000";  --  
tmp(76)  := "010100000010110";  --  salva o valor de volta no contador
tmp(77)  := "010100100100100";  --  coloca o valor na 7seg_0 TODO -> trocar para a func que lida com os displays
tmp(78)  := "011000000011110";  -- 
tmp(79)  := "000000000000000";  -- 
tmp(80)  := "000110101000000";  --  carrega o valor lido dos Switches no R2
tmp(81)  := "010110111111110";  --  limpa a leitura
tmp(82)  := "010110100100100";  --  Atualiza o valor da 7seg_2
tmp(83)  := "010110000010110";  --  Atualiza o valor do contador de horas
tmp(84)  := "101000000000000";  -- 
tmp(85)  := "000000000000000";  -- 
tmp(86)  := "000110101000000";  --  carrega o valor lido dos Switches no R2
tmp(87)  := "010110111111110";  --  limpa a leitura
tmp(88)  := "010110100100010";  --  Atualiza o valor da 7seg_1
tmp(89)  := "010110000010101";  --  Atualiza o valor do contador de minutos
tmp(90)  := "101000000000000";  -- 








        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;



