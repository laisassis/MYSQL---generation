create database db_escola; 

use db_escola; 

create table tb_alunos(
id bigint auto_increment,
nome varchar(255), 
serie int, 
turma varchar(255),
nota decimal (2,1),
primary key (id)
);

insert into tb_alunos(nome, serie, turma, nota) values ("Marshall", 4, "B", 3.8);
insert into tb_alunos(nome, serie, turma, nota) values ("Robin", 5, "A", 9.9);
insert into tb_alunos(nome, serie, turma, nota) values ("Ted", 8, "A", 9.8);
insert into tb_alunos(nome, serie, turma, nota) values ("Lily", 6, "B", 7.8);
insert into tb_alunos(nome, serie, turma, nota) values ("Barney", 2, "B", 2.5);
insert into tb_alunos(nome, serie, turma, nota) values ("Joe", 1, "A", 0.5);
insert into tb_alunos(nome, serie, turma, nota) values ("Gunther", 7, "B", 6.5);
insert into tb_alunos(nome, serie, turma, nota) values ("Janice", 4, "B", 8.5);

select * from tb_alunos;

select * from tb_alunos where nota > 7;

select * from tb_alunos where nota < 7;

update tb_alunos set turma = "B" where id = 3;


