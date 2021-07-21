create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Legumes", true);
insert into tb_categoria (descricao, ativo) values ("Frutas", true);
insert into tb_categoria (descricao, ativo) values ("Verduras", true);
insert into tb_categoria (descricao, ativo) values ("Temperos", true);
insert into tb_categoria (descricao, ativo) values ("Higienizador de Alimentos", true);

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Alface", 1.50, 1, 3);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Orégano", 5.00, 1, 4);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Limpex", 10.50, 1, 5);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Melancia", 16.00, 1, 2);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Morango", 4.99, 1, 2);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Abobrinha", 6.50, 2, 1);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Alho em pó", 15.50, 1, 4);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Couve", 3.50, 1, 3);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "C%";

select tb_produto.nome, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id and tb_categoria.descricao = "Frutas";


