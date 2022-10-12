use financas;

/*buscar o nome dos clientes, email, a cidade onde ele mora, que não tiveram nenhuma movimentação dentro do mês atual. 
Quero isso para mandar um e-mail marketing para que eles voltem a usar o nosso sistema.*/
select cliente.nome, cliente.email, endereco.cidade
from cliente inner join endereco
on cliente.cpf = endereco.cpf
inner join movimentacao_financeira
on cliente.cpf = movimentacao_financeira.cpf
where date_format(movimentacao_financeira.data_movimentacao,'%m/%Y') = date_format( now() ,'%m/%Y')
and data_movimentacao is null;

/*buscar o nome e email dos clientes que mais tiveram a maior movimentação de receita do nosso sistema. 
Quero o top 5 clientes. E também a sua maior movimentação, 
exemplo: Fulano | fulano@gmail.com | 34000 Ciclano | ciclano@hotmail.com | 29000 e assim por diante. 
(assim eu acho os clientes que posso oferecer uma assinatura premium)*/
select cliente.nome, cliente.email, max( movimentacao_financeira.valor)
from cliente inner join movimentacao_financeira
on cliente.cpf = movimentacao_financeira.cpf
where movimentacao_financeira.tipo = 'receita'
group by cliente.nome;

/*fazer uma busca que descubra em qual dia do mês ocorre a maior parte das movimentações. 
(este dia é o dia que eu quero mandar meu email marketing mensal*/
select dayofmonth(data_movimentacao) as dia_mais_movimentado, count(id) as quantidade
from movimentacao_financeira;
