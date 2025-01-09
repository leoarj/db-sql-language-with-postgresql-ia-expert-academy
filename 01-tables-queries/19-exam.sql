-- Avaliação prática – Banco de Dados
 -- 1. Crie um banco de dados chamado BIBLIOTECA.

CREATE DATABASE biblioteca
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- 2. Crie uma tabela chamada EDITORA, de acordo com os dados abaixo:
create table editora (
	ideditora serial not null,
	nome varchar(50) not null,

	constraint pk_edt_ideditora primary key (ideditora),
	constraint un_edt_nome unique (nome)
);

-- 3. Insira os dados abaixo na tabela EDITORA.
insert into editora (nome) values ('Bookman');
insert into editora (nome) values ('Edgard Blusher');
insert into editora (nome) values ('Nova Terra');
insert into editora (nome) values ('Brasport');

select * from editora;

-- 4. Crie uma tabela chamada CATEGORIA, de acordo com os dados abaixo:
create table categoria (
	idcategoria serial not null,
	nome varchar(50) not null,

	constraint pk_ctg_idcategoria primary key (idcategoria),
	constraint un_ctg_nome unique (nome)
);

-- 5. Insira os dados abaixo na tabela CATEGORIA.
insert into categoria (nome) values ('Banco de Dados');
insert into categoria (nome) values ('HTML');
insert into categoria (nome) values ('Java');
insert into categoria (nome) values ('PHP');

select * from categoria;

-- 6. Crie uma tabela chamada AUTOR, de acordo com os dados abaixo:
create table autor (
	idautor serial not null,
	nome varchar(50) not null,

	constraint pk_atr_idautor primary key (idautor),
	constraint un_atr_nome unique (nome)
);

insert into autor (nome) values ('Waldemar Setzer');
insert into autor (nome) values ('Flávio Soares');
insert into autor (nome) values ('John Watson');
insert into autor (nome) values ('Rui Rossi dos Santos');
insert into autor (nome) values ('Antonio Pereira de Resende');
insert into autor (nome) values ('Claudiney Calixto Lima');
insert into autor (nome) values ('Evandro Carlos Teruel');
insert into autor (nome) values ('Ian Graham');
insert into autor (nome) values ('Fabrício Xavier');
insert into autor (nome) values ('Pablo Dalloglio');

select * from autor;

-- 8. Crie uma tabela chamada LIVRO, de acordo com os dados abaixo:
create table livro (
	idlivro serial not null,
	ideditora integer not null,
	idcategoria integer not null,
	nome varchar(60) not null,

	constraint pk_lvr_idlivro primary key (idlivro),
	constraint fk_lvr_ideditora foreign key (ideditora) references editora (ideditora),
	constraint fk_lvr_idcategoria foreign key (idcategoria) references categoria (idcategoria),
	constraint un_lvr_nome unique (nome)
);

-- 9. Insira os dados abaixo na tabela LIVRO.
select * from editora;
select * from categoria;

insert into livro (ideditora, idcategoria, nome) values (2, 1, 'Banco de Dados – 1 Edição');
insert into livro (ideditora, idcategoria, nome) values (1, 1, 'Oracle DataBase 11G Administração');
insert into livro (ideditora, idcategoria, nome) values (3, 3, 'Programação de Computadores em Java');
insert into livro (ideditora, idcategoria, nome) values (4, 3, 'Programação Orientada a Aspectos em Java');
insert into livro (ideditora, idcategoria, nome) values (4, 2, 'HTML5 – Guia Prático');
insert into livro (ideditora, idcategoria, nome) values (3, 2, 'XHTML: Guia de Referência para Desenvolvimento na Web');
insert into livro (ideditora, idcategoria, nome) values (1, 4, 'PHP para Desenvolvimento Profissional');
insert into livro (ideditora, idcategoria, nome) values (2, 4, 'PHP com Programação Orientada a Objetos');

select * from livro;

-- 10. Crie uma tabela chamada LIVRO_AUTOR, de acordo com os dados abaixo:
create table livro_autor (
	idlivro integer not null,
	idautor integer not null,

	constraint pk_lvat_idlivroautor primary key (idlivro, idautor),
	constraint fk_lvat_idlivro foreign key (idlivro) references livro (idlivro),
	constraint fk_lvat_idautor foreign key (idautor) references autor (idautor)
);

-- 11. InsiraosdadosabaixonatabelaLIVRO_AUTOR.
select * from livro;
select * from autor;

insert into livro_autor (idlivro, idautor) values (1,1);
insert into livro_autor (idlivro, idautor) values (1,2);
insert into livro_autor (idlivro, idautor) values (2,3);
insert into livro_autor (idlivro, idautor) values (3,4);
insert into livro_autor (idlivro, idautor) values (4,5);
insert into livro_autor (idlivro, idautor) values (4,6);
insert into livro_autor (idlivro, idautor) values (5,7);
insert into livro_autor (idlivro, idautor) values (6,8);
insert into livro_autor (idlivro, idautor) values (7,9);
insert into livro_autor (idlivro, idautor) values (8,10);

select * from livro_autor;

-- 12. Crie uma tabela chamada ALUNO,de acordo com os dados abaixo:
create table aluno (
	idaluno serial not null,
	nome varchar(50) not null,

	constraint pk_aln_idaluno primary key (idaluno)
);

-- 13. Insira os dados abaixo na tabela ALUNO.
insert into aluno (nome) values ('Mario');
insert into aluno (nome) values ('João');
insert into aluno (nome) values ('Paulo');
insert into aluno (nome) values ('Pedro');
insert into aluno (nome) values ('Maria');

-- 14. Crie uma tabela chamada EMPRESTIMO, de acordo com os dados abaixo:
create table emprestimo (
	idemprestimo serial not null,
	idaluno integer not null,
	data_emprestimo date not null default current_date,
	data_devolucao date not null,
	valor float not null,
	devolvido char(1) not null,

	constraint pk_emp_idemprestimo primary key (idemprestimo),
	constraint fk_emp_idaluno foreign key (idaluno) references aluno (idaluno)
);

-- 15. Insira os dados abaixo na tabela EMPRESTIMO.
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (1, '2012-05-02', '2012-05-12', 10, 'S');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (1, '2012-04-23', '2012-05-03', 5, 'N');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (2, '2012-05-10', '2012-05-20', 12, 'N');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (3, '2012-05-10', '2012-05-20', 8, 'S');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (4, '2012-05-05', '2012-05-15', 15, 'N');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (4, '2012-05-07', '2012-05-17', 20, 'S');
insert into emprestimo (idaluno, data_emprestimo, data_devolucao, valor, devolvido) values (4, '2012-05-08', '2012-05-18', 5, 'S');

select * from emprestimo;

-- 16. Crie uma tabela chamada EMPRESTIMO_LIVRO, de acordo comos dados abaixo:
create table emprestimo_livro (
	idemprestimo integer not null,
	idlivro integer not null,

	constraint pk_emplv_idemprestimolivro primary key (idemprestimo, idlivro),
	constraint fk_emplv_idemprestimo foreign key (idemprestimo) references emprestimo (idemprestimo),
	constraint fk_emplv_idlivro foreign key (idlivro) references livro (idlivro)
);

select * from emprestimo_livro;

-- 17. Insira os dados abaixona tabela EMPRESTIMO_LIVRO.
select
	emprestimo.*,
	aluno.nome
from
	emprestimo
left outer join
	aluno on emprestimo.idaluno = aluno.idaluno;

select * from livro;

insert into emprestimo_livro (idemprestimo, idlivro) values (1, 1);
insert into emprestimo_livro (idemprestimo, idlivro) values (2, 4);
insert into emprestimo_livro (idemprestimo, idlivro) values (2, 3);
insert into emprestimo_livro (idemprestimo, idlivro) values (3, 2);
insert into emprestimo_livro (idemprestimo, idlivro) values (3, 7);
insert into emprestimo_livro (idemprestimo, idlivro) values (4, 5);
insert into emprestimo_livro (idemprestimo, idlivro) values (5, 4);
insert into emprestimo_livro (idemprestimo, idlivro) values (6, 6);
insert into emprestimo_livro (idemprestimo, idlivro) values (6, 1);
insert into emprestimo_livro (idemprestimo, idlivro) values (7, 8);

select * from emprestimo_livro;

-- 18. Crie os seguintes índices:
create index idx_emprestimo_data_emprestimo on emprestimo (data_emprestimo);
create index idx_emprestimo_data_devolucao on emprestimo (data_devolucao);

-- CONSULTAS SIMPLES

-- 19. O nome dos autores em ordem alfabética.
select nome from autor order by nome asc;

-- 20. O nome dos alunos que começam com a letra P.
select nome from aluno where nome like 'P%';

-- 21. O nome dos livros da categoria Banco de Dados ou Java.
select
	livro.nome,
	categoria.nome as categoria
from
	livro
left outer join
	categoria on livro.idcategoria = categoria.idcategoria
where livro.idcategoria in (1, 3);

-- 22. O nome dos livros da editora Bookman.
select
	livro.nome,
	editora.nome as editora
from
	livro
left outer join
	editora on livro.ideditora = editora.ideditora
where livro.ideditora = 1;

-- 23. Os empréstimos realizados entre 05/05/2012 e 10/05/2012.
select * from emprestimo where data_emprestimo between '2012-05-05' and '2012-05-10';

-- 24. Os empréstimos que não foram feitos entre 05/05/2012 e 10/05/2012
select * from emprestimo where data_emprestimo not between '2012-05-05' and '2012-05-10';

-- 25. Os empréstimos que os livros já foram devolvidos.
select * from emprestimo where devolvido = 'S';

-- CONSULTAS COM AGRUPAMENTO SIMPLES

-- 26. A quantidade de livros.
select count (idlivro) from livro;

-- 27. O somatório do valor dos empréstimos.
select sum(valor) as total from emprestimo;

-- 28. A média do valor dos empréstimos.
select avg(valor) as media from emprestimo;

-- 29. O maior valor dos empréstimos.
select max(valor) from emprestimo;

-- 30. O menor valor dos empréstimos.
select min(valor) from emprestimo;

-- 31. O somatório do valor do empréstimo que estão entre 05/05/2012 e 10/05/2012.
select sum(valor) from emprestimo where data_emprestimo between '2012-05-05' and '2012-05-10';

-- 32. A quantidade de empréstimos que estão entre 01/05/2012 e 05/05/2012.
select count(idemprestimo) from emprestimo where data_emprestimo between '2012-05-01' and '2012-05-05';

-- CONSULTAS COM JOIN
-- 33. O nome do livro, a categoria e a editora (LIVRO) – fazer uma view
create view livro_dados as
select
	livro.nome as livro,
	categoria.nome as categoria,
	editora.nome as editora
from
	livro
left outer join
	categoria on livro.idcategoria = categoria.idcategoria
left outer join
	editora on livro.ideditora = editora.ideditora;

select * from livro_dados;

-- 34. O nome do livro e o nome do autor (LIVRO_AUTOR) – fazer uma view.
create view livro_autor_dados as
select
	livro.nome as livro,
	autor.nome as autor
from
	livro_autor
left outer join
	livro on livro_autor.idlivro = livro.idlivro
left outer join
	autor on livro_autor.idautor = autor.idautor;

select * from livro_autor_dados;

-- 35. O nome dos livros do autor Ian Graham( LIVRO_AUTOR).
select
	livro.nome as livro,
	autor.nome as autor
from
	livro_autor
left outer join
	livro on livro_autor.idlivro = livro.idlivro
left outer join
	autor on livro_autor.idautor = autor.idautor
where livro_autor.idautor = 8;
-- where autor.nome like 'Ian Graham';

-- 36. O nome do aluno, a data do empréstimo e a data de devolução (EMPRESTIMO).
select
	aluno.nome as aluno,
	emprestimo.data_emprestimo,
	emprestimo.data_devolucao
from
	emprestimo
left outer join
	aluno on emprestimo.idaluno = aluno.idaluno;

-- 37. O nome de todos os livros que foram emprestados (EMPRESTIMO_LIVRO).
select
	livro.nome as livro
from
	emprestimo_livro
left outer join
	livro on emprestimo_livro.idlivro = livro.idlivro;

-- CONSULTAS COM AGRUPAMENTO + JOIN

-- 38. O nome da editora e a quantidade de livros de cada editora (LIVRO).
select
	editora.nome as editora,
	count(livro.ideditora) as quantidade_livros
from
	livro
left outer join
	editora on livro.ideditora = editora.ideditora
group by editora.nome;

-- 39. O nome da categoria e a quantidade de livros de cada categoria (LIVRO).
select
	categoria.nome as categoria,
	count(livro.idcategoria) as quantidade_livros
from
	livro
left outer join
	categoria on livro.idcategoria = categoria.idcategoria
group by categoria.nome;

-- 40. O nome do autor e a quantidade de livros de cada autor (LIVRO_AUTOR).
select
	autor.nome as autor,
	count(livro_autor.idautor) as quantidade_livros
from
	livro_autor
left outer join
	autor on livro_autor.idautor = autor.idautor
group by autor.nome;

-- 41. O nome do aluno e a quantidade de empréstimo de cada aluno (EMPRESTIMO_LIVRO).
select
	aluno.nome as aluno,
	count(emprestimo.idemprestimo) as quantidade_emprestimo
from
	emprestimo
left outer join
	aluno on emprestimo.idaluno = aluno.idaluno
group by aluno.nome;

-- 42. O nome do aluno e o somatório do valor total dos empréstimos de cada aluno (EMPRESTIMO).
select
	aluno.nome as aluno,
	sum(emprestimo.valor) as total
from
	emprestimo
left outer join
	aluno on emprestimo.idaluno = aluno.idaluno
group by aluno.nome;

-- 43. O nome do aluno e o somatório do valor total dos empréstimos de cada aluno somente daqueles que o somatório for maior do que 7,00 (EMPRESTIMO).
select
	aluno.nome as aluno,
	sum(emprestimo.valor) as total
from
	emprestimo
left outer join
	aluno on emprestimo.idaluno = aluno.idaluno
group by aluno.nome
having sum(emprestimo.valor) > 7;

-- CONSULTAS COMANDOS DIVERSOS

-- 44. O nome de todos os alunos em ordem decrescente e em letra maiúscula.
select upper(nome) from aluno order by nome desc;

-- 45. Os empréstimos que foram feitos nomês 04 de 2012.
select * from emprestimo where (extract(month from data_emprestimo) = 4 and extract(year from data_emprestimo) = 2012);

-- 46. Todos os campos do empréstimo. Caso já tenha sido devolvido, mostrar a mensagem “Devolução completa”, senão “Em atraso”.
select
	*,
	case devolvido
		when 'S' then 'Devolução completa'
	else 'Em atraso'
	end as status
from emprestimo;

-- 47. Somente o caractere 5 até o caractere 10 do nome dos autores.
select substring(nome from 5 for 10) from autor;

-- 48. O valor do empréstimo e somente o mês da data de empréstimo. Escreva “Janeiro”, “Fevereiro”, etc
select
	valor,
	case extract(month from data_emprestimo)
		when 1 then 'Janeiro'
		when 2 then 'Fevereiro'
		when 3 then 'Março'
		when 4 then 'Abril'
		when 5 then 'Maio'
		when 6 then 'Junho'
		when 7 then 'Julho'
		when 8 then 'Agosto'
		when 9 then 'Setembro'
		when 10 then 'Outubro'
		when 11 then 'Novembro'
		when 12 then 'Dezembro'
	else 'Não informado'
	end as mes
from
	emprestimo;

-- SUBCONSULTAS

-- 49. A data do empréstimo e o valor dos empréstimos que o valor seja maior que a média de todos os empréstimos.
select
	data_emprestimo,
	valor
from
	emprestimo
where valor > (select avg(valor) from emprestimo);

-- 50. A data do empréstimo e o valor dos empréstimos que possuem mais de um livro.
select
	data_emprestimo,
	valor
from
	emprestimo
where
	(select
		count(emprestimo_livro.idlivro)
	from
		emprestimo_livro
	where
		emprestimo_livro.idemprestimo = emprestimo.idemprestimo) > 1;

-- 51. A data do empréstimo e o valor dos empréstimos que o valor seja menor que a soma de todos os empréstimos.
select
	data_emprestimo,
	valor
from
	emprestimo
where valor < (select sum(valor) from emprestimo);
