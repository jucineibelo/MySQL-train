-- Nesse novo INSERT estou testando colocar um valor para ID já que na criação da tabela ela foi definida como AUTO_INCREMENTO E primary key 
INSERT INTO estados (id, nome, sigla, regiao, populacao)
values (100, 'Novo', 'NV', 'Sul', 2.54);

select * from estados;                -- costatado que criou um novo ID mesmo estado como primary key e auto incremento.


-- Novamente feito um INSERT agora sem a ID pra ver se puxa automaticamente a auto increment , primary key

INSERT INTO estados (nome, sigla, regiao, populacao)
values ('Mais Novo', 'MN', 'Norte', 2.51);

select * from estados;          -- costatado que criou um novo ID mas a sequencia seguiu a de 100 pois o MySQL sempre segue para frente.

-- No caso do auto incremento o mySQL sempre irá pegar o registro mais alto e acrescentar mais um.