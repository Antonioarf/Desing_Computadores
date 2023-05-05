library ieee;
use ieee.std_logic_1164.all;

entity processador is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
		  larguraPalavra : natural := 13
  );
  port   (
    CLK : in std_logic;
    barramento_R : in std_logic_vector (larguraDados-1 downto 0);
    barramento_W : out std_logic_vector (larguraDados-1 downto 0);
    barramento_End : out std_logic_vector (larguraEnderecos-1 downto 0);
    barramento_Ctrl : out std_logic_vector (larguraPalavra-1 downto 0);
	 PC_OUT : out std_logic_vector (larguraEnderecos-1 downto 0);
	 saida_logica_desvio : out std_logic_vector(1 downto 0);
	 flag_jmp : out std_logic
	 );
end entity;


architecture arquiteturaa of processador is

-- Faltam alguns sinais:
  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal chavesY_MUX_A : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_RAM : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (larguraPalavra-1 downto 0); --depende dos pontos de controle
  signal Sinais_ROM : std_logic_vector (14 downto 0);
  signal Endereco : std_logic_vector (larguraEnderecos-1 downto 0);
  signal proxPC : std_logic_vector (larguraEnderecos-1 downto 0);
  signal Chave_Operacao_ULA : std_logic;

  signal jsq : std_logic;
  signal Jmp : std_logic;
  signal Jeq : std_logic;
  signal Jsr : std_logic;
  signal Ret: std_logic;
  signal SelMUX : std_logic;
  signal Habilita_flag : std_logic;
  signal Habilita_A : std_logic;
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  signal ULA_flag : std_logic;
  signal saida_flag : std_logic;
 signal Saida_Mux_Pc : std_logic_vector (larguraEnderecos-1 downto 0);
 signal sel_mux_jmp: std_logic_vector (1 downto 0);
 signal hab_reg_ret: std_logic;
 signal saida_reg_ret: std_logic_vector (larguraEnderecos-1 downto 0);
 
begin

-- Instanciando os componentes:


-- O port map completo do MUX. 1-B e 0-A
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_RAM,
                 entradaB_MUX =>  Sinais_ROM(7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_REG1);
					  
				  
-- O port map completo do Acumulador.
			 
Banco_Reg : entity work.bancoRegistradoresArqRegMem   generic map (larguraDados => larguraDados, larguraEndBancoRegs => 2)
          port map ( clk => CLK, endereco => Sinais_ROM(10 downto 9),dadoEscrita => Saida_ULA, habilitaEscrita => Habilita_A,saida  => REG1_ULA_A);
			 
			 
-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => Saida_Mux_Pc, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_REG1, saida => Saida_ULA, seletor => Operacao_ULA,flag => ULA_flag);
			 


ROM1 : entity work.memoriaROM   generic map (dataWidth => 15, addrWidth => larguraEnderecos)
    	 port map (Endereco => Endereco, Dado => Sinais_ROM);
		 

decoder :  entity work.decoderInstru port map( opcode => Sinais_ROM(14 downto 11), saida => Sinais_Controle);



-- O port map completo do MUX. 1-B e 0-A


Log_Desvio: entity work.logDesvio  port map (jeq => Jeq, jmp  => Jmp, flag => saida_flag, jsr =>Jsr, ret=>Ret, jsq => jsq,
			saida=> sel_mux_jmp);	

			
flag_ula : entity work.flipflop port map (DIN => ULA_flag, DOUT => saida_flag, ENABLE => Habilita_flag, CLK => CLK, RST => '0');

Salva_Ret : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => proxPC, DOUT => saida_reg_ret, ENABLE => hab_reg_ret, CLK => CLK, RST => '0');

MUX_JMP :  entity work.muxGenerico4x2  generic map (larguraDados => larguraEnderecos)
        port map( entrada00 => proxPC,
                 entrada01 =>  Sinais_ROM(8 downto 0),
					  entrada10 =>  saida_reg_ret,
					  entrada11 =>  (others => '0'),
                 seletor_MUX => sel_mux_jmp,
                 saida_MUX => Saida_Mux_Pc);
					  
					  
--JMP	JEQ	Sel MUX	Hab_A	Operação	habFlag	RD	WR
jsq <= Sinais_Controle(12);
hab_reg_ret <= Sinais_Controle(11);
Jmp <= Sinais_Controle(10);
Ret <= Sinais_Controle(9);
Jsr <= Sinais_Controle(8);
Jeq <= Sinais_Controle(7);
SelMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
Habilita_flag <= Sinais_Controle(2);



Saida_RAM <= barramento_R;
barramento_W <= REG1_ULA_A;
barramento_End <= Sinais_ROM(8 downto 0);
barramento_Ctrl <= Sinais_Controle;
PC_OUT <=Saida_Mux_Pc;

saida_logica_desvio <= sel_mux_jmp ; 
flag_jmp <= saida_flag;
		 
end architecture;
