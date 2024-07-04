CREATE TABLE Membros(
  id_membro INT PRIMARY KEY,
  nome varchar(50),
  cargo varchar(50)
  )
  
CREATE TABLE Tarefas(
  id_tarefa INT PRIMARY KEY,
  descricao varchar(50),
  fk_membro varchar(50)
  )

insert into membros (membro_id, nome, cargo) values (1, "Leonardo Dicaprio", "Engenheiro de Machine Learning"), (2, "Will Smith", "Arquiteto de dados"), (3, "Johnny Depp", "Desenvolvedor Python"), (4, "Keanu Reeves", "Designer de interface do usuário"), (5, "Tom Cruise", "Desenvolvedor Full Stack"), (6, "Jackie Chan", "Desenvolvedor Java Script"), (7, "Al Pacino", "Engenheiro de Nuvem"), (8, "Robert Downey Jr.", "Scrum Master"), (9, "Brad Pitt", "Engenheiro de DevOps"), (10, "Dwayne Johnson", "Desenvolvedor Java")

insert into tarefas (tarefa_id, descricao, membro_fk) values (1, "Executar testes e experimentos de aprendizado de máquina", 1), (2, "Fiscalizar e executar obras e serviços", 2), (3, "Escrever códigos eficazes e escaláveis", 3), (4, "fazer um protótipo e enviar o que foi feito para o time de desenvolvimento", 4), (5, "implementação de códigos para o back-end e front-end", 5), (6, "escrever e manter os códigos em JavaScript funcionais", 6), (7, "gerenciar a infraestrutura em nuvem de uma organização", 7), (8, "garantir que o Time Scrum se oriente pelos valores e práticas do Scrum", 8), (9, "provisionamento e gerenciamento de infraestrutura", 9), (10, "Codifica e realiza os testes, prepara documentação e produz manuais de operação
", 10)

SELECT membros.membro_id, membros.nome, membros.cargo, tarefas.tarefa_id, tarefas.descricao, tarefas.membro_fk
FROM membros
INNER JOIN tarefas
ON membros.membro_id = tarefas.membro_fk