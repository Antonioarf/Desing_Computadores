library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
		  larguraPalavra : natural := 12;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );

  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    --SW: out std_logic_vector(12 downto 0);
    --PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of contador is
  signal CLK: std_logic;
  signal barramento_R : std_logic_vector (larguraDados-1 downto 0);
  signal barramento_W : std_logic_vector (larguraDados-1 downto 0);
  signal barramento_End : std_logic_vector (larguraEnderecos-1 downto 0);
  signal barramento_Ctrl : std_logic_vector (larguraPalavra-1 downto 0);
  signal Pc : std_logic_vector (larguraEnderecos-1 downto 0);
  signal Leds : std_logic_vector (9 downto 0);
  
 signal saida_decoder_1 : std_logic_vector (larguraDados-1 downto 0);
 signal saida_decoder_2 : std_logic_vector (larguraDados-1 downto 0);


  
begin
-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


  Processador : entity work.processador  generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos,larguraPalavra=>larguraPalavra)
          port map (CLK => CLOCK_50, barramento_R => barramento_R, barramento_W => barramento_W, barramento_End  => barramento_End, barramento_Ctrl => barramento_Ctrl,PC_OUT=>Pc);
  
  RAM : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => 6)
          port map (addr => barramento_End(5 downto 0), we => barramento_Ctrl(0), re => barramento_Ctrl(1), habilita  => saida_decoder_1(0), dado_in => barramento_W, dado_out => barramento_R, clk => CLK);
			 
			 
  Decoder678 :  entity work.decoder3x8 port map( entrada => barramento_End(8 downto 6), saida => saida_decoder_2);			 
  Decoder012 :  entity work.decoder3x8 port map( entrada => barramento_End(2 downto 0), saida => saida_decoder_1);			 
		
  BLOCO_LEDs :  entity work.LEDs  generic map (larguraDados => larguraDados)
				port map( dados_in => barramento_W, decoder_1 => saida_decoder_1, decoder_2 => saida_decoder_2, Wr=>barramento_Ctrl(0), clk =>CLOCK_50, A5=>barramento_End(5), ret =>Leds);			 

	 
			 
	--PC_OUT<=Pc;		 
   LEDR<= Leds;
	
end architecture;