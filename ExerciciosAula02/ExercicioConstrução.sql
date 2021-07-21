create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
descricao varchar (255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Acabamento", true);
insert into tb_categoria (descricao, ativo) values ("Eletrica", true);
insert into tb_categoria (descricao, ativo) values ("Hidraúlica", true);
insert into tb_categoria (descricao, ativo) values ("Ferragens", true);
insert into tb_categoria (descricao, ativo) values ("Segurança", true);

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
nome varchar(255) not null,
quantidade int not null,
preco decimal(6,2) not null,
dtretirada date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, quantidade, preco, dtretirada, categoria_id) values ("Capacete", 3, 38.60, "2021-12-02", 5);
insert into tb_produto (nome, quantidade, preco, dtretirada, categoria_id) values ("Viga", 20, 3000, "2021-09-25", 4);
insert into tb_produto (nome, quantidade, preco, dtretirada, categoria_id) values ("Cabo Flexivel", 5, 1250.59, "2021-11-05", 2);
insert into tb_produto (nome, quantidade, preco, dtretirada, categoria_id) values ("Arga Massa", 25, 750.90, "2022-02-28", 1);
insert into tb_produto (nome, quantidade, preco, dtretirada, categoria_id) values ("Interruptor", 13, 75.70, "2022-03-01", 2);
insert into tb_produto (nome, quantidade, preco, dtretirada, categoria_id) values ("Luvas", 8, 38.60, "2021-07-30", 5);
insert into tb_produto (nome, quantidade, preco, dtretirada, categoria_id) values ("Vergalhão Aço", 22, 1222.79, "2021-09-25", 4);
insert into tb_produto (nome, quantidade, preco, dtretirada, categoria_id) values ("Óculos oriteção", 3, 18.95, "2021-12-02", 5);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "C%";

select tb_produto.nome, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id and tb_categoria.descricao = "Segurança";

update tb_produto set nome = "Óculos de proteção" where id = 8;