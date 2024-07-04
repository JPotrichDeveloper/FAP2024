import math

salario_hora = 0.00
HorasTrabalho = 0.00
salario_bruto = 0.00
salario_liquido = 0.00
imposto_renda = 0.00
inss = 0.00
sindicato = 0.00

salario_hora = float(input("Qual é o valor que voce ganha por hora! "))
HorasTrabalho = float(input("Qual é o numero de horas trabalhadas no mês! "))

salario_bruto = salario_hora * HorasTrabalho

imposto_renda = salario_bruto * 0.11
inss = salario_bruto * 0.08
sindicato = salario_bruto * 0.05

salario_liquido = salario_bruto - imposto_renda - inss - sindicato

print(f"O salário bruto mensal a receber é R$ {salario_bruto:.2f}")
print(f"O O valor pago ao Imposto de Renda foi de R$ {imposto_renda:.2f}")
print(f"O valor pago ao INSS foi de R$ {inss:.2f}")
print(f"O valor pago ao Sindicato foi de R$ {sindicato:.2f}")
print(f"O salário liquido mensal a receber é R$ {salario_liquido:.2f}")