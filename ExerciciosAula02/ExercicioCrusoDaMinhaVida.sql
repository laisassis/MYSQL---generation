create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida; 

create table tb_categoria (
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Tecnologia", true); 
insert into tb_categoria (descricao, ativo) values ("Beleza", true);
insert into tb_categoria (descricao, ativo) values ("Comunicação", true);
insert into tb_categoria (descricao, ativo) values ("Saúde", true);
insert into tb_categoria (descricao, ativo) values ("Educação", true); 

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
curso varchar(255),
preco decimal(6,2) not null,
dtinscricao date,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto (curso, preco, dtinscricao, categoria_id) values ("Jornalismo", 850.00, "2022-01-20", 3);
insert into tb_produto (curso, preco, dtinscricao, categoria_id) values ("Enfermagem", 678.59, "2022-03-01", 4);
insert into tb_produto (curso, preco, dtinscricao, categoria_id) values ("Pedagogia", 118.10, "2022-02-20", 5);
insert into tb_produto (curso, preco, dtinscricao, categoria_id) values ("Estética", 85.00, "2022-07-04", 2);
insert into tb_produto (curso, preco, dtinscricao, categoria_id) values ("Sistema de Informação", 950.60, "2022-01-20", 1);
insert into tb_produto (curso, preco, dtinscricao, categoria_id) values ("Medicina", 1590.85, "2022-01-20", 4);
insert into tb_produto (curso, preco, dtinscricao, categoria_id) values ("Rádio e TV", 480.59, "2022-05-28", 3);
insert into tb_produto (curso, preco, dtinscricao, categoria_id) values ("Visagismo", 42.30, "2022-09-12", 2);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where curso like "E%";

select tb_produto.curso, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.curso, tb_produto.preco, tb_categoria.descricao from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id and tb_categoria.descricao = "Tecnologia";



