CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;
CREATE TABLE tb_categoria (
id bigint auto_increment NOT NULL,
tamanho VARCHAR (255)NOT NULL,
sabor VARCHAR (255) NOT NULL,
PRIMARY KEY (id));

INSERT INTO tb_categoria (tamanho, sabor)
VALUE ("grande", "salgada");
INSERT INTO tb_categoria (tamanho, sabor)
VALUE ("média", "salgada");
INSERT INTO tb_categoria (tamanho, sabor)
VALUE ("brotinho", "salgada");
INSERT INTO tb_categoria (tamanho, sabor)
VALUE ("brotinho", "doce");
INSERT INTO tb_categoria (tamanho, sabor)
VALUE ("média", "doce");

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza (
id bigint auto_increment NOT NULL,
preco DOUBLE,
entrega VARCHAR(255) NOT NULL,
pagamento VARCHAR (255) NOT NULL,
refrigerante BOOLEAN,
aviso VARCHAR (255),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id));

INSERT INTO tb_pizza (preco, entrega, pagamento, refrigerante, aviso, categoria_id)
VALUES (50.3, "balcão", "pix", TRUE, "tirar cebola", 1);
INSERT INTO tb_pizza (preco, entrega, pagamento, refrigerante, aviso, categoria_id)
VALUES (10, "delivery", "dinheiro", false, "", 4) ;
INSERT INTO tb_pizza (preco, entrega, pagamento, refrigerante, aviso, categoria_id)
VALUES (27.88, "balcao", "cartão", TRUE, "acrescentar bacon", 2);
INSERT INTO tb_pizza (preco, entrega, pagamento, refrigerante, aviso, categoria_id)
VALUES (7.5, "balcão", "cartão", TRUE, "não colocar orégano", 3);
INSERT INTO tb_pizza (preco, entrega, pagamento, refrigerante, aviso, categoria_id)
VALUES (68.88, "delivery", "pix", TRUE, "escrever Parabéns", 5);

SELECT * FROM tb_pizza;
SELECT * FROM tb_pizza WHERE preco>45;
SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;
SELECT * FROM tb_pizza WHERE aviso LIKE "%c%";
SELECT * FROM tb_pizza INNER JOIN tb_categoria 
ON tb_pizza.categoria_id = tb_categoria.id;

SELECT * FROM tb_pizza INNER JOIN tb_categoria 
ON tb_pizza.categoria_id = tb_categoria.id
WHERE tb_categoria.sabor = "doce";