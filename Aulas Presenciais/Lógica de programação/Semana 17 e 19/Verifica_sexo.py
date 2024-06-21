sexo = ""

sexo = input("Informe o sexo, usando F - para Feminino ou M - para Masculino. ")

if sexo.upper() == "F":
    print(f"{sexo} - Feminino.")
elif sexo.upper() == "M":
    print(f"{sexo} - Masculino.")
else:
    print("Sexo invalido!")
