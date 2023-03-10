CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
    tipo varchar(255) NOT null,
    tamanho varchar(255) NOT null,
    primary key(id)
);

INSERT INTO tb_categorias(tipo, tamanho)
values("Elétrica", "GRANDE");
INSERT INTO tb_categorias(tipo, tamanho)
values("Elétrica", "Média");
INSERT INTO tb_categorias(tipo, tamanho)
values("Elétrica", "Pequena");
INSERT INTO tb_categorias(tipo, tamanho)
values("MANUAL", "GRANDE");
INSERT INTO tb_categorias(tipo, tamanho)
values("MANUAL", "Média");
INSERT INTO tb_categorias(tipo, tamanho)
values("MANUAL", "Pequena");


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
values("Serra Elétrica", 250.00, 2, 1);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("Serra Pequena", 100.10, 2, 5);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("MARTELO", 50.20, 5, 4);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("FURADEIRA", 120.20, 2, 3);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("FURADEIRA", 100.20, 2, 3);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("Caixote de Madeira", 40.00, 10, 6);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("LIXADEIRA", 180.20, 2, 2);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("LIXADEIRA MÉDIA", 280.20, 2, 1);
INSERT INTO tb_produtos(nome, preco, quantidade, categoria_id)
values("Serra Elétrica GRANDE", 450.00, 10, 3);

SELECT nome, preco, quantidade FROM tb_produtos WHERE preco > 100.00;
SELECT * FROM tb_produtos WHERE preco >= 70.00 AND preco <= 150.00;
SELECT * FROM tb_produtos WHERE nome like "%c%";

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos 
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoria_id
where tb_produtos.categoria_id = 1;