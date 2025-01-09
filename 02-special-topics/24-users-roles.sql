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
