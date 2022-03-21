CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;
CREATE TABLE tb_categoria(
id BIGINT auto_increment NOT NULL,
encontro_presencial BOOLEAN,
apostila_inclusa BOOLEAN,
PRIMARY KEY (id));

INSERT INTO tb_categoria (encontro_presencial, apostila_inclusa)
VALUES (TRUE,TRUE);
INSERT INTO tb_categoria (encontro_presencial, apostila_inclusa)
VALUES (FALSE,TRUE);
INSERT INTO tb_categoria (encontro_presencial, apostila_inclusa)
VALUES (TRUE,FALSE);
INSERT INTO tb_categoria (encontro_presencial, apostila_inclusa)
VALUES (FALSE,FALSE);

CREATE TABLE tb_curso (
id BIGINT auto_increment NOT NULL,
nome VARCHAR (255) NOT NULL,
tipo VARCHAR (255) NOT NULL,
materias VARCHAR (255)NOT NULL,
preco DOUBLE,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id));

INSERT INTO tb_curso(nome, tipo, materias, categoria_id, preco)
VALUES("GESTÃO", "CURSO LIVRE", "ADMINISTRATIVAS", 1, 111.1);
INSERT INTO tb_curso(nome, tipo, materias, categoria_id, preco)
VALUES("BIOLOGIA MARINHA", "POS GRADUAÇÃO", "BIOLOGICAS", 2, 222.2);
INSERT INTO tb_curso(nome, tipo, materias, categoria_id, preco)
VALUES("LITERATURA", "GRADUAÇÃO", "IDIOMATICAS", 3, 33.3);
INSERT INTO tb_curso(nome, tipo, materias, categoria_id, preco)
VALUES("PRIMEIROS SOCORROS", "CURSO LIVRE", " ", 4, 0.0);

SELECT * FROM tb_curso WHERE preco>50;
SELECT * FROM tb_curso WHERE preco BETWEEN 3 AND 60;
SELECT* FROM tb_curso WHERE nome LIKE "%J%";
SELECT* FROM tb_curso INNER JOIN tb_categoria
ON tb_curso.categoria_id = tb_categoria.id;
SELECT* FROM tb_curso INNER JOIN tb_categoria
ON tb_curso.categoria_id = tb_categoria.id
WHERE tb_curso.tipo = "CURSO LIVRE";
