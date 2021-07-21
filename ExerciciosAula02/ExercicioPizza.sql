create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Pizza Salgada", true);
insert into tb_categoria (descricao, ativo) values ("Pizza Brotinho Salgada", true);
insert into tb_categoria (descricao, ativo) values ("Pizza Doce", true);
insert into tb_categoria (descricao, ativo) values ("Pizza massa Vegana", true);
insert into tb_categoria (descricao, ativo) values ("Pizza massa S/ Gluten", true);

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255) not null,
quantidade int,
adicional varchar(255),
preco decimal (6,2) not null,
categoria_id bigint, 
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (sabor, quantidade, adicional, preco, categoria_id) values ("Mussarela", 1, "Bacon", 42.90, 1);
insert into tb_pizza (sabor, quantidade, preco, categoria_id) values ("Brigadeiro", 1, 34.90, 3);
insert into tb_pizza (sabor, quantidade, adicional, preco, categoria_id) values ("brocolis", 2, "Alho", 40.00, 4);
insert into tb_pizza (sabor, quantidade, adicional, preco, categoria_id) values ("Calabresa", 3, "S/ cebola", 55.90, 2);
insert into tb_pizza (sabor, quantidade, adicional, preco, categoria_id) values ("Aliche", 1, "Cebola", 58.90, 1);
insert into tb_pizza (sabor, quantidade, preco, categoria_id) values ("Portuguesa", 1, 41.50, 5);
insert into tb_pizza (sabor, quantidade, adicional, preco, categoria_id) values ("Frango c/ Catupiry", 1, "Bacon", 49.90, 1);
insert into tb_pizza (sabor, quantidade, adicional, preco, categoria_id) values ("Romeu e Julieta", 1, "Granulado", 40.00, 3);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor like "C%";

select tb_pizza.sabor, tb_pizza.preco, tb_categoria.descricao from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.sabor, tb_pizza.preco, tb_categoria.descricao from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id and tb_categoria.descricao = "Pizza Doce";

