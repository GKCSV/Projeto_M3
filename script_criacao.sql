--Tabela que lista os tipo de curso existentes na Resilia
CREATE TABLE curso (
	curso_id SERIAL NOT NULL,
  	nome_curso varchar(80) NULL,
	modalidade varchar(30) NULL,
	eixo varchar(30) NULL,
	duracao varchar(20) NULL,
	PRIMARY KEY (curso_id) 
);

--Tabela que lista os facilitadores da Resilia
CREATE TABLE facilitador (
	facilitador_id SERIAL NOT NULL,
  	nome varchar(60) NULL,
	disciplina varchar(60) NULL,
	telefone varchar(20) NULL,
	email varchar(200) NULL,
	cidade varchar(50) NULL,
	PRIMARY KEY (facilitador_id)
);

--Tabela que lista as turmas da Resilia
CREATE TABLE turma (
	turma_id SERIAL NOT NULL,
	curso_id int NOT NULL,
  	nomenclatura varchar(20) NOT NULL,
	mascote varchar(30),
	PRIMARY KEY (turma_id),
	FOREIGN KEY (curso_id) REFERENCES curso (curso_id)
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
	data_nasc date,
	telefone varchar(20),
	email varchar(200),
	endereco varchar(200),
  	PRIMARY KEY (aluno_id)
);

--Tabela que efetiva a matrícula de um aluno em uma determina turma
CREATE TABLE matricula (
	matricula_id SERIAL NOT NULL,
	turma_id INT NOT NUll,
	aluno_id INT NOT NULL,
	status VARCHAR(30),
  	PRIMARY KEY (matricula_id),
	FOREIGN KEY (turma_id) REFERENCES turma (turma_id),
	FOREIGN KEY (aluno_id) REFERENCES aluno (aluno_id)
);
