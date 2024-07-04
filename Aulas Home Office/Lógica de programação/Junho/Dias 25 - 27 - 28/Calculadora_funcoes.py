def soma(n1, n2):
    return n1 + n2

def subtracao(n1, n2):
    return n1 - n2

def multiplicacao(n1, n2):
    return n1 * n2

def divisao(n1, n2):
    if n2 != 0:
        return n1 / n2
    else:
        print("Erro de divisão por zero.")
        return None
    
while True:

    print("Escolha uma das opções abaixo.")
    print("")
    print("Opção 1 - Função de Soma")
    print("Opção 2 - Função de Subtrair")
    print("Opção 3 - Função de Multiplicação")
    print("Opção 4 - Função de Divisão")
    print("Opção 5 - Sair")
    print("")

    opcao = int(input("Qual a opção desejada, informando o número desta. "))
    print("")
    
    if opcao == 1:
        print("Operação selecionada: SOMA")              
        n1 = int(input("Qual o primeiro número a ser Somado. "))
        n2 = int(input("Qual o segundo número a ser Somado. "))        
        
        resultado = soma(n1, n2)
        print(f"O resultado da Soma é: {resultado}")    
        print("")
        
    elif opcao == 2:
        print("Operação selecionada: SUBTRAÇÃO")
        n1 = int(input("Qual o primeiro número a ser Subtrair. "))
        n2 = int(input("Qual o segundo número a ser Subtrair. "))
                
        resultado = subtracao(n1, n2)                    
        print(f"O resultado da Subtração é: {resultado}")    
        print("")
        
    elif opcao == 3:
        print("Operação selecionada: MULTIPLICAÇÃO")
        n1 = int(input("Qual o primeiro número a ser Multiplicação. "))
        n2 = int(input("Qual o segundo número a ser Multiplicação. "))
        
        resultado = multiplicacao(n1, n2)        
        print(f"O resultado da Multiplicação é: {resultado}")
        print("")
        
    elif opcao == 4:
        print("Operação selecionada: DIVISÃO")
        n1 = int(input("Qual o primeiro número a ser Dividido. "))
        n2 = int(input("Qual o segundo número a ser Dividido. "))
                
        resultado = divisao(n1, n2)        
        print(f"O resultado da Divisão é: {resultado}")
        print("")
        
    elif opcao == 5:
        print("Finalizando o programa")
        break
    
    else:
        print("Opção inválida, escolha uma opção de 1 a 5")
        print("")    
    