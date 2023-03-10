CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
	id bigint auto_increment NOT null,
    tipo varchar(255) NOT null,
    restricao varchar(255) NOT null,
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias(tipo, restricao)
values("MEDICAMENTO", "NECESSÁRIO RECEITA MÉDICA");
INSERT INTO tb_categorias(tipo, restricao)
values("COSMÉTICO", "LIVRE DE RESTRIÇÕES");
INSERT INTO tb_categorias(tipo, restricao)
values("SUPLEMENTO ALIMENTAR", "RECEITA MÉDICA");
INSERT INTO tb_categorias(tipo, restricao)
values("SUPLEMENTO ALIMENTAR", "MAIORES DE 16 ANOS");
INSERT INTO tb_categorias(tipo, restricao)
values("MEDICAMENTO", "MAIORES DE 12 ANOS");

CREATE TABLE tb_produtos(
	id bigint auto_increment NOT null,
    nome varchar(255) NOT null,
    preco decimal(6,2) NOT null,
    estoque bigint,
    categoria_id bigint NOT null,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) references tb_categorias(id)
);
ALTER TABLE tb_produtos MODIFY categoria_id bigint NOT null;
INSERT INTO tb_produtos(nome, preco, estoque, categoria_id)
values("DESODORANTE", 14.60, 200, 2);
INSERT INTO tb_produtos(nome, preco, estoque, categoria_id)
values("ANTIBIÓTICO Adelicina", 254.60, 50, 1);
INSERT INTO tb_produtos(nome, preco, estoque, categoria_id)
values("ANTI-INFLAMATÓRIO Malecina", 4.69, 550, 5);
INSERT INTO tb_produtos(nome, preco, estoque, categoria_id)
values("WHEY PROTAIN", 84.69, 650, 4);
INSERT INTO tb_produtos(nome, preco, estoque, categoria_id)
values("SUPLEMENTO OSSOS Fenicida", 384.29, 40, 3);
INSERT INTO tb_produtos(nome, preco, estoque, categoria_id)
values("MAQUIAGEM VULT BASE", 34.60, 900, 2);
INSERT INTO tb_produtos(nome, preco, estoque, categoria_id)
values("ANTIBIÓTICO Amelicina", 341.00, 250, 1);
INSERT INTO tb_produtos(nome, preco, estoque, categoria_id)
values("ANTI-INFLAMATÓRIO Calecina", 12.66, 430, 5);
INSERT INTO tb_produtos(nome, preco, estoque, categoria_id)
values("WHEY PROTEIN Baunilha", 82.61, 550, 4);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco between 5.00 and 60.00;
SELECT * FROM tb_produtos WHERE nome like "%c%";

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_produtos.categoria_id = 2;
