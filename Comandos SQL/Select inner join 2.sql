SELECT membros.membro_id, membros.nome, membros.cargo, tarefas.tarefa_id, tarefas.descricao, tarefas.membro_fk
FROM membros
INNER JOIN tarefas
ON membros.membro_id = tarefas.membro_fk