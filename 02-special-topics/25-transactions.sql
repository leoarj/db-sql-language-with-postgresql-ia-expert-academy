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
