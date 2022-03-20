CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_alunes(
id bigint auto_increment not null,
nome varchar(255) not null,
sexo varchar(255) not null,
registro_aluno varchar (255),
serie varchar (255),
nota decimal (2,2),
PRIMARY KEY (id));

INSERT INTO tb_alunes (nome,sexo,registro_aluno,serie,nota)
VALUES ("Sanchez", "masc", "RA666", "3", "7");

INSERT INTO tb_alunes (nome,sexo,registro_aluno,serie,nota)
VALUES ("Mariana", "fem", "RA456", "1", "2.75");

INSERT INTO tb_alunes (nome,sexo,registro_aluno,serie,nota)
VALUES ("Tech", "outros", "RA555", "5", "5.55");

INSERT INTO tb_alunes (nome,sexo,registro_aluno,serie,nota)
VALUES ("Wagnão", "masc", "RA001", "8", "9.99");

INSERT INTO tb_alunes (nome,sexo,registro_aluno,serie,nota)
VALUES ("Denise", "fem", "RA777", "2", "6.6");

ALTER TABLE tb_alunes CHANGE nota nota double;
SELECT * FROM tb_alunes WHERE nota>7;
SELECT * FROM tb_alunes WHERE nota<7;
 
 SELECT * FROM tb_alunes;