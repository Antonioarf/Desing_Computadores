from sys import argv
#falta:
#comantarios?
#labels

	 
registradores = {"R0":"00","R1":"01","R2":"10","R3":"11"}
pulos={}
mnemonics = {'NOP': '0000', 'LDA': '0001', 'SOMA': '0010', 'SUB': '0011', 'LDI': '0100', 'STA': '0101', 'JMP': '0110', 'JEQ': '0111', 'CEQ': '1000', 'JSR': '1001', 'RET': "1010", 'SOMI': "1011", 'SUBI': "1100", "JSQ":"1101" }
def filtra(linha:str):
    if ";" in linha:
        linha, coment = linha.split(";")
        return [x for x in linha.split()], coment
    else:
        return [x for x in linha.split()], '\n'

arq = argv[1]
saida = argv[2]
content = ''
contador = 0
pular = False 
with open(arq) as f:
    for line in f:
        line, coment = filtra(line)
        if len(line) == 1:
            if line[0] in mnemonics:
                linha_nova = mnemonics[line[0]] + 11*"0"
            else:
                pulos[line[0]] = contador
                linha_nova = 15*"0"

        elif len(line) == 2:
            if line[1][0] in ['@', '$', '#']:
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

        else:
            pular = True

        if not pular:
            content += f'tmp({contador})  := "' + linha_nova  + f'";  -- {coment}'
            contador += 1
        pular = False    

for e in pulos:
    content = content.replace(e, bin(int(pulos[e]))[2:].zfill(9))
with open(saida, 'w') as f:
    f.write(content)



