CREATE DATABASE db_notas;

USE db_notas;

CREATE TABLE tb_alunos(
	ra BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nota_final DECIMAL(4,2) NOT NULL
    );
    
    ALTER TABLE tb_alunos ADD faltas BIGINT;
    ALTER TABLE tb_alunos ADD resultado VARCHAR(255);
    
	INSERT INTO tb_alunos(nome, nota_final, faltas, resultado)
    VALUES("Israel", 9.9, 5, "Aprovado(a)!"),
		  ("Rebeca", 10.0, 1, "Aprovado(a)!"),
          ("Firmino", 4.0, 5, "Reprovado(a)!"),
		  ("Julia", 2.0, 1, "Reprovado(a)!");
          
          
		SELECT * FROM tb_alunos WHERE nota_final < 7;
        
        SELECT * FROM tb_alunos WHERE nota_final > 7;
          
    
    
    
    
    
    

   