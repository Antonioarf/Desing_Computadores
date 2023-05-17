library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity aula_13 is
  generic ( larguraDados : natural := 32;
        larguraEnderecos : natural := 32;
        simulacao : boolean := TRUE -- Define entre clock_50 e Key3 como CLK
  );

  port   (
    CLOCK_50 : in std_logic;
	 SW: in std_logic_vector(9 downto 0);
	 KEY: in std_logic_vector(3 downto 0);
	 HEX0,HEX1,HEX2,HEX3,HEX4,HEX5: out std_logic_vector(6 downto 0);
	 LEDR  : out std_logic_vector(9 downto 0);

	 
	 EscritaReg3 : in std_logic;
	 OP_ULA : in std_logic;

	 dados_out  : out std_logic_vector(larguraDados-1 downto 0);
    ULA_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0)
  );
end entity;


architecture arquitetura of aula_13 is
--sinais aqui
  signal CLK : std_logic; 
  signal Sinais_Controle: std_logic_vector(7 downto 0);
  signal REG_PC_IN : std_logic_vector(larguraDados -1 downto 0);
  signal REG_PC_OUT : std_logic_vector(larguraDados -1 downto 0);
  
  signal inst : std_logic_vector(larguraDados -1 downto 0);
  
  signal saida_estensor : std_logic_vector(larguraDados -1 downto 0);
  signal saida_mux_ula : std_logic_vector(larguraDados -1 downto 0);

  
  signal saida_mux_entrada_regs : std_logic_vector(4 downto 0);
  
  signal REG_rs : std_logic_vector(larguraDados -1 downto 0);
  signal REG_rt : std_logic_vector(larguraDados -1 downto 0);
  signal saida_ULA : std_logic_vector(larguraDados -1 downto 0);
  signal saida_flag0, tipo_r : std_logic;
  signal controle_ula: std_logic_vector(2 downto 0);
  
  signal ram_habilita : std_logic; 
  signal dado_lido : std_logic_vector(larguraDados -1 downto 0);
  signal dado_retorno : std_logic_vector(larguraDados -1 downto 0);

  signal saida_print : std_logic_vector(larguraDados -1 downto 0);
  signal saida_hex_0,saida_hex_1,saida_hex_2,saida_hex_3,saida_hex_4,saida_hex_5:std_logic_vector(6 downto 0);
  
begin
-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


--delcaracao de componentes aqui

REG_PC : entity work.registradorGenerico  generic map (larguraDados => larguraDados)
          port map (DIN => REG_PC_IN, 
			 DOUT => REG_PC_OUT, 
			 ENABLE => '1' , 
			 CLK => CLK, 
			 RST => '0' );
			 
			 
INC_PC:  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => REG_PC_OUT,
		  entradaB => 32x"4", 
		  saida => REG_PC_IN);

		  
ROM: entity work.ROMMIPS generic map( dataWidth => larguraDados, addrWidth => larguraEnderecos)
	  port map (Endereco => REG_PC_OUT,
		Dado => inst);

		  	  
bancoRegistradores: entity work.bancoReg generic map ( larguraDados => larguraDados, larguraEndBancoRegs => 5)
						port map( clk => CLK,
						enderecoA => inst(25 downto 21),
						enderecoB => inst(20 downto 16),
						enderecoC => saida_mux_entrada_regs,
						dadoEscritaC => dado_retorno,
						escreveC =>  EscritaReg3,
						saidaA => REG_rs,
						saidaB => REG_rt);
						
						
mux_entrada_regs:  entity work.muxGenerico2x1 generic map (larguraDados => 5)
        port map( entradaA_MUX => inst(20 downto 16),
                 entradaB_MUX =>  inst(15 downto 11),
                 seletor_MUX => Sinais_Controle(1),
                 saida_MUX => saida_mux_entrada_regs);					
	
	
estensor_sinal : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => inst(15 downto 0), estendeSinal_OUT => saida_estensor);
										
mux_rt_exsig:  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => REG_rt,
                 entradaB_MUX =>  saida_estensor,
                 seletor_MUX => Sinais_Controle(3),
                 saida_MUX => saida_mux_ula);	
					  
----COLOCAR CONTROLE DA ULA AQUI -----
decoder_instru :  entity work.decoderInstru port map( opcode =>inst(31 downto 26) , saida => Sinais_Controle,tipo_r =>tipo_r);

decoder_ula : entity work.decoderULA port map(
							opcode =>inst(31 downto 26),
							funct =>inst(31 downto 26),
							tipo_r => tipo_r, 
							saida => controle_ula
						);
					  
ULA : entity work.ULAMips  generic map(larguraDados => larguraDados) port map (
		 entradaA => REG_rs, 
		 entradaB =>  saida_mux_ula, 
		 saida => saida_ULA, 
		 sel => controle_ula(1 downto 0),
		 inverteB => controle_ula(2),
		 flagZero => saida_flag0);						
				
					
RAM : entity work.RAMMIPS generic map(dataWidth => larguraDados, addrWidth => 32, memoryAddrWidth => 6 )
		port map( clk => CLK,
          Endereco => saida_ULA,
          Dado_in  => REG_rt,
          Dado_out => dado_lido,
          we => Sinais_Controle(7), 
			 re => Sinais_Controle(6), 
			 habilita => ram_habilita);

MUX_ULA_Mem :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => saida_ULA,
                 entradaB_MUX =>  dado_lido,
                 seletor_MUX => Sinais_Controle(4) ,
                 saida_MUX => dado_retorno);		
			 
			 
ULA_OUT <= saida_ULA;
dados_out <= inst;
PC_OUT <=  REG_PC_OUT;			 
			 
		
			 
---==========================================================================================---
MUX_Saida_Placa :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => REG_PC_OUT,
                 entradaB_MUX =>  saida_ULA,
                 seletor_MUX => SW(0) ,
                 saida_MUX => saida_print);					
						
DEC_0 :  entity work.conversorHex7Seg port map(dadoHex => saida_print(3 downto 0), saida7seg => saida_hex_0);			 
DEC_1 :  entity work.conversorHex7Seg port map(dadoHex => saida_print(7 downto 4), saida7seg => saida_hex_1);			 
DEC_2 :  entity work.conversorHex7Seg port map(dadoHex => saida_print(11 downto 8), saida7seg => saida_hex_2);			 
DEC_3 :  entity work.conversorHex7Seg port map(dadoHex => saida_print(15 downto 12), saida7seg => saida_hex_3);			 
DEC_4 :  entity work.conversorHex7Seg port map(dadoHex => saida_print(19 downto 16), saida7seg => saida_hex_4);			 
DEC_5 :  entity work.conversorHex7Seg port map(dadoHex => saida_print(23 downto 20), saida7seg => saida_hex_5);			 
			 



LEDR(9 downto 8)<= "00";			
LEDR(7 downto 0)<= saida_print(31 downto 24);
HEX0 <= saida_hex_0;
HEX1 <= saida_hex_1;
HEX2 <= saida_hex_2;
HEX3 <= saida_hex_3;
HEX4 <= saida_hex_4;
HEX5 <= saida_hex_5;


end architecture;