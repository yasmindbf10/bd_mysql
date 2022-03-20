CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE tb_produtos(
id bigint auto_increment not null,
nome varchar (255) not null,
preço decimal (8,2),
cor varchar (255) not null,
tamanho varchar (255) not null,
garantia date,
PRIMARY KEY (id));

INSERT INTO tb_produtos(nome,preco,cor,tamanho,garantia)
VALUES ("quadros", "50", "variadas", "médio", "2666-06-06");

INSERT INTO tb_produtos(nome,preco,cor,tamanho,garantia)
VALUES ("mandala", "85", "variadas", "grande", "2666-06-06");

INSERT INTO tb_produtos(nome,preco,cor,tamanho,garantia)
VALUES ("geleia", "15", "variadas", "pequeno", "2022-06-06");

INSERT INTO tb_produtos(nome,preco,cor,tamanho,garantia)
VALUES ("cobertor", "600", "variadas", "solteiro", "2666-06-06");

INSERT INTO tb_produtos(nome,preco,cor,tamanho,garantia)
VALUES ("íma de geladeira", "5", "variadas", "minúsculo", "2666-06-06");


ALTER TABLE tb_produtos CHANGE preço preco decimal (8,2);
SELECT * FROM tb_produtos; 
SELECT * FROM tb_produtos where preco>500;
SELECT * FROM tb_produtos where preco<500;
