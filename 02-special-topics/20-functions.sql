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
