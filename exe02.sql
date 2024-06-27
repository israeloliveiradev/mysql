CREATE DATABASE db_lojavirtual;

USE db_lojavirtual;

CREATE TABLE tb_lojavirtual(
	sku BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(255),
	quantidade BIGINT,
    preco DECIMAL(6,2) NOT NULL,
    categoria VARCHAR(255) NOT NULL, 
    data_entrada DATE
    );
    
    SELECT * FROM tb_lojavirtual;
    
	INSERT INTO tb_lojavirtual(nome, marca, quantidade, preco, categoria, data_entrada)
    VALUES("Trakinas", "Mondelez", 20, 4.20, "Guloseimas", "2024-06-20"),
          ("Fandangos", "Elma Chips", 30, 5.50, "Guloseimas", "2024-06-20"),
          ("Ruffles", "Elma Chips", 10, 6.20, "Guloseimas", "2024-06-19"),
          ("Diamante Negro", "Nestle", 7, 8.80, "Guloseimas", "2024-06-15"),
          ("Esfiha Carne", "Genérico", 20, 5.00, "Perecíveis", "2024-06-26"),
          ("Esfiha Queijo", "Genérico", 20, 5.00, "Perecíveis", "2024-06-26");
          
	INSERT INTO tb_lojavirtual(nome, marca, quantidade, preco, categoria, data_entrada)
    VALUES('Esfiha Calabresa', 'Genérico', 20, 5.00, 'Pereciveis', "2024-06-26"),
		   ('Coca Cola Zero', 'Coca-Cola', 30, 900.00, 'Liquidos', "2024-05-08"),
		   ('Fanta Uva', 'Coca-Cola', 50 , 850.90, 'Liquidos','2024-06-19');
           
	
    SELECT * FROM tb_lojavirtual WHERE preco > 500.00;
    
    SELECT * FROM tb_lojavirtual WHERE preco < 500.00;
    
    SET SQL_SAFE_UPDATES = 0;
    
    UPDATE tb_lojavirtual SET preco = 750.90 WHERE preco < 500;
    
    UPDATE tb_lojavirtual SET preco = 10.90 WHERE sku = 1;
                
                
                
          
          
          
          
          