CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_funcionaries(
id bigint auto_increment not null,
nome varchar(255) not null,
cargo varchar(255) not null,
setor varchar(255) not null,
salario decimal,
admissao date,
PRIMARY KEY (id)
);
INSERT INTO tb_funcionaries (nome, cargo, setor, salario, admissao)
VALUES ("Ana", "secretaria", "presidencia", "3500", "2009-05-06");

INSERT INTO tb_funcionaries (nome, cargo, setor, salario, admissao)
VALUES ("Mariana", "dev", "TI", "5500", "2020-10-06");

INSERT INTO tb_funcionaries (nome, cargo, setor, salario, admissao)
VALUES ("Rafael", "dev jr", "TI", "2500", "2020-12-06");

INSERT INTO tb_funcionaries (nome, cargo, setor, salario, admissao)
VALUES ("Miguel", "recepcionista", "presidencia", "1500", "2020-01-06");

INSERT INTO tb_funcionaries (nome, cargo, setor, salario, admissao)
VALUES ("Belinda", "tesoureira", "finanças", "2760", "2020-02-06");

SELECT * FROM tb_funcionaries;
ALTER TABLE tb_funcionaries MODIFY salario decimal(8,2);
SELECT * FROM tb_funcionaries WHERE salario>2000;
SELECT * FROM tb_funcionaries WHERE salario<2000;

