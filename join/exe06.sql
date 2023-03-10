CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	id bigint auto_increment NOT null,
    nome varchar(255) NOT null,
    modalidade varchar(255) NOT null,
    duracao varchar(255),
    nivel varchar(255) NOT null,
    PRIMARY KEY(id)
);

INSERT INTO tb_categorias(nome, modalidade, nivel)
value("Java + Spring Boot", "ON-LINE", "Curso-Livre");
INSERT INTO tb_categorias(nome, modalidade, duracao, nivel)
value("Análise e Desenvolvimento de Sistemas", "EAD", "6 SEMESTRES", "TÉCNOLOGO");
INSERT INTO tb_categorias(nome, modalidade, duracao, nivel)
value("CIÊNCIA DA COMPUTAÇÃO", "PRESENCIAL", "8 SEMESTRES","BACHARELADO");
INSERT INTO tb_categorias(nome, modalidade, nivel)
value("Rust", "ON-LINE", "Curso-Livre");
INSERT INTO tb_categorias(nome, modalidade, nivel)
value("C# e .NET", "ON-LINE", "Curso-Livre");

CREATE TABLE tb_cursos(
	id bigint auto_increment,
    professor varchar(255) NOT null,
    faculdade varchar(255),
    plataforma varchar(255),
    valor decimal(6,2),
    tipo varchar(255),
    primary key(id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);


INSERT INTO tb_cursos(professor, plataforma, tipo, categoria_id)
values("GUSTAVO GUANABARA", "YOUTUBE", "GRÁTIS",1);
INSERT INTO tb_cursos(professor, plataforma, tipo, categoria_id)
values("Mariana Freitas", "UDEMY", "GRÁTIS",4);
INSERT INTO tb_cursos(professor, plataforma, tipo, categoria_id)
values("Marcelos Martini", "UDEMY", "GRÁTIS",5);
INSERT INTO tb_cursos(professor, faculdade, valor, tipo, categoria_id)
values("Mario Possani", "USP", 0.00, "PÚBLICA",3);
INSERT INTO tb_cursos(professor, faculdade, valor, tipo, categoria_id)
values("Moíra Freitas Quizia", "PUC", 3400.00, "PRIVADA",2);
INSERT INTO tb_cursos(professor, faculdade, valor, tipo, categoria_id)
values("Mario Possani", "FIAP", 2000.00, "PRIVADA",3);
INSERT INTO tb_cursos(professor, faculdade, valor, tipo, categoria_id)
values("ANA FRITAS", "IMPACTA", 400.00, "PRIVADA",2);
INSERT INTO tb_cursos(professor, plataforma, tipo, categoria_id)
values("LOIANE", "YOUTUBE", "GRÁTIS",1);
INSERT INTO tb_cursos(professor, plataforma, tipo, categoria_id)
values("NÉLIO ALVES", "UDEMY", "GRÁTIS",1);

SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor between 600.00 and 1000;
SELECT * FROM tb_categorias WHERE nome like "%j%";
SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categoria_id;

SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_categorias.id = tb_cursos.categoria_id
WHERE plataforma = "UDEMY";