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
