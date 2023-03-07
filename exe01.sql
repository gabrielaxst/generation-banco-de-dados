CREATE DATABASE db_registrofuncionario;

USE db_registrofuncionario;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
    cargo varchar(255) NOT null,
    salario double NOT null,
    setor varchar(255) NOT null,
    data_admissao date,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(cargo, salario, setor, data_admissao)
values("Cientista de Dados JR",7000.00, "Tecnologia da Informação", "2022-06-01");
INSERT INTO tb_colaboradores(cargo, salario, setor, data_admissao)
values("Desenvolvedor FullStack JR",3800.00, "Tecnologia da Informação", "2023-09-12");
INSERT INTO tb_colaboradores(cargo, salario, setor, data_admissao)
values("Desenvolvedor FullStack PL",7800.00, "Tecnologia da Informação", "2020-02-14");
INSERT INTO tb_colaboradores(cargo, salario, setor, data_admissao)
values("Desenvolvedor Java SR",16800.00, "Tecnologia da Informação", "2013-10-12");
INSERT INTO tb_colaboradores(cargo, salario, setor, data_admissao)
values("Assistente Tech Recruiter",1500.00, "RH", "2023-03-22");
INSERT INTO tb_colaboradores(cargo, salario, setor, data_admissao)
values("Tech Recruiter SR",7800.00, "RH", "2019-03-22");
INSERT INTO tb_colaboradores(cargo, salario, setor, data_admissao)
values("Secretária PL",5800.00, "Administração", "2019-03-22");
INSERT INTO tb_colaboradores(cargo, salario, setor, data_admissao)
values("Assistente Fiscal JR",1800.00, "Administração", "2023-01-5");
INSERT INTO tb_colaboradores(cargo, salario, setor, data_admissao)
values("Analista Fiscal JR",2800.00, "Administração", "2023-05-12");

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;
UPDATE tb_colaboradores SET data_admissao = "2022-05-01" WHERE id = 1;