CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(100) NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(150) NOT NULL,
tamanho ENUM('Broto', 'Média', 'Grande', 'Não se aplica') DEFAULT 'Não se aplica',
borda ENUM('Normal', 'Recheada', 'Não se aplica') DEFAULT 'Não se aplica',
adicional VARCHAR(255) DEFAULT 'Não se aplica',
preco DECIMAL(5,2) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, descricao)
VALUES ("Salgada", "Ingredientes de qualidade e selecionados a dedo"),
("Doce", "Ingredientes de qualidade e selecionados a dedo"),
("Vegetariana", "Ingredientes de qualidade e selecionados a dedo"),
("Fermentação natural", "Ingredientes de qualidade e selecionados a dedo"),
("Esfiha", "Ingredientes de qualidade e selecionados a dedo");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas(sabor, tamanho, borda, adicional, preco, categoria_id)
VALUES ("Portuguesa", "Média", "Recheada", DEFAULT, 70.99, 1),
("Calabresa", "Grande", "Normal", "Bacon", 90, 1),
("Chocolate", "Broto", "Normal", DEFAULT, 50, 2),
("Shimeji", "Média", "Normal", DEFAULT, 65.99, 3),
("Carne", DEFAULT, DEFAULT, DEFAULT, 19.50, 5),
("Queijo", DEFAULT, DEFAULT, DEFAULT, 19.50, 5),
("Palmito", "Broto", "Recheada", DEFAULT, 35, 3),
("Romeu e Julieta", "Grande", "Recheada", DEFAULT, 72, 4);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT sabor, tamanho, borda, adicional, preco, tb_categorias.tipo AS categoria, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
ORDER BY tb_pizzas.sabor DESC;

SELECT sabor, tamanho, borda, adicional, preco, tb_categorias.tipo AS categoria, tb_categorias.descricao 
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Salgada";









