create database db_rh;

use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255),
funcao varchar(255),
salario decimal(8,2), 
email varchar(255),
primary key (id)
);

insert into tb_funcionarios(nome, funcao, salario, email) values("Laís", "Programadora", 15000, "lais@friends.com");
insert into tb_funcionarios(nome, funcao, salario, email) values("Chandler", "Programador Senior", 25000, "chandler@friends.com");
insert into tb_funcionarios(nome, funcao, salario, email) values("Monica", "Analista de Cyber Security", 15600, "monica@friends.com");
insert into tb_funcionarios(nome, funcao, salario, email) values("Phoebe", "Programadora", 15000, "phobe@friends.com");

select * from tb_funcionarios;

select * from tc_funcionarios where salario > 2000;

select * from tc_funcionarios where salario < 2000;

update tb_funcionarios set funcao = "Programadora Pleno" where id = 1;  
