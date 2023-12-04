CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    datanasc DATE NOT NULL,
    sexo VARCHAR(1) NOT NULL,
    anoescolar VARCHAR(50) NOT NULL,
    notageral DECIMAL (3,1) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_estudantes(nome, datanasc, sexo, anoescolar, notageral)
VALUES("Tiago", "2009-05-12", "M", "7o ano", 7.5),
("Maria", "2008-07-26", "F", "9o ano", 8.4),
("Pedro", "2009-01-13", "M", "7o ano", 9.0),
("João", "2010-12-03", "M", "6o ano", 8.1),
("Rafaela", "2011-11-10", "F", "5o ano", 6.5),
("José", "2012-08-17", "M", "5o ano", 5.7),
("Mariana", "2009-02-23", "F", "7o ano", 10.0),
("Bruna", "2011-02-19", "F", "5o ano", 7.9);

SELECT * FROM tb_estudantes WHERE notageral < 7;

SELECT * FROM tb_estudantes WHERE notageral > 7;

UPDATE tb_estudantes SET anoescolar = "8o ano", notageral = 6.0 WHERE id = 3;

SELECT * FROM tb_estudantes;
