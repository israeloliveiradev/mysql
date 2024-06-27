CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    vida INT NOT NULL
);

INSERT INTO tb_classes(descricao, vida)
VALUES("Mago", 2500),
	  ("Assasino", 3000),
      ("Lutador", 5000),
      ("Atirador", 2800),
      ("Tanque", 7000);
      
      

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    ataque INT NOT NULL,
    defesa INT NOT NULL,
    armadura INT NOT NULL,
    classesid BIGINT,
    FOREIGN KEY (classesid) REFERENCES tb_classes(id)
    );
    
    INSERT INTO tb_personagens (nome, ataque, defesa, armadura, classesid)
    VALUES ("Veigar", 2000, 1000, 300, 1),
		   ("Lux", 2500, 950, 300, 1),
           ("Jax", 3500, 1500, 500, 3),
           ("Olaf", 3000, 1700, 600, 3),
           ("Shaco", 4500, 1500, 300, 2),
           ("Evelynn", 4000, 1300, 470, 2),
           ("Ashe", 3900, 1200, 670, 4),
           ("Jhin", 4000, 1780, 500, 4),
           ("Singed", 1500, 3000, 800, 5),
           ("Zac", 1350, 3500, 800, 5);
           
           
           SELECT * FROM tb_personagens WHERE ataque > 2000;
           
           SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
           
           SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
           
           SELECT nome, ataque, defesa, armadura, tb_classes.descricao, tb_classes.vida
           FROM tb_personagens 
           INNER JOIN tb_classes
           ON tb_personagens.classesid = tb_classes.id
           WHERE tb_classes.descricao = "Tanque";
           
           
           
           
    
    
