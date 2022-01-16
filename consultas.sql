--Selecionar todos os facilitadores, a quantidade de turmas associadas a eles, e verificar os facilitadores que estão sem turma
SELECT funcionario.nome, COUNT(facilitador_turma.turma_id) AS quantidade_turmas FROM funcionario
LEFT JOIN facilitador_turma ON funcionario.funcionario_id = facilitador_turma.funcionario_id
LEFT JOIN turma ON turma.turma_id = facilitador_turma.turma_id
INNER JOIN departamento ON funcionario.departamento_id = departamento.departamento_id
WHERE departamento.nome = 'Facilitação'
GROUP BY funcionario.nome ORDER BY COUNT(facilitador_turma.turma_id)

