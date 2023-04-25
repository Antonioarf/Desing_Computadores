# Desing de Computadores

Antonio Fonseca

Joras Custodio 

Extras entrega intermediaria: intruções SOMI e JSQ e  Assembler

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

O diagrama abaixo mostra as conexões com os quatro barramentos principais realizadas no arquivo Top-Level e o decodificador de instruções, componente responsável por habilitar o componente adequado para que não haja conflito nos barramentos de leitura e escrita.

![Untitled](Imgs/Untitled.png)

### Processador

O processador utiliza uma ULA com 4 operações, soma, subtração, passa e comparação, e opera entre um registrador e a saída de um MUX, que direciona ou a saída da memoria RAM ou o valor do Imediato da instrução, salvando a saída sempre no mesmo registrador da entrada A.

Para o controle das instruções é utilizado um registrador também de 8 bits (PC) para guardar a posição atual da memoria ROM, e pode ter seu valor manipulado por um MUX descrito na tabela a seguir.

| 0 | PC +1 |
| --- | --- |
| 1 | Imediato |
| 2 | End. Retorno |

A memoria ROM foi construída com 4 bits para codificar instruções e mais 9 bits para endereçamento na RAM ou para valor Imediato, sendo os quatro bits de instruções direcionados para o decodificador de instruções, responsável pela ativação dos pontos de controles que espalhados por todo o processador, representados pelas linhas em vermelho na imagem abaixo.

![Untitled](Imgs/Untitled%201.png)

### Intruções:

Seguindo a arquitetura Registrador-Memoria, é necessário endereçar além da instrução e do imediato, um dos 4 registradores para ser utilizado na instrução, mesmo que a instrução não de fato utilize registradores, pelo barramento é preciso endereçar, fazendo com que a instrução tenha o formato abaixo, com a diferença que no processor do projeto, o endereço da RAM possui o mesmo tamanho da ROM, sendo descartáveis os bits 10 e 11 da imagem

![Untitled](Imgs/Untitled%202.png)

A tabela abaixo mostra as instruções implementadas para o projeto, e os respectivos Mnemônicos, que nada mais são do que abreviações utilizadas para a programação em assembly.

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

A partir do hardware descrito acima, foi definido como projeto inicial a implementação de um contador, primeiramente capaz de ler um botão da FPGA e mostrar a contagem de clicks em displays de 7 segmentos, e em um segundo momento, capaz de ler as posições das chaves como um numero binário, e definir esse valor como o limite máximo da contagem.

### Software

O software desenvolvido funciona em uma estrutura de 3 blocos principais, um setup inicial, que zera endereços de memoria relevantes e carrega os valores iniciais nos registradores, seguido de um loop principal, que realiza a leitura dos botões e chaves, e chama as funções que formam o terceiro bloco, o das sub-rotinas.

```vhdl
COLOCAR CODIGO
```

### Assembler

O assembler é um programa em python que recebe um arquivo de texto com um código assembly e retorna um bloco que é entendido pelo Quartus como os endereços da memoria ROM. A execução deve seguir o formato “ python3 assembler.py input.txt output.txt”

O loop principal do programa varre um for entre as linhas no input, e discriminando o tratamento da linha pelo numero de argumento nela presente

```
for line in f:
        line, coment = filtra(line)
        if len(line) == 1:
            if line[0] in mnemonics:
                linha_nova = mnemonics[line[0]] + 11*"0"
            else:
                pulos[line[0]] = contador
                linha_nova = 15*"0"
        elif len(line) == 2:
            if line[1][0] in ['@', '$']:
                end = bin(int(line[1][1:]))[2:].zfill(9)
            else:
                end = line[1]
            linha_nova = mnemonics[line[0]] +"00" + end 
        elif len(line) == 3:
            if line[2] in pulos:
                end = bin(pulos[line[2]])[2:].zfill(9)
            else:
                
                end = bin(int(line[2][1:]))[2:].zfill(9)
            linha_nova = mnemonics[line[0]] + registradores[line[1]] + end
```

No caso “len(line)==1” a substituição é mais fácil, pois o resultado será apenas o mnemônico seguido de 11 0s, ou se trata de um Label, que é substituído por uma instrução do tipo NOP.

No caso “len(line)==2”, além da substituição do mnemônico pelo valor binário, também será traduzido o valor do imediato caso haja, ou então será substituído um label para instruções de desvio.

No caso “len(line)==3”, além da troca do mnemônico e do imediato, também exite a tradução do registrador utilizado na operação por seu valor descrito em 2 bits.

```python
for e in pulos:
    content = content.replace(e, bin(int(pulos[e]))[2:].zfill(9))
```

Feitas todas as traduções, os labels são substituído nas instruções de desvio pelos valores da linha onde foram criados, ocupando todo o imediato.

## Relogio