import math

nome_paciente = ""
numero_whats = ""
peso = 0
altura = 0.00
consumo_agua = 0.035
imc = 0.00

nome_paciente = input("Informe o nome do paciente. ")
numero_whats = input("Informe o número do whatsapp. ")
peso = int(input("Informe o peso do paciente. "))
altura = float(input("Informe a altura do paciente. "))

def principal():    

    valor = consumo_agua * peso
    imc = peso / (altura ** 2)
    situacao = situacao_imc(imc)

    mensagem  = f"Nome do paciente: {nome_paciente} - Número whatsapp: {numero_whats} - Peso do paciente: {peso} Kg - Altura do paciente: {altura} metros - O consumo de água diário é: {valor:.2f} Litros - IMC do paciente: {imc:.2f} - Situação: {situacao}"

    print(mensagem)

def situacao_imc(imc):   
    if imc < 18.5:
        situacao = "Abaixo do peso"
    elif imc < 24.9:
        situacao = "Peso normal"
    elif imc < 29.9:
        situacao = "Sobrepeso"
    elif imc < 34.9:
        situacao = "Obesidade grau 1 - Leve"
    elif imc < 39.9:
        situacao = "Obesidade grau 2 - Moderado"
    else:
        situacao = "Obesidade grau 3 - Mórbido"

    return situacao

principal()



















