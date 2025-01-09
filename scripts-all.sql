create table cliente (
	idcliente integer not null,
	nome varchar(50) not null,
	cpf char(11),
	rg varchar(15),
	data_nascimento date,
	genero char(1),
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text,

	-- primary key
	constraint pk_cln_idcliente primary key (idcliente)
);

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (1,'Manoel','88828383821','32323','2001-01-30','M','Estudante','Brasileira','Rua Joaquim Nabuco','23','Casa','Cidade Nova','Porto Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (2,'Geraldo','12343299929','56565','1987-01-04','M','Engenheiro','Brasileira','Rua das Limas','200','Ap.','Centro','Poro Uniao','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (3,'Carlos','87732323227','55463','1967-10-01','M','Pedreiro','Brasileira','Rua das Laranjeiras','300','Apart.','Cto.','Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (4,'Adriana','12321222122','98777','1989-09-10','F','Jornalista','Brasileira','Rua das Limas','240','Casa','São Pedro','Porto Vitória','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (5,'Amanda','99982838828','28382','1991-03-04','F','Jorn.','Italiana','Av. Central','100',null,'São Pedro','General Carneiro','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (6,'Ângelo','99982828181','12323','2000-01-01','M','Professor','Brasileiro','Av. Beira Mar','300',null,'Ctr.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (7,'Anderson',null,null,null,'M','Prof.','Italiano','Av. Brasil','100','Apartamento','Santa Rosa','Rio de Janeiro','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (8,'Camila','9998282328',null,'2001-10-10','F','Professora','Norte americana','Rua Central','4333',null,'Centro','Uberlândia','MG');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (9,'Cristiano',null,null,null,'M','Estudante','Alemã','Rua do Centro','877','Casa','Centro','Porto Alegre','RS');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (10,'Fabrício','8828282828','32323',null,'M','Estudante','Brasileiro',null,null,null, null,'PU','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (11,'Fernanda',null,null,null,'F',null,'Brasileira',null,null,null,null,'Porto União','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (12,'Gilmar','88881818181','888','2000-02-10','M','Estud.','Brasileira',null,null,null,'C. Nova', 'Canoinhas','SC');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (13,'Diego','1010191919','111989',null,'M','Professor','Alemão','Rua Central','455','Casa','Cidade N.','São Paulo','SP');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (14,'Jeferson',null,null,'1983-07-01','M',null,'Brasileiro',null,null,null,null,'União da Vitória','PR');

insert into cliente(idcliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, UF)
values (15,'Jessica',null,null,null,'F','Estudante',null,null,null,null,null,'União da Vitória','PR');

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

-- Tabelas de padronização de dados comuns

create table profissao (
	idprofissao integer not null,
	nome varchar(30) not null,

	constraint pk_prf_idprofissao primary key (idprofissao),
	constraint un_prf_nome unique (nome)
);

insert into profissao (idprofissao, nome) values (1, 'Estudante');
insert into profissao (idprofissao, nome) values (2, 'Engenheiro');
insert into profissao (idprofissao, nome) values (3, 'Pedreiro');
insert into profissao (idprofissao, nome) values (4, 'Jornalista');
insert into profissao (idprofissao, nome) values (5, 'Professor');

select * from profissao;

create table nacionalidade (
	idnacionalidade integer not null,
	nome varchar(30) not null,

	constraint pk_ncn_idnacionalidade primary key (idnacionalidade),
	constraint un_ncn_nome unique (nome)
);

select nacionalidade from cliente;

insert into nacionalidade (idnacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade (idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade (idnacionalidade, nome) values (3, 'Norte-americana');
insert into nacionalidade (idnacionalidade, nome) values (4, 'Alemã');

select * from nacionalidade;

create table complemento (
	idcomplemento integer not null,
	nome varchar(30) not null,

	constraint pk_cpl_idcomplemento primary key (idcomplemento),
	constraint un_cpl_nome unique (nome)
);

insert into complemento (idcomplemento, nome) values (1, 'Casa');
insert into complemento (idcomplemento, nome) values (2, 'Apartamento');

select * from complemento;

create table bairro (
	idbairro integer not null,
	nome varchar(30) not null,

	constraint pk_brr_idbairro primary key (idbairro),
	constraint un_brr_nome unique (nome)
);

insert into bairro (idbairro, nome) values (1, 'Cidade Nova');
insert into bairro (idbairro, nome) values (2, 'Centro');
insert into bairro (idbairro, nome) values (3, 'São Pedro');
insert into bairro (idbairro, nome) values (4, 'Santa Rosa');

select * from bairro;

-- Foreign keys
select * from cliente;

alter table cliente rename column profissao to idprofissao;
-- alter table cliente alter column idprofissao type integer; -- ERROR:  column "idprofissao" cannot be cast automatically to type integer
-- Estudante -> 1, 9, 10, 12, 15, 17
-- Engenheiro -> 2
-- Pedreiro -> 3
-- Jornalista -> 4, 5
-- Professor -> 6, 7, 8, 13
-- Null -> 11,14
alter table cliente drop idprofissao;
alter table cliente add idprofissao integer; -- foreign key
alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao);

update cliente set idprofissao = 1 where idcliente in (1, 9, 10, 12, 15, 17);
update cliente set idprofissao = 2 where idcliente = 2;
update cliente set idprofissao = 3 where idcliente = 3;
update cliente set idprofissao = 4 where idcliente in (4, 5);
update cliente set idprofissao = 5 where idcliente in (6, 7, 8, 13);

select * from profissao;
-- delete from profissao where idprofissao = 1; -- ERROR:  update or delete on table "profissao" violates foreign key constraint "fk_cln_idprofissao" on table "cliente"
insert into profissao (idprofissao, nome) values (10, 'Teste');
delete from profissao where idprofissao = 10;

select * from cliente;
alter table cliente drop nacionalidade;
alter table cliente add idnacionalidade integer;
alter table cliente add constraint fk_cln_idnacionalidade foreign key (idnacionalidade) references nacionalidade (idnacionalidade);
select * from nacionalidade;
update cliente set idnacionalidade = 1 where idcliente in (1,2,3,4,6,10,11,14);
update cliente set idnacionalidade = 2 where idcliente in (5,7);
update cliente set idnacionalidade = 3 where idcliente = 8;
update cliente set idnacionalidade = 4 where idcliente in (9,13);

select * from cliente;
alter table cliente drop complemento;
alter table cliente add idcomplemento integer;
alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) references complemento (idcomplemento);
select * from complemento;
update cliente set idcomplemento = 1 where idcliente in (1,4,9,13);
update cliente set idcomplemento = 2 where idcliente in (2,3,7);

select * from cliente;
alter table cliente drop bairro;
alter table cliente add idbairro integer;
alter table cliente add constraint fk_cln_idbairro foreign key (idbairro) references bairro (idbairro);

select * from bairro;
update cliente set idbairro = 1 where idcliente in (1, 12, 13);
update cliente set idbairro = 2 where idcliente in (2, 3, 6, 8, 9);
update cliente set idbairro = 3 where idcliente in (4,5);
update cliente set idbairro = 4 where idcliente = 7;

select * from cliente;
create table uf (
	iduf integer not null,
	nome varchar(30) not null,
	sigla char(2) not null,

	constraint pk_ufd_idunidade_federacao primary key (iduf),
	constraint un_ufd_nome unique (nome),
	constraint un_ufd_sigla unique (sigla)
);

insert into uf (iduf, nome, sigla) values (1, 'Santa Catarina', 'SC');
insert into uf (iduf, nome, sigla) values (2, 'Paraná', 'PR');
insert into uf (iduf, nome, sigla) values (3, 'São Paulo', 'SP');
insert into uf (iduf, nome, sigla) values (4, 'Minas Gerais', 'MG');
insert into uf (iduf, nome, sigla) values (5, 'Rio Grande do Sul', 'RS');
insert into uf (iduf, nome, sigla) values (6, 'Rio de Janeiro', 'RJ');
select * from uf;

create table municipio (
	idmunicipio integer not null,
	nome varchar(30) not null,
	iduf integer not null,

	constraint pk_mnc_idmunicipio primary key (idmunicipio),
	constraint un_mnc_nome unique (nome),
	constraint fk_mnc_iduf foreign key (iduf) references uf (iduf)
);

insert into municipio (idmunicipio, nome, iduf) values (1, 'Porto União', 1);
insert into municipio (idmunicipio, nome, iduf) values (2, 'Canoinhas', 1);
insert into municipio (idmunicipio, nome, iduf) values (3, 'Porto Vitória', 2);
insert into municipio (idmunicipio, nome, iduf) values (4, 'General Carneiro', 2);
insert into municipio (idmunicipio, nome, iduf) values (5, 'São Paulo', 3);
insert into municipio (idmunicipio, nome, iduf) values (6, 'Rio de Janeiro', 6);
insert into municipio (idmunicipio, nome, iduf) values (7, 'Uberlândia', 4);
insert into municipio (idmunicipio, nome, iduf) values (8, 'Porto Alegre', 5);
insert into municipio (idmunicipio, nome, iduf) values (9, 'União da Vitória', 2);
select * from municipio;

select * from cliente;
alter table cliente drop municipio;
alter table cliente drop uf;
alter table cliente add idmunicipio integer;
alter table cliente add constraint fk_cliente_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio);

update cliente set idmunicipio = 1 where idcliente in (1, 2, 10, 11);
update cliente set idmunicipio = 2 where idcliente in (3, 12);
update cliente set idmunicipio = 3 where idcliente = 4;
update cliente set idmunicipio = 4 where idcliente in (5);
update cliente set idmunicipio = 5 where idcliente in (6, 13);
update cliente set idmunicipio = 6 where idcliente in (7);
update cliente set idmunicipio = 7 where idcliente in (8);
update cliente set idmunicipio = 8 where idcliente in (9);
update cliente set idmunicipio = 9 where idcliente in (14, 15);
select * from cliente;

-- Tabelas fornecedor, vendedor, transportadora, produto
create table fornecedor (
	idfornecedor integer not null,
	nome varchar(50) not null,

	constraint pk_frn_idfornecedor primary key (idfornecedor),
	constraint un_frn_nome unique (nome)
);

create table vendedor (
	idvendedor integer not null,
	nome varchar(50) not null,

	constraint pk_vnd_idvendedor primary key (idvendedor),
	constraint un_vnd_nome unique (nome)
);

create table transportadora (
	idtransportadora integer not null,
	idmunicipio integer,
	nome varchar (50) not null,
	logradouro varchar(50),
	numero varchar(10),

	constraint pk_trn_idtransportadora primary key (idtransportadora),
	constraint fk_trn_idmunicipio foreign key (idmunicipio) references municipio (idmunicipio),
	constraint un_trn_nome unique (nome)
);

create table produto (
	idproduto integer not null,
	idfornecedor integer not null,
	nome varchar(50) not null,
	valor float not null,

	constraint pk_prd_idproduto primary key (idproduto),
	constraint fk_prd_idfornecedor foreign key (idfornecedor) references fornecedor (idfornecedor)

);

insert into vendedor (idvendedor, nome) values (1, 'André');
insert into vendedor (idvendedor, nome) values (2, 'Alisson');
insert into vendedor (idvendedor, nome) values (3, 'José');
insert into vendedor (idvendedor, nome) values (4, 'Ailton');
insert into vendedor (idvendedor, nome) values (5, 'Maria');
insert into vendedor (idvendedor, nome) values (6, 'Suelem');
insert into vendedor (idvendedor, nome) values (7, 'Aline');
insert into vendedor (idvendedor, nome) values (8, 'Silvana');

insert into fornecedor (idfornecedor, nome) values (1, 'Cap. Computadores');
insert into fornecedor (idfornecedor, nome) values (2, 'AA. Computadores');
insert into fornecedor (idfornecedor, nome) values (3, 'BB. Máquinas');

insert into transportadora (idtransportadora, idmunicipio, nome, logradouro, numero)
values (1, 9, 'BS. Transportes', 'Rua das Limas', '01');

insert into transportadora (idtransportadora, idmunicipio, nome)
values (2, 5, 'União Transportes');

insert into produto (idproduto, idfornecedor, nome, valor) values (1, 1, 'Microcomputador', 800);
insert into produto (idproduto, idfornecedor, nome, valor) values (2, 1, 'Monitor', 500);
insert into produto (idproduto, idfornecedor, nome, valor) values (3, 2, 'Placa mãe', 200);
insert into produto (idproduto, idfornecedor, nome, valor) values (4, 2, 'HD', 150);
insert into produto (idproduto, idfornecedor, nome, valor) values (5, 2, 'Placa de vídeo', 200);
insert into produto (idproduto, idfornecedor, nome, valor) values (6, 3, 'Memória RAM', 100);
insert into produto (idproduto, idfornecedor, nome, valor) values (7, 1, 'Gabinete', 35);

select * from produto;

create table pedido (
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer,
	idvendedor integer not null,
	data_pedido date not null,
	valor float not null,

	constraint pk_pdd_idpedido primary key (idpedido),
	constraint fk_pdd_idcliente foreign key (idcliente) references cliente (idcliente),
	constraint fk_pdd_idtransportadora foreign key (idtransportadora) references transportadora (idtransportadora),
	constraint fk_pdd_idvendedor foreign key (idvendedor) references vendedor (idvendedor)
);

select * from cliente;
select * from transportadora;
select * from vendedor;
update cliente set nome = 'Manoel' where idcliente = 1;

insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (1, '2008-04-01', 1300, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (2, '2008-04-01', 500, 1, 1, 1);
insert into pedido (idpedido, data_pedido, valor, idcliente, idtransportadora, idvendedor)
values (3, '2008-04-02', 300, 11, 2, 5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (4,'2008-04-05',1000,8,1,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (5,'2008-04-06',200,9,2,6);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (6,'2008-04-06',1985,10,1,6);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (7,'2008-04-06',800,3,1,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (8,'2008-04-06',175,3,null,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (9,'2008-04-07',1300,12,null,8);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (10,'2008-04-10',200,6,1,8);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (11,'2008-04-15',300,15,2,1);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (12,'2008-04-20',300,15,2,5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (13,'2008-04-20',350,9,1 ,7);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (14,'2008-04-23',300,2,1,5);
Insert into pedido (idpedido, data_pedido, valor, idcliente,idtransportadora, idvendedor) values (15,'2008-04-25',200,11,null,5);

select * from pedido;

-- Tabela pedido_produto com chave primária composta
-- idpedido e idproduto fazem parte da chave primária,
-- ao mesmo tempo que apontam como chaves estrangeiras para outras tabelas
-- garantindo unicidade da tupla.
create table pedido_produto (
	idpedido integer not null,
	idproduto integer not null,
	quantidade integer not null,
	valor_unitario float not null,

	constraint pk_pdp_idpedidoproduto primary key (idpedido, idproduto),
	constraint fk_pdp_idpedido foreign key (idpedido) references pedido (idpedido),
	constraint fk_pdp_idproduto foreign key (idproduto) references produto (idproduto)
);

select * from produto;
select * from pedido_produto;

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(1, 1, 1, 800);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(1, 2, 1, 500);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values
(2, 2, 1, 500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (3,4,2,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (4,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (5,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,1,2,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,7,1,35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (6,4,1,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (7,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (8,7,5,35);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9,1,1,800);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (9,2,1,500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (10,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11,5,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (11,6,1,100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (12,2,1,500);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13,3,1,200);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (13,4,1,150);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (14,6,3,100);
Insert into pedido_produto (idpedido,idproduto,quantidade,valor_unitario) values (15,3,1,200);

-- 1. Somente o nome de todos os vendedores em ordem alfabética.
select nome from vendedor order by nome asc;

-- 2. Os produtos que o preço seja maior que R$200,00, em ordem crescente pelo preço.
select nome, valor from produto where valor > 200 order by valor asc;

-- 3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto.
select nome, valor, valor + ((valor * 10)/100) as valor_reajustado from produto order by nome asc;

-- 4. Os municípios do Rio Grande do Sul.
select * from municipio where iduf = 5;

-- 5. Os pedidos feitos entre 10/04/2008 e 25/04/2008 ordenado pelo valor.
select * from pedido where data_pedido between '2008-04-10' and '2008-04-25' order by valor asc;

-- 6. Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00.
select * from pedido where valor between 1000 and 1500;
-- select * from pedido where valor >= 1000 and valor <= 1500;

-- 7. Os pedidos que o valor não esteja entre R$100,00 e R$500,00.
select * from pedido where valor not between 100 and 500;
-- select * from pedido where not (valor >= 100 and valor <= 500);

-- 8. Os pedidos do vendedor André ordenado pelo valor em ordem decrescente.
select * from pedido where idvendedor = 1 order by valor desc;

-- 9. Os pedidos do cliente Manoel ordenado pelo valor em ordem crescente.
select * from pedido where idcliente = 1 order by valor asc;

-- 10. Os pedidos da cliente Jéssica que foram feitos pelo vendedor André.
select * from pedido where idcliente = 15 and idvendedor = 1;

-- 11. Os pedidos que foram transportados pela transportadora União Transportes.
select * from pedido where idtransportadora = 2;

-- 12. Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
select * from pedido where idvendedor in (5, 7);
-- select * from pedido where idvendedor = 5 or idvendedor = 7;

-- 13. Os clientes que moram em União da Vitória ou Porto União.
select * from cliente where idmunicipio in (1, 9);

-- 14. Os clientes que não moram em União da Vitória e nem em Porto União.
select * from cliente where idmunicipio not in (1, 9);

-- 15. Os clientes que não informaram o logradouro.
select * from cliente where logradouro is null;

-- 16. Os clientes que moram em avenidas.
select * from cliente where logradouro like 'Av%';

-- 17. Os vendedores que o nome começa com a letra S.
select * from vendedor where nome like 'S%';

-- 18. Os vendedores que o nome termina com a letra A.
select * from vendedor where nome like '%a';

-- 19. Os vendedores que o nome não começa com a letra A.
select * from vendedor where nome not like 'A%';

-- 20. Os municípios que começam com a letra P e são de Santa Catarina.
select * from municipio where nome like 'P%' and iduf = 1;

-- 21. As transportadoras que informaram o endereço.
select * from transportadora where logradouro is not null;

-- 22. Os itens do pedido 01.
select * from pedido_produto where idpedido = 1;

-- 23. Os itens do pedido 06 ou do pedido 10.
select * from pedido_produto where idpedido in (6, 10);

-- Funções agregadas
-- avg = average (média)
select avg(valor) from pedido;

-- count = contagem a partir de um campo not null
select count(idmunicipio) from municipio;
-- count = contagem a partir de * (row)
select count(*) from municipio;

select * from transportadora;
-- count = contagem a partir de um campo null ou não (não considera contagem caso campo esteja nulo)
select count(logradouro) from transportadora;
select count(idtransportadora) from transportadora;

-- count = contagem com filtro
select * from municipio;
select count(idmunicipio) from municipio where iduf = 2;

-- min = valor mínimo de uma coluna, a partir de um rollset
-- max = valor máximo de uma coluna, a partir de um rollset
select * from pedido;
select max(valor) from pedido;

select min(valor), max(valor) from pedido;

-- sum = somatório, a partir de um critério de agrupamento
select idcliente, sum(valor) from pedido group by idcliente;

-- somatório com agrupamento e filtro "having" (necessário para funções agregadas)
select idcliente, sum(valor) from pedido group by idcliente having sum(valor) > 500;

-- 33. EXERCÍCIOS
-- 1. A média dos valores de vendas dos vendedores que venderam mais que R$ 200,00.
select idvendedor, avg(valor) from pedido group by idvendedor having avg(valor) > 200;

-- 2. Os vendedores que venderam mais que R$ 1500,00.
select idvendedor, sum(valor) from pedido group by idvendedor having sum(valor) > 1500;

-- 3. O somatório das vendas de cada vendedor.
select idvendedor, sum(valor) from pedido group by idvendedor;

-- 4. A quantidade de municípios.
select count(idmunicipio) from municipio;

-- 5. A quantidade de municípios que são do Paraná ou de Santa Catarina.
select count(idmunicipio) from municipio where iduf in (1, 2);

-- 6. A quantidade de municípios por estado.
select iduf, count(idmunicipio) from municipio group by iduf;

-- 7. A quantidade de clientes que informaram o logradouro.
select count(idcliente) from cliente where logradouro is not null;

-- 8. A quantidade de clientes por município.
select idmunicipio, count(idcliente) from cliente group by idmunicipio;

-- 9. A quantidade de fornecedores.
select count(idfornecedor) from fornecedor;

-- 10. A quantidade de produtos por fornecedor.
select idfornecedor, count(idproduto) from produto group by idfornecedor;

-- 11. A média de preços dos produtos do fornecedor Cap. Computadores.
select avg(valor) from produto where idfornecedor = 1;

-- 12. O somatório dos preços de todos os produtos.
select sum(valor) from produto;

-- 13. O nome do produto e o preço somente do produto mais caro.
select nome, valor from produto order by valor desc limit 1;

-- 14. O nome do produto e o preço somente do produto mais barato.
select nome, valor from produto order by valor asc limit 1;

-- 15. A média de preço de todos os produtos.
select avg(valor) from produto;

-- 16. A quantidade de transportadoras.
select count(idtransportadora) from transportadora;

-- 17. A média do valor de todos os pedidos.
select avg(valor) from pedido;

-- 18. O somatório do valor do pedido agrupado por cliente.
select idcliente, sum(valor) from pedido group by idcliente;

-- 19. O somatório do valor do pedido agrupado por vendedor.
select idvendedor, sum(valor) from pedido group by idvendedor;

-- 20. O somatório do valor do pedido agrupado por transportadora.
select idtransportadora, sum(valor) from pedido group by idtransportadora;

-- 21. O somatório do valor do pedido agrupado pela data.
select data_pedido, sum(valor) from pedido group by data_pedido;

-- 22. O somatório do valor do pedido agrupado por cliente, vendedor e transportadora.
select idcliente, idvendedor, idtransportadora, sum(valor) from pedido group by idcliente, idvendedor, idtransportadora;

-- 23. O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que seja maior que R$ 200,00.
select sum(valor) from pedido where data_pedido between '2008-04-01' and '2009-12-10' and valor > 200;

-- 24. A média do valor do pedido do vendedor André.
select avg(valor) from pedido where idvendedor = 1;

-- 25. A média do valor do pedido da cliente Jéssica.
select avg(valor) from pedido where idcliente = 15;

-- 26. A quantidade de pedidos transportados pela transportadora BS. Transportes.
select count(idpedido) from pedido where idtransportadora = 1;

-- 27. A quantidade de pedidos agrupados por vendedor.
select idvendedor, count(idpedido) from pedido group by idvendedor;

-- 28. A quantidade de pedidos agrupados por cliente.
select idcliente, count(idpedido) from pedido group by idcliente;

-- 29. A quantidade de pedidos entre 15/04/2008 e 25/04/2008.
select count(idpedido) from pedido where data_pedido between '2008-04-15' and '2008-04-25';

-- 30. A quantidade de pedidos que o valor seja maior que R$ 1.000,00.
select count(idpedido) from pedido where valor > 1000;

-- 31. A quantidade de microcomputadores vendida.
select sum(quantidade) from pedido_produto where idproduto = 1;

-- 32. A quantidade de produtos vendida agrupado por produto.
select idproduto, sum(quantidade) from pedido_produto group by idproduto;

-- 33. O somatório do valor dos produtos dos pedidos, agrupado por pedido.
select idpedido, sum(valor_unitario) from pedido_produto group by idpedido;

-- 34. A quantidade de produtos agrupados por pedido.
select idpedido, sum(quantidade) from pedido_produto group by idpedido;

-- 35. O somatório dos valores unitários de todos os produtos. (O somatório dos valores unitários de todos os produtos)
select sum(valor_unitario) from pedido_produto;

-- 36. A média dos produtos do pedido 6.
select avg(valor_unitario) from pedido_produto where idpedido = 6;

-- 37. O valor do maior produto do pedido.
select idpedido, max(valor_unitario) from pedido_produto group by idpedido;
-- select max(valor_unitario) from pedido_produto;

-- 38. O valor do menor produto do pedido.
select idpedido, min(valor_unitario) from pedido_produto group by idpedido;
-- select min(valor_unitario) from pedido_produto;

-- 39. O somatório da quantidade de produtos por pedido.
select idpedido, sum(quantidade) from pedido_produto group by idpedido;

-- 40. O somatório da quantidade de todos os produtos do pedido. ? valor?
select sum(quantidade) from pedido_produto;

-- Relacionamento com joins

-- left outer join
-- tabela base à esquerda
select
	cln.nome as cliente,
	prf.nome as profissao
from
	cliente as cln
left outer join
	profissao as prf on cln.idprofissao = prf.idprofissao;

-- inner join
-- obriga que exista o relacionamento
select
	cln.nome as cliente,
	prf.nome as profissao
from
	cliente as cln
inner join
	profissao as prf on cln.idprofissao = prf.idprofissao;

-- right outer join
-- tabela base à direita
select
	cln.nome as cliente,
	prf.nome as profissao
from
	cliente as cln
right outer join
	profissao as prf on cln.idprofissao = prf.idprofissao;

-- Exercícios - joins
-- 1. O nome do cliente, a profissão, a nacionalidade, o logradouro, o número, o complemento, o bairro, o município e a unidade de federação.
select
	cliente.nome as cliente,
	profissao.nome as profissao,
	nacionalidade.nome as nacionalidade,
	cliente.logradouro,
	cliente.numero,
	complemento.nome as complemento,
	bairro.nome as bairro,
	municipio.nome as municipio,
	uf.nome as estado,
	uf.sigla
from
	cliente
left outer join
	profissao on cliente.idprofissao = profissao.idprofissao
left outer join
	nacionalidade on cliente.idnacionalidade = nacionalidade.idnacionalidade
left outer join
	complemento on cliente.idcomplemento = complemento.idcomplemento
left outer join
	bairro on cliente.idbairro = bairro.idbairro
left outer join
	municipio on cliente.idmunicipio = municipio.idmunicipio
left outer join
	uf on municipio.iduf = uf.iduf;

-- 2. O nome do produto, o valor e o nome do fornecedor.
select
	produto.nome as produto,
	produto.valor,
	fornecedor.nome as fornecedor
from
	produto
left outer join
	fornecedor on produto.idfornecedor = fornecedor.idfornecedor;

-- 3. O nome da transportadora e o município.
select
	transportadora.nome as transportadora,
	municipio.nome as municipio
from
	transportadora
left outer join
	municipio on transportadora.idmunicipio = municipio.idmunicipio;

-- 4. A data do pedido, o valor, o nome do cliente, o nome da transportadora e o nome do vendedor.
select
	pedido.data_pedido,
	pedido.valor,
	cliente.nome as cliente,
	transportadora.nome as transportadora,
	vendedor.nome as vendedor
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
left outer join
	transportadora on pedido.idtransportadora = transportadora.idtransportadora
left outer join
	vendedor on pedido.idvendedor = vendedor.idvendedor;

-- 5. O nome do produto, a quantidade e o valor unitário dos produtos do pedido.
select
	produto.nome as produto,
	pedido_produto.quantidade,
	pedido_produto.valor_unitario
from
	pedido_produto
left outer join
	produto on pedido_produto.idproduto = produto.idproduto;

-- 6. O nome dos clientes e a data do pedido dos clientes que fizeram algum pedido (ordenado pelo nome do cliente).
select
	cliente.nome as cliente,
	pedido.data_pedido
from
	cliente
inner join
	pedido on pedido.idcliente = cliente.idcliente
order by cliente asc;

-- 7. O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito pedido (ordenado pelo nome do cliente).
select
	cliente.nome as cliente,
	pedido.data_pedido
from
	cliente
left outer join
	pedido on pedido.idcliente = cliente.idcliente
order by cliente asc;

-- 8. O nome da cidade e a quantidade de clientes que moram naquela cidade.
select
	municipio.nome as municipio,
	count(cliente.idcliente) as quantidade
from
	cliente
inner join
	municipio on cliente.idmunicipio = municipio.idmunicipio
group by municipio.nome;

-- 9. O nome do fornecedor e a quantidade de produtos de cada fornecedor.
/*select
	fornecedor.nome,
	count(produto.idproduto)
from
	fornecedor
left outer join
	produto on fornecedor.idfornecedor = produto.idfornecedor
group by fornecedor.nome;*/
select
	fornecedor.nome as fornecedor,
	count(produto.idproduto)
from
	produto
left outer join
	fornecedor on produto.idfornecedor = fornecedor.idfornecedor
group by fornecedor.nome;

-- 10.O nome do cliente e o somatório do valor do pedido (agrupado por cliente).
select
	cliente.nome as cliente,
	sum(pedido.valor) as total
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by cliente.nome;

-- 11.O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor).
select
	vendedor.nome as vendedor,
	sum(pedido.valor) as total
from
	pedido
left outer join
	vendedor on pedido.idvendedor = vendedor.idvendedor
group by vendedor.nome;

-- 12.O nome da transportadora e o somatório do valor do pedido (agrupado por transportadora).
select
	transportadora.nome as transportadora,
	sum(pedido.valor) as total
from
	pedido
inner join
	transportadora on pedido.idtransportadora = transportadora.idtransportadora
group by transportadora.nome;

-- 13.O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente).
select
	cliente.nome as cliente,
	count(pedido.idcliente) as total
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by cliente.nome;

-- 14.O nome do produto e a quantidade vendida (agrupado por produto).
select
	produto.nome as produto,
	sum(pedido_produto.quantidade) as total
from
	pedido_produto
left outer join
	produto on pedido_produto.idproduto = produto.idproduto
group by produto.nome;

-- 15.A data do pedido e o somatório do valor dos produtos do pedido (agrupado pela data do pedido).
select
	pedido.data_pedido,
	sum(pedido_produto.valor_unitario) as total
from
	pedido_produto
left outer join
	pedido on pedido_produto.idpedido = pedido.idpedido
group by pedido.data_pedido;

-- 16.A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido).
select
	pedido.data_pedido,
	sum(pedido_produto.quantidade) as quantidade
from
	pedido_produto
left outer join
	pedido on pedido_produto.idpedido = pedido.idpedido
group by pedido.data_pedido;

-- Comandos adicionais
select * from pedido;

-- extract = extrai determinado valor de um campo
-- extract(field from ...)
select
	data_pedido,
	extract(day from data_pedido),
	extract(month from data_pedido),
	extract(year from data_pedido)
from
	pedido;

-- substring(coluna, inicio, tamanho)
-- substring(coluna, inicio)
select nome, substring(nome from 1 for 5), substring(nome, 2) from cliente;

-- upper = transforma para UPPER CASE
select nome, upper(nome) from cliente;

-- coalesce = fornece um valor padrão, caso o campo seja nulo
-- coalesce(coluna, valor_padrao)
select nome, cpf, coalesce(cpf, 'Não informado') from cliente;

-- estrutura case, para decisão de faixa de valores conhecidos
-- case <valor> when <condicao> then <resultado>
select
	case sigla
		when 'PR' then 'Paraná'
		when 'SC' then 'Santa Catarina'
	else 'Outros'
	end as uf
from
	uf;

-- Exercícios
-- 1. O nome do cliente e somente o mês de nascimento.
-- Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select nome, coalesce(extract(month from data_nascimento), 0) from cliente;

-- 2. O nome do cliente e somente o nome do mês de nascimento (Janeiro, Fevereiro etc).
-- Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select
	nome,
	case extract(month from data_nascimento)
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
	cliente;

-- 3. O nome do cliente e somente o ano de nascimento.
-- Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
select nome, coalesce(extract(year from data_nascimento), 0) from cliente;

-- 4. O caractere 5 até o caractere 10 de todos os municípios.
select substring(nome, 5, 5) from municipio;

-- 5. O nome de todos os municípios em letras maiúsculas.
select upper(nome) from municipio;

-- 6. O nome do cliente e o gênero. Caso seja M mostrar “Masculino”, senão mostrar “Feminino”.
select
	nome,
	case genero
		when 'M' then 'Masculino'
	else 'Feminino'
	end as genero
from cliente;

-- 7. O nome do produto e o valor.
-- Caso o valor seja maior do que R$ 500,00 mostrar a mensagem “Acima de 500”,
-- caso contrário, mostrar a mensagem “Abaixo de 500”.
select
	nome,
	valor,
	-- sintaxe do case com verificação no when
	case
		when valor >= 500 then 'Acima igual a 500'
	else 'Abaixo de 500'
	end as faixa
from
	produto;

-- Subconsultas

-- Selecionar a data do pedido e o valor onde o valor seja maior que a média dos 
-- valores de todos os pedidos
select
	data_pedido,
	valor
from
	pedido
where
	valor > (select avg(valor) from pedido); -- utilizando subconsulta como filtro

-- Exemplo com count
select
	pedido.data_pedido,
	pedido.valor,
	-- utilizando subsconsulta como totalizador de outra tabela, relacionando a partir de chaves primária/estrangeira
	(select sum(quantidade) from pedido_produto where pedido_produto.idpedido = pedido.idpedido) as total
from
	pedido;

-- Exemplo com update
-- Aumenta o valor em 5% nos pedidos em que o valor é maior que a média dos pedidos
select * from pedido;
update pedido set valor = valor + ((valor * 5) / 100)
where valor > (select avg(valor) from pedido);
select * from pedido;

-- Exercícios

-- 1. O nome dos clientes que moram na mesma cidade do Manoel. Não deve ser mostrado o Manoel.
select * from cliente;
select
	nome
from
	cliente
where
	idmunicipio = (select idmunicipio from cliente where idcliente = 1) and idcliente <> 1;

-- 2. A data e o valor dos pedidos que o valor do pedido seja menor que a média de todos os pedidos.
select
	data_pedido,
	valor
from
	pedido
where
	valor < (select avg(valor) from pedido);

-- 3. A data,o valor, o cliente e o vendedor dos pedidos que possuem 2 ou mais produtos. (quantidade ou produtos diferentes?)
select
	pedido.data_pedido,
	pedido.valor,
	cliente.nome as cliente,
	vendedor.nome as vendedor
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
left outer join
	vendedor on pedido.idvendedor = vendedor.idvendedor
where
	-- (select count(idpedido) from pedido_produto where pedido_produto.idpedido = pedido.idpedido) >= 2;
	(select sum(quantidade) from pedido_produto where pedido_produto.idpedido = pedido.idpedido) >= 2;

-- 4. O nome dos clientes que moram na mesma cidade da transportadora BSTransportes.
select
	nome
from
	cliente
where
	idmunicipio = (select idmunicipio from transportadora where idtransportadora = 1);

-- 5. O nome do cliente e o município dos clientes que estão localizados no mesmo município de qualquer uma das transportadoras.
select
	cliente.nome as cliente,
	municipio.nome as municipio
from
	cliente
left outer join
	municipio on cliente.idmunicipio = municipio.idmunicipio
where
	cliente.idmunicipio in (select distinct(idmunicipio) from transportadora);

-- pode se utilizar distinct para não repetir valores desnecessários ou no filtro
select distinct(idmunicipio) from cliente;

-- 6. Atualizar o valor do pedido em 5% para os pedidos que o somatório do valor total dos produtos daquele pedido seja maior que a média do valor total
update
	pedido
set
	valor = valor + ((valor * 5) / 100)
where
	(select sum(valor_unitario) from pedido_produto where pedido_produto.idpedido = pedido.idpedido) >
	(select avg(valor_unitario) from pedido_produto);

-- 7. O nome do cliente e a quantidade de pedidos feitos pelo cliente.
select
	nome,
	(select count(idpedido) from pedido where pedido.idcliente = cliente.idcliente) as total
from
	cliente;

-- 8. Para revisar, refaça o exercício anterior (número 07) utilizando group by e mostrando somente os clientes que fizeram pelo menos um pedido.
select
	cliente.nome as nome,
	count(pedido.idpedido) as total
from
	pedido
left outer join
	cliente on pedido.idcliente = cliente.idcliente
group by cliente.nome;

-- Views
-- Visões de tabelas, para não repetir joins

-- Maneira para alterar uma view, é excluindo e criando novamente
drop view cliente_profissao;

create view cliente_profissao as
select
	cliente.nome as cliente,
	cliente.cpf,
	profissao.nome as profissao
from
	cliente
left outer join
	profissao on cliente.idprofissao = profissao.idprofissao;

select cliente from cliente_profissao where profissao = 'Professor';
select * from cliente_profissao;

-- Exercícios

/*
1. O nome, a profissão, a nacionalidade, o complemento, o município, a unidade de federação, o bairro, o CPF,o RG, 
a data de nascimento, o gênero (mostrar “Masculino” ou “Feminino”), o logradouro, o número e as observações dos clientes.
*/
drop view cliente_geral;
create view cliente_dados as
select
	cliente.nome as cliente,
	profissao.nome as profissao,
	nacionalidade.nome as nacionalidade,
	cliente.logradouro,
	cliente.numero,
	complemento.nome as complemento,
	bairro.nome as bairro,
	municipio.nome as municipio,
	uf.nome as estado,
	uf.sigla,
	cliente.cpf as cliente_cpf,
	cliente.rg as cliente_rg,
	cliente.data_nascimento as cliente_data_nascimento,
	case cliente.genero
		when 'M' then 'Masculino'
		when 'F' then 'Feminino'
	end as cliente_genero,
	cliente.observacoes as cliente_observacoes
from
	cliente
left outer join
	profissao on cliente.idprofissao = profissao.idprofissao
left outer join
	nacionalidade on cliente.idnacionalidade = nacionalidade.idnacionalidade
left outer join
	complemento on cliente.idcomplemento = complemento.idcomplemento
left outer join
	bairro on cliente.idbairro = bairro.idbairro
left outer join
	municipio on cliente.idmunicipio = municipio.idmunicipio
left outer join
	uf on municipio.iduf = uf.iduf;

select * from cliente_dados;

-- 2. O nome do município e o nome e a sigla da unidade da federação.
drop view municipio_uf;
create view municipio_uf as
select
	municipio.nome as municipio,
	uf.nome as unidade_federacao,
	uf.sigla
from
	municipio
left outer join
	uf on municipio.iduf = uf.iduf;

select * from municipio_uf;

-- 3. O nome do produto, o valor e o nome do fornecedor dos produtos.
drop view produto_fonecedor;
create view produto_fonecedor as
select
	produto.nome as produto,
	produto.valor,
	fornecedor.nome as fornecedor
from
	produto
left outer join
	fornecedor on produto.idfornecedor = fornecedor.idfornecedor;

select * from produto_fonecedor;

-- 4. O nome da transportadora, o logradouro, o número, o nome da unidade de federação e a sigla da unidade de federação das transportadoras.
drop view transportadora_uf;
create view transportadora_uf as
select
	transportadora.nome as transportadora,
	transportadora.logradouro,
	transportadora.numero,
	uf.nome as unidade_federacao,
	uf.sigla
from
	transportadora
left outer join
	municipio on transportadora.idmunicipio = municipio.idmunicipio
left outer join
	uf on municipio.iduf = uf.iduf;

select * from transportadora_uf;

-- 5. A data do pedido, o valor, o nome da transportadora, o nome do cliente e o nome do vendedor dos pedidos.
drop view pedido_dados;
create view pedido_dados as
select
	pedido.data_pedido,
	pedido.valor,
	transportadora.nome as transportadora,
	cliente.nome as cliente,
	vendedor.nome as vendedor
from
	pedido
left outer join
	transportadora on pedido.idtransportadora = transportadora.idtransportadora
left outer join
	cliente on pedido.idcliente = cliente.idcliente
left outer join
	vendedor on pedido.idvendedor = vendedor.idvendedor;

select * from pedido_dados;

-- 6. O nome do produto, a quantidade, o valor unitário e o valor total dos produtos do pedido.
drop view produto_pedido;
create view produto_pedido as
select
	produto.nome as produto,
	pedido_produto.quantidade,
	pedido_produto.valor_unitario,
	pedido.valor as valor_total
from
	pedido_produto
left outer join
	produto on pedido_produto.idproduto = produto.idproduto
left outer join
	pedido on pedido_produto.idpedido = pedido.idpedido;

select * from produto_pedido;

-- Campos autoincremento
-- sequences controlam o incremento para cada chave primária
-- serial/bigserial = já cria sequence para controle de autoincremento

create table exemplo (
	idexemplo serial not null,
	nome varchar(50) not null,

	constraint pk_exemplo_idexemplo primary key (idexemplo)
);

-- Bairro
select max(idbairro) + 1 from bairro; -- para obter o id máximo atual

-- cria sequência
create sequence bairro_id_seq minvalue 5;

-- associa geração de valor para idbairro, utilizando função nextval() do PostgreSQL
alter table bairro alter idbairro set default nextval('bairro_id_seq');

-- associa a sequência a um proprietário (tabela.campo)
alter sequence bairro_id_seq owned by bairro.idbairro;

-- insert into bairro (nome) values ('Teste 1');
-- insert into bairro (nome) values ('Teste 2');
-- select * from bairro;

-- Exercícios sequences – auto incremento
-- 1. Criar sequências para todas as outras tabelas da base de dados

-- a. Cliente
select max(idcliente) + 1 from cliente;
create sequence cliente_id_seq minvalue 18;
alter table cliente alter idcliente set default nextval('cliente_id_seq');
alter sequence cliente_id_seq owned by cliente.idcliente;
insert into cliente (nome) values ('Teste sequence');
select * from cliente;

-- b. Complemento
select max(idcomplemento) + 1 from complemento;
create sequence complemento_id_seq minvalue 3;
alter table complemento alter idcomplemento set default nextval('complemento_id_seq');
alter sequence complemento_id_seq owned by complemento.idcomplemento;
insert into complemento (nome) values ('Teste sequência');
select * from complemento;

-- c. Fornecedor
select max(idfornecedor) + 1 from fornecedor;
create sequence fornecedor_id_seq minvalue 4;
alter table fornecedor alter idfornecedor set default nextval('fornecedor_id_seq');
alter sequence fornecedor_id_seq owned by fornecedor.idfornecedor;
insert into fornecedor (nome) values ('Teste sequência');
select * from fornecedor;

-- d. Município
select max(idmunicipio) + 1 from municipio;
create sequence municipio_id_seq minvalue 10;
alter table municipio alter idmunicipio set default nextval('municipio_id_seq');
alter sequence municipio_id_seq owned by municipio.idmunicipio;
insert into municipio (nome, iduf) values ('Teste sequência', 1);
select * from municipio;

-- e. Nacionalidade
select max(idnacionalidade) + 1 from nacionalidade;
create sequence nacionalidade_id_seq minvalue 5;
alter table nacionalidade alter idnacionalidade set default nextval('nacionalidade_id_seq');
alter sequence nacionalidade_id_seq owned by nacionalidade.idnacionalidade;
insert into nacionalidade (nome) values ('Teste sequência');
select * from nacionalidade;

-- f. Pedido
select max(idpedido) + 1 from pedido;
create sequence pedido_id_seq minvalue 16;
alter table pedido alter idpedido set default nextval('pedido_id_seq');
alter sequence pedido_id_seq owned by pedido.idpedido;
insert into pedido (data_pedido, valor, idcliente, idvendedor)
values (current_date, 130, 1, 1);
select * from pedido;

-- g. Pedido produto (verificar se é necessário)

-- h. Profissão
select max(idprofissao) + 1 from profissao;
create sequence profissao_id_seq minvalue 6;
alter table profissao alter idprofissao set default nextval('profissao_id_seq');
alter sequence profissao_id_seq owned by profissao.idprofissao;
insert into profissao (nome) values ('Teste sequência');
select * from profissao;

-- i. Transportadora
select max(idtransportadora) + 1 from transportadora;
create sequence transportadora_id_seq minvalue 3;
alter table transportadora alter idtransportadora set default nextval('transportadora_id_seq');
alter sequence transportadora_id_seq owned by transportadora.idtransportadora;
insert into transportadora (nome) values ('Teste sequência');
select * from transportadora;

-- j. UF
select max(iduf) + 1 from uf;
create sequence uf_id_seq minvalue 7;
alter table uf alter iduf set default nextval('uf_id_seq');
alter sequence uf_id_seq owned by uf.iduf;
insert into uf (nome, sigla) values ('Teste sequência', 'TE');
select * from uf;

-- k. Vendedor
select max(idvendedor) + 1 from vendedor;
create sequence vendedor_id_seq minvalue 9;
alter table vendedor alter idvendedor set default nextval('vendedor_id_seq');
alter sequence vendedor_id_seq owned by vendedor.idvendedor;
insert into vendedor (nome) values ('Teste sequência');
select * from vendedor;

-- Produto
select max(idproduto) + 1 from produto
create sequence produto_id_seq minvalue 8
alter table produto alter idproduto set default nextval('produto_id_seq')
alter sequence produto_id_seq owned by produto.idproduto

-- Valores default
alter table pedido alter column data_pedido set default current_date;
alter table pedido alter column valor set default 0;
insert into pedido (idcliente, idvendedor) values (1, 1);
insert into pedido (idcliente, idvendedor, data_pedido, valor) 
values (1, 1, '2022-10-10', 234);

select * from pedido;

-- Exercícios valores default

-- 1. Adicione valores default na tabela de produtos do pedido
	-- a. Quantidade com o valor 1
	-- b. Valor unitário com o valor 0
select * from pedido_produto
alter table pedido_produto alter column quantidade set default 1;
alter table pedido_produto alter column valor_unitario set default 0;
insert into pedido_produto (idpedido, idproduto) values (1, 3);

-- 2. Adicione valor default na tabela de produtos
	-- a. Valor com o valor 0
select * from produto
alter table produto alter column valor set default 0;
insert into produto (idfornecedor, nome) values (1, 'Teste default');

-- Índices
-- Adicionam performance na leitura, com base em campos de tipos com ordenação.
-- Pode tornar a escrita lenta, se seu aplicabilidade não for bem analisada ou usados sem necessidade.
create index idx_cliente_nome on cliente (nome);

-- Exercícios índices
-- 1. Adicione índices nas seguintes tabelas e campos
	-- a. Pedido – data do pedido
	-- b. Produto – nome
create index idx_pedido_data_pedido on pedido (data_pedido);

create index idx_produto_nome on produto (nome);

-- Funções
-- create or replace function <nome>(<argumentos tipos>) returns <tipo_retorno> language plpgsql as
create or replace function formata_moeda(valor float) returns varchar(20) language plpgsql as
$$
begin
	return concat('R$ ', round(cast(valor as numeric), 2));
end;
$$;

select valor, formata_moeda(valor) from pedido;
select valor, formata_moeda(valor) from produto;

create or replace function get_nome_by_id(idc integer) returns varchar(50) language plpgsql as
$$
declare r varchar(50); -- declaração de variáveis na function
begin
	-- Injetando valor do select na variável
	select nome into r from cliente where idcliente = idc;
	return r;
end;
$$;

select data_pedido, valor, idcliente, get_nome_by_id(idcliente) from pedido;

-- Exercícios funções

-- 1. Crie uma função que receba como parâmetro o ID do pedido e retorne o valor total deste pedido
drop function get_valor_pedido_by_id;
create or replace function get_valor_pedido_by_id(idp integer) returns varchar(20) language plpgsql as
$$
begin
	return (select formata_moeda(valor) from pedido where idpedido = idp);
end;
$$;

select idpedido, get_valor_pedido_by_id(idpedido) from pedido;

-- 2. Crie uma função chamada “maior”, que quando executada retorne o pedido com o maior valor
create or replace function get_maior_pedido() returns integer language plpgsql as
$$
begin
	return (select idpedido from pedido where valor = (select max(valor) from pedido));
end;
$$;

select get_maior_pedido();

-- stored procedures
-- não tem retorno
-- chamada é realizada com call
create procedure insere_bairro(nome_bairro varchar(30)) language sql as
$$
	insert into bairro (nome) values (nome_bairro);
$$;

call insere_bairro('Teste procedure');

select * from bairro;

-- Exercícios procedures

-- 1. Crie uma stored procedure que receba como parâmetro o ID do produto e o percentual de aumento,
-- e reajuste o preço somente deste produto de acordo com o valor passado como parâmetro
create procedure reajusta_valor_produto (idprd integer, percentual_aumento float) language sql as
$$
	update produto set valor = valor + ((valor * percentual_aumento) / 100) where idproduto = idprd;
$$;

select * from produto;
call reajusta_valor_produto(1, 5);
select * from produto;

-- 2. Crie uma stored procedure que receba como parâmetro o ID do produto e exclua da base de dados somente o produto com o ID correspondente
create procedure exclui_produto(idprd integer) language sql as
$$
	delete from produto where idproduto = idprd;
$$;

select * from produto;
call exclui_produto(8);
select * from produto;

-- Triggers (Trigger Functions)
-- São funções que executam conforme um evento em alguma tabela e para cada linha alterada.

create table bairro_auditoria (
	idbairro integer not null,
	data_criacao timestamp not null
);

-- Função a ser chamada na trigger, deve retornar "trigger"
create or replace function bairro_log() returns trigger language plpgsql as
$$
begin
	insert into bairro_auditoria(idbairro, data_criacao) values (new.idbairro, current_timestamp);
	return new; -- retorna o novo registro corrente, associado à trigger
end;
$$;

create or replace trigger log_bairro_trigger after insert on bairro for each row execute procedure bairro_log();

call insere_bairro ('Teste 10');
call insere_bairro ('Teste 20');
call insere_bairro ('Teste 30');
select * from bairro;
select * from bairro_auditoria;

-- Exercícios triggers

-- 1. Crie uma tabela chamada PEDIDOS_APAGADOS
select * from pedido
create table pedidos_apagados (
	idpedido integer not null,
	idcliente integer not null,
	idtransportadora integer not null,
	idvendedor integer not null,
	data_pedido date,
	valor float
);

alter table pedidos_apagados add column data_exclusao date default current_timestamp;
alter table pedidos_apagados alter column data_exclusao type timestamp;

-- 2. Faça uma trigger que quando um pedido for apagado, todos os seus dados devem ser copiados para a tabela PEDIDOS_APAGADOS
create or replace function pedido_apagado_log() returns trigger language plpgsql as
$$
begin
	insert into pedidos_apagados (idpedido, idcliente, idtransportadora, idvendedor, data_pedido, valor)
	values (old.idpedido, old.idcliente, old.idtransportadora, old.idvendedor, old.data_pedido, old.valor);
	return old;
end;
$$;

create or replace trigger log_pedido_apagado_trigger before delete on pedido for each row execute procedure pedido_apagado_log();

insert into pedido (idcliente, idtransportadora, idvendedor, data_pedido, valor) values (1, 1, 1, current_timestamp, 10);
insert into pedido (idcliente, idtransportadora, idvendedor, data_pedido, valor) values (1, 1, 1, current_timestamp, 15);
insert into pedido (idcliente, idtransportadora, idvendedor, data_pedido, valor) values (1, 1, 1, current_timestamp, 20);

select * from pedido order by idpedido desc;
delete from pedido where idpedido = 22;
delete from pedido where idpedido = 23;
delete from pedido where idpedido = 24;

select * from pedidos_apagados;

-- Domains (Domínios)
-- São tipos de dados "personalizados", para padronizar tipos de dados para as colunas das tabelas
-- Obs.: Ideal que sejam criados antes da definição das tabelas
-- Tipo de dados: https://www.postgresql.org/docs/current/datatype-numeric.html#DATATYPE-INT

-- Ids
create domain idcurto as smallint;
create domain idmedio as integer;
create domain idlongo as bigint;

-- Caracteres
create domain sigla as char(3);
create domain codigo as varchar(10);
create domain nome_curto as varchar(15);
create domain nome_medio as varchar(50);
create domain nome_longo as varchar(70);
create domain documento as varchar(15);
create domain tipo as char(1);
create domain texto as text;

-- Data e Hora
create domain data as date;
create domain hora as time;
create domain data_hora as timestamp;

-- Numéricos
create domain moeda as numeric(10,2);
create domain float_curto as numeric(6,2);
create domain float_medio as numeric(10,2);
create domain float_longo as numeric(15,2);
create domain quantidade as smallint;

-- bairro
alter table bairro alter column nome type nome_medio; -- vai causar erro por o campo é retornado em uma view (recriar)
drop view cliente_dados;

-- bairro_auditoria
alter table bairro_auditoria alter column data_criacao type data_hora;

-- cliente 
drop view cliente_profissao; -- recriar todas
drop view pedido_dados;
drop view cliente_dados;

alter table cliente alter column nome type nome_longo;
alter table cliente alter column cpf type documento;
alter table cliente alter column rg type documento;
alter table cliente alter column data_nascimento type data;
alter table cliente alter column genero type tipo;
alter table cliente alter column logradouro type nome_longo;
alter table cliente alter column numero type nome_curto;
alter table cliente alter column idprofissao type idmedio;
alter table cliente alter column idnacionalidade type idmedio;
alter table cliente alter column idbairro type idmedio;
alter table cliente alter column idmunicipio type idmedio;
alter table cliente alter column idcomplemento type idmedio;

-- complemento
alter table complemento alter column nome type nome_medio;

-- fornecedor
drop view produto_fonecedor;

alter table fornecedor alter column nome type nome_medio;

-- municipio
drop view municipio_uf;

alter table municipio alter column nome type nome_medio;
alter table municipio alter column iduf type idmedio;

-- nacionalidade
alter table nacionalidade alter column nome type nome_medio;

-- pedido
drop view produto_pedido;
alter table pedido alter column idpedido type bigint;
alter table pedido alter column idcliente type idmedio;
alter table pedido alter column idtransportadora type idmedio;
alter table pedido alter column idvendedor type idmedio;
alter table pedido alter column data_pedido type data;
alter table pedido alter column valor type moeda;

-- pedido_produto
alter table pedido_produto alter column idpedido type idlongo;
alter table pedido_produto alter column idproduto type idmedio;
alter table pedido_produto alter column quantidade type quantidade;
alter table pedido_produto alter column valor_unitario type moeda;

-- pedidos_apagados
alter table pedidos_apagados alter column idpedido type idlongo;
alter table pedidos_apagados alter column idcliente type idmedio;
alter table pedidos_apagados alter column idtransportadora type idmedio;
alter table pedidos_apagados alter column idvendedor type idmedio;
alter table pedidos_apagados alter column data_pedido type data;
alter table pedidos_apagados alter column valor type moeda;

-- produto
alter table produto alter column idfornecedor type idmedio;
alter table produto alter column nome type nome_medio;
alter table produto alter column valor type moeda;

-- profissao
alter table profissao alter column nome type nome_medio;

-- transportadora
drop view transportadora_uf;
alter table transportadora alter column idmunicipio type idmedio;
alter table transportadora alter column nome type nome_medio;
alter table transportadora alter column logradouro type nome_medio;
alter table transportadora alter column numero type nome_curto;

-- uf
alter table uf alter column nome type nome_medio;
alter table uf alter column sigla type sigla;

-- vendedor
alter table vendedor alter column nome type nome_medio;

-- Recriar as views (ok)

-- Usuários e permissões
-- roles = papéis, que definem as permissões aos objetos do banco de dados
-- podem ser associados a diversos usuários.
create role gerente;
create role estagiario;

-- comando grant garante/entrega determinadas permissões, definidas para o role
grant select, insert, delete, update on
	bairro, cliente, complemento, fornecedor, municipio, nacionalidade, pedido, pedido_produto, produto, profissao, transportadora, uf, vendedor
to gerente with grant option;
-- with grant option, porque está associando permissões para tabelas

grant all on all sequences in schema public to gerente;
-- revoke = revoga as permissões concedidas ao role

grant select on cliente_dados, pedido_dados to estagiario;

create role maria login password '123' in role gerente;
create role pedro login password '321' in role estagiario;

-- Exercícios usuários e permissões
-- 1. Crie um novo papel chamado “atendente”
create role atendente;

-- 2. Defina somente permissões para o novo papel poder selecionar e incluir novos pedidos (tabelas pedido e pedido_produto).
-- O restante do acesso deve estar bloqueado
grant select, insert on pedido, pedido_produto to atendente with grant option;
grant all on all sequences in schema public to atendente;

-- 3. Crie um novo usuário associado ao novo papel
create role jose login password '123' in role atendente;

-- 4. Realize testes para verificar se as permissões foram aplicadas corretamente
select * from cliente;
delete from cliente where idcliente = 10;

select * from pedido;
select * from pedido_produto;

insert into pedido (idcliente, idvendedor, valor)
	select idcliente, idvendedor, valor from pedido where idpedido = 18;
select * from pedido;

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (25, 1, 1, 0);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (26, 2, 1, 234);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (27, 1, 1, 234);
select * from pedido_produto;

-- 	bairro, cliente, complemento, fornecedor, municipio, nacionalidade, pedido, pedido_produto, produto, profissao, transportadora, uf, vendedor
to gerente with grant option;
-- with grant option, porque está associando permissões para tabelas

grant all on all sequences in schema public to gerente;
-- revoke = revoga as permissões concedidas ao role

grant select on cliente_dados, pedido_dados to estagiario;

create role maria login password '123' in role gerente;
create role pedro login password '321' in role estagiario;

-- Exercícios usuários e permissões
-- 1. Crie um novo papel chamado “atendente”
create role atendente;

-- 2. Defina somente permissões para o novo papel poder selecionar e incluir novos pedidos (tabelas pedido e pedido_produto).
-- O restante do acesso deve estar bloqueado
grant select, insert on pedido, pedido_produto to atendente with grant option;
grant all on all sequences in schema public to atendente;
-- revoke all on all sequences in schema public to atendente;
grant all on pedido_id_seq to atendente with grant option;

-- 3. Crie um novo usuário associado ao novo papel
create role jose login password '123' in role atendente;

-- 4. Realize testes para verificar se as permissões foram aplicadas corretamente
-- ERROR:  permission denied for table cliente
-- SQL state: 42501
select * from cliente;
delete from cliente where idcliente = 10;

select * from pedido;
select * from pedido_produto;

insert into pedido (idcliente, idvendedor, valor)
	select idcliente, idvendedor, valor from pedido where idpedido = 18;
select * from pedido;

insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (25, 1, 1, 0);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (26, 2, 1, 234);
insert into pedido_produto (idpedido, idproduto, quantidade, valor_unitario) values (27, 1, 1, 234);
select * from pedido_produto;

-- ERROR:  permission denied for table pedido 
-- SQL state: 42501
delete from pedido where idpedido = 25;
delete from pedido where idpedido = 26;
delete from pedido where idpedido = 27;

-- ERROR:  permission denied for table pedido_produto
-- SQL state: 42501
delete from pedido_produto where idpedido = 25;
delete from pedido_produto where idpedido = 26;
delete from pedido_produto where idpedido = 27;

-- Transações
-- Transações criam um bloco de execução, em que tudo ou nada deve ser executado.
-- Se houver algum erro em algum dos comandos, todas as alterações são revertidas.

-- tabela para exemplo
create table conta (
	idconta serial not null,
	cliente nome_medio not null,
	saldo moeda not null default 0,

	constraint pk_cnt_idconta primary key (idconta)
);

-- Automaticamente o PostgreSQL aloca a execução dos comandos em transações
insert into conta (cliente, saldo) values ('Cliente 1', 1000);
insert into conta (cliente, saldo) values ('Cliente 2', 500);

select * from conta;

update conta set saldo = saldo - 100 where idconta = 1;
update conta set saldo = saldo + 100 where idconta = 2;

select * from conta;

begin; -- indica o início de uma transação
update conta set saldo = saldo - 100 where idconta = 1;
update conta set saldo = saldo + 100 where idconta = 2;
rollback; -- reverte as alterações

begin;
update conta set saldo = saldo - 100 where idconta = 1;
update conta set saldo = saldo + 100 where idconta = 2;
commit; -- confirma as alterações

select * from conta;

