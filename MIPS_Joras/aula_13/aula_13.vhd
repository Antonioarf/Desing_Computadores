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
	 EscritaReg3 : in std_logic;
	 OP_ULA : in std_logic;
    KEY: in std_logic_vector(3 downto 0);

	 dados_out  : out std_logic_vector(larguraDados-1 downto 0);
    ULA_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0)
  );
end entity;


architecture arquitetura of aula_13 is
--sinais aqui
  signal CLK : std_logic; 
  
  signal REG_PC_IN : std_logic_vector(larguraDados -1 downto 0);
  signal REG_PC_OUT : std_logic_vector(larguraDados -1 downto 0);
  
  signal inst : std_logic_vector(larguraDados -1 downto 0);
  
  signal saida_estensor : std_logic_vector(larguraDados -1 downto 0);
  
  signal saida_mux_entrada_regs : std_logic_vector(larguraDados -1 downto 0);
  signal sel_mux_entrada_reg : std_logic;
  
  signal REG_rs : std_logic_vector(larguraDados -1 downto 0);
  signal REG_rt : std_logic_vector(larguraDados -1 downto 0);
  signal saida_ULA : std_logic_vector(larguraDados -1 downto 0);
  
  signal we : std_logic;
  signal re : std_logic;
  signal ram_habilita : std_logic; 
  signal dado_lido : std_logic_vector(larguraDados -1 downto 0);
  
  
  
  
begin
-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= CLOCK_50;
else generate
end generate;
--detectorSub0: work.edgeDetector(bordaSubida)
--        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
--end generate;
--CLK <= KEY(0);


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

		  	  
bancoRegistradores: entity work.bancoReg generic map ( larguraDados => larguraDados, larguraEndBancoRegs => 7)
						port map( clk => CLK,
						enderecoA => inst(25 downto 21),
						enderecoB => inst(20 downto 16),
						enderecoC => saida_mux_entrada_regs,
						dadoEscritaC => saida_ULA,
						escreveC =>  EscritaReg3,
						saidaA => REG_rs,
						saidaB => REG_rt);
						
						
mux_entrada_regs:  entity work.muxGenerico2x1 generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => inst(20 downto 16),
                 entradaB_MUX =>  nst(15 downto 11),
                 seletor_MUX => sel_mux_entrada_re,
                 saida_MUX => saida_mux_entrada_regs);					
						
						
estensor_sinal : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => larguraDados)
          port map (estendeSinal_IN => inst(15 downto 0), estendeSinal_OUT => saida_estensor);
										
										
ULA : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
		 port map (entradaA => REG_rs, 
		 entradaB =>  saida_estensor, 
		 saida => saida_ULA, 
		 seletor => OP_ULA);						
				
					
RAM : entity work.RAMMIPS generic map( dataWidth => larguraDado, addrWidth => larguraEnderecos, memoryAddrWidth => 32)
		port map( clk => CLK,
          Endereco => saida_ULA,
          Dado_in  => REG_rt,
          Dado_out => dado_lido,
          we => we, 
			 re => re, 
			 habilita => ram_habilita);

			 

ULA_OUT <= saida_ULA;
dados_out <= inst;
PC_OUT <=  REG_PC_OUT;


			

	--PC_OUT<=Pc;		 
--   LEDR(7 downto 0)<= Leds(7 downto 0);
--	HEX0 <= sete_segs(6 downto 0);
--	HEX1 <= sete_segs(13 downto 7);
--	HEX2 <= sete_segs(20 downto 14);
--	HEX3 <= sete_segs(27 downto 21);
--	HEX4 <= sete_segs(34 downto 28);
--	HEX5 <= sete_segs(41 downto 35);
--	Chaves <= SW;
--	Botoes <= KEY;
--	LEDR(9)<= KEY(0);
--        barramento_R <= saida_key;

end architecture;