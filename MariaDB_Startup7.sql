select membros.nome, tarefas.descricao
from membros
inner join tarefas
on membros.membro_id=tarefas.tarefas_id