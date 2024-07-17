import funcoes

def menu():

    print("Opção 1 - Soma")
    print("Opção 2 - Subtração")
    print("Opção 3 - Multiplicação")
    print("Opção 4 - Divisão")
    print("Sair 0: ")

while True:

    menu()

    opcao = int(input("Escolha uma das operações matematicas: "))
    if opcao == 0:
        break
    num1 = int(input("Informe o primeiro numero: "))
    num2 = int(input("Informe o segundo numero: "))

    if opcao == 1:
        
        print(funcoes.soma(num1, num2))

    elif opcao == 2:
        
        print(funcoes.subtracao(num1, num2))

    elif opcao == 3:
        
        print(funcoes.multiplicacao(num1, num2))

    elif opcao == 4:
        
        print(funcoes.divisao(num1, num2))

   










