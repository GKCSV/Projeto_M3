# Projeto_M3
Projeto_Final_M3

Projeto de final de módulo proposto pela Resilia para o curso de Data Analytics.
Facilitadores: Marisa Silva, Tais Cunha.

Integrantes:
1- Gabriel Kanarski

2- Gabriela Antunes

3- Liora Dopacio

4- Odilon Cavalcante

5- Ricardo Galvão





**11/01 - Reunião
Participantes:
Gabriel, Gabriela, Liora, Odilon

**Execução:

Definição e criação do modelo padrão das tabelas para popular;
Encaminhamento aos membros via WhatsApp;





**15/01 - Reunião
Participantes:
Gabriel, Gabriela, Liora, Odilon


Execução:


**1 - Revisão das alterações da modelagem;

Remodelagem:

MATRICULA:
>FK1 - turma_id
>FK2 - aluno_id
* status.

ALUNO:
>PK - aluno_id int NOT NULL
* nome;
* endereço;
* e-mail;
* data_nascimento.

TURMAS:
>PK - turmas_id int NOT NULL
>FK1 - curso_id int NOT NULL
* nome;
* data_inicio;
* mascote;
* mascote.

FACILITADOR_TURMA:
>FK1 - turma_id
>FK2 - facilitador_id

CURSOS:
>PK - curso_id int NOT NULL
* nome;
* descrição.

FACILITADORES:
>PK - facilitador_id int NOT NULL
* nome;
* e-mail;
* endereço.



**2 - Alterações no .sql:

Mudanças em algumas chaves primárias;

Inserção de coluna 'STATUS' na tabela MATRICULA;


Formulação das questões extras:
1- Quais são as turmas ministradas pelo facilitador 'TAIS CUNHA'? Gabriel;
2- Qual a faixa etária predominante entre os alunos?



**3 - GitHub:

1 - Criação do repositório Projeto_M3 no GitHub;
2 - Inserção de informações no README;
3 - Inclusão dos colaboradores;
4 - Cada um 'clonou' o repositório remoto para sua máquina local.






