import math

peso = 0.0
excesso = 0.0
multa = 0.0

peso = float(input("Inofmre o peso da pesca efetuada! "))

excesso = peso - 50
multa = excesso - 4.00

print(f"O excesso de peixes foi {excesso:.2f} KG, logo a multa gerada é de R$ {multa:.2f}")

