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
tmp(0)  := "010000000000000";  -- 
tmp(1)  := "010100000000000";  -- 
tmp(2)  := "010100000000010";  -- 
tmp(3)  := "010000000000001";  -- 
tmp(4)  := "010100000000001";  -- 
tmp(5)  := "000000000000000";  -- 
tmp(6)  := "000101101100000";  -- 
tmp(7)  := "010101100100000";  -- 
tmp(8)  := "100001000000000";  -- 
tmp(9)  := "011100000001011";  -- 
tmp(10)  := "100100000001101";  -- 
tmp(11)  := "000000000000000";  -- 
tmp(12)  := "011000000000101";  -- 
tmp(13)  := "000000000000000";  -- 
tmp(14)  := "010110111111111";  -- 
tmp(15)  := "000110000000010";  -- 
tmp(16)  := "101110000000001";  -- 
tmp(17)  := "010110000000010";  -- 
tmp(18)  := "010110100100101";  -- 
tmp(19)  := "000101101000000";  -- 
tmp(20)  := "010101100000000";  -- 
tmp(21)  := "101000000000000";  -- 








        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;