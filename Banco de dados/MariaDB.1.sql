create table Tarefas(
  tarefa_id int PRIMARY KEY,
  descricao varchar(50),
  membro_id int,
  foreign key (membro_id) REFERENCES Membros(membro_id)
  )