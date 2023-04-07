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
  constant SOMI  : std_logic_vector(3 downto 0) := "1011";
  constant SUBI  : std_logic_vector(3 downto 0) := "1100";
	 
  constant Reg_0  : std_logic_vector(1 downto 0) := "00";
  constant Reg_1  : std_logic_vector(1 downto 0) := "01";
  constant Reg_2  : std_logic_vector(1 downto 0) := "10";
  constant Reg_3  : std_logic_vector(1 downto 0) := "11";
  
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
		  tmp(0)  := LDI & Reg_0 & '0' & x"0A";
		  tmp(1)  := LDI & Reg_1 & '0' & x"0A";
		  tmp(2)  := SOMI & Reg_0 & '0' & x"0A";
		  tmp(3)  := SUBI & Reg_1 & '0' & x"05";
		  tmp(4)  := JMP & Reg_0 & '0' & x"00";
		  tmp(5) := "000000000000000";
		  

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;