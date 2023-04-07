library ieee;
use ieee.std_logic_1164.all;

entity LEDs is
  generic (larguraDados : natural := 8
  );
  port ( 
		dados_in : in std_logic_vector((larguraDados-1) downto 0);
		decoder_1 : in std_logic_vector((larguraDados-1) downto 0);
      decoder_2 : in std_logic_vector((larguraDados-1) downto 0);
		Wr, A5,clk: in std_logic;
		ret: out std_logic_vector(9 downto 0)
  );
end entity;

architecture comportamento of LEDs is

 signal saida_bloco : std_logic_vector ((larguraDados-1) downto 0);
 signal saida_l8, saida_l9: std_logic;
 signal hab_bloco, hab_l8, hab_l9 : std_logic;


  begin
--BLOCO 0 A 7 DOS LEDS
REG_07 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => dados_in, DOUT => saida_bloco, ENABLE => hab_bloco, CLK => clk, RST => '0');
hab_bloco <= decoder_2(4) and Wr and decoder_1(0) and (not A5);	 

FF_8 : entity work.flipflop   
          port map (DIN => dados_in(0), DOUT => saida_l8, ENABLE => hab_l8, CLK => clk, RST => '0');
hab_l8 <= decoder_2(4) and Wr and decoder_1(1) and (not A5);	 
			 
			 
FF_9 : entity work.flipflop 
          port map (DIN => dados_in(0), DOUT => saida_l9, ENABLE => hab_l9, CLK => clk, RST => '0');
hab_l9 <= decoder_2(4) and Wr and decoder_1(2) and (not A5);	 
			 
ret(7 downto 0) <= saida_bloco;
ret(8) <= saida_l8;
ret(9) <= saida_l9;			 
			 
end architecture;