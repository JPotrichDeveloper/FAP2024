import math

num1 = 0
num2 = 0
num3 = 0
resultado = 0

num1 = int(input("Informe o primeiro numero! "))
num2 = int(input("Informe o segundo numero! "))
num3 = int(input("Informe o terceiro numero! "))

maior = num1
if num2 > num1 and num2 > num3:
    maior = num2
if num3 > num1 and num3 >= num2:
    maior = num3
    
print(f"O maior número digitado foi {maior}")