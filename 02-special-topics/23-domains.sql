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
