CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
	id bigint auto_increment NOT null,
    tipo varchar(255) NOT null,
    dataEstoque date,
    qtdEstoque bigint,
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias(tipo, dataEstoque, qtdEstoque)
values("SUÍNA", "2023-03-01", 2000);
INSERT INTO tb_categorias(tipo, dataEstoque, qtdEstoque)
values("BOVINA", "2023-03-02", 1000);
INSERT INTO tb_categorias(tipo, dataEstoque, qtdEstoque)
values("AVES", "2023-03-03", 3000);
INSERT INTO tb_categorias(tipo, dataEstoque, qtdEstoque)
values("FRIOS", "2023-03-03", 500);
INSERT INTO tb_categorias(tipo, qtdEstoque)
values("VARIADOS E ASSADOS", 2500);

CREATE TABLE tb_produtos(
	id bigint auto_increment NOT null,
    nome varchar(255) NOT null,
    preco decimal(6,2) NOT null,
    quantidade varchar(255) NOT null,
    categoria_id bigint NOT null,
    PRIMARY KEY(id),
    FOREIGN KEY(categoria_id) references tb_categorias(id)
);

INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("PICANHA", 39.60, "3kg", 4);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("BISTECA", 29.60, "1kg", 1);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("FRANGO ASSADO", 35.50, "3kg", 2);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("PEITO DE FRANGO", 24.00, "1kg", 3);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("ESPETINHO DE CARNE", 5.50, "5 unidades", 2);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("QUEIJO PARMESÃO", 75.50, "2KG", 5);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("QUEIJO COALHO", 90.50, "3KG", 5);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("COXA E SOBRECOXA FRANGO", 74.00, "5kg", 3);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("FILÉ MIGNON", 89.60, "3kg", 4);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("COSTELINHA DE PORCO", 79.20, "6kg", 1);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco between 50.00 and 150.00;
SELECT * FROM tb_produtos WHERE nome like "%c%";

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_produtos.categoria_id = 4;

