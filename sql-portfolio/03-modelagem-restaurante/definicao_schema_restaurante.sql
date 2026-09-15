use restaurante;

create table funcionarios(
	id_funcionario int primary key auto_increment,
    nome varchar(255),
	cpf varchar(14),
    data_nascimento date,
    endereco varchar(255),
    telefone varchar(15),
    email varchar(100),
    cargo varchar(100),
    salario decimal(10,2),
    data_admissao date
);

create table clientes (
	id_cliente int primary key auto_increment,
    nome varchar (255),
    cpf varchar (14),
    data_nascimento date,
    endereco varchar (255),
    telefone varchar (15),
	email varchar (100),
    data_cadastro date);

create table produtos (
	id_produto int primary key auto_increment,
    nome varchar (255),
    descricao text,
    preco decimal (10, 2),
    categoria varchar (100)
);

create table pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente int,
    id_funcionario int,
    id_produto int,
    quantidade int,
    preco decimal (10, 2),
    data_pedido date,
    status varchar (50),
    
    -- Definição das Chaves Estrangeiras
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    CONSTRAINT fk_funcionario FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario),
    CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

create table info_produtos (
	id_info int primary key auto_increment,
    id_produto int,
    ingredientes text,
    fornecedor varchar (255),
    
    constraint fk_produto2 foreign key (id_produto) references produtos(id_produto)
);

use restaurante;
-- SELECIONAR TABELA
select * from clientes;

-- INSERIR 1 REGISTRO

insert into clientes (nome, email, cpf, endereco) values ('Leonardo', 'leonardo2@gmail.com', '600.950.240-48', 'Rua Catarina,100');

insert into clientes (nome) values ('Gabriel');