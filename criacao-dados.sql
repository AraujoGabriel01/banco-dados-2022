use financas;

/*inserindo dados na tabela cliente*/
insert into cliente (nome, cpf, email, senha, data_nascimento, genero) 
values ('André Fernandes', '35887016919', 'andre.fernandes@gmail.com', 'erdna001sednanref', '1979-12-10', 'M');

insert into cliente (nome, cpf, email, senha, data_nascimento, profissao, genero) 
values ('Camila Barros', '46998127020', 'camila.barros@gmail.com', 'alimac002sorrab', '1985-06-17', 'Dentista', 'F');

insert into cliente (nome, cpf, email, senha, profissao, genero) 
values ('Maria da Silva', '57009348131', 'maria.silva@gmail.com', 'airam003avlis', 'Dentista', 'F');

insert into cliente (nome, cpf, email, senha, genero) 
values ('Deive Leonardo', '68110459242', 'deive.leonardo@gmail.com', 'evied004odranoel', 'M');

select * from cliente;




/*inserindo dados na tabela endereco*/
insert into endereco (cep, cpf, rua, numero, complemento, bairro, cidade, estado, pais)
values ('01239777', '35887016919', 'Rua da Alegria', '07', null, 'Pedras Vivas', 'São Paulo', 'São Paulo', 'Brasil');

insert into endereco (cep, cpf, rua, numero, complemento, bairro, cidade, estado, pais)
values ('47215484', '46998127020', 'Av. Curadoura', '1460', 'Bloco A, apartamento 12', 'Saúde', 'São Paulo', 'São Paulo', 'Brasil');

insert into endereco (cep, cpf, rua, numero, complemento, bairro, cidade, estado, pais)
values ('05307111', '57009348131', 'Rua Verdadeira', '167', null, 'Vila Elizio', 'São Paulo', 'São Paulo', 'Brasil');

insert into endereco (cep, cpf, rua, numero, complemento, bairro, cidade, estado, pais)
values ('14632447', '68110459242', 'Rua Sebastião', '33', null, 'Vila Maria', 'São Paulo', 'São Paulo', 'Brasil');

select * from endereco;




/*inserindo dados na tabela conta-corrente, duas contas por cliente*/
insert into conta_corrente (codigo_banco, cpf, numero_conta, agencia, apelido, saldo)
values ('001', '35887016919', '147523', '2266', 'conta principal', 5758.00);
insert into conta_corrente (codigo_banco, cpf, numero_conta, agencia, apelido, saldo)
values ('001', '35887016919', '321001', '2266', 'conta secundaria', 150.00);

insert into conta_corrente (codigo_banco, cpf, numero_conta, agencia, apelido, saldo)
values ('356', '46998127020', '102478', '0123', 'conta secundária', null);
insert into conta_corrente (codigo_banco, cpf, numero_conta, agencia, apelido, saldo)
values ('356', '46998127020', '147852', '0123', 'conta principal', null);

insert into conta_corrente (codigo_banco, cpf, numero_conta, agencia, apelido, saldo)
values ('033', '57009348131', '102147', '9447', 'conta para receber alugueis', 120000.00);
insert into conta_corrente (codigo_banco, cpf, numero_conta, agencia, apelido, saldo)
values ('033', '57009348131', '996633', '9447', 'conta reserva', 3074.56);

insert into conta_corrente (codigo_banco, cpf, numero_conta, agencia, apelido, saldo)
values ('399', '68110459242', '102458', '3481', 'conta para receber salario', null);
insert into conta_corrente (codigo_banco, cpf, numero_conta, agencia, apelido, saldo)
values ('399', '68110459242', '731955', '3481', 'conta principal', 1250.00);

select * from conta_corrente;





/*inserindo dados na tabela movimentacao_financeira, com pelo menos 5 movimentações para cada cliente*/
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('35887016919', '102478', 2999.99, '2021-12-23', 'Fogão');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('35887016919', 102478, 100.00, '2022-08-25', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('35887016919', 321001, 560.50, '2020-01-14', 'Fritadeira Elétrica');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('35887016919', 102478, 50.00, '2022-08-22', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('35887016919', 321001, 17.99, '2021-09-17', 'Garrafa térmica de água');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('35887016919', 102478, 980.62, '2022-04-05', 'Despesa no Mercado no mês de abril');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('35887016919', 102478, 40.00, '2022-08-15', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('35887016919', 102478, 40.00, '2022-08-15', 'Trabalho');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('35887016919', 102478, 2000.00, '2022-08-15', 'salario');

insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('46998127020', 102478, 139.99, '2022-05-24', 'Presente para sogra');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('46998127020', 102478, 50.00, '2022-08-22', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('46998127020', 147852, 85.60, '2022-03-31', 'jantar com a familia');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('46998127020', 147852, 85.60, '2022-03-31', 'alimentacao no trabalho');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('46998127020', 102478, 247.83, '2021-08-08', 'Bate e volta na praia');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('46998127020', 102478, 50.00, '2022-08-14', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('46998127020', 147852, 40.50, '2022-09-17', 'cinema com os amigos');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('46998127020', 102478, 69.10, '2022-03-04', 'comprando besteiras para comer');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('46998127020', 102478, 50.00, '2022-08-01', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('46998127020', 102478, 5000.00, '2022-08-01', 'salario');

insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('57009348131', 102147, 54.63, '2019-04-08', 'uber');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('57009348131', 102478, 50.00, '2022-08-22', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('57009348131', 102478, 50.00, '2022-09-01', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('57009348131', 102478, 50.00, '2022-09-03', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('57009348131', 102478, 50.00, '2022-09-06', 'Bolo de aniversario');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('57009348131', 731955, 75.49, '2022-06-26', 'taxi');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('57009348131', 102147, 15.00, '2021-05-28', 'clube de volei');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('57009348131', 102147, 15.00, '2021-05-28', 'clube de futebol do trabalho');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('57009348131', 731955, 23.40, '2020-05-18', 'mangá de um anime novo');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('57009348131', 102147, 60.50, '2022-01-06', 'academia');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('57009348131', 102147, 3000.00, '2022-01-06', 'salario');

insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 102458, 215.99, '2022-10-11', 'presente para a mãe');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 102458, 215.99, '2022-09-01', 'presente para a mãe');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 102478, 20.00, '2022-08-02', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 731955, 314.65, '2021-11-13', 'comemorando aniversario de casamento');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 102478, 30.00, '2022-08-12', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 102458, 160.00, '2022-08-25', 'banho e tosa dos doguinhos');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 102478, 70.00, '2022-08-22', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 102478, 70.00, '2022-09-04', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 102478, 9000.00, '2022-09-04', 'salario');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 731955, 101.14, '2021-12-23', 'frutas e verduras');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 102458, 1534.75, '2021-12-20', 'presente de natal para mim');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 102478, 90.00, '2022-08-29', 'Gasolina');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 102478, 90.00, '2022-08-29', 'Gasolina para trabalho');
insert into movimentacao_financeira (cpf, numero_conta, valor, data_movimentacao, categoria_descricao) 
values ('68110459242', 102478, 9000.00, '2022-08-29', 'salario');


delete from movimentacao_financeira;
select * from movimentacao_financeira;