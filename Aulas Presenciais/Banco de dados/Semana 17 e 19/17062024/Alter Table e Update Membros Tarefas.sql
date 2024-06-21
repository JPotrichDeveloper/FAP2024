alter table Membros add genero char(1)

alter table Tarefas add data_inicio date

alter table Tarefas add data_finalizacao date

update Membros set genero = "M" where id_membro = 10;

update Tarefas set data_inicio = "2024-06-17", data_finalizacao = "2024-06-17" Where fk_membro = 10;