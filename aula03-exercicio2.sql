create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(100) not null,
descricao varchar(255) not null,
primary key (id)
);

create table tb_pizzas(
id bigint auto_increment,
sabor varchar(150) not null,
tamanho enum('Broto', 'Média', 'Grande', 'Não se aplica') default 'Não se aplica',
borda enum('Normal', 'Recheada', 'Não se aplica') default 'Não se aplica',
adicional varchar(255) default 'Não se aplica',
preco decimal(5,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

insert into tb_categorias(tipo, descricao)
values ("Salgada", "Ingredientes de qualidade e selecionados a dedo"),
("Doce", "Ingredientes de qualidade e selecionados a dedo"),
("Vegetariana", "Ingredientes de qualidade e selecionados a dedo"),
("Fermentação natural", "Ingredientes de qualidade e selecionados a dedo"),
("Esfiha", "Ingredientes de qualidade e selecionados a dedo");

select * from tb_categorias;

insert into tb_pizzas(sabor, tamanho, borda, adicional, preco, categoria_id)
values ("Portuguesa", "Média", "Recheada", default, 70.99, 1),
("Calabresa", "Grande", "Normal", "Bacon", 90, 1),
("Chocolate", "Broto", "Normal", default, 50, 2),
("Shimeji", "Média", "Normal", default, 65.99, 3),
("Carne", default, default, default, 19.50, 5),
("Queijo", default, default, default, 19.50, 5),
("Palmito", "Broto", "Recheada", default, 35, 3),
("Romeu e Julieta", "Grande", "Recheada", default, 72, 4);

select * from tb_pizzas;

select * from tb_pizzas where preco > 45;

select * from tb_pizzas where preco between 50 and 100;

select * from tb_pizzas where sabor like "%m%";

select * from tb_pizzas inner join tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id
order by tb_pizzas.sabor desc;

select * from tb_pizzas inner join tb_categorias
on tb_pizzas.categoria_id = tb_categorias.id
where tb_categorias.tipo = "Salgada";









