CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(150) NOT NULL,
descricao VARCHAR(150) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL,
marca VARCHAR(200) NOT NULL,
unidadeMedida VARCHAR(150) NOT NULL,
estoque INT NOT NULL,
preco DECIMAL(6,2) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, descricao)
VALUES ("Referência", "Detentor da patente"),
("Genérico", "Qualidade com custo reduzido"),
("Manipulado", "Produzido de acordo com sua necessidade"),
("Natural", "Produzido apenas com substâncias naturais."),
("Suplemento", "Complemente sua alimentação");

INSERT INTO tb_produtos(nome, marca, unidadeMedida, estoque, preco, categoria_id)
VALUES ("Paracetamol", "Medley", "20ml", 40, 12.90, 2),
("Nutren Senior", "Nestlé", "740g", 10, 129.99, 5),
("Minoxidil", "Bem Estar Farma", "60ml", 2, 69.90, 3),
("Valeriana", "Polinize Florais", "30ml", 15, 38.60, 4),
("Clavulin", "GSK", "20 cp", 25, 132.70, 1),
("Loratadina", "Cimed", "100ml", 30, 7.40, 2),
("Buscopan", "Buscopan", "20 cp", 5, 18.20, 1),
("Biozinc", "Aché", "75ml", 23, 34.99, 5),
("Maracujá Passiflora", "Herbarium", "25 cp", 9, 19, 4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, marca, unidadeMedida, estoque, preco, tb_categorias.tipo AS categoria, tb_categorias.descricao
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
ORDER BY categoria ASC;

SELECT nome, marca, unidadeMedida, estoque, preco, tb_categorias.tipo AS categoria, tb_categorias.descricao
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Referência"
ORDER BY tb_produtos.nome ASC;





