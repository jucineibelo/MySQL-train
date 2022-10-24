-- criar a tabela cidades se não existir 

CREATE TABLE IF NOT EXISTS cidades (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,   -- UNSIGNED = sem sinal 
    nome VARCHAR(255) NOT NULL, 
    estado_id INT UNSIGNED NOT NULL,
    area DECIMAL(10,2),
    PRIMARY KEY (id),
    FOREIGN KEY (estado_id) REFERENCES estados (id)    
);

CREATE TABLE IF NOT EXISTS teste (                        -- criar a tabela teste
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY);

DROP TABLE teste;                                       -- dropar a tabela teste
