CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_recursoshumanos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nasc DATE,
    salario DECIMAL(6,2) NOT NULL,
    departamento VARCHAR(255),
    turno VARCHAR(255)
    );
    
INSERT INTO tb_recursoshumanos(nome, data_nasc, salario, departamento, turno)
VALUES("Israel Oliveira", "1998-09-08", 7777.77, "TI", "Noite"),
	  ("Rebeca Galdeano", "2002-02-07", 8888.88, "Biomedicina", "Manhã"),
      ("João Silva", "1980-10-10", 1000.50, "Portaria", "Tarde"),
      ("Firmino Silva", "1999-09-09", 1000.90, "Manutenção", "Noite"),
      ("Amanda Loyal", "2000-10-10", 900.99, "Financeiro", "Manhã");
      
SELECT * FROM tb_recursoshumanos;

SELECT * FROM tb_recursoshumanos WHERE salario > 2000.00;

SELECT * FROM tb_recursoshumanos WHERE salario < 2000.00;
      
      




