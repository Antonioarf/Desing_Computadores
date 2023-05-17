library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULAMips is
	generic (larguraDados : natural := 32);
   port (
      entradaA, entradaB : in std_logic_vector((larguraDados - 1) downto 0);
      sel                : in std_logic_vector(1 downto 0);
		inverteB           : in std_logic;
		saida              : out std_logic_vector((larguraDados - 1) downto 0);
      flagZero           : out std_logic
   );
end entity;

architecture comportamento of ULAMips is
	signal zero : std_logic_vector((larguraDados - 1) downto 0) := (OTHERS => '0');
   signal slt_ret : std_logic;
	signal carry_0, carry_1, carry_2, carry_3, carry_4, carry_5, carry_6, carry_7, carry_8, carry_9, carry_10, carry_11, 
	carry_12, carry_13, carry_14, carry_15, carry_16, carry_17, carry_18, carry_19, carry_20, carry_21, carry_22, carry_23, 
	carry_24, carry_25, carry_26, carry_27, carry_28, carry_29, carry_30, carry_31: std_logic;
	
    begin
--defines bits 0 to 31 of the output
flagZero <= '1' when unsigned(saida) = unsigned(zero) else '0';

ULA31 : entity work.ULA_31 port map(
		 entradaA => entradaA(31),
		 entradaB => entradaB(31),
		 slt => '0', 
		 inverteB => inverteB,	
		 sel => sel, 					
		 carry_in => carry_30,					
		 saida => saida(31),
		 carry_out => carry_31,
		 overflow =>slt_ret
		);
		
ULA0 : entity work.ULA_generica port map(
		 entradaA => entradaA(0),
		 entradaB => entradaB(0),
		 slt => slt_ret, 
		 inverteB => inverteB,	
		 sel => sel, 					
		 carry_in => inverteB,					
		 saida => saida(0),
		 carry_out => carry_0			
		);
	 
ULA1 : entity work.ULA_generica port map(
		 entradaA => entradaA(1),
		 entradaB => entradaB(1),
		 slt => '0', 
		 inverteB => inverteB,	
		 sel => sel, 					
		 carry_in => carry_0	,				
		 saida => saida(1),
		 carry_out => carry_1			
		);

ULA2 : entity work.ULA_generica port map(
		 entradaA => entradaA(2),
		 entradaB => entradaB(2),
		 slt => '0', 
		 inverteB => inverteB,	
		 sel => sel, 					
		 carry_in => carry_1	,				
		 saida => saida(2),
		 carry_out => carry_2			
		);	
	
ULA3 : entity work.ULA_generica port map(
		 entradaA => entradaA(3),
		 entradaB => entradaB(3),
		 slt => '0', 
		 inverteB => inverteB,	
		 sel => sel, 					
		 carry_in => carry_2	,				
		 saida => saida(3),
		 carry_out => carry_3			
		);	

ULA4 : entity work.ULA_generica port map(
         entradaA => entradaA(4),
         entradaB => entradaB(4),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_3	,				
         saida => saida(4),
         carry_out => carry_4			
        );

ULA5 : entity work.ULA_generica port map(
         entradaA => entradaA(5),
         entradaB => entradaB(5),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_4	,				
         saida => saida(5),
         carry_out => carry_5			
        );

ULA6 : entity work.ULA_generica port map(
         entradaA => entradaA(6),
         entradaB => entradaB(6),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_5	,				
         saida => saida(6),
         carry_out => carry_6			
        );
	
ULA7 : entity work.ULA_generica port map(
         entradaA => entradaA(7),
         entradaB => entradaB(7),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_6	,				
         saida => saida(7),
         carry_out => carry_7			
        );

ULA8 : entity work.ULA_generica port map(
         entradaA => entradaA(8),
         entradaB => entradaB(8),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_7	,				
         saida => saida(8),
         carry_out => carry_8			
        );

ULA9 : entity work.ULA_generica port map(
         entradaA => entradaA(9),
         entradaB => entradaB(9),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_8	,				
         saida => saida(9),
         carry_out => carry_9			
        );

ULA10 : entity work.ULA_generica port map(
         entradaA => entradaA(10),
         entradaB => entradaB(10),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_9	,				
         saida => saida(10),
         carry_out => carry_10			
        );

ULA11 : entity work.ULA_generica port map(
         entradaA => entradaA(11),
         entradaB => entradaB(11),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_10,					
         saida => saida(11),
         carry_out => carry_11			
        );

ULA12 : entity work.ULA_generica port map(
         entradaA => entradaA(12),
         entradaB => entradaB(12),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_11,					
         saida => saida(12),
         carry_out => carry_12			
        );

ULA13 : entity work.ULA_generica port map(
         entradaA => entradaA(13),
         entradaB => entradaB(13),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_12,					
         saida => saida(13),
         carry_out => carry_13			
        );

ULA14 : entity work.ULA_generica port map(
         entradaA => entradaA(14),
         entradaB => entradaB(14),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_13,					
         saida => saida(14),
         carry_out => carry_14			
        );

ULA15 : entity work.ULA_generica port map(
         entradaA => entradaA(15),
         entradaB => entradaB(15),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_14,					
         saida => saida(15),
         carry_out => carry_15			
        );
    
ULA16 : entity work.ULA_generica port map(
         entradaA => entradaA(16),
         entradaB => entradaB(16),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_15,					
         saida => saida(16),
         carry_out => carry_16			
        );

ULA17 : entity work.ULA_generica port map(
         entradaA => entradaA(17),
         entradaB => entradaB(17),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_16,					
         saida => saida(17),
         carry_out => carry_17			
        );

ULA18 : entity work.ULA_generica port map(
         entradaA => entradaA(18),
         entradaB => entradaB(18),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_17,					
         saida => saida(18),
         carry_out => carry_18			
        );

ULA19 : entity work.ULA_generica port map(
         entradaA => entradaA(19),
         entradaB => entradaB(19),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_18,					
         saida => saida(19),
         carry_out => carry_19			
        );

ULA20 : entity work.ULA_generica port map(
         entradaA => entradaA(20),
         entradaB => entradaB(20),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_19,					
         saida => saida(20),
         carry_out => carry_20			
        );

ULA21 : entity work.ULA_generica port map(
         entradaA => entradaA(21),
         entradaB => entradaB(21),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_20,					
         saida => saida(21),
         carry_out => carry_21			
        );

ULA22 : entity work.ULA_generica port map(
         entradaA => entradaA(22),
         entradaB => entradaB(22),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_21,					
         saida => saida(22),
         carry_out => carry_22			
        );

ULA23 : entity work.ULA_generica port map(
         entradaA => entradaA(23),
         entradaB => entradaB(23),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_22,					
         saida => saida(23),
         carry_out => carry_23			
        );

ULA24 : entity work.ULA_generica port map(
         entradaA => entradaA(24),
         entradaB => entradaB(24),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_23,					
         saida => saida(24),
         carry_out => carry_24			
        );

ULA25 : entity work.ULA_generica port map(
         entradaA => entradaA(25),
         entradaB => entradaB(25),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_24,					
         saida => saida(25),
         carry_out => carry_25			
        );

ULA26 : entity work.ULA_generica port map(
         entradaA => entradaA(26),
         entradaB => entradaB(26),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_25,					
         saida => saida(26),
         carry_out => carry_26			
        );

ULA27 : entity work.ULA_generica port map(
         entradaA => entradaA(27),
         entradaB => entradaB(27),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_26,					
         saida => saida(27),
         carry_out => carry_27			
        );

ULA28 : entity work.ULA_generica port map(
         entradaA => entradaA(28),
         entradaB => entradaB(28),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_27,					
         saida => saida(28),
         carry_out => carry_28			
        );

ULA29 : entity work.ULA_generica port map(
         entradaA => entradaA(29),
         entradaB => entradaB(29),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_28,					
         saida => saida(29),
         carry_out => carry_29			
        );

ULA30 : entity work.ULA_generica port map(
         entradaA => entradaA(30),
         entradaB => entradaB(30),
         slt => '0', 
         inverteB => inverteB,	
         sel => sel, 					
         carry_in => carry_29,					
         saida => saida(30),
         carry_out => carry_30			
        );

	 
end architecture;