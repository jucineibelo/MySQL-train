-- Excluir registro na tabela estados sigla MN (como definido para ser registro UNIQUE a coluna sigla então o delete vai buscar o registro unico para deletar)
-- muitas vezes é utilizado o ID no WHERE pois ele é um dado unico 

delete from estados 
where sigla = 'MN';

select *from estados;             -- fazendo a conculta para verificar se deletou 




-- Excluindo os registros com ID >= 18

delete from estados 
where id >= 18;

select *from estados;             -- fazendo a conculta para verificar se deletou 