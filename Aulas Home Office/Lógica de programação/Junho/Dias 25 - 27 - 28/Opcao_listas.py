lista = []

while True:

    print("Escolha uma das opções abaixo.")
    print("Opção 1 - Adicionar a lista")
    print("Opção 2 - Acessar itens add a lista")
    print("Opção 3 - Verificar último item da lista")
    print("Opção 4 - Remover item da lista")
    print("Opção 5 - Sair")
    print("")

    opcao = int(input("Qual a opção desejada, informando o número desta. "))
    print("")
    
    if opcao == 1:      
      itens = (input("Qual o nome do item que voce deseja adicionar a lista. "))
      lista.append(itens)      
      print("")
    elif opcao == 2:
      print(f"O Conteúdo da lista atualmente é. {lista}")
      print("")
    elif opcao == 3:
      ultimo_indice = lista[-1]
      print(f"O utlimo item da lista é. ", ultimo_indice)
      print("")
    elif opcao == 4:
      itens = (input("Qual o nome do item que voce deseja remover da lista. "))
      lista.remove(itens)
      print(f"O item informado foi removido da lista. {lista}")
      print("")
    elif opcao == 5:
      print("Finalizando programa")
      break
      
    else:
      print("Opção inválida, escolha uma opção de 1 a 5")
      print("")