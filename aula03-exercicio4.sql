create database db_cidade_dos_vegetais;
use db_cidade_dos_vegetais;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(100) not null,
descricao varchar(255) not null,
primary key (id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(150) not null,
dataValidade date not null,
preco decimal(5,2) not null,
categorias_id bigint,
primary key (id),
foreign key (categorias_id) references tb_categorias(id)
);

insert into tb_categorias(tipo, descricao)
values ("Frutas", "Frescas e deliciosas"),
("Legumes", "Frescas e deliciosas"),
("Cereais", "Selecionados a dedo"),
("Temperos", "Perfumados e deliciosos"),
("Bebidas", "Naturais");

select * from tb_categorias;

insert into tb_produtos(nome, dataValidade, preco, categorias_id)
values ("Banana", "2023-12-08", 10.00, 1),
("Brócolis", "2023-12-15", 20.00, 2),
("Suco de Laranja", "2023-12-6", 12.00, 5),
("Maçã", "2023-12-08", 15.00, 1),
("Chimichurri", "2023-12-30", 25.00, 4),
("Trigo", "2024-11-12", 40.00, 3),
("Manga", "2023-12-08", 13.00, 1),
("Aveia", "2024-08-21", 55.00, 3),
("Sal do Himalaia", "2025-01-05", 92.00, 4);

select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 50 and 150;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id
order by tb_categorias.tipo asc;

select * from tb_produtos inner join tb_categorias
on tb_produtos.categorias_id = tb_categorias.id
where tb_categorias.tipo = "Cereais"
order by nome ASC;



