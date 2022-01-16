

--Selecione os alunos desistentes e o curso em que eles estavam matriculados
SELECT aluno.nome, curso.nome_curso, matricula.status from aluno
INNER JOIN matricula ON aluno.aluno_id = matricula.aluno_id
INNER JOIN turma ON turma.turma_id = matricula.turma_id
INNER JOIN curso ON curso.curso_id = turma.curso_id
WHERE matricula.status = 'Desistente'
GROUP BY aluno.nome, curso.nome_curso, matricula.status
ORDER BY curso.nome_curso
