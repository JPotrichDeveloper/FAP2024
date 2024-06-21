select membros.membro_id, membros.nome, membros.cargo, tarefas.descricao
from membros
inner join tarefas
on membros.membro_id = tarefas.tarefa_id