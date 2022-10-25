ALTER TABLE empresas MODIFY cnpj VARCHAR(14);

INSERT INTO empresas
	(nome, cnpj)
VALUES 
('Bradesco', 123546987412),
('Vale', 12345687963215),
('Cielo', 78965412365981);

desc empresas;  -- descrever a tabela

select * from empresas;
select * from cidades;


INSERT INTO empresas_unidades
	(empresa_id, cidade_id, sede)
VALUES
	(1, 1, 1),
    (1, 2, 0),
    (2, 1, 0),
    (2, 2, 1);
    