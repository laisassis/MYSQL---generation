-- Cria o Banco de Dados
create database db_brecho;

use db_brecho;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
quantidade int,
preco decimal,
primary key(id)
);

insert into tb_produtos(nome, quantidade, preco) values ("Camiseta", 30, 18.90);
insert into tb_produtos(nome, quantidade, preco) values ("Calça", 10, 29.90);
insert into tb_produtos(nome, quantidade, preco) values ("Body", 15, 15.10);
insert into tb_produtos(nome, quantidade, preco) values ("Casaco", 20, 25.90);
insert into tb_produtos(nome, quantidade, preco) values ("Meia", 50, 5.99);

-- Alterou preço do produto
update tb_produtos set preco = 18.90 where id = 1;

-- Deletou produto do id 5
delete from tb_produtos where id = 5;

-- Mostra tabela de produtos
select * from tb_produtos;

-- Alterou decimal 
alter table tb_produtos modify preco decimal(8,2);

-- Alterou nome para nomeproduto
alter table tb_produtos change nome nomeproduto varchar(255);

-- Inserindo novo produto
insert into tb_produtos(nomeproduto, quantidade, preco) values ("Sapato", 50, 85.00);

-- Adicionando novo atributo (campo)
alter table tb_produtos add  descricao varchar(255);

-- Apagando um atributo
alter table tb_produtos drop  descricao;

-- Consultando produtos com preço maior que 15
select * from tb_produtos where preco > 15;

-- Consultando produtos por nome
select * from tb_produtos where nomeproduto = "Body";

-- Consultando por id
select * from tb_produtos where id = 6;

-- Consultando por quantidade e preço
select * from tb_produtos where quantidade > 5 and preco > 15;