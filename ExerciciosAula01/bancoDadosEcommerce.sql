create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nomeproduto varchar(255),
quantidade int, 
preco decimal (8,2),
cor varchar(255),
primary key (id)
);

insert into tb_produtos(nomeproduto, quantidade, preco, cor) values ("Guarda Roupa Infantil", 3, 475.90, "branco e rosa");
insert into tb_produtos(nomeproduto, quantidade, preco, cor) values ("Mesa de Cabeceira", 9, 115.20, "preta");
insert into tb_produtos(nomeproduto, quantidade, preco, cor) values ("Sofá", 2, 950.99, "chocolate");
insert into tb_produtos(nomeproduto, quantidade, preco, cor) values ("Cama box", 1, 899.90, "branco");
insert into tb_produtos(nomeproduto, quantidade, preco, cor) values ("Guarda Roupa Infantil", 2, 475.90, "branco e azul");
insert into tb_produtos(nomeproduto, quantidade, preco, cor) values ("Comoda", 5, 579.90, "marfim");
insert into tb_produtos(nomeproduto, quantidade, preco, cor) values ("Espelho", 2, 175.90, "branco");
insert into tb_produtos(nomeproduto, quantidade, preco, cor) values ("Mesa", 6, 384.90, "preta");

select * from tb_produtos;

select * from tb_produtos where preco > 500;

select * from tb_produtos where preco < 500;

update tb_produtos set quantidade = 8 where id = 8;


