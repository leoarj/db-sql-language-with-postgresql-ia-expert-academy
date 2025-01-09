-- Consultas simples
select * from cliente;

select nome, data_nascimento from cliente;

-- Para criar um alias para uma coluna, utiliza-se aspas duplas
select nome, data_nascimento as "Data de nascimento" from cliente;

-- Para concatenação, utiliza-se pipe duplo
select 'CPF: ' || cpf || ' RG: ' || rg as "CPF e RG" from cliente;

select * from cliente limit 3;

-- Consultas simples 2
select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';

select nome from cliente where nome like 'C%';

select nome from cliente where nome like '%c%';

select nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01';

select nome, rg from cliente where rg is null;

select nome from cliente order by nome asc;

select nome from cliente order by nome desc;

-- 1. O nome, o gênero e a profissão de todos os clientes, ordenado pelo nome em ordem decrescente
select nome, genero, profissao from cliente order by nome desc;

-- 2. Os clientes que tenham a letra “R” no nome
select nome from cliente where nome like '%r%';

-- 3. Os clientes que o nome inicia com a letra “C”
select nome from cliente where nome like 'C%';

-- 4. Os clientes que o nome termina com a letra “A”
select nome from cliente where nome like '%a';

-- 5. Os clientes que moram no bairro “Centro”
select nome, bairro from cliente where bairro = 'Centro' or bairro = 'Cto.' or bairro = 'Ctr.';

-- 6. Os clientes que moram em complementos que iniciam com a letra “A”
select nome, complemento from cliente where complemento like 'A%';

-- 7. Somente os clientes do sexo feminino
select nome, genero from cliente where genero = 'F';

-- 8. Os clientes que não informaram o CPF
select nome, cpf from cliente where cpf is null;

-- 9. O nome e a profissão dos clientes, ordenado em ordem crescente pelo nome da profissão
select nome, profissao from cliente order by profissao asc;

-- 10. Os clientes de nacionalidade “Brasileira”
select nome, nacionalidade from cliente where nacionalidade like 'Brasil%';

-- 11. Os clientes que informaram o número da residência
select nome, numero from cliente where numero is not null;

-- 12. Os clientes que moram em Santa Catarina
select nome, uf from cliente where uf = 'SC';

-- 13. Os clientes que nasceram entre 01/01/2000 e 01/01/2002
select nome, data_nascimento from cliente where data_nascimento between '2000-01-01' and '2002-01-01';

-- 14. O nome do cliente e o logradouro, número, complemento, bairro, município e UF concatenado de todos os clientes
select  nome ||  ' - ' || logradouro || ' - ' || numero || ' - ' || complemento || ' - ' || bairro || ' - ' || municipio || ' - ' || UF
as "Endereço do cliente" from cliente;
