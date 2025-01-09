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
