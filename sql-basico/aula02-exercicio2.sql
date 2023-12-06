CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(150) NOT NULL,
    categoria VARCHAR(150) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, categoria, quantidade, preco)
VALUE ("Playstation 5", "Console", 20, 3499.00),
("Playstation 4", "Console", 5, 1999.99),
("Xbox Series X", "Console", 35, 3200.00),
("Controle Dualsense PS5", "Console", 100, 349.99),
("Controle Xbox", "Console", 40, 220.00),
("PC Zeus", "PC Gamer", 20, 12000.00),
("PC Odin", "PC Gamer", 12, 8999.00),
("Notebook Pegasus", "Eletrônicos", 20, 2499.80);

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET quantidade = 1, preco = 1799.00 WHERE id = 2;

SELECT * FROM tb_produtos WHERE id = 2;
 