filmes = []

def menu():
    
    print("========= MENU DE OPCOES ==========")
    print("1 - Cadastrar novos filmes: ")
    print("2 - Alterar cadastro do filme: ")
    print("3 - Listar filmes cadastrados: ")
    print("4 - Excluir filme do cadastro: ")
    print("5 - Buscar filme no cadastro: ")
    print("6 - Sair do programa! ")
    print("")
    
def cadastro():
    
    titulo = input("Título: ")
    diretor = input("Diretor: ")
    genero = input("Gênero: ")
    lancamento = input("Lançamento: ")
    
    filme = {"Título": titulo,
             "Diretor": diretor,
             "Gênero": genero,
             "Lançamento": lancamento
             }
    print("")
    filmes.append(filme)
    
    print("Filme cadastrado com sucesso! \n")
    
def alterar():
    
    busca_titulo = input("Digite o título do filme que deseja alterar: ")
    encontrado = False

    for filme in filmes:
        if filme['Título'].lower() == busca_titulo.lower():
            print(f"Filme encontrado: Título: {filme['Título']}, Diretor: {filme['Diretor']}, Gênero: {filme['Gênero']}, Lançamento: {filme['Lançamento']}")
            novo_titulo = input("Novo título (deixe em branco para manter o atual): ")
            novo_diretor = input("Novo diretor (deixe em branco para manter o atual): ")
            novo_genero = input("Novo gênero (deixe em branco para manter o atual): ")
            novo_ano = input("Novo ano (deixe em branco para manter o atual): ")

            if novo_titulo:
                filme['titulo'] = novo_titulo
            if novo_diretor:
                filme['diretor'] = novo_diretor
            if novo_genero:
                filme['genero'] = novo_diretor    
            if novo_ano:
                filme['lancamento'] = novo_ano

            print("Informações do filme atualizadas com sucesso!\n")
            
            encontrado = True
            break

    if not encontrado:
        print("Filme não encontrado.\n")
        
def listar():
    
    print("========= LISTA DE FILMES DO CADASTRO ===========")
    print("")
    
    if len(filmes) == 0:
        print("Nenhum filme cadastrado. \n")
        
    else:
        print("        Título      |       Diretor      |       Gênero       |     Lançamento    |")
        print("-----------------------------------------------------------------------------------")
        
        for filme in filmes:
            print(f"{filme['Título']}             | {filme['Diretor']}             | {filme['Gênero']}              | {filme['Lançamento']}          |")
        
        print("\n")

def excluir():
    
    busca_titulo = input("Digite o título do filme que deseja excluir: ")
    encontrado = False

    for filme in filmes:
        if filme['Título'].lower() == busca_titulo.lower():
            filmes.remove(filme)
            print("Filme excluído com sucesso!\n")
            encontrado = True
            break

    if not encontrado:
        print("Filme não encontrado.\n")
        
def buscar():
    
    busca_titulo = input("Digite o título do filme que deseja buscar: ")
    print("")
    encontrado = False

    for filme in filmes:
        if filme['Título'].lower() == busca_titulo.lower():
            print(f"Filme encontrado: Título: {filme['Título']}, Diretor: {filme['Diretor']}, Gênero: {filme['Gênero']},Lançamento: {filme['Lançamento']}")
            print("")
            encontrado = True
            break

    if not encontrado:
        print("Filme não encontrado.\n")
        
        
def main():
    
    while True:
        
        menu()
        
        opcao = input("Escolha uma opção: ")
        print("")
        
        if opcao == "1":
            cadastro()
        elif opcao == "2":
            alterar()
        elif opcao == "3":
            listar()
        elif opcao == "4":
            excluir()
        elif opcao == "5":
            buscar()
        elif opcao == "6":
            print("Saindo do programa...")
            break
        
        else:
            ("Opção inválida, escolha outra opção: \n")
            
if __name__ == "__main__":
    main()
               
    
    
    
    
    
    
    
    