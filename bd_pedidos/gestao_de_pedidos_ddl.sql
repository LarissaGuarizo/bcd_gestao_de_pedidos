-- CRUD (Criar, Ler, Atualizar e Deletar)
-- DDL (Data Definition Language)
-- CRUD DDL (Create, [Show, Describe], Alter, Drop)
DROP DATABASE IF EXISTS gestao_de_pedidos;
CREATE DATABASE gestao_de_pedidos;
    USE gestao_de_pedidos;
CREATE TABLE produto (
    id int primary key not null auto_increment,
    nome varchar(40) not null
);
CREATE TABLE cliente(
    id int primary key not null auto_increment,
    nome varchar(100) not null,
    cep int not null,
    numero int,
    complemento varchar(100)
);
CREATE TABLE telefone(
    id int primary key not null auto_increment,
    id_cliente int,
    numero varchar(15) not null,
    tipo varchar(20) not null
);
CREATE TABLE pedido(
    id int primary key not null auto_increment,
    id_cliente int,
    id_produto int,
    valor_unitario decimal(10,2) not null,
    quantidade int not null
);

-- Criando os relacionamentos, alterando a tabela de itens
alter table telefone add constraint fk_eh foreign key (id_cliente) references cliente(id);
alter table pedido add constraint fk_possui foreign key (id_produto) references produto(id);
alter table pedido add constraint fk_faz foreign key (id_cliente) references cliente(id);

-- Exibir os resultados
describe produto;
describe cliente;
describe telefone;
describe pedido;
show tables;