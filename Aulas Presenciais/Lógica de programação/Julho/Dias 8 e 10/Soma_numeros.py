import math

def soma(n1, n2):
    return n1 + n2
a = True

while a:    
    
    print("Escolha uma das opções abaixo.")
    print("")
    print("Opção 1 - Função de Soma")    
    print("Opção 2 - Sair")
    print("")
    
    opcao = int(input("Escolha uma das opcoes:"))
        
    if opcao == 1:
        print("")
        n1 = int(input("Informe o primeiro numero a ser somado: "))
        n2 = int(input("Informe o segundo numero a ser somado: "))
        resultado = n1 + n2
        soma(n1, n2)
        print("")
        print("O primeiro numero informado foi: ", n1)
        print("O segundo numero informado foi: ", n2)
        print("")
        print("A soma dos numeros é: ", resultado)
        print("")
        
        print("O usuario deseja realizar nova soma, ou deseja encerrar o programa: ")
        print("Inofmre uma opcao, sendo 1 ou 2: ")
        opcao = int(input("Escolha uma opcao: "))
        
    if opcao == 2:
        a = False
        

print("Programa finalizado com sucesso")   