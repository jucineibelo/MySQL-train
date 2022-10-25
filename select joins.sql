select * from prefeitos;
select * from cidades;

select * from cidades c inner join prefeitos p on c.id = p.cidade_id;  -- Seleciona a união duas tabelas 
select * from cidades c left join prefeitos p on c.id = p.cidade_id;  
select * from cidades c right join prefeitos p on c.id = p.cidade_id;

-- FAZ UM FULL JOIN ou seja a união de dois joins 

select * from cidades c left join prefeitos p on c.id = p.cidade_id
union
select * from cidades c right join prefeitos p on c.id = p.cidade_id;
