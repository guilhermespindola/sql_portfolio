show create table cliente;

desc cliente;

-- alterações adição e remoção de coluna

alter table cliente add column endereco varchar(255);
alter table cliente add cidade varchar(255);
alter table cliente drop endereco;
alter table cliente add unique (email);

-- alterações de coluna existente

alter table cliente modify nome varchar(150);
alter table cliente change nome nome_completo varchar(255);
alter table cliente alter cidade set default 'Não informado';

-- alterações de chave (cuidado)

alter table cliente modify id_cliente int;
alter table cliente drop primary key;
alter table cliente add primary key (id_cliente);

create table produto (id_produto int primary key);
alter table cliente_antigos add foreign key (id_produto) references produto(id_produto);

-- renomear tabela

alter table cliente rename to cliente_antigos;

-- exclusão de tabela

drop table clientes_antigos;
drop table if exists clientes_antigos;