create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
voar varchar (255),
vivo boolean not null,
origem varchar (255),
primary key (id)
);

insert into tb_classe (voar, vivo, origem) values ("Sim", true, "Krypton");
insert into tb_classe (voar, vivo, origem) values ("Não", true, "Themyscira");
insert into tb_classe (voar, vivo, origem) values ("Sim", true, "Terra");
insert into tb_classe (voar, vivo, origem) values ("Não", true, "Terra");
insert into tb_classe (voar, vivo, origem) values ("Não", true, "Asgard");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment, 
nome varchar (255) not null,
ataque bigint,
defesa bigint,
categoria_id bigint, 
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Superman", 6000, 9000, 1);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Mulher Maravilha", 4000, 2500, 2);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Thor", 5000, 1000, 5);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Batman", 2000, 1000, 4);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("SuperChoque", 3500, 3000, 3);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Loki", 2000, 2500, 5);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Super Girl", 5500, 7000, 1);
insert into tb_personagem (nome, ataque, defesa, categoria_id) values ("Artemis", 3900, 2000, 2);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "C%";

select tb_personagem.nome, tb_personagem.ataque, tb_classe.origem from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id;

select tb_personagem.nome, tb_classe.origem from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id and tb_classe.origem = "Krypton";
