import math

salario_hora = 0.00
HorasTrabalho = 0.00
salario_total = 0.00

salario_hora = float(input("Qual é o valor que voce ganha por hora! "))
HorasTrabalho = float(input("Qual é o numero de horas trabalhadas no mês! "))

salario_total = salario_hora * HorasTrabalho

print(f"O salário mensal a receber é! {salario_total:.2f}")