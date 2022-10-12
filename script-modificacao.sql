use financas;

/*modificando o campo categoria_descricao para "not null" na tabela movimentacao_financeira*/
alter table movimentacao_financeira modify column categoria_descricao varchar(100) not null;
 
/*testando para ver se a modificacao funcionou*/
insert into movimentacao_financeira (numero_conta, valor, data_movimentacao, categoria_descricao) 
values (102458, 1534.75, '2021-12-20', null);

/*alterando a precisao do valor com 4 casas decimais*/
alter table movimentacao_financeira modify column valor float(8.4) not null;

/*adicionando a coluna receita/despesa na tabela movimentacao_financeira*/
alter table movimentacao_financeira add column tipo enum ('Despesa','Receita') default 'Despesa';
update movimentacao_financeira set tipo='receita' where categoria_descricao ='salario';