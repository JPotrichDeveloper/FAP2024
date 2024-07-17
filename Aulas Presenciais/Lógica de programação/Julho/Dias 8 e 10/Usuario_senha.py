a = True

while a:   
            
    nome = input("Informe o nome do usuário: ")
    senha = input("Informe a senha do usuário: ")
        
    if nome == senha:
        print("Erro: Senha nao pode ser igual ao campo nome: Tente novamente.")
        print("")  
        
    else:
        print("Cadastro realizado com sucesso: ") 
        a = False
        
print("Usuario logado com sucesso: ")  