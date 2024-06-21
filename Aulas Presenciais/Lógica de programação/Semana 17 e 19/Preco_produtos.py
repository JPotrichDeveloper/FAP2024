import math

produto1 = 0.00
produto2 = 0.00
produto3 = 0.00
resultado = 0.00

produto1 = float(input("Qual o valor do primeiro produto: "))
produto2 = float(input("Qual o valor do segundo produto: "))
produto3 = float(input("Qual o valor do terceiro produto: "))

resultado = produto1
if produto2 < produto1 and produto2 < produto3:
    resultado = produto2
if produto3 < produto1 and produto3 <= produto2:
    resultado = produto3
    
print(f"O produto que voce deve comprar sendo o mais barato é! {resultado}")