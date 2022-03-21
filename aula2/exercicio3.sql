CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;
CREATE TABLE tb_categoria(
id bigint auto_increment NOT NULL,
descricao VARCHAR (255) NOT NULL,
uso VARCHAR (255) NOT NULL,
controlado BOOLEAN,
PRIMARY KEY (id));

INSERT INTO tb_categoria (descricao, uso, controlado)
VALUES ("1 comprimido a cada 4 horas", "contínuo", false);
INSERT INTO tb_categoria (descricao, uso, controlado)
VALUES ("quando em crise", "esporádico", true);
INSERT INTO tb_categoria (descricao, uso, controlado)
VALUES ("aplicar uma ampola", "contínuo", true);

CREATE TABLE tb_produtos(
id bigint auto_increment NOT NULL,
nome VARCHAR (255) NOT NULL,
marca VARCHAR (255) NOT NULL,
preco DOUBLE,
contraindicacao VARCHAR (255)NOT NULL,
generico BOOLEAN,
id_categoria bigint,
PRIMARY KEY(id),
FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id));

INSERT INTO tb_produtos (nome, marca, preco, contraindicacao, generico,id_categoria)
VALUES ("Alivium", "MASTERMEDIOS", 20.99, "NÃO USAR EM CASO DE SUSPEITA DE DENGUE", TRUE, 1);

INSERT INTO tb_produtos (nome, marca, preco, contraindicacao, generico, id_categoria)
VALUES ("Atchithim", "M.elecamedios", 66.66, "NÃO USAR EM CASO E SUSPEITA DE DENGUE", TRUE, 3);

INSERT INTO tb_produtos (nome, marca, preco, contraindicacao, generico,id_categoria)
VALUES ("Semsonum", "SONOMEDIOS", 39.99, "NÃO USAR EM CASO DE SUSPEITA DE DENGUE", FALSE, 2);

INSERT INTO tb_produtos (nome, marca, preco, contraindicacao, generico,id_categoria)
VALUES ("Comsonum", "SONOMEDIOS", 39.99, "NÃO USAR EM CASO DE SUSPEITA DE DENGUE", FALSE, 2);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 3 and 60;
SELECT * FROM tb_produtos WHERE nome LIKE "%b%";
SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.id_categoria  = tb_categoria.id;
SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_produtos.id_categoria = tb_categoria.id
WHERE tb_produtos.generico = true;