library ieee;
use ieee.std_logic_1164.all;

entity decoderULA is
  port ( opcode : in std_logic_vector(5 downto 0);
			funct : in std_logic_vector(5 downto 0);
			tipo_r: in std_logic;
			saida : out std_logic_vector(2 downto 0) --vira quatro com o inverte A
  );
end entity;

architecture comportamento of decoderULA is
--upcodes
constant LW  	: std_logic_vector(5 downto 0) := "100011";
constant SW  	: std_logic_vector(5 downto 0) := "101011";

--functs
constant ADD 	: std_logic_vector(5 downto 0) := "100000";
constant SUB  	: std_logic_vector(5 downto 0) := "100010";
constant ANDD  : std_logic_vector(5 downto 0) := "100100";
constant ORR	: std_logic_vector(5 downto 0) := "100101";
 
signal saida_funct, saida_upcode : std_logic_vector(2 downto 0);

begin
--logica a partir do funct
saida_upcode <= "111"; 


saida_funct <= "010" when funct = ADD else 
					"110" when funct = SUB else 
					"001" when funct = ORR else "000"; 

			
mux_dec_ula : entity work.muxGenerico2x1 generic map (larguraDados => 3)
        port map( entradaA_MUX => saida_upcode,
                 entradaB_MUX =>  saida_funct,
                 seletor_MUX => tipo_r,
                 saida_MUX => saida);	
					  

end architecture;