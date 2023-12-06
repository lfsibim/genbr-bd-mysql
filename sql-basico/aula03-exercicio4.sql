CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(100) NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(150) NOT NULL,
dataValidade DATE NOT NULL,
preco DECIMAL(5,2) NOT NULL,
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, descricao)
VALUES ("Frutas", "Frescas e deliciosas"),
("Legumes", "Frescas e deliciosas"),
("Cereais", "Selecionados a dedo"),
("Temperos", "Perfumados e deliciosos"),
("Bebidas", "Naturais");

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome, dataValidade, preco, categorias_id)
VALUES ("Banana", "2023-12-08", 10.00, 1),
("Brócolis", "2023-12-15", 20.00, 2),
("Suco de Laranja", "2023-12-6", 12.00, 5),
("Maçã", "2023-12-08", 15.00, 1),
("Chimichurri", "2023-12-30", 25.00, 4),
("Trigo", "2024-11-12", 40.00, 3),
("Manga", "2023-12-08", 13.00, 1),
("Aveia", "2024-08-21", 55.00, 3),
("Sal do Himalaia", "2025-01-05", 92.00, 4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT nome, dataValidade, preco, tb_categorias.tipo AS categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
ORDER BY tb_categorias.tipo ASC;

SELECT nome, dataValidade, preco, tb_categorias.tipo AS categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "Cereais"
ORDER BY nome ASC;



