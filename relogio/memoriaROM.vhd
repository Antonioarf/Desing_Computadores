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
tmp(0)  := "010000000000000";  -- rotina de inicializacao
tmp(1)  := "010100000000000";  --  salva 0 no endereco 0
tmp(2)  := "010100000000010";  --  salva 0 no endereco 2
tmp(3)  := "010000000000001";  --  carrega 1 no r0
tmp(4)  := "010100000000001";  --  salva 1 no endereco 0
tmp(5)  := "010000000000000";  --  carrega zero no R0
tmp(6)  := "010001000000000";  --  contador para o display
tmp(7)  := "000000000000000";  -- 
tmp(8)  := "000000000000000";  -- 
tmp(9)  := "000100101100000";  --  carrega o valor lido do botao 0 no R0
tmp(10)  := "010100100100000";  --  salva no 7seg 0
tmp(11)  := "000000000000000";  -- 
tmp(12)  := "100000000000000";  --  se o botao nao ta apertado, volta para o comeco do loop
tmp(13)  := "011100000001110";  -- 
tmp(14)  := "011000000010010";  --  se o botao  nao ta apertado, pula para a func
tmp(15)  := "000000000000000";  -- 
tmp(16)  := "000000000000000";  -- 
tmp(17)  := "010100100100001";  --  R0 no salva no 7seg 1
tmp(18)  := "011000000000110";  -- 
tmp(19)  := "000000000000000";  -- 
tmp(20)  := "000000000000000";  -- 
tmp(21)  := "010100100100010";  --  R0 no salva no 7seg 2
tmp(22)  := "010100111111111";  --   limpa a leitura 
tmp(23)  := "001001000000001";  --  soma 1 ao contador (R1)
tmp(24)  := "010101100100101";  --  carrega o valor do R1 no ultimo display de 7 segmentos 
tmp(25)  := "011000000000110";  -- 



        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;