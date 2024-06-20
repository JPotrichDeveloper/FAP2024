import math

altura = 0.00
peso_ideal = 0.00

opcao = input("Informe se você é Homem ou Mulher! ").strip().lower()
altura = float(input("Informe a sua altura em metros! "))
    
if opcao == "homem":
    peso_ideal = (72.7 * altura) - 58
    print(f"O seu peso ideal é! {peso_ideal:.2f} KG")
    
elif opcao == "mulher":    
    peso_ideal = (62.1 * altura) - 44.7
    print(f"O seu peso ideal é! {peso_ideal:.2f} KG")


