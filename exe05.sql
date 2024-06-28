CREATE DATABASE db_pizzaria_8setembro;

USE db_pizzaria_8setembro;

	CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    massa VARCHAR(255),
    tipo VARCHAR(255)
    );
    
    SELECT * FROM tb_categorias;
    
    INSERT INTO tb_categorias(massa, tipo)
    VALUES ("Napolitana", "Tradicional"),
		   ("Napolitana", "Vegana"),
           ("Paulista", "Vegetariana"),
           ("Paulista", "Tradicional"),
           ("Romana", "Vegana"),
           ("Romana", "Vegetariana");
           
           SELECT * FROM tb_categorias;
           
	CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(255) NOT NULL,
    pedacos INT NOT NULL,
    borda VARCHAR(255),
    valor DECIMAL (6,2),
    pizzasid BIGINT NOT NULL,
    FOREIGN KEY (pizzasid) REFERENCES tb_categorias(id)
    );
    
    SELECT * FROM tb_pizzas;
    
    INSERT INTO tb_pizzas(sabor, pedacos, borda, valor, pizzasid)
	VALUES ("Calabresa", 8, "Catupiry", 45.0, 1),
		   ("Mussarela", 8, "Cheddar", 45.0, 4),
           ("Chocolate", 16, "Nutella", 60.7, 3),
		   ("Romeu e Julieta", 8, "Doce de Leite", 65.7, 1),
           ("Brócolis", 4, "Requeijão Vegano", 60.90, 6);
           
	INSERT INTO tb_pizzas(sabor, pedacos, borda, valor, pizzasid)
    VALUES ("Grão de Bico", 8, "Requeijão Vegano", 62.80, 6);
    
    INSERT INTO tb_pizzas(sabor, pedacos, borda, valor, pizzasid)
    VALUES("Berinjela com Queijo Vegano", 16, "Cheddar Vegano", 67.80, 5);
			
	
    SELECT * FROM tb_pizzas;
    
    
    SELECT * FROM tb_pizzas WHERE valor > 45.00;
    
    SELECT * FROM tb_pizzas where valor BETWEEN 50.00 AND 100.00;
    
    SELECT * FROM tb_pizzas WHERE sabor LIKE "%c%";
    
    SELECT sabor, pedacos, borda, valor, tb_categorias.massa, tb_categorias.tipo
    FROM tb_pizzas INNER JOIN tb_categorias 
    ON tb_pizzas.pizzasid = tb_categorias.id;
    
    SELECT sabor, pedacos, borda, valor, tb_categorias.massa, tb_categorias.tipo
    FROM tb_pizzas INNER JOIN tb_categorias 
    ON tb_pizzas.pizzasid = tb_categorias.id
    WHERE tb_categorias.tipo = "Vegana";
           
           

           

    
    
    
