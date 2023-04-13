library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
		  larguraPalavra : natural := 12;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );

  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 FPGA_RESET_N: in std_logic;
    SW: in std_logic_vector(9 downto 0);
    --PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
	 HEX0,HEX1,HEX2,HEX3,HEX4,HEX5: out std_logic_vector(6 downto 0);
	 LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of contador is
signal CLK, limpa0, limpa4: std_logic;
signal barramento_R : std_logic_vector (larguraDados-1 downto 0);
signal barramento_W : std_logic_vector (larguraDados-1 downto 0);
signal barramento_End : std_logic_vector (larguraEnderecos-1 downto 0);
signal barramento_Ctrl : std_logic_vector (larguraPalavra-1 downto 0);
signal Pc : std_logic_vector (larguraEnderecos-1 downto 0);
signal Leds : std_logic_vector (9 downto 0);
signal Chaves : std_logic_vector (9 downto 0);
signal Botoes: std_logic_vector(4 downto 0);
signal sete_segs : std_logic_vector(41 downto 0);
signal saida_decoder_1 : std_logic_vector (larguraDados-1 downto 0);
signal saida_decoder_2 : std_logic_vector (larguraDados-1 downto 0);

  
begin
-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(3);
else generate
CLK <= CLOCK_50;
end generate;


  Processador : entity work.processador  generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos,larguraPalavra=>larguraPalavra)
          port map (CLK => CLK, barramento_R => barramento_R, barramento_W => barramento_W, barramento_End  => barramento_End, barramento_Ctrl => barramento_Ctrl,PC_OUT=>Pc);
  
  RAM : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => 6)
          port map (addr => barramento_End(5 downto 0), we => barramento_Ctrl(0), re => barramento_Ctrl(1), habilita  => saida_decoder_1(0), dado_in => barramento_W, dado_out => barramento_R, clk => CLK);
			 
			 
  Decoder678 :  entity work.decoder3x8 port map( entrada => barramento_End(8 downto 6), saida => saida_decoder_2);			 
  Decoder012 :  entity work.decoder3x8 port map( entrada => barramento_End(2 downto 0), saida => saida_decoder_1);			 
		
 BLOCO_LEDs :  entity work.LEDs  generic map (larguraDados => larguraDados)
				port map( dados_in => barramento_W, decoder_1 => saida_decoder_1, decoder_2 => saida_decoder_2, Wr=>barramento_Ctrl(0), clk =>CLOCK_50, A5=>barramento_End(5), ret =>Leds);			 

 BLOCO_7seg :  entity work.Segs7 
				port map( dados_in => barramento_W(3 downto 0), decoder_1 => saida_decoder_1, bloco => saida_decoder_2(4), Wr=>barramento_Ctrl(0), clk =>CLK, A5=>barramento_End(5), ret =>sete_segs);			 
 BLOCO_SW :  entity work.Input 
				port map( dados_out => barramento_R, decoder_1 => saida_decoder_1, bloco => saida_decoder_2(5), Rd=>barramento_Ctrl(1), clk =>CLK, A5=>barramento_End(5), estado_chaves =>Chaves, estado_botoes=>Botoes, limpa0 =>limpa0, limpa1 =>limpa4 );			 
 limpa0 <= barramento_Ctrl(0) and barramento_End(8) and barramento_End(7) and barramento_End(6) and barramento_End(5) and barramento_End(4) and barramento_End(3) and barramento_End(2) and barramento_End(1) and barramento_End(0);
 limpa4 <= barramento_Ctrl(0) and barramento_End(8) and barramento_End(7) and barramento_End(6) and barramento_End(5) and barramento_End(4) and barramento_End(3) and barramento_End(2) and barramento_End(1) and (not barramento_End(0));
 
	--PC_OUT<=Pc;		 
   LEDR<= Leds;
	HEX0 <= sete_segs(6 downto 0);
	HEX1 <= sete_segs(13 downto 7);
	HEX2 <= sete_segs(20 downto 14);
	HEX3 <= sete_segs(27 downto 21);
	HEX4 <= sete_segs(34 downto 28);
	HEX5 <= sete_segs(41 downto 35);
	Chaves <= SW;
	Botoes <= FPGA_RESET_N & KEY;

end architecture;