library ieee;
use ieee.std_logic_1164.all;

entity Input is
  generic (larguraDados : natural := 8
  );
  port (
		dados_out : out std_logic_vector((larguraDados-1) downto 0);
		estado_chaves : in std_logic_vector(9 downto 0);
		estado_botoes : in std_logic_vector(4 downto 0);
		decoder_1 : in std_logic_vector(7 downto 0);
		Rd, A5,clk,bloco, limpa0, limpa1: in std_logic
  );
end entity;

architecture comportamento of Input is

signal saida_bloco,saida_sw_8,saida_sw_9 : std_logic_vector ((larguraDados-1)  downto 0);
signal hab_bloco, hab_sw_8,hab_sw_9 : std_logic;
signal hab_k0,hab_k4, miolo_k0, miolo2_k0,miolo_k4, miolo2_k4: std_logic;
signal saida_k0,saida_k4: std_logic_vector ((larguraDados-1)  downto 0);
  begin
Buffer_bloco :  entity work.buffer_3_state_8portas port map(entrada => estado_chaves(7 downto 0), habilita =>  hab_bloco, saida => saida_bloco);
hab_bloco <= bloco and Rd and decoder_1(0) and (not A5);	 
 
Buffer_sw8 :  entity work.buffer_3_state_8portas port map(entrada => ("0000000" & estado_chaves(8)) , habilita =>  hab_sw_8, saida => saida_sw_8);
hab_sw_8 <= bloco and Rd and decoder_1(1) and (not A5);

Buffer_sw9 :  entity work.buffer_3_state_8portas port map(entrada => ("0000000" & estado_chaves(9)) , habilita =>  hab_sw_9, saida => saida_sw_9);
hab_sw_9 <= bloco and Rd and decoder_1(2) and (not A5);



detectorKey0: work.edgeDetector(bordaSubida) port map (clk => clk, entrada => (not estado_botoes(0)), saida => miolo_k0);
FF_k0 : entity work.FlipFlop port map (DIN =>  '1',DOUT => miolo2_k0,ENABLE => '1',CLK => miolo_k0,RST => limpa0); 
hab_k0 <= bloco and Rd and decoder_1(0) and A5;
Buffer_K0 :  entity work.buffer_3_state_8portas port map(entrada => ("0000000" & miolo2_k0) , habilita =>  hab_k0, saida => saida_k0);

detectorKey4: work.edgeDetector(bordaSubida) port map (clk => clk, entrada => (not estado_botoes(4)), saida => miolo_k4);
FF_k4 : entity work.FlipFlop port map (DIN =>  '1',DOUT => miolo2_k4,ENABLE => '1',CLK => miolo_k4,RST => limpa1);		 
hab_k4 <= bloco and Rd and decoder_1(4) and A5;
Buffer_K4 :  entity work.buffer_3_state_8portas port map(entrada => ("0000000" & miolo2_k4) , habilita =>  hab_k4, saida => saida_k4);			 
			 

dados_out<=saida_bloco;		 
dados_out<=saida_sw_8;		 
dados_out<=saida_sw_9;		 
dados_out<=saida_k0;
dados_out <= saida_k4;


end architecture;
