nota1 = 0
nota2 = 0
media = 0

nota1 = float(input("Informe a primeira nota do aluno! "))
nota2 = float(input("Informe a segunda nota do aluno! "))

media = (nota1 + nota2) / 2

if media == 7:
    print(f"A media foi {media} Aluno foi aprovado.")
elif media < 7:
    print(f"A media foi {media} Aluno foi reprovado.")
elif media >= 10:
    print(f"A media foi {media} Aluno aprovado com distinção!")