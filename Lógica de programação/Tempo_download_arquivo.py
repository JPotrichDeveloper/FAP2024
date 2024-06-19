tamanho_arquivo = 0
velocidade_link = 0
tempo_download = 0

tamanho_arquivo = float(input("Informe o tamanho do arquivo para download em megabytes! "))
velocidade_link = float(input("Informe a velocidade de conexão em Mbps! "))

tempo_download = tamanho_arquivo / (velocidade_link / 8)