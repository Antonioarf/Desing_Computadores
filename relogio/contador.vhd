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
	 LEDR  : out std_logic_vector(9 downto 0);
	 PC_out : out std_logic_vector(8 downto 0)
  );
end entity;


architecture arquitetura of contador is
signal CLK, limpa0, limpa4: std_logic;
signal BarramentoR : std_logic_vector (larguraDados-1 downto 0);
signal barramento_W : std_logic_vector (larguraDados-1 downto 0);
signal barramento_End : std_logic_vector (larguraEnderecos-1 downto 0);
signal barramento_Ctrl : std_logic_vector (larguraPalavra-1 downto 0);
signal Pc : std_logic_vector (larguraEnderecos-1 downto 0);
signal Leds : std_logic_vector (9 downto 0);
signal Chaves : std_logic_vector (9 downto 0);
signal Botoes: std_logic_vector(3 downto 0);
signal sete_segs : std_logic_vector(41 downto 0);
signal saida_decoder012 : std_logic_vector (larguraDados-1 downto 0);
signal saida_decoder678 : std_logic_vector (larguraDados-1 downto 0);
signal saida_segundo,saida_rapida, saida_mux_tempo : std_logic;

signal KEY_3_tratado, DEBOUNCER_OUT_3, KEY_2_tratado, DEBOUNCER_OUT_2, Reset_tratado, DEBOUNCER_OUT_reset  : std_logic;
signal saida_key, saida_key3, saida_key2, saida_reset : std_logic_vector (larguraDados-1 downto 0);

signal saida_logica_desvio : std_logic_vector(1 downto 0);
signal flag_jmp : std_logic;

  
begin
-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(3)), saida => CLK);
else generate
CLK <= CLOCK_50;			
--DetectorSub0: work.edgeDetector(bordaSubida) port map(clk => CLOCK_50, entrada => (not SW(9)), saida 	=> KEY_0_tratado );

end generate;
--=======================================================================================================================--
--=======================================================================================================================--
  Processador : entity work.processador  generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos,larguraPalavra=>larguraPalavra)
          port map (CLK => CLK, 
						barramento_R => BarramentoR, 
						barramento_W => barramento_W, 
						barramento_End  => barramento_End, 
						barramento_Ctrl => barramento_Ctrl,
						PC_OUT => Pc,
						saida_logica_desvio => saida_logica_desvio,
						flag_jmp => flag_jmp)
						;
  
  RAM : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => 6)
          port map (addr => barramento_End(5 downto 0), 
							we => barramento_Ctrl(0), 
							re => barramento_Ctrl(1), 
							habilita  => saida_decoder678(0), 
							dado_in => barramento_W, 
							dado_out => BarramentoR, 
							clk => CLK);
			 
			 
	Decoder678 :  entity work.decoder3x8 port map( entrada => barramento_End(8 downto 6), saida => saida_decoder678);			 
	Decoder012 :  entity work.decoder3x8 port map( entrada => barramento_End(2 downto 0), saida => saida_decoder012);		
	
--=======================================================================================================================--		
 --=======================================================================================================================--
 
	BLOCO_7seg :  entity work.Segs7 
					port map( dados_in => barramento_W, 
								decoder_1 => saida_decoder012, 
								bloco => saida_decoder678(4), 
								Wr => barramento_Ctrl(0), 
								clk => CLK, 
								A5 => barramento_End(5), 
								ret =>sete_segs);			 

	BLOCO_LEDs :  entity work.LEDs  generic map (larguraDados => larguraDados)
					port map(dados_in => barramento_W, 
								decoder_1 => saida_decoder012, 
								decoder_2 => saida_decoder678, 
								Wr=>barramento_Ctrl(0), 
								clk =>CLOCK_50, 
								A5=>barramento_End(5), 
								ret =>Leds);			 
 
	BLOCO_SW :  entity work.Input 
				 port map(dados_out => BarramentoR, 
				 decoder_1 => saida_decoder012, 
				 bloco => saida_decoder678(5), 
				 Rd => barramento_Ctrl(1), 
				 clk => CLK, 
				 A5 => barramento_End(5), 
				 estado_chaves => Chaves);
 
--=======================================================================================================================--
--=======================================================================================================================--			
 
limpa4 <= barramento_Ctrl(0) and barramento_End(8) and barramento_End(7) and barramento_End(6) and barramento_End(5) and barramento_End(4) and barramento_End(3) and barramento_End(2) and barramento_End(1) and (not barramento_End(0));
 
DetectorSub3: work.edgeDetector(bordaSubida) port map(clk => CLOCK_50, entrada => (not KEY(3)), saida 	=> KEY_3_tratado );
FF_DEBOUNCER_3: entity work.flipflop port map(DIN => '1', DOUT=> DEBOUNCER_OUT_3, ENABLE	=> '1', CLK => KEY_3_tratado, RST	=> limpa4);                		   
Buffer_k3 :  entity work.buffer_3_state_8portas port map(entrada => ("0000000" & DEBOUNCER_OUT_3) ,habilita=> (saida_decoder678(5) and barramento_Ctrl(1) and barramento_End(5) and saida_decoder012(3)), saida => saida_key3);				
	
DetectorSub2: work.edgeDetector(bordaSubida) port map(clk => CLOCK_50, entrada => (not KEY(2)), saida 	=> KEY_2_tratado );
FF_DEBOUNCER_2: entity work.flipflop port map(DIN => '1', DOUT=> DEBOUNCER_OUT_2, ENABLE	=> '1', CLK => KEY_2_tratado, RST	=> limpa4);                		   
Buffer_k2 :  entity work.buffer_3_state_8portas port map(entrada => ("0000000" & DEBOUNCER_OUT_2) ,habilita=> (saida_decoder678(5) and barramento_Ctrl(1) and barramento_End(5) and saida_decoder012(2)), saida => saida_key2);				

DetectorSub_reset: work.edgeDetector(bordaSubida) port map(clk => CLOCK_50, entrada => (not FPGA_RESET_N), saida 	=> Reset_tratado );
FF_DEBOUNCER_reset: entity work.flipflop port map(DIN => '1', DOUT=> DEBOUNCER_OUT_reset, ENABLE	=> '1', CLK => Reset_tratado, RST	=> limpa4);                		   
Buffer_reset :  entity work.buffer_3_state_8portas port map(entrada => ("0000000" & DEBOUNCER_OUT_reset) ,habilita=> (saida_decoder678(5) and barramento_Ctrl(1) and barramento_End(5) and saida_decoder012(4)), saida => saida_reset);
--=======================================================================================================================--
--=======================================================================================================================--
limpa0 <= barramento_Ctrl(0) and barramento_End(8) and barramento_End(7) and barramento_End(6) and barramento_End(5) and barramento_End(4) and barramento_End(3) and barramento_End(2) and barramento_End(1) and barramento_End(0);
	
interfaceBaseTempo_1hz : entity work.divisorGenerico_e_Interface generic map (divisor => 25000000)
              port map (clk => CLK,
              habilitaLeitura => '1',
              limpaLeitura => limpa0 ,
              leituraUmSegundo => saida_segundo);
				  
interfaceBaseTempo_rapida : entity work.divisorGenerico_e_Interface generic map (divisor => 125000) --20 segundos por segundo
              port map (clk => CLK,
              habilitaLeitura => '1',
              limpaLeitura => limpa0 ,
              leituraUmSegundo => saida_rapida);			
				  
MUX_tempo :  entity work.muxBit
        port map( entradaA_MUX => saida_segundo,
                 entradaB_MUX => saida_rapida,
                 seletor_MUX => Chaves(9),
                 saida_MUX => saida_mux_tempo);				  
				  
Buffer_tempo :  entity work.buffer_3_state_8portas port map(entrada => ("0000000" & saida_mux_tempo), 
																	habilita=> (saida_decoder678(5) and barramento_Ctrl(1) and barramento_End(5) and saida_decoder012(0)), 
																	saida => saida_key);		  
			


	--PC_OUT<=Pc;		 
   LEDR <= Leds;
	HEX0 <= sete_segs(6 downto 0);
	HEX1 <= sete_segs(13 downto 7);
	HEX2 <= sete_segs(20 downto 14);
	HEX3 <= sete_segs(27 downto 21);
	HEX4 <= sete_segs(34 downto 28);
	HEX5 <= sete_segs(41 downto 35);
	Chaves <= SW;
	Botoes <= KEY;
   BarramentoR <= saida_key;
	BarramentoR <= saida_key3;
	BarramentoR <= saida_key2;
	BarramentoR <= saida_reset;
	PC_out <= Pc;
	

end architecture;