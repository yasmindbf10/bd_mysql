CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;
CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT NOT NULL,
tipo_material VARCHAR (255) NOT NULL,
PRIMARY KEY (id));

INSERT INTO tb_categoria(tipo_material)
VALUE ("MADEIRA");
INSERT INTO tb_categoria (tipo_material)
VALUE ("PORCELANATO");
INSERT INTO tb_categoria (tipo_material)
VALUE ("VIDRO");
INSERT INTO tb_categoria (tipo_material)
VALUE ("TECIDO");
INSERT INTO tb_categoria (tipo_material)
VALUE ("OUTROS");

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto (
id BIGINT auto_increment NOT NULL,
nome VARCHAR (255)NOT NULL,
preco DOUBLE,
cor VARCHAR (255)NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_produto (id));

INSERT INTO tb_produto(nome,preco,cor,categoria_id)
VALUES ("PISO123", 50, "CASTANHO", 1);
INSERT INTO tb_produto(nome,preco,cor,categoria_id)
VALUES ("PISO666", 100, "OFFWHITE", 2);
INSERT INTO tb_produto(nome,preco,cor,categoria_id)
VALUES ("JANELA", 200, "TRANSLUCIDO", 3);
INSERT INTO tb_produto(nome,preco,cor,categoria_id)
VALUES ("PORTA", 500, "CASTANHO ESCURO", 1);
INSERT INTO tb_produto(nome,preco,cor,categoria_id)
VALUES ("CORTINA", 85, "VARIADAS", 4);
INSERT INTO tb_produto(nome,preco,cor,categoria_id)
VALUES ("ABAJUR", 108, "ROXO", 5);

SELECT * FROM tb_produto;
SELECT * FROM tb_produto WHERE preco>50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "%c%";
SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;
SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.tipo_material = "MADEIRA";


