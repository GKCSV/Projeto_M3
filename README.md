# Projeto_M3

  ##Projeto_Final_M3##

  Projeto de final de módulo proposto pela Resilia para o curso de Data Analytics.

* Facilitadores: Marisa Silva, Tais Cunha.

**Integrantes:**
1. Gabriel Kanarski
2. Gabriela Antunes
3. Liora Dopacio
4. Odilon Cavalcante
5. Ricardo Galvão


**11/01 - Reunião 01**
- Participantes:
Gabriel, Gabriela, Liora, Odilon

*Execução:*

- Definição e criação do modelo padrão das tabelas para popular;
- Encaminhamento aos membros via WhatsApp;


**15/01 - Reunião 02**
- Participantes:
Gabriel, Gabriela, Liora, Odilon

*Execução:*
1. Revisão das alterações da modelagem;

- Remodelagem:

  - MATRICULA:
    - FK1 - turma_id;
    - FK2 - aluno_id;
    - status.

  - ALUNO:
    - PK - aluno_id int NOT NULL;
    - nome;
    - endereço;
    - e-mail;
    - data_nascimento.
  - TURMAS:
    - PK - turmas_id int NOT NULL
    - FK1 - curso_id int NOT NULL
    - nome;
    - data_inicio;
    - mascote;

  - FACILITADOR_TURMA:
    - FK1 - turma_id;
    - FK2 - facilitador_id.

  - CURSOS:
    - PK - curso_id int NOT NULL;
    - nome;
    - descrição.

  - FACILITADORES:
    - PK - facilitador_id int NOT NULL;
    - nome;
    - e-mail;
    - endereço.

2. Alterações no .sql:
  - Mudanças em algumas chaves primárias;
  - Inserção de coluna 'STATUS' na tabela MATRICULA;
  - Inserção de comentários no script de criação das tabelas;
  
  - Questões (query's):
    - Questões propostas:
      - 1- Selecionar a quantidade total de estudantes cadastrados no banco;
      - 2- Selecionar todos os estudantes com os respectivos cirsos que eles estão cadastrados;
      - 3- Selecionar quais pessoas facilitadoras atuam em mais de uma turma.
    
    - Formulação das questões extras:
      - 1- Selecionar todos os facilitadores, a quantidade de turmas associadas a eles, e verificar os facilitadores que estão sem turma;
      - 2- Ordenar os estudantes cadastrados no banco pelas faixas etárias e apontar a faixa etária com mais alunos;
      - 3- Selecione os alunos desistentes e o curso em que eles estavam matriculados.
    
    - UPDATE:
      - 1- Alterar cidade atual do facilitador **'TAIS CUNHA'**

3. GitHub:
  - a - Criação do repositório Projeto_M3 no GitHub;
  - b - Inserção de informações no README;
  - c - Inclusão dos colaboradores;
  - d - Criação das Branchs;
  - e - Commit's Script's de criação de tabelas;
  - f - Mesclagens da Branch com a Main;
  - g - Commit's População das tabelas;

4. Re-divisão de tabelas para população de dados;

5. População das tabelas;


**16/01 - Reunião 03**
- Participantes:
Gabriel, Gabriela, Liora, Odilon

*Execução:*
1. Revisão da modelagem: após análise, foi identificada a necessidade de criação de mais duas tabelas: "módulos" e "departamentos" com seus devidos atributos;
2. Após criação, foram feitas as populações das mesmas;
3. Após os INSERT's, foram comitados ao GitHub individualmente através da Branch particular de cada integrante;
4. Após cada Commit, foi executada a mesclagem da Branch em questão com a MAIN;
5. Foi criado também um arquivo .sql que contém as query's solicitadas na proposta do projeto. Neste, cada integrante comitou sua parte, através da sua Branch, para que seja, posteriormente, mesclada à MAIN.
