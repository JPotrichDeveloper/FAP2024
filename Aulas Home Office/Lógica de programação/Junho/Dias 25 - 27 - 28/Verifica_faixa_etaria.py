while True:

    def principal():
    
        print("Qual a sua faixa etária, Criança, Adolescente ou Adulto")
        print("")
        idade = int(input("Informe a sua idade para que o programa verifique em qual faixa etária voce está! "))
    
        pessoa = faixa_etaria(idade)
        mensagem = f"A pessoa em questão é um(a): {pessoa}"

        print(mensagem)
    

    def faixa_etaria(idade):
        if idade <= 12:
            pessoa = "Crianca"
        elif 12 <= idade <= 18:
            pessoa = "Adolescente"
        elif 19 <= idade <= 39:
            pessoa = "Adulto"
        elif 40 <= idade <= 50:
            pessoa = "Maduro, na flor da idade"
                
        return pessoa
    
    principal()