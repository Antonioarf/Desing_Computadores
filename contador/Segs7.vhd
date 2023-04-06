library ieee;
use ieee.std_logic_1164.all;

entity Segs7 is
  generic (larguraDados : natural := 4
  );
  port (
		dados_in : in std_logic_vector((larguraDados-1) downto 0);
		decoder_1 : in std_logic_vector(7 downto 0);
		Wr, A5,clk,bloco: in std_logic;
		ret: out std_logic_vector(41 downto 0)
  );
end entity;

architecture comportamento of Segs7 is

signal saida_reg_0,saida_reg_1,saida_reg_2,saida_reg_3,saida_reg_4,saida_reg_5 : std_logic_vector ((larguraDados-1)  downto 0);
signal saida_dec_0,saida_dec_1,saida_dec_2,saida_dec_3,saida_dec_4,saida_dec_5 : std_logic_vector (6 downto 0);
signal hab_0, hab_1, hab_2,hab_3, hab_4, hab_5 : std_logic;


  begin
REG_0 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => dados_in, DOUT => saida_reg_0, ENABLE => hab_0, CLK => clk, RST => '0');
DEC_0 :  entity work.conversorHex7Seg port map(dadoHex => saida_reg_0, saida7seg => saida_dec_0);
hab_0 <= bloco and Wr and decoder_1(0) and A5;	 



REG_1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => dados_in, DOUT => saida_reg_1, ENABLE => hab_1, CLK => clk, RST => '0');
DEC_1 :  entity work.conversorHex7Seg port map(dadoHex => saida_reg_1, saida7seg => saida_dec_1);
hab_1 <= bloco and Wr and decoder_1(1) and A5;	 



REG_2 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => dados_in, DOUT => saida_reg_2, ENABLE => hab_2, CLK => clk, RST => '0');
DEC_2 :  entity work.conversorHex7Seg port map(dadoHex => saida_reg_2, saida7seg => saida_dec_2);
hab_2 <= bloco and Wr and decoder_1(2) and A5;	


REG_3 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => dados_in, DOUT => saida_reg_3, ENABLE => hab_3, CLK => clk, RST => '0');
DEC_3 :  entity work.conversorHex7Seg port map(dadoHex => saida_reg_3, saida7seg => saida_dec_3);
hab_3 <= bloco and Wr and decoder_1(3) and A5;	 


REG_4 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => dados_in, DOUT => saida_reg_4, ENABLE => hab_4, CLK => clk, RST => '0');
DEC_4 :  entity work.conversorHex7Seg port map(dadoHex => saida_reg_4, saida7seg => saida_dec_4);
hab_4 <= bloco and Wr and decoder_1(4) and A5;	 


REG_5 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => dados_in, DOUT => saida_reg_5, ENABLE => hab_5, CLK => clk, RST => '0');
DEC_5 :  entity work.conversorHex7Seg port map(dadoHex => saida_reg_5, saida7seg => saida_dec_5);
hab_5 <= bloco and Wr and decoder_1(5) and A5;	  
 
			 
ret(6 downto 0) <=saida_dec_0;
ret(13 downto 7)<=saida_dec_1;
ret(20 downto 14)<=saida_dec_2;
ret(27 downto 21)<=saida_dec_3;
ret(34 downto 28)<=saida_dec_4;
ret(41 downto 35)<=saida_dec_5;		 
			 
end architecture;