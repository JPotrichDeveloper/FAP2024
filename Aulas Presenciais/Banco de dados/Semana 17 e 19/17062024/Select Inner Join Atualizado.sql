SELECT Membros.id_membro, Membros.nome, Membros.cargo, Membros.genero, Tarefas.id_tarefa, Tarefas.descricao, Tarefas.fk_membro, Tarefas.data_inicio, Tarefas.data_finalizacao
FROM Membros
INNER JOIN Tarefas
ON Membros.id_membro = Tarefas.fk_membro