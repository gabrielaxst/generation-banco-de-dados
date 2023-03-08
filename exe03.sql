CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	ra bigint auto_increment,
    cpf varchar(11),
    nome varchar(255),
    nomeEscola varchar(255),
    ensinoIntegral boolean,
    PRIMARY KEY(ra)
);

INSERT INTO tb_alunos(ra, cpf, nome, nomeEscola, ensinoIntegral)
values(1230, "12345678910", "Aline Moura", "Escola Eleonor Martins", true);
INSERT INTO tb_alunos(cpf, nome, nomeEscola, ensinoIntegral)
values("22345678910", "Suzana Freitas de Moura", "Escola Acelío Queiroz", false);
INSERT INTO tb_alunos(cpf, nome, nomeEscola, ensinoIntegral)
values("32345678911", "Raphael Santos", "Escola Objetivo II", false);
INSERT INTO tb_alunos(cpf, nome, nomeEscola, ensinoIntegral)
values("42345678911", "Felipe Brandão", "Escola Mackenzie IV", false);
INSERT INTO tb_alunos(cpf, nome, nomeEscola, ensinoIntegral)
values("52345678912", "Eliezer Silva", "Escola Maria Leopoldina", true);
INSERT INTO tb_alunos(cpf, nome, nomeEscola, ensinoIntegral)
values("62345678912", "Marina Elias", "Escola Maria Schunck", false);
INSERT INTO tb_alunos(cpf, nome, nomeEscola, ensinoIntegral)
values("72345678913", "Carla Queiroga", "Escola Maria Farias", false);
INSERT INTO tb_alunos(cpf, nome, nomeEscola, ensinoIntegral)
values("82345678913", "Marli Freitas", "Escola Maria Schunck", false);
INSERT INTO tb_alunos(cpf, nome, nomeEscola, ensinoIntegral)
values("92345678914", "Ana Gabriella", "Escola Maria Leopoldina", true);
INSERT INTO tb_alunos(cpf, nome, nomeEscola, ensinoIntegral)
values("10234567891", "Cecília Marques Souza", "Escola João Dias", true);

ALTER TABLE tb_alunos ADD nota bigint;

SELECT * FROM tb_alunos WHERE nota > 7;
SELECT * FROM tb_alunos WHERE nota < 7;
UPDATE tb_alunos SET nota = 5 WHERE ra <= 1234;
UPDATE tb_alunos SET nota = 6 WHERE ra >= 1235 AND ra <= 1238;
UPDATE tb_alunos SET nota = 8 WHERE ra >= 1239;

SELECT * FROM tb_alunos;