create table tarefas(
tarefas_id int primary key,
descricao VARCHAR(50),
membro_id int,
Foreign key (membro_id) REFERENCES membros(membro_id)
)