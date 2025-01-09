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
