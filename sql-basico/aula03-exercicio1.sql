CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
faccao ENUM('Horda', 'Aliança') NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome, faccao)
VALUES ("Guerreiro", "Horda"),
("Guerreiro", "Aliança"),
("Mago", "Horda"),
("Mago", "Aliança"),
("Arqueiro", "Horda"),
("Arqueiro", "Aliança");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
ataque INT NOT NULL,
defesa INT NOT NULL,
vida INT NOT NULL,
agilidade INT NOT NULL,
inteligencia INT NOT NULL,
sorte INT NOT NULL,
classes_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, ataque, defesa, vida, agilidade, inteligencia, sorte, classes_id)
VALUES ("João", 1000, 500, 800, 2000, 200, 500, 5),
("José", 1500, 800, 1000, 500, 600, 500, 2),
("Claudio", 3000, 1000, 800, 500, 100, 800, 1),
("Ezequiel", 4000, 2500, 3000, 1200, 400, 1000, 4),
("Dionisio", 1900, 1500, 1500, 1000, 5000, 500, 6),
("Joaquim", 2200, 500, 600, 200, 2300, 100, 3);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, ataque, defesa, vida, agilidade, inteligencia, sorte, tb_classes.tipo, tb_classes.faccao
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
ORDER BY nome ASC;

SELECT nome, ataque, defesa, vida, agilidade, inteligencia, sorte, tb_classes.tipo, tb_classes.faccao
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.tipo = "Guerreiro";







