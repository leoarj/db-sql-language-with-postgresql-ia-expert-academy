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
