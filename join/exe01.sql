CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment NOT null,
    tipo varchar(255) NOT null,
    elemento varchar(255) NOT null,
    imunidade varchar(255) NOT null,
    PRIMARY KEY(id)
);

INSERT INTO tb_classes(tipo, elemento, imunidade)
values("LONGA DISTÂNCIA", "FOGO", "ELECTRO");
INSERT INTO tb_classes(tipo, elemento, imunidade)
values("CORPO A CORPO", "ELECTRO", "GELO");
INSERT INTO tb_classes(tipo, elemento, imunidade)
values("LONGA DISTÂNCIA", "GELO", "ÁGUA");
INSERT INTO tb_classes(tipo, elemento, imunidade)
values("CURTA DISTÂNCIA", "VENTO", "GELO");

CREATE TABLE tb_personagens(
	id bigint auto_increment NOT null,
	genero varchar(255),
    nome varchar(255) NOT null,
    tipoArma varchar(255) NOT null,
    poderAtaque bigint NOT null,
    poderDefesa bigint NOT null,
    classe_id bigint NOT null,
    PRIMARY KEY(id),
    FOREIGN KEY(classe_id) REFERENCES tb_classes (id)
);

INSERT INTO tb_personagens(genero, nome, tipoArma, poderAtaque, poderDefesa, classe_id)
values("FEMININO", "Cariany", "ARCO", 1200, 6000, 1);
INSERT INTO tb_personagens(genero, nome, tipoArma, poderAtaque, poderDefesa, classe_id)
values("MASCULINO", "Acelien", "ESPADÃO", 10000, 2000, 4);
INSERT INTO tb_personagens(genero, nome, tipoArma, poderAtaque, poderDefesa, classe_id)
values("FEMININO", "Raiden", "LANÇA", 8000, 4000, 4);
INSERT INTO tb_personagens(genero, nome, tipoArma, poderAtaque, poderDefesa, classe_id)
values("MASCULINO", "Kazuha", "ESPADA", 2000, 6000, 4);
INSERT INTO tb_personagens(genero, nome, tipoArma, poderAtaque, poderDefesa, classe_id)
values("FEMININO", "Cannandra", "LUVAS BOXEADORAS", 7000, 1200, 2);
INSERT INTO tb_personagens(genero, nome, tipoArma, poderAtaque, poderDefesa, classe_id)
values("MASCULINO", "RUBENS", "ARCO", 1900, 5000, 3);
INSERT INTO tb_personagens(genero, nome, tipoArma, poderAtaque, poderDefesa, classe_id)
values("FEMININO", "MIKO", "MAGIA", 8000, 6000, 3);
INSERT INTO tb_personagens(genero, nome, tipoArma, poderAtaque, poderDefesa, classe_id)
values("FEMININO", "Cyanu", "MAGIA", 5000, 3000, 1);
INSERT INTO tb_personagens(genero, nome, tipoArma, poderAtaque, poderDefesa, classe_id)
values("MASCULINO", "OBITO", "MAGIA", 30000, 15000, 3);
INSERT INTO tb_personagens(genero, nome, tipoArma, poderAtaque, poderDefesa, classe_id)
values("FEMININO", "SAKURA", "LUXAS BOXEADORAS", 10000, 4000, 2);
INSERT INTO tb_personagens(genero, nome, tipoArma, poderAtaque, poderDefesa, classe_id)
values("FEMININO", "SAINE", "ESPADÃO", 12000, 3000, 4);
INSERT INTO tb_personagens(genero, nome, tipoArma, poderAtaque, poderDefesa, classe_id)
values("FEMININO", "AMÉLIE", "MAGIA", 900, 30000, 1);

SELECT * FROM tb_personagens WHERE poderAtaque > 2000;

SELECT * FROM tb_personagens WHERE poderAtaque >= 1000 AND poderAtaque <= 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id;

SELECT tb_personagens.id, genero, nome, tipoArma, elemento FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classe_id
WHERE tb_personagens.classe_id = 1 OR tb_personagens.classe_id = 3;
