-- Selecionar região mudar nome para Região 
-- fazer a soma dos estados que compoem a população colocar o nome de Total 
-- mostrar o grupo região
-- e ordenar por Total descrescente  

select regiao as 'Região', 
sum(populacao) as Total          -- sum = soma 
from estados
group by regiao
order by Total desc;


-- Selecionando a coluna população da tabela estado 
-- usando avg para somar todos os dados e dividir pelo numero total para dar a media 

select 
avg(populacao) as Total         -- avg = media
from estados



