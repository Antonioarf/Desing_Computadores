library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_31 is
    port (
		 entradaA,entradaB,slt  	:  in std_logic;
		 inverteB 						:  in std_logic;
		 sel  							:  in std_logic_vector(1 downto 0);
		 carry_in						:  in std_logic;
		 saida, carry_out,overflow	:  out std_logic
    );
end entity;

architecture comportamento of ULA_31 is
    signal inverte : std_logic;
    signal soma : std_logic;

begin

    MUX_inverte :  entity work.muxBit
        port map( entradaA_MUX => entradaB, entradaB_MUX => (not entradaB) ,seletor_MUX => inverteB ,saida_MUX => inverte);	

    Somador : entity work.soma_bit 
    port map(
        entradaA => inverte,
        entradaB => entradaA,
        cIn   => carry_in,
        saida => soma,
        cOut  => carry_out
    );

    MUX_Selecao: entity work.muxBit4x2 port map(
		entrada0  => (entradaA and inverte),
		entrada1  => (entradaA or inverte) ,
		entrada2  => soma, 
		entrada3  => slt,
		seletor_MUX => sel,
		saida_MUX => saida
    );
	 
	 overflow <= ((carry_out xor carry_in) xor soma);

end architecture;