library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
		  larguraPalavra : natural := 13;
        simulacao : boolean := FALSE -- Define entre clock_50 e Key3 como CLK
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
signal CLK, limpa0, limpa4, KEY_0_tratado, DEBOUNCER_OUT_0 : std_logic;
signal barramento_R : std_logic_vector (larguraDados-1 downto 0);
signal barramento_W : std_logic_vector (larguraDados-1 downto 0);
signal barramento_End : std_logic_vector (larguraEnderecos-1 downto 0);
signal barramento_Ctrl : std_logic_vector (larguraPalavra-1 downto 0);
signal Pc : std_logic_vector (larguraEnderecos-1 downto 0);
signal Leds : std_logic_vector (9 downto 0);
signal Chaves : std_logic_vector (9 downto 0);
signal Botoes: std_logic_vector(3 downto 0);
signal sete_segs : std_logic_vector(41 downto 0);
signal saida_decoder_1 : std_logic_vector (larguraDados-1 downto 0);
signal saida_decoder_2 : std_logic_vector (larguraDados-1 downto 0);
signal saida_key : std_logic_vector (larguraDados-1 downto 0);
signal teste : std_logic_vector(1 downto 0);
signal saida_segundo : std_logic;

  
begin
-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(3)), saida => CLK);
else generate
CLK <= CLOCK_50;			
--DetectorSub0: work.edgeDetector(bordaSubida) port map(clk => CLOCK_50, entrada => (not SW(9)), saida 	=> KEY_0_tratado );

end generate;


  Processador : entity work.processador  generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos,larguraPalavra=>larguraPalavra)
          port map (CLK => CLK, 
						barramento_R => barramento_R, 
						barramento_W => barramento_W, 
						barramento_End  => barramento_End, 
						barramento_Ctrl => barramento_Ctrl,
						PC_OUT => Pc);
  
  RAM : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => 6)
          port map (addr => barramento_End(5 downto 0), 
							we => barramento_Ctrl(0), 
							re => barramento_Ctrl(1), 
							habilita  => saida_decoder_1(0), 
							dado_in => barramento_W, 
							dado_out => barramento_R, 
							clk => CLK);
			 
			 
	Decoder678 :  entity work.decoder3x8 port map( entrada => barramento_End(8 downto 6), saida => saida_decoder_2);			 
	Decoder012 :  entity work.decoder3x8 port map( entrada => barramento_End(2 downto 0), saida => saida_decoder_1);			 
		
 
	BLOCO_7seg :  entity work.Segs7 
					port map( dados_in => barramento_W(3 downto 0), 
								decoder_1 => saida_decoder_1, 
								bloco => saida_decoder_2(4), 
								Wr => barramento_Ctrl(0), 
								clk => CLK, 
								A5 => barramento_End(5), 
								ret =>sete_segs);			 

	BLOCO_LEDs :  entity work.LEDs  generic map (larguraDados => larguraDados)
					port map(dados_in => barramento_W, 
								decoder_1 => saida_decoder_1, 
								decoder_2 => saida_decoder_2, 
								Wr=>barramento_Ctrl(0), 
								clk =>CLOCK_50, 
								A5=>barramento_End(5), 
								ret =>Leds);			 
 
	BLOCO_SW :  entity work.Input 
				 port map(dados_out => barramento_R, 
				 decoder_1 => saida_decoder_1, 
				 bloco => saida_decoder_2(5), 
				 Rd => barramento_Ctrl(1), 
				 clk => CLK, 
				 A5 => barramento_End(5), 
				 estado_chaves => Chaves, 
				 estado_botoes => KEY, 
				 limpa0 => limpa0, 
				 limpa1 => limpa4);
 
-- 
--	baseTempo : entity work.divisorGenerico generic map(divisor => 5)
--				 port map(clk  => CLK,
--							saida_clk => saida_segundo);
			
 
	limpa0 <= barramento_Ctrl(0) and barramento_End(8) and barramento_End(7) and barramento_End(6) and barramento_End(5) and barramento_End(4) and barramento_End(3) and barramento_End(2) and barramento_End(1) and barramento_End(0);
	limpa4 <= barramento_Ctrl(0) and barramento_End(8) and barramento_End(7) and barramento_End(6) and barramento_End(5) and barramento_End(4) and barramento_End(3) and barramento_End(2) and barramento_End(1) and (not barramento_End(0));
 				
							
	interfaceBaseTempo : entity work.divisorGenerico_e_Interface
              port map (clk => CLK,
              habilitaLeitura => '1',
              limpaLeitura => limpa0 ,
              leituraUmSegundo => saida_segundo);
				  
				  
	--comente para fora se for usar a base de tempo separada da interface 			  
	saida_key <= saida_segundo;
			
			
--	DetectorSub0: work.edgeDetector(bordaSubida) port map(clk => CLOCK_50, 
--																		entrada => saida_segundo, 
--																		saida => KEY_0_tratado);
--
--	FF_DEBOUNCER_0: entity work.flipflop port map(DIN => '1', 
--															DOUT=> DEBOUNCER_OUT_0, 
--															ENABLE => '1', 
--															CLK => KEY_0_tratado, 
--															RST => limpa0); 
 
--	Buffer_k0 :  entity work.buffer_3_state_8portas port map(entrada => ("0000000" & saida_segundo), 
--																			habilita=> (saida_decoder_2(5) and barramento_Ctrl(1) and barramento_End(5) and saida_decoder_1(0)), 
--																			saida => saida_key);

	--PC_OUT<=Pc;		 
   LEDR(7 downto 0)<= Leds(7 downto 0);
	HEX0 <= sete_segs(6 downto 0);
	HEX1 <= sete_segs(13 downto 7);
	HEX2 <= sete_segs(20 downto 14);
	HEX3 <= sete_segs(27 downto 21);
	HEX4 <= sete_segs(34 downto 28);
	HEX5 <= sete_segs(41 downto 35);
	Chaves <= SW;
	Botoes <= KEY;
	LEDR(9)<= saida_segundo;
   barramento_R <= saida_key;

end architecture;