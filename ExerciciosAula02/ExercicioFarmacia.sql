create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Colírio", true);
insert into tb_categoria (descricao, ativo) values ("Dermocosmético", true);
insert into tb_categoria (descricao, ativo) values ("Antibiótico", true);
insert into tb_categoria (descricao, ativo) values ("Higiene pessoal", true);
insert into tb_categoria (descricao, ativo) values ("Diversos", true);

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
nomeproduto varchar (255) not null,
preco decimal(6,2) not null,
quantidade int not null,
cor varchar (255),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nomeproduto, preco, quantidade, categoria_id) values ("Hidratante facial", 65.80, 1, 2);
insert into tb_produto (nomeproduto, preco, quantidade, cor, categoria_id) values ("Escova de Dente", 9.80, 2, "vermelha",  4);
insert into tb_produto (nomeproduto, preco, quantidade, categoria_id) values ("Amoxilina", 15.00, 1, 3);
insert into tb_produto (nomeproduto, preco, quantidade, cor, categoria_id) values ("Algodão", 10.50, 2, "Colorido",  5);
insert into tb_produto (nomeproduto, preco, quantidade, cor, categoria_id) values ("Esparadrapo", 19.50, 1, "Transparente",  5);
insert into tb_produto (nomeproduto, preco, quantidade, categoria_id) values ("Lagrigex", 39.80, 1,  1);
insert into tb_produto (nomeproduto, preco, quantidade, categoria_id) values ("Sabonete", 3.10, 1,  4);
insert into tb_produto (nomeproduto, preco, quantidade, categoria_id) values ("Meciclin", 161.80, 1,  3);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nomeproduto like "E%";

select tb_produto.nomeproduto, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nomeproduto, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id and tb_categoria.descricao = "Dermocosmético";



