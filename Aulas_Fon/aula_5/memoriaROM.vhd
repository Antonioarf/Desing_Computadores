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
  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin

        tmp(0)  := JSR & '0' & x"0E";   
        tmp(1)  := JMP & '0' & x"05";
		  tmp(2)  := JEQ & '0' & x"09";
		  tmp(3)  := NOP & '0' & x"00";
        tmp(4)  := NOP & '0' & x"00";
		  tmp(5)  := LDI & '0' & x"05";
		  tmp(6)  := STA & '1' & x"00";
		  tmp(7)  := CEQ & '1' & x"00";
		  tmp(8)  := JMP & '0' & x"02";
		  tmp(9)  := NOP & '0' & x"00";
		  tmp(10) := LDI & '0' & x"04";
		  tmp(11) := CEQ & '1' & x"00";
		  tmp(12) := JEQ & '0' & x"03";
		  tmp(13) := JMP & '0' & x"0D";
        tmp(14) := NOP & '0' & x"00";
		  tmp(15) := RET & '0' & x"00";
		  tmp(16) := "0000000000000";
 
        
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;