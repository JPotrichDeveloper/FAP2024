import funcoes

opcao = int(input("Escolha de qual numero deseja ver a tabuada: "))

for i in range(1,11):
    print(opcao, "x", i, "=", funcoes.multiplicacao(i, opcao))