create database db_generation_game_online;
use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar(50) not null,
faccao enum('Horda', 'Aliança') not null,
primary key (id)
);

insert into tb_classes (nome, faccao)
values ("Guerreiro", "Horda"),
("Guerreiro", "Aliança"),
("Mago", "Horda"),
("Mago", "Aliança"),
("Arqueiro", "Horda"),
("Arqueiro", "Aliança");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar(100) not null,
ataque int not null,
defesa int not null,
vida int not null,
agilidade int not null,
inteligencia int not null,
sorte int not null,
classes_id bigint,
primary key (id),
foreign key (classes_id) references tb_classes(id)
);

insert into tb_personagens (nome, ataque, defesa, vida, agilidade, inteligencia, sorte, classes_id)
values ("João", 1000, 500, 800, 2000, 200, 500, 5),
("José", 1500, 800, 1000, 500, 600, 500, 2),
("Claudio", 3000, 1000, 800, 500, 100, 800, 1),
("Ezequiel", 4000, 2500, 3000, 1200, 400, 1000, 4),
("Dionisio", 1900, 1500, 1500, 1000, 5000, 500, 6),
("Joaquim", 2200, 500, 600, 200, 2300, 100, 3);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select nome, ataque, defesa, vida, agilidade, inteligencia, sorte, tb_classes.tipo, tb_classes.faccao
from tb_personagens inner join tb_classes
on tb_personagens.classes_id = tb_classes.id
order by nome ASC;

select nome, ataque, defesa, vida, agilidade, inteligencia, sorte, tb_classes.tipo, tb_classes.faccao
from tb_personagens inner join tb_classes
on tb_personagens.classes_id = tb_classes.id
where tb_classes.tipo = "Guerreiro";







