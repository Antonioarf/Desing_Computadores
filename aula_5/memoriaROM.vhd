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
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
--LDI $4         ; Acumulador = 4
--STA @257       ; Armazena 4 na posição 257
--LDI $3         ; Acumulador = 3
--STA @256       ; Armazena 3 na posição 256
--Soma @256      ; Soma acumulador com conteúdo de 256  

      -- Inicializa os endereços:
        tmp(0)  := JMP & '0' & x"04";   -- Desta posicao para baixo, é necessário acertar os valores
        tmp(1)  := JEQ & '0' & x"09";
		  tmp(2)  := NOP & '0' & x"00";
		  tmp(3)  := NOP & '0' & x"00";
        tmp(4)  := LDI & '0' & x"05";
		  tmp(5)  := STA & '1' & x"00";
		  tmp(6)  := CEQ & '1' & x"00";
		  tmp(7)  := JMP & '0' & x"01";
		  tmp(8)  := NOP & '0' & x"00";
		  tmp(9)  := LDI & '0' & x"04";
		  tmp(10)  := CEQ & '1' & x"00";
		  tmp(11)  := JEQ & '0' & x"03";
		  tmp(12)  := JMP & '0' & x"0C";


        tmp(13)  := "0000000000000";
		  tmp(14)  := "0000000000000";
		  tmp(15)  := "0000000000000";
 
        
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;