CREATE DATABASE bd_generation_game_online;
USE bd_generation_game_online;
CREATE TABLE tb_classe (
id bigint AUTO_INCREMENT NOT NULL,
classe VARCHAR (255) NOT NULL,
habilidade VARCHAR (255) NOT NULL,
arma VARCHAR (255) NOT NULL,
PRIMARY KEY(id));

 INSERT INTO tb_classe (classe, habilidade, arma)
VALUES ("arqueiro", "flecha de fogo", "arco e flecha");
INSERT INTO tb_classe (classe, habilidade,arma)
VALUES ("elfo", "distrair", "meia");
INSERT INTO tb_classe (classe, habilidade, arma)
VALUES ("curandeiro", "cura", "ünguento");

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
num BIGINT AUTO_INCREMENT NOT NULL,
nome VARCHAR (255) NOT NULL,
ataque INT,
defesa INT,
PRIMARY KEY (num),
classe_id bigint,
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);


INSERT INTO tb_personagem (nome, ataque, defesa, classe_id )
VALUES ("JENIFFER", 2000, 1500, 3);
INSERT INTO tb_personagem (nome, ataque, defesa, classe_id )
VALUES ("OSCAR", 5000, 500, 1 );
INSERT INTO tb_personagem (nome, ataque, defesa, classe_id )
VALUES ("AMBAR", 100, 100, 2);
INSERT INTO tb_personagem (nome, ataque, defesa, classe_id )
VALUES ("JR", 3200, 5000, 1);
INSERT INTO tb_personagem (nome, ataque, defesa, classe_id )
VALUES ("ARTHUR", 1000, 3000, 3);

SELECT * FROM tb_personagem;
SELECT * FROM tb_personagem WHERE ataque> 2000;
SELECT * FROM tb_personagem WHERE ataque BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "%c%";
SELECT * FROM tb_personagem WHERE classe_id = 1; -- todos personagens de uma classe específica
SELECT * FROM tb_personagem INNER JOIN tb_classe 
ON tb_personagem.classe_id = tb_classe.id
WHERE tb_classe.classe = "arqueiro"; -- todos personagens de uma classe específica
SELECT * FROM tb_personagem INNER JOIN tb_classe 
ON tb_personagem.classe_id = tb_classe.id;