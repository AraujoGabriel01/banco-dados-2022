create database financas;
use financas;
/*criando as tabelas*/
create table cliente (
	nome 				varchar(100) 	not null,
    cpf 				varchar(20) 	not null,
    email 				varchar(50) 	not null,
    senha 				varchar(50) 	not null,
    data_nascimento 	date 			default '0000-00-00',
    profissao 			varchar(50) 	default 'Não Informado',
    genero 				varchar(15) 		default 'Não Informado',
    primary key (cpf)
);

create table endereco (
	cep				varchar(20)		not null,
    cpf				varchar(20) 	not null,
	rua				varchar(100)	not null,
	numero			int				not null,
	complemento		varchar(100)	null,
	bairro			varchar(50)		not null,
	cidade			varchar(50)		not null,
	estado			varchar(50)		not null,
	pais			varchar(50)		not null,
    primary key (cep)
);

/*criando chave estrangeira para a tabela endereco que usa o cpf do cliente*/
alter table endereco add constraint fk_cliente_endereco foreign key (cpf) references cliente (cpf);

create table conta_corrente (
	numero_conta		varchar(25)		not null,
	codigo_banco		varchar(5)		not null,
    cpf					varchar(20) 	not null,
	agencia				varchar(5)		not null,
	apelido				varchar(50)		not null,
	saldo				float			null,
    primary key (numero_conta)
);

/*criando chave estrangeira para a tabela conta_corrente que usa o cpf do cliente*/
alter table conta_corrente add constraint fk_conta_cliente foreign key (cpf) references cliente (cpf);

create table movimentacao_financeira (
	id						int 			auto_increment,
    cpf						varchar(20) 	not null,
	numero_conta			varchar(25)		not null,
	valor					float(8.2)		not null,
    data_movimentacao		date			not null,
    categoria_descricao		varchar(100)	null,
    primary key (id)
    /*esta tabela é associada com a conta corrente*/
);

drop table movimentacao_financeira;

alter table conta_corrente add constraint fk_conta_cliente foreign key (cpf) references cliente (cpf);
/*criando chave estrangeira para a tabela movimentacao_financeira que usa o codigo_banco da conta_corrente*/
alter table movimentacao_financeira add constraint fk_conta_corrente foreign key (numero_conta) references conta_corrente (numero_conta);
alter table movimentacao_financeira add constraint fk_cpf_movimentacao foreign key (cpf) references cliente (cpf);