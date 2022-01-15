);

--Tabela que relaciona as turmas aos seus respectios facilitadores e vice-versa
CREATE TABLE facilitador_turma (
	turma_id INT NOT NULL,
	facilitador_id INT NOT NULL,
	FOREIGN KEY (facilitador_id) REFERENCES facilitador (facilitador_id),
	FOREIGN KEY (turma_id) REFERENCES turma (turma_id)
);

--Tabela que lista os alunos da Resilia
CREATE TABLE aluno (
	aluno_id SERIAL NOT NULL,
	nome varchar(80),
	data_nasc timestamp,
	telefone varchar(20),
	email varchar(200),
	endereco varchar(200),
  	PRIMARY KEY (aluno_id)
);