# Desing de Computadores

Antonio Fonseca

Joras Custodio 

# Projeto 1

### Arquitetura

O projeto segue a arquitetura Harvard, com barramentos e memoria de 8 bits, em um modelo Registrador-Memoria, como mostra o diagrama abaixo, possuindo uma memoria ROM interna com instruções, e se comunica com memoria RAM e os endereços de IO por quatro barramento, sendo eles de Leitura e Escrita de dados, de Endereçamento e Controle.

Inputs e Outputs:

| Nome | Quantidade | Endereço |
| --- | --- | --- |
| RAM | 64 | 0-63 |
| 7 Segmentos | 6 | 288-293 |
| Leds | 10 | 256-258 |
| Chaves | 10 | 320-322 |
| Botões | 5 | 352-356 |

O diagrama abaixo mostra as conecções com os quatro barramentos principais realizadas no arquivo Top-Level e o decodificador de intruções, componente responsavel por habilitar o componente adequado para que não haja conflito nos barramentos de leitura e escrita.

![Untitled](Imgs/Untitled.png)

### Processador

O processador utiliza uma ULA com 4 operações, soma, subtração, passa e comparação, e opera entre um registrador e a saida de um MUX, que direciona ou a saida da memoria RAM ou o valor do Imediato da intrução, salvando a saida sempre no mesmo registrador da entrada A.

Para o controle das instruções é utilizado um registrador tambem de 8 bits (PC) para guardar a posição atual da memoria ROM, e pode ter seu valor manipulado por um MUX descrito na tabela a seguir.

| 0 | PC +1 |
| --- | --- |
| 1 | Imediato |
| 2 | End. Retorno |

A memoria ROM foi contruida com 4 bits para codificar instruções e mais 9 bits para endereçãmento na RAM ou para valor Imediato, sendo os quatro bits de instruções direcionados para o decodificador de instruções, responsavel pela ativação dos pontos de controles que espalhados por todo o processador, representados pelas linhas em vermelho na imagem abaixo.

![Untitled](Imgs/Untitled%201.png)

### Intruções:

Seguindo a arquitetura Registrador-Memoria, é necessario endereçar além da instrução e do imediato, um dos 4 registradores para ser utilizado na instução, mesmo que a instrução não de fato utilize registradores, pelo barramento é necessario endereçar, fazendo com que a instrução tenha o formato abaixo, com a diferença que no processor do projeto, o endereço da RAM possui o mesmo tamanho da ROM, não sendo necessario os bits 10 e 11 da imagem

![Untitled](Imgs/Untitled%202.png)

A tabela abaixo mostra as instruções inplementadas para o projeto, e os respectivos Mnemonios, que nada mais são do que abreviações utiliadas para a programação em assembly.

| Função | Mnemonio | Binario |
| --- | --- | --- |
| Sem Operação | NOP | 0000 |
| Carrega valor da memória para A | LDA | 0001 |
| Soma A e B e armazena em A | SOMA | 0010 |
| Subtrai B de A e armazena em A | SUB | 0011 |
| Soma A e o Imediato e armazena em A | SOMI | 1011 |
| Subtrai A e o Imediato e armazena em A | SUBI | 1100 |
| Carrega valor imediato para A | LDI | 0100 |
| Salva valor de A para a memória | STA | 0101 |
| Desvio de execução | JMP | 0110 |
| Desvio condicional de execução | JEQ | 0111 |
| Comparação | CEQ | 1000 |
| Chamada de Sub Rotina | JSR | 1001 |
| Chamada de Sub Rotina Condicionada | JSQ | 1101 |
| Retorno de Sub Rotina | RET | 1010 |

## Contador

A partir do hardware descrito acima, foi definido como projeto inicial a implementação de um contador, primeiramente capaz de ler um botão precionado na FPGA e mostrar  a contagem de clicks em displays de 7 segmentos, e em um segundo momento, capaz de ler as posições das chaves como um numero binairo, e definir esse valor como o limite maximo da contagem.

### Software

O software desenvolvido funciona em uma estrutura de 3 blocos principais, um setup inicial, que zera endereços de memoria relevantes e carrega os valores iniciais necessario nos registradores, seguido de um loop principal, que realiza a leitura dos botões e chaves, e chama as funções necessarias do terceiro bloco, que são as sub-rotinas ou funções.

## Relogio