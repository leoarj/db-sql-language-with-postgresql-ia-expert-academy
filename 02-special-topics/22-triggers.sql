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
