-- Selecionar a table estados para ver as informações de id (primary key) para selecionar a chave estrangeira

select * from estados;

-- INSERIR UMA CIDADE DENTRO DA TABELA CIDADE USANDO UM FK PARA REFERENCIAR O ESTADO

INSERT INTO cidades (nome, area, estado_id)
VALUES ('Brasilia', 410, 4);

INSERT INTO cidades (nome, area, estado_id)
VALUES('Salvador',700, 2);


-- INSERIR UMA CIDADE NA TABLE CIDADE UTILIZANDO UM SELECT PARA SELECIONAR O ID DA FK BUSCANCO PELA SIGLA
INSERT INTO cidades(nome, area, estado_id)
VALUES (
'Goiania',
100, 
(select id from estados where sigla = 'GO'));



-- INSERIR UMA CIDADE NA TABLE CIDADE UTILIZANDO UM SELECT PARA SELECIONAR O ID DA FK BUSCANCO PELA SIGLA

INSERT INTO cidades(nome, area, estado_id)
VALUES (
'Curitiba',
1000, 
(select id from estados where sigla = 'PR'));


select * from cidades;

