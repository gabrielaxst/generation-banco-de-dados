CREATE DATABASE db_produtoecommerce;

USE db_produtoecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) NOT null,
    marca varchar(255),
	preco decimal(6,2) NOT null,
    qtdEstoque bigint NOT null,
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome, marca, preco, qtdEstoque)
value("Samsung Galaxy S23", "Samsung", 2300.99, 15);
INSERT INTO tb_produtos(nome, marca, preco, qtdEstoque)
value("Notebook Gamer Legion 5", "Legion", 6599.9345, 30);
INSERT INTO tb_produtos(nome, marca, preco, qtdEstoque)
value("Apple iPhone 14 Pro (128 GB)", "Apple", 9589.12345, 50);
INSERT INTO tb_produtos(nome, marca, preco, qtdEstoque)
value("Apple Macbook", "Apple", 19989.78456, 50);
INSERT INTO tb_produtos(nome, marca, preco, qtdEstoque)
value("Tenis AllStar Branco", "AllStar", 199.4455, 10);
INSERT INTO tb_produtos(nome, marca, preco, qtdEstoque)
value("Cadeira Gamer", "Etenio", 3989.645389, 40);
INSERT INTO tb_produtos(nome, marca, preco, qtdEstoque)
value("HeadPhone", "Etenio", 989.99, 140);
INSERT INTO tb_produtos(nome, marca, preco, qtdEstoque)
value("Mesa Notebook AJustável", "Elipses", 999.997, 100);
INSERT INTO tb_produtos(nome, marca, preco, qtdEstoque)
value("Tenis Nike RUN X90", "NIKE", 1999.998, 10);
INSERT INTO tb_produtos(nome, marca, preco, qtdEstoque)
value("PC GAMER", "ASUS", 13999.998, 10);

ALTER TABLE tb_produtos MODIFY preco decimal(10,4);

UPDATE tb_produtos SET preco = 1999.9986 where id = 8;

UPDATE tb_produtos SET preco = 999.9970 where id = 7;

DELETE FROM tb_produtos WHERE id = 10;

UPDATE tb_produtos SET id = 10 where id = 11;

SELECT TRUNCATE(preco,2) AS precoDuasCasasDecimais
FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;
UPDATE tb_produtos SET id = 10 where id = 11;

SELECT * FROM tb_produtos;

