select Membros.membro_id, Membros.nome, Membros.cargo, Tarefas.descricao, Tarefas.membro_fk from Membros
inner join Tarefas
on Membros.membro_id = Tarefas.membro_fk
