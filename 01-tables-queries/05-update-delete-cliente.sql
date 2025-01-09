-- comandos update e delete
select * from cliente;
update cliente set nome = 'Teste' where idcliente = 1;
update cliente set nome = 'Adriano', genero = 'M', numero = '241' where idcliente = 4;
insert into cliente (idcliente, nome) values (16, 'João');
delete from cliente where idcliente = 16;

-- 1. Insira os dados abaixo na tabela de clientes
insert into cliente (idcliente, nome, cpf, rg, data_nascimento, genero, profissao, municipio, uf)
values (16, 'Maicon', '12349596421', '1234', '1965-10-10', 'F', 'Empresário', 'Florianópolis', 'PR');

insert into cliente (idcliente, nome, rg, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
values (17, 'Getúlio', '4631', 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba', 'SC');

insert into cliente (idcliente, nome, genero, profissao, nacionalidade, numero, complemento)
values (18, 'Sandra', 'M', 'Professor', 'Italiana', '12', 'Bloco A');

-- 2. Altere os dados do cliente Maicon
	-- a. O CPF para 45390569432
	-- b. O gênero para M
	-- c. A nacionalidade para Brasileira
	-- d. O UF para SC
update cliente set cpf = 45390569432, genero = 'M', nacionalidade = 'Brasileira', uf = 'SC' where idcliente = 16;

-- 3. Altere os dados do cliente Getúlio
	-- a. A data de nascimento para 01/04/1978
	-- b. O gênero para M
update cliente set data_nascimento = '1978-04-01', genero = 'M' where idcliente = 17;

-- 4. Altere os dados da cliente Sandra
	-- a. O gênero para F
	-- b. A profissão para Professora
	-- c. O número para 123
update cliente set genero = 'F', profissao = 'Professora', numero = '123' where idcliente = 18;

-- 5. Apague o cliente Maicon
delete from cliente where idcliente = 16;

-- 6. Apague a cliente Sandra
delete from cliente where idcliente = 18;
