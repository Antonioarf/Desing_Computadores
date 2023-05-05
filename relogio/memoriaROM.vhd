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
--tmp(0)  := "010000000000000";  -- rotina de inicializacao
--tmp(1)  := "010100000000000";  --  salva 0 no endereco 0
--tmp(2)  := "010100000000010";  --  salva 0 no endereco 2
--tmp(3)  := "010000000000001";  --  carrega 1 no r0
--tmp(4)  := "010000000000000";  --  carrega zero no R0
--tmp(5)  := "010001000000000";  --  contador para o display
--tmp(6)  := "000000000000000";  -- 
--tmp(7)  := "000000000000000";  -- 
--tmp(8)  := "000100101100000";  --  carrega o valor lido do botao 0 no R0
--tmp(9)  := "010100100100000";  --  salva R0 no 7seg 0
--tmp(10)  := "100000000000000";  --  se o botao nao ta apertado, volta para o comeco do loop
--tmp(11)  := "000000000000000";  -- 
--tmp(12)  := "011100000001110";  -- 
--tmp(13)  := "011000000010011";  --  se o botao  nao ta apertado, pula para a func
--tmp(14)  := "000000000000000";  -- 
--tmp(15)  := "000000000000000";  -- 
--tmp(16)  := "000000000000000";  -- 
--tmp(17)  := "010100100100010";  --  salva R0 no 7seg 2
--tmp(18)  := "011000000000101";  -- 
--tmp(19)  := "000000000000000";  -- 
--tmp(20)  := "000000000000000";  -- 
--tmp(21)  := "000000000000000";  -- 
--tmp(22)  := "010100100100011";  --   salva R0 no 7seg 3
--tmp(23)  := "010100111111111";  --   limpa a leitura 
--tmp(24)  := "101101000000001";  --  soma 1 ao contador (R1)
--tmp(25)  := "010101100100101";  --  carrega o valor do R1 no ultimo display de 7 segmentos 
--tmp(26)  := "011000000000101";  -- 
--tmp(27)  := "000000000000000";  -- 

--tmp(0)  := "010000000000000";  -- rotina de inicializacao
--tmp(1)  := "010100000000000";  --  salva 0 no endereco 0
--tmp(2)  := "010010000000100";  -- 
--tmp(3)  := "010110000000100";  -- 
--tmp(4)  := "000000000000000";  -- 
--tmp(5)  := "000000000000000";  -- 
--tmp(6)  := "000100000000000";  --  carrega o valor do endereco em R0
--tmp(7)  := "101100000000001";  --  soma 1 ao contador (R1)
--tmp(8)  := "010100100100101";  --  carrega o valor do R1 no ultimo display de 7 segmentos 
--tmp(9)  := "010100000000000";  --   salva R0 no 7seg 3
--tmp(10)  := "100000000000100";  --
-- 
--tmp(12)  := "011100000010011";  -- 
--tmp(13)  := "011000000000011";  -- 

tmp(0)  := "010000000000000";  -- 
tmp(1)  := "010100000000000";  -- 
tmp(2)  := "010100000000010";  -- 
tmp(3)  := "010000000000001";  -- 
tmp(4)  := "010100000000001";  -- 
tmp(5)  := "000000000000000";  -- 
tmp(6)  := "000000000000000";  -- 
tmp(7)  := "000100101100000";  -- 
tmp(8)  := "010100100100000";  -- 
tmp(9)  := "100000000000000";  -- 
tmp(10)  := "011100000001100";  -- 
tmp(11)  := "100100000001111";  -- 
tmp(12)  := "000000000000000";  -- 
tmp(13)  := "000000000000000";  -- 
tmp(14)  := "011000000000101";  -- 
tmp(15)  := "000000000000000";  -- 
tmp(16)  := "010100111111111";  -- 
tmp(17)  := "000101000000010";  -- 
tmp(18)  := "001001000000001";  -- 
tmp(19)  := "010101000000010";  -- 
tmp(20)  := "010101100000010";  -- 
tmp(21)  := "010101100100101";  -- 
tmp(22)  := "101000000000000";  --




        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;



