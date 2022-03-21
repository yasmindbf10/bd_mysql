CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;
CREATE TABLE tb_categoria(
id bigint auto_increment NOT NULL,
tipo_carne VARCHAR (255),
PRIMARY KEY (id));

INSERT INTO tb_categoria (tipo_carne)
VALUES ("FRANGO");
INSERT INTO tb_categoria (tipo_carne)
VALUES ("BOI");
INSERT INTO tb_categoria (tipo_carne)
VALUES ("PORCO");
INSERT INTO tb_categoria (tipo_carne)
VALUES ("OUTROS");

CREATE TABLE tb_produto (
id bigint auto_increment NOT NULL,
nome VARCHAR (255) NOT NULL,
preco DOUBLE,
peso VARCHAR (255) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id));

INSERT INTO tb_produto (nome, preco, peso, categoria_id)
VALUES ("sobrecoxa", 5, "500gr", 1);
INSERT INTO tb_produto (nome, preco, peso, categoria_id)
VALUES ("bife", 15, "300gr", 2);
INSERT INTO tb_produto (nome, preco, peso, categoria_id)
VALUES ("joelho", 7, "450gr", 3);
INSERT INTO tb_produto (nome, preco, peso, categoria_id)
VALUES ("pão de alho",18, "250gr", 4);
INSERT INTO tb_produto (nome, preco, peso, categoria_id)
VALUES ("carvão", 30, "5kg", 4);

SELECT * FROM tb_produto WHERE preco>50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT* FROM tb_produto WHERE nome LIKE "%c%";
SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo_carne = "OUTROS";