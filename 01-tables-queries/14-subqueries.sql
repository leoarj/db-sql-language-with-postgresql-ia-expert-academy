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
