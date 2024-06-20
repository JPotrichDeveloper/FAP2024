nota1 = 0
nota2 = 0
nota3 = 0
nota4 = 0
media = 0

nota1 = float(input("Informe a primeira nota do aluno! "))
nota2 = float(input("Informe a segunda nota do aluno! "))
nota3 = float(input("Informe a terceira nota do aluno! "))
nota4 = float(input("Informe a quarta nota do aluno! "))

media = (nota1 + nota2 + nota3 + nota4) / 4

#print("A media desse aluno é! " + str (media))
#print("A media desse aluno é! {}" .format (media))
#print(f"A media desse aluno é! {media}")
print(f"As notas desse aluno são! {nota1:.2f}, {nota2:.2f}, {nota3:.2f}, {nota4:.2f}, e a media é {media:.2f}")
