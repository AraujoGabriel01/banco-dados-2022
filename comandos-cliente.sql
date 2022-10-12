use financas;

select * from cliente where cpf='35887016919';
select * from cliente where cpf='46998127020';
select * from cliente where cpf='57009348131';
select * from cliente where cpf='68110459242';

/*Uma query que busque todos os gastos do mês de agosto de 2022.*/
select cliente.nome, cliente.cpf, movimentacao_financeira.data_movimentacao, movimentacao_financeira.categoria_descricao 
from cliente inner join movimentacao_financeira
on cliente.cpf = movimentacao_financeira.cpf
where date_format(movimentacao_financeira.data_movimentacao, '%m/%Y') = '08/2022';

/*Buscar todas as movimentações que tive do Santander (código do banco 033), com a descrição da categoria.*/
select conta_corrente.numero_conta, conta_corrente.codigo_banco, movimentacao_financeira.categoria_descricao 
from conta_corrente inner join movimentacao_financeira
on conta_corrente.numero_conta = movimentacao_financeira.numero_conta
where codigo_banco = '033';

/*Buscar todas as minhas categorias que tenham "presente" em sua descrição. 
Quero buscar como "Trabalho" ou "trabalho" e traga categorias como: "Gasolina para trabalho", "alimentação no Trabalho", "Futebol do trabalho".*/
select * from movimentacao_financeira where categoria_descricao like '%trabalho%';

/*Todas movimentações que tive no primeiro semestre deste ano.*/
select * from movimentacao_financeira where data_movimentacao between '2022_01_01' and '2022_06_30';

/*Buscar as categorias (somente a descrição) que tiveram movimentação na primeira semana de setembro, 
sem repetição, ordenada por ordem alfabética, desprezando espaços em branco antes e depois da descrição da categoria.*/
select distinct categoria_descricao from movimentacao_financeira where data_movimentacao between '2022_09_01' and '2022_09_07'
group by categoria_descricao;

/*buscar a soma de todas as minhas despesa agrupadas por categoria (descrição), que tiveram pelo menos 1000 reais de gasto, 
arredondando o valor para duas casas após a vírgula*/
select categoria_descricao, round( sum(valor), 2) as soma_valor
from movimentacao_financeira
group by categoria_descricao
having sum(valor) >= 1000;

/*buscar as minhas últimas 5 receitas.*/
select * from movimentacao_financeira where tipo='receita' limit 5;

/*buscar o valor da minha maior movimentação dentro deste mês.*/
select max(valor) from movimentacao_financeira;

/*buscar o nome da categoria mais movimentada, por mês, no ano de 2020. 
Ex mes | categoria | valor movimentado janeiro | restaurante | 1200 fevereiro | moradia | 1300 marco | viagem | 5600*/
select month(data_movimentacao) as mes, max(valor) as valor_maximo, count(id) as quantidade 
from movimentacao_financeira where year(data_movimentacao) = 2020 
group by month(data_movimentacao), categoria_descricao
order by mes;

/*Quero saber qual o saldo das minhas contas. Exemplo: Nubank | 1200 Itaú | -300 Santander | 450*/
select conta_corrente.codigo_banco, conta_corrente.saldo, cliente.nome, cliente.cpf
from conta_corrente inner join cliente 	
on cliente.cpf = conta_corrente.cpf;