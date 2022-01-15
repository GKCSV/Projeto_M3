# Projeto_M3
Projeto_Final_M3
.
Projeto de final de módulo proposto pela Resilia para o curso de Data Analytics.
Facilitadores: Marisa Silva, Tais Cunha.
.
**Integrantes:
1- Gabriel Kanarski
.
2- Gabriela Antunes
.
3- Liora Dopacio
.
4- Odilon Cavalcante
.
5- Ricardo Galvão
.
.


.
**11/01 - Reunião
Participantes:
Gabriel, Gabriela, Liora, Odilon

**Execução:

Definição e criação do modelo padrão das tabelas para popular;
Encaminhamento aos membros via WhatsApp;

.
.
.


15/01 - Reunião
Participantes:
Gabriel, Gabriela, Liora, Odilon
.
.
.
Execução:
.
.
>**1 - Revisão das alterações da modelagem;
.
.
Remodelagem:

MATRICULA:
>FK1 - turma_id
>FK2 - aluno_id
* status.
.
ALUNO:
>PK - aluno_id int NOT NULL
* nome;
* endereço;
* e-mail;
* data_nascimento.
.
TURMAS:
>PK - turmas_id int NOT NULL
>FK1 - curso_id int NOT NULL
* nome;
* data_inicio;
* mascote;
* mascote.
.
FACILITADOR_TURMA:
>FK1 - turma_id
>FK2 - facilitador_id
.
CURSOS:
>PK - curso_id int NOT NULL
* nome;
* descrição.
.
FACILITADORES:
>PK - facilitador_id int NOT NULL
* nome;
* e-mail;
* endereço.
.
.
.
>**2 - Alterações no .sql:
.

Mudanças em algumas chaves primárias;
.
Inserção de coluna 'STATUS' na tabela MATRICULA;
.
Inserção de comentários no script de criação das tabelas
.
Formulação das questões extras:
1- Qual a faixa etária predominante entre os alunos?
2- Quais os alunos que concluiram ou desistiram do curso?;
3- Quais os facilitadores, indicando suas turmas e os facilitadores que não ministram nenhuma turma?.
.
UPDATE
1 - Alterar cidade atual do facilitador 'TAIS CUNHA'
.
.
>**3 - GitHub:

1 - Criação do repositório Projeto_M3 no GitHub;
2 - Inserção de informações no README;
3 - Inclusão dos colaboradores;
4 - Criação das Branchs;
5 - Commit's Script's de criação de tabelas;
6 - Mesclagens da Branch com a Main;
7 - Commit's População das tabelas;
.
.
.
>**4 - Re-divisão de tabelas para população de dados;
.


>**5 - População das tabelas;
.
.
.

