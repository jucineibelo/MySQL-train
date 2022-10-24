-- Atualizando (UPDATE) Maranhao para Maranhão buscando pelo nome e filtrando pela UF que é UNIQUE para não alterar nenhum outro registro 

update estados 
set nome = 'Maranhão'
where sigla = 'MA';

-- selecionando para verificar o update

select nome from estados where sigla = 'MA';



-- Atualizando na tabela estados, nome para Paraná e a população para 11.32 filtrando pela sigla PR

update estados set nome = 'Paraná', populacao = 11.32 where sigla = 'PR';

-- selecionando para verificar o update

select nome, populacao, sigla from estados where sigla = 'PR'; 





