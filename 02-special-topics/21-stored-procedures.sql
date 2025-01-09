-- stored procedures
-- não tem retorno
-- chamada é realizada com call
create procedure insere_bairro(nome_bairro varchar(30)) language sql as
$$
	insert into bairro (nome) values (nome_bairro);
$$;

call insere_bairro('Teste procedure');

select * from bairro;

-- Exercícios procedures

-- 1. Crie uma stored procedure que receba como parâmetro o ID do produto e o percentual de aumento,
-- e reajuste o preço somente deste produto de acordo com o valor passado como parâmetro
create procedure reajusta_valor_produto (idprd integer, percentual_aumento float) language sql as
$$
	update produto set valor = valor + ((valor * percentual_aumento) / 100) where idproduto = idprd;
$$;

select * from produto;
call reajusta_valor_produto(1, 5);
select * from produto;

-- 2. Crie uma stored procedure que receba como parâmetro o ID do produto e exclua da base de dados somente o produto com o ID correspondente
create procedure exclui_produto(idprd integer) language sql as
$$
	delete from produto where idproduto = idprd;
$$;

select * from produto;
call exclui_produto(8);
select * from produto;
