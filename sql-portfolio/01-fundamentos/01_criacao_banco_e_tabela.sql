create database informatica;
use informatica;
create table cliente(
	id int,
    nome varchar(50)
);

alter table cliente add data_nascimento date;

drop table cliente;