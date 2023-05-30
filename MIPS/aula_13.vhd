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

	 
	 OP_ULA : out std_logic_vector(2 downto 0);
	 ROM_OUT  : out std_logic_vector(larguraDados-1 downto 0);
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
  
  signal saida_shift : std_logic_vector(larguraDados -1 downto 0);
  signal saida_incrementa : std_logic_vector(larguraDados -1 downto 0);
  signal saida_mux_beq : std_logic_vector(larguraDados -1 downto 0);
  signal saida_shift_ext : std_logic_vector(larguraDados -1 downto 0);
  signal saida_soma_shift : std_logic_vector(larguraDados -1 downto 0);
  signal shift_PC_imediato : std_logic_vector(larguraDados -1 downto 0);

  signal entrada_ifid, saida_ifid : std_logic_vector(64-1 downto 0);
  signal inst_pipe_1 : std_logic_vector(larguraDados -1 downto 0);
  
  signal entrada_idex, saida_idex : std_logic_vector(146-1 downto 0);
  
  
begin
-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


--delcaracao de componentes aqui

---==========================================================================================---		  

ROM: entity work.ROMMIPS generic map( dataWidth => larguraDados, addrWidth => larguraEnderecos)
	  port map (Endereco => REG_PC_OUT,
		Dado => inst);

INC_PC:  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => REG_PC_OUT,
		  entradaB => 32x"4", 
		  saida => saida_incrementa);	

shift_PC_imediato(31 downto 28) <=  saida_incrementa(31 downto 28);
shift_PC_imediato(27 downto 0) <=  inst(25 downto 0) & "00";		  
		  
MUX_Entrada_PC :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => saida_mux_beq,
                 entradaB_MUX =>  shift_PC_imediato,
                 seletor_MUX => Sinais_Controle(0) , --buscar la na frente
                 saida_MUX => REG_PC_IN);	
					  
REG_PC : entity work.registradorGenerico  generic map (larguraDados => larguraDados)
          port map (DIN => REG_PC_IN, 
			 DOUT => REG_PC_OUT, 
			 ENABLE => '1' , 
			 CLK => CLK, 
			 RST => '0' );

---==========================================================================================---
--PIPILINE 1
entrada_ifid(63 downto 32) <= saida_incrementa;
entrada_ifid(31 downto 0) <= inst;

REG_ifid : entity work.registradorGenerico  generic map (larguraDados => 64)
          port map (ENABLE => '1' ,CLK => CLK, RST => '0',
			 DIN => entrada_ifid, 
			 DOUT => saida_ifid 
			  );
inst_pipe_1 <= saida_ifid(31 downto 0);
			  
---==========================================================================================---

bancoRegistradores: entity work.bancoReg generic map ( larguraDados => larguraDados, larguraEndBancoRegs => 5)
						port map( clk => CLK,
						enderecoA => inst_pipe_1(25 downto 21),
						enderecoB => inst_pipe_1(20 downto 16),
						enderecoC => saida_mux_entrada_regs,  --vem depois
						dadoEscritaC => dado_retorno,  --tnm vem depois]
						escreveC =>  Sinais_Controle(2), --buscar la depois
						saidaA => REG_rs,
						saidaB => REG_rt);
						
estensor_sinal : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => inst_pipe_1(15 downto 0), estendeSinal_OUT => saida_estensor);						
	
decoder_instru :  entity work.decoderInstru port map( opcode =>inst_pipe_1(31 downto 26) , saida => Sinais_Controle,tipo_r =>tipo_r);


---==========================================================================================---
--PIPILINE 2
entrada_idex(145 downto 138) <= Sinais_Controle; --/8
entrada_idex(137 downto 106) <= saida_ifid(63 downto 32);
entrada_idex(105 downto 74) <= REG_rs;
entrada_idex(73 downto 42) <= REG_rt;
entrada_idex(41 downto 10) <= saida_estensor;
entrada_idex(9 downto 5) <= inst_pipe_1(20 downto 16);
entrada_idex(4 downto 0) <= inst_pipe_1(15 downto 11);


REG_idex : entity work.registradorGenerico  generic map (larguraDados => 146)
          port map (ENABLE => '1' ,CLK => CLK, RST => '0',
			 DIN => entrada_idex, 
			 DOUT => saida_idex 
			  );

rd_pipe <=saida_idex(4 downto 0);		  
rt_pipe <=saida_idex(9 downto 5);


sinais_controle_pipe1 <= saida_idex(145 downto 138);
---==========================================================================================---


saida_shift_ext<= saida_estensor(29 downto 0) & "00";

soma_pc_etx :  entity work.somadorGenerico  generic map (larguraDados => larguraDados)
        port map( entradaA => saida_incrementa, entradaB =>  saida_shift_ext, saida => saida_soma_shift);


decoder_ula : entity work.decoderULA port map(
							upcode =>inst(31 downto 26),
							funct =>inst(5 downto 0),
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

mux_rt_exsig:  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => REG_rt,
                 entradaB_MUX =>  saida_estensor,
                 seletor_MUX => Sinais_Controle(3),
                 saida_MUX => saida_mux_ula);	
					  
					  
mux_entrada_regs:  entity work.muxGenerico2x1 generic map (larguraDados => 5)
        port map( entradaA_MUX => inst(20 downto 16),
                 entradaB_MUX =>  inst(15 downto 11),
                 seletor_MUX => Sinais_Controle(1),
                 saida_MUX => saida_mux_entrada_regs);					
	


	
MUX_BEQ :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => saida_incrementa,
                 entradaB_MUX => saida_soma_shift ,
                 seletor_MUX => (Sinais_Controle(5) and saida_flag0) ,
                 saida_MUX => saida_mux_beq);	

					
RAM : entity work.RAMMIPS generic map(dataWidth => larguraDados, addrWidth => 32, memoryAddrWidth => 6 )
		port map( clk => CLK,
          Endereco => saida_ULA,
          Dado_in  => REG_rt,
          Dado_out => dado_lido,
          we => Sinais_Controle(7), 
			 re => Sinais_Controle(6), 
			 habilita => ram_habilita);

			 
			 
 ---==========================================================================================---
--PIPILINE 4

---==========================================================================================---

MUX_ULA_Mem :  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => saida_ULA,
                 entradaB_MUX =>  dado_lido,
                 seletor_MUX => Sinais_Controle(4) ,
                 saida_MUX => dado_retorno);		

					  
			 
			

		  







---==========================================================================================---			 
OP_ULA <= controle_ula;
ULA_OUT <= saida_ULA;
ROM_OUT <= inst;
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