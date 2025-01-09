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
