-- CRIAR DATABASE

CREATE DATABASE DADOS;
USE DADOS;


-- CRIANDO A TABELA ESTADOS

CREATE TABLE estados (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL, 
sigla VARCHAR(2) NOT NULL, 
regiao ENUM('Norte', 'Nordeste', 'Centro-Oeste', 'Sudeste','Sul') NOT NULL,
populacao DECIMAL(5,2) NOT NULL, 
PRIMARY KEY (id),
UNIQUE KEY (nome),
UNIQUE KEY (sigla)
);

-- INSERIR DADOS DA TABELA ESTADO 

INSERT INTO estados (nome, sigla, regiao, populacao)
VALUES ('Acre', 'AC', 'Norte', 0.83);

-- OUTRA FORMA DE INSERIR DADOS DA TABELA ESTADO 
INSERT INTO estados
    (nome, sigla, regiao, populacao)
VALUES
    ('Bahia', 'BA', 'Nordeste', 15.34),
    ('Ceará', 'CE', 'Nordeste', 9.02),
    ('Distrito Federal', 'DF', 'Centro-Oeste', 3.04),
    ('Espírito Santo', 'ES', 'Sudeste', 4.02),
    ('Goiás', 'GO', 'Centro-Oeste', 6.78),
    ('Maranhao', 'MA', 'Nordeste', 7.00),
    ('Mato Grosso', 'MT', 'Centro-Oeste', 3.34),
    ('Mato Grosso do Sul', 'MS', 'Centro-Oeste', 2.71),
    ('Minas Gerais', 'MG', 'Sudeste', 21.12),
    ('Pará', 'PA', 'Norte', 8.36),
    ('Paraíba', 'PB', 'Nordeste', 4.03),
    ('Parana', 'PR', 'Sul', 11.22),
    ('Pernambuco', 'PE', 'Nordeste', 9.47),
    ('Piauí', 'PI', 'Nordeste', 3.22),
    ('Rio de Janeiro', 'RJ', 'Sudeste', 16.72),
    ('Rio Grande do Norte', 'RN', 'Nordeste', 3.51),
    ('Rio Grande do Sul', 'RS', 'Sul', 11.32),
    ('Rondônia', 'RO', 'Norte', 1.81),
    ('Roraima', 'RR', 'Norte', 0.52),
    ('Santa Catarina', 'SC', 'Sul', 7.01),
    ('São Paulo', 'SP', 'Sudeste', 45.10),
    ('Sergipe', 'SE', 'Nordeste', 2.29),
    ('Tocantins', 'TO', 'Norte', 1.55);
    

-- SELECTS (SELECIONAR DADOS)

-- Selecionar a tabela estados

select * from estados;    


-- Selecionar as colunas sigla e nome da tabela estado

select sigla, nome from estados;


-- Selecionando as colunas sigla e nome da tabela estados e dando nomes para elas 

select sigla as 'UF', nome as 'Nome do estado' from estados; 


-- Selecionando as colunas sigla e nome da tabela estados e dando nomes para elas somente da região SUL 

select sigla as 'UF', nome as 'Nome do estado' from estados where regiao = 'Sul';

 

-- Selecionando a coluna nome, região e população da tabela estados com população >= 10 
-- ordenada a população de forma crescente (asc) se fosse descrente seria (desc)

select nome, regiao, populacao from estados 
where populacao >= 10
order by populacao asc;










