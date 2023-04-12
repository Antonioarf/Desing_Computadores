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
tmp(0)  := "000000000000000";  -- 
tmp(1)  := "010001000001010";  -- 
tmp(2)  := "010101000001001";  -- const 10 no end 9 
tmp(3)  := "010001000000001";  -- 
tmp(4)  := "010101000001010";  -- const 1 no end 10
tmp(5)  := "010000000000000";  -- 
tmp(6)  := "010100100100000";  --  zerar os displays
tmp(7)  := "010100100100001";  -- 
tmp(8)  := "010100100100010";  -- 
tmp(9)  := "010100100100011";  -- 
tmp(10)  := "010100100100100";  -- 
tmp(11)  := "010100100100101";  -- 
tmp(12)  := "010100100000000";  --  zerar os leds
tmp(13)  := "010100100000001";  -- 
tmp(14)  := "010100100000010";  -- 
tmp(15)  := "010100000000000";  --  zerar memoria para os contadores
tmp(16)  := "010100000000001";  -- 
tmp(17)  := "010100000000010";  -- 
tmp(18)  := "010100000000011";  -- 
tmp(19)  := "010100000000100";  -- 
tmp(20)  := "010100000000101";  -- 
tmp(21)  := "000000000000000";  -- 
tmp(22)  := "000101101100000";  -- 
tmp(23)  := "100001000001010";  -- 
tmp(24)  := "011100000011001";  -- 
tmp(25)  := "000000000000000";  -- 
tmp(26)  := "000111000000000";  -- 
tmp(27)  := "101111000000001";  -- 
tmp(28)  := "100011000001001";  -- 
tmp(29)  := "010111000000000";  -- 
tmp(30)  := "011100000100000";  -- 
tmp(31)  := "011000001001000";  -- 
tmp(32)  := "000000000000000";  -- 
tmp(33)  := "010100000000000";  -- 
tmp(34)  := "000111000000001";  -- 
tmp(35)  := "101111000000001";  -- 
tmp(36)  := "100011000001001";  -- 
tmp(37)  := "010111000000001";  -- 
tmp(38)  := "011100000101000";  -- 
tmp(39)  := "011000001001000";  -- 
tmp(40)  := "000000000000000";  -- 
tmp(41)  := "010100000000001";  -- 
tmp(42)  := "000111000000010";  -- 
tmp(43)  := "101111000000001";  -- 
tmp(44)  := "100011000001001";  -- 
tmp(45)  := "010111000000010";  -- 
tmp(46)  := "011100000110000";  -- 
tmp(47)  := "011000001001000";  -- 
tmp(48)  := "000000000000000";  -- 
tmp(49)  := "010100000000010";  -- 
tmp(50)  := "000111000000011";  -- 
tmp(51)  := "101111000000001";  -- 
tmp(52)  := "100011000001001";  -- 
tmp(53)  := "010111000000011";  -- 
tmp(54)  := "011100000111000";  -- 
tmp(55)  := "011000001001000";  -- 
tmp(56)  := "000000000000000";  -- 
tmp(57)  := "010100000000011";  -- 
tmp(58)  := "000111000000100";  -- 
tmp(59)  := "101111000000001";  -- 
tmp(60)  := "100011000001001";  -- 
tmp(61)  := "010111000000100";  -- 
tmp(62)  := "011100001000000";  -- 
tmp(63)  := "011000001001000";  -- 
tmp(64)  := "000000000000000";  -- 
tmp(65)  := "010100000000100";  -- 
tmp(66)  := "000111000000101";  -- 
tmp(67)  := "101111000000001";  -- 
tmp(68)  := "100011000001001";  -- 
tmp(69)  := "010111000000101";  -- 
tmp(70)  := "011100000011001";  -- 
tmp(71)  := "011000001001000";  -- 
tmp(72)  := "000000000000000";  -- 
tmp(73)  := "000110000000000";  -- 
tmp(74)  := "010110100100000";  -- 
tmp(75)  := "000110000000001";  -- 
tmp(76)  := "010110100100001";  -- 
tmp(77)  := "000110000000010";  -- 
tmp(78)  := "010110100100010";  -- 
tmp(79)  := "000110000000011";  -- 
tmp(80)  := "010110100100011";  -- 
tmp(81)  := "000110000000100";  -- 
tmp(82)  := "010110100100100";  -- 
tmp(83)  := "000110000000101";  -- 
tmp(84)  := "010110100100101";  -- 
tmp(85)  := "011000000010101";  -- 
tmp(86)  := "000000000000000";  -- 


		  

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;