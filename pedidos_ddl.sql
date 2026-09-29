-- Criar um banco de dados chamado "pedidos"
CREATE DATABASE pedidos;

USE pedidos;
CREATE TABLE produtos (
    id int primary key not null auto_increment,
    nome varchar(40) not null,
    descricao varchar(200),
    volume decimal,
    valor decimal
);

USE pedidos;
CREATE TABLE pedidos (
    idbint primary key not null auto_increment,
    cliente varchar(40) not null,
    cep varchar(40) not null,
    numero numero varchar(10),
    complemento varchar(20),
    data DATE not null default(CURDATE())
);
CREATE TABLE itens (
    id int primary key not null auto_increment,
    id_pedido int not null,
    id_produto int not null,
    preco decimal(10,2) not null,
    quantidade int not null
);                                 
alter table itens add constraint eh foreign key (id_produtos) references produtos(id);
alter table itens add constraint possui foreign key (id_pedidos) references pedidos(id);

describe produtos;
describe pedidos;
describe itens;
show tables;