--Quantidade total de alunos cadastrados no banco
SELECT COUNT(aluno_id) AS quantidade_alunos FROM aluno 

--Selecionar todos os estudantes com os respectivos cursos que eles estão cadastrados
SELECT aluno.nome, curso.nome_curso FROM aluno
INNER JOIN matricula ON aluno.aluno_id = matricula.aluno_id
INNER JOIN turma ON turma.turma_id = matricula.turma_id
INNER JOIN curso ON curso.curso_id = turma.curso_id
ORDER BY aluno.nome

--Selecionar quais pessoas facilitadores atuam em mais de uma turmas
SELECT funcionario.nome, COUNT(facilitador_turma.funcionario_id) AS quantidade_turmas FROM facilitador_turma
INNER JOIN funcionario ON facilitador_turma.funcionario_id = funcionario.funcionario_id
INNER JOIN departamento ON funcionario.departamento_id = departamento.departamento_id
WHERE departamento.nome = 'Facilitação'
GROUP BY funcionario.nome HAVING COUNT(facilitador_turma.funcionario_id) >= 2 ORDER BY COUNT(facilitador_turma.funcionario_id)

--Selecionar todos os facilitadores, a quantidade de turmas associadas a eles, e verificar os facilitadores que estão sem turma
SELECT funcionario.nome, COUNT(facilitador_turma.turma_id) AS quantidade_turmas FROM funcionario
LEFT JOIN facilitador_turma ON funcionario.funcionario_id = facilitador_turma.funcionario_id
LEFT JOIN turma ON turma.turma_id = facilitador_turma.turma_id
INNER JOIN departamento ON funcionario.departamento_id = departamento.departamento_id
WHERE departamento.nome = 'Facilitação'
GROUP BY funcionario.nome ORDER BY COUNT(facilitador_turma.turma_id)

--Ordenar os estudantes cadastrados no banco pelas faixas etárias e apontar a faixa etária com mais alunos
SELECT COUNT(aluno_id) AS quantidade_alunos,
CASE 
	WHEN EXTRACT (YEAR FROM data_nasc) <= '1970' THEN 'Pessoas maiores de 50 anos'
	WHEN EXTRACT (YEAR FROM data_nasc) >= '1971' AND EXTRACT (YEAR FROM data_nasc) < '1980' THEN 'Pessoas entre 41 e 50 anos'
	when EXTRACT (YEAR FROM data_nasc) >= '1981' AND EXTRACT (YEAR FROM data_nasc) < '1990' THEN 'Pessoas entre 31 e 40 anos'
	when EXTRACT (YEAR FROM data_nasc) >= '1991' AND EXTRACT (YEAR FROM data_nasc) < '2000' THEN 'Pessoas entre 21 e 30 anos'
ELSE 'Pessoas menores de 21 anos'
END AS faixa_idade
FROM aluno 
GROUP BY faixa_idade
ORDER BY COUNT(aluno_id) DESC LIMIT 1