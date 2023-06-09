library ieee;
use ieee.std_logic_1164.all;

entity decoderULA is
  port ( upcode : in std_logic_vector(5 downto 0);
			funct : in std_logic_vector(5 downto 0);
			tipo_r: in std_logic;
			saida : out std_logic_vector(2 downto 0) --vira quatro com o inverte A
  );
end entity;

architecture comportamento of decoderULA is
--upcodes
constant LW  	: std_logic_vector(5 downto 0) := "100011";
constant SW  	: std_logic_vector(5 downto 0) := "101011";
constant BEQ  : std_logic_vector(5 downto 0) := "000100";
constant BNE : std_logic_vector(5 downto 0) 		:= "000101";

constant ADDI  : std_logic_vector(5 downto 0) 	:= "001000";
constant ANDI : std_logic_vector(5 downto 0) 	:= "001100";
constant ORI  : std_logic_vector(5 downto 0) 	:= "001101";
constant SLTI  : std_logic_vector(5 downto 0) 	:= "001010";

--functs
constant ADD 	: std_logic_vector(5 downto 0) := "100000";
constant SUB  	: std_logic_vector(5 downto 0) := "100010";
constant ANDD  : std_logic_vector(5 downto 0) := "100100";
constant ORR	: std_logic_vector(5 downto 0) := "100101";
constant SLT	: std_logic_vector(5 downto 0) := "101010";
 
signal saida_funct, saida_upcode : std_logic_vector(2 downto 0);

begin
--logica a partir do upcode
saida_upcode <= "110" when (upcode = BEQ)or(upcode = BNE) else
                "001" when upcode = ORI else
					 "111" when upcode = SLTI else 
                "000" when upcode = ANDI else
                "010"; 

--logica a partir do funct
saida_funct <= "010" when funct = ADD else 
					"110" when funct = SUB else
					"111" when funct = SLT else 	
					"001" when funct = ORR else "000"; 

			
mux_dec_ula : entity work.muxGenerico2x1 generic map (larguraDados => 3)
        port map( entradaA_MUX => saida_upcode,
                 entradaB_MUX =>  saida_funct,
                 seletor_MUX => tipo_r,
                 saida_MUX => saida);	
					  

end architecture;