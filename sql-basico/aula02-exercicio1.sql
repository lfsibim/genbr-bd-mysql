CREATE DATABASE db_colaboradores;
USE db_colaboradores;

CREATE TABLE tb_colaboradores(
	id_cracha BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    salario DECIMAL(8,2) NOT NULL,
    admissao DATE NOT NULL,
    primary key (id_cracha)
);

SELECT * FROM tb_colaboradores;

INSERT INTO tb_colaboradores(nome, cargo, salario, admissao)
VALUES ("Maria Silva", "CEO", 100000.00, "2023-01-01"),
("José Santos", "Diretor", 50000.00, "2023-01-01"),
("João Teixeira", "Gerente", 22000.49, "2023-01-01"),
("Bruna Souza", "Analista Administrativo", 1499.99, "2023-01-01"),
("Tiago Medeiros", "Secretário", 1000.49, "2023-01-01");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1999.00, cargo = "Analista Administrativo Pleno" WHERE id_cracha = 4;




