library ieee;
use ieee.std_logic_1164.all;

entity aula5 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
		  larguraPalavra : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: out std_logic_vector(12 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(larguraDados-1 downto 0)
  );
end entity;


architecture arquitetura of aula5 is

-- Faltam alguns sinais:
  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal chavesY_MUX_A : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_RAM : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (larguraPalavra-1 downto 0); --depende dos pontos de controle
  signal Sinais_ROM : std_logic_vector (12 downto 0);
  signal Endereco : std_logic_vector (larguraEnderecos-1 downto 0);
  signal proxPC : std_logic_vector (larguraEnderecos-1 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;

  signal Jmp : std_logic;
  signal Jeq : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_flag : std_logic;
  signal Habilita_A : std_logic;
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  signal hab_read: std_logic;
  signal hab_wrt: std_logic;
  signal ULA_flag : std_logic;
  signal saida_flag : std_logic;
 signal Saida_Mux_Pc : std_logic_vector (larguraEnderecos-1 downto 0);
 signal sel_mux_jmp: std_logic;
begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX. 1-B e 0-A
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Saida_RAM,
                 entradaB_MUX =>  Sinais_ROM(7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_REG1);
					  
-- O port map completo do MUX. 1-B e 0-A
MUX_JMP :  entity work.muxGenerico2x1  generic map (larguraDados => larguraEnderecos)
        port map( entradaA_MUX => proxPC,
                 entradaB_MUX =>  Sinais_ROM(8 downto 0),
                 seletor_MUX => sel_mux_jmp,
                 saida_MUX => Saida_Mux_Pc);

Log_Desvio: entity work.logDesvio  port map (jeq => Jeq, jmp  => Jmp, flag => saida_flag,
			saida=> sel_mux_jmp);					  
-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');

-- O port map completo do Program Counter.
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
          port map (DIN => Saida_Mux_Pc, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_REG1, saida => Saida_ULA, seletor => Operacao_ULA,flag => ULA_flag);
			 
flag_ula : entity work.flipflop port map (DIN => ULA_flag, DOUT => saida_flag, ENABLE => Habilita_flag, CLK => CLK, RST => '0');
-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)

ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => larguraEnderecos)
    	 port map (Endereco => Endereco, Dado => Sinais_ROM);
		 
RAM : entity work.memoriaRAM   generic map (dataWidth => larguraDados, addrWidth => larguraDados)
          port map (addr => Sinais_ROM(7 downto 0), we => hab_wrt, re => hab_read, habilita  => Sinais_ROM(8), dado_in => REG1_ULA_A, dado_out => Saida_RAM, clk => CLK);
		 
decoder :  entity work.decoderInstru port map( opcode => Sinais_ROM(12 downto 9), saida => Sinais_Controle);

--JMP	JEQ	Sel MUX	Hab_A	Operação	habFlag	RD	WR
Jmp <= Sinais_Controle(8);
Jeq <= Sinais_Controle(7);
SelMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
Habilita_flag <= Sinais_Controle(2);
hab_read <= Sinais_Controle(1);
hab_wrt <= Sinais_Controle(0);


LEDR <= REG1_ULA_A;
SW <= Sinais_ROM; --mudar definicao do SW pra ler o Imed
PC_OUT <= Endereco;

end architecture;