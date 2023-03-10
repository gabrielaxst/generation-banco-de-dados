CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment NOT null,
sabor varchar(255) NOT null,
bordaRecheada boolean NOT null,
tamanho varchar(255) NOT null,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(sabor, bordaRecheada, tamanho)
values("DOCE", true, "GRANDE");
INSERT INTO tb_categorias(sabor, bordaRecheada, tamanho)
values("MISTA", true, "GRANDE");
INSERT INTO tb_categorias(sabor, bordaRecheada, tamanho)
values("DOCE", false, "MÉDIA");
INSERT INTO tb_categorias(sabor, bordaRecheada, tamanho)
values("MISTA", false, "MÉDIA");
INSERT INTO tb_categorias(sabor, bordaRecheada, tamanho)
values("SALGADA", true, "GRANDE");
INSERT INTO tb_categorias(sabor, bordaRecheada, tamanho)
values("SALGADA", false, "MÉDIA");

CREATE TABLE tb_pizzas (
  id bigint NOT NULL AUTO_INCREMENT,
  nome varchar(255) NOT NULL,
  preco decimal(6,2) NOT NULL,
  saborBorda varchar(255) DEFAULT NULL,
  quantidade bigint NOT NULL,
  categoria_id bigint NOT NULL,
  PRIMARY KEY (id),
  foreign key (categoria_id) references tb.categorias (id)
 );

INSERT INTO tb_pizzas(nome, preco, quantidade, categoria_id)
values("CALABRESA E CEBOLA", 55.99, 2, 6);
INSERT INTO tb_pizzas(nome, preco, saborBorda, quantidade, categoria_id)
values("BRIGADEIRO", 75.49, "BEIJINHO", 3, 1);
INSERT INTO tb_pizzas(nome, preco, saborBorda, quantidade, categoria_id)
values("BRIGADEIRO E FRANGO COM MUSSARELA", 155.12, "CATUPIRY", 10, 2);
INSERT INTO tb_pizzas(nome, preco, saborBorda, quantidade, categoria_id)
values("CALABRESA E MUSSARELA", 78.00, "CATUPIRY", 2, 5);
INSERT INTO tb_pizzas(nome, preco, quantidade, categoria_id)
values("DOCE DE BANANA", 43.25, 10, 3);
INSERT INTO tb_pizzas(nome, preco, quantidade, categoria_id)
values("4 QUEIJOS E FRANGO", 40.99, 12, 4);
INSERT INTO tb_pizzas(nome, preco, quantidade, categoria_id)
values("2 QUEIJOS E PRESUNTO", 90.19, 12, 4);
INSERT INTO tb_pizzas(nome, preco, saborBorda, quantidade, categoria_id)
values("BAIANA", 78.00, "CATUPIRY", 2, 5);
INSERT INTO tb_pizzas(nome, preco, quantidade, categoria_id)
values("BEIJINHO", 65.99, 2, 1);

update tb_pizzas SET nome = "2 QUEIJOS E PRESUNTO" where id = 7;

select * from tb_pizzas WHERE preco > 45.00;
select * from tb_pizzas WHERE preco between 50.00 and 100.00;
select * from tb_pizzas WHERE nome like "%m%";

select * from tb_pizzas
inner join tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

select * from tb_pizzas
inner join tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id
where categoria_id = 1 OR categoria_id = 3;