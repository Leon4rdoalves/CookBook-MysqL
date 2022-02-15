create database pokemon
default character set utf8mb4
default collate utf8_general_ci;
use pokemon;

-- criando a tabela TB_CLASSES
create table tb_classe (
    id_classe bigint (2) auto_increment, 
    tipo varchar (30) not null unique,
    habitat varchar(30) not null,    
    vida int not null,
    primary key (id_classe)  
) default charset = utf8mb4;

insert into tb_classe (tipo, habitat, vida) 
values ("Psiquico", "Floresta", 100),     -- 1
       ("Fogo", "Vulcão", 100),           -- 2
       ("Agua", "mar", 100),              -- 3
       ("Relva", "Floresta", 100),        -- 4
       ("Eletrico", "terra", 100);        -- 5
  
select * from tb_classe;  
    
create table tb_personagens (
	id_personagens bigint(3) auto_increment, 
    nome varchar(30) not null,                 
    golpe_principal varchar(30) not null,
    forca_ataque int not null,
    dieta varchar (30), 
    evoluir boolean not null, -- True / False
    
    fk_classe bigint(2),
    primary key (id_personagens),     
    
    -- Definindo dentro da tabela tb_personagens, que a coluna fk_classe será 
    -- a chave estrangeira, que veio da coluna tb_classe e lá, ela atende pelo 
    -- nome de id_classe.
    foreign key (fk_classe) references tb_classe(id_classe) 
) default charset = utf8mb4; 

insert into tb_personagens (nome, golpe_principal, forca_ataque, dieta, evoluir, fk_classe)
values ("Bulbasaur", "Chicote de vinha", 1900, "Onívoro", true, 4),
       ("Vaporeon", "Aura calmante", 1300, null , true, 3),
       ("Blastoise", "Hidro bomba", 2300, "Onívoro", true, 3),
       ("Charizard", "Explosão de fogo", 1900, "Carnívoro", true, 2),
       ("Mew", "Força telecinética", 2200, null, false, 1);

select * from tb_personagens;
select * from tb_classe;

select * from tb_personagens where nome like "char%"; -- começa com char
select * from tb_personagens where nome like "%ise";  -- termina com ise
select * from tb_personagens where nome like "%ba%"; -- tem 'ba' no meio

select nome, forca_ataque as `Força de Ataque` from tb_personagens;
select nome, forca_ataque as `Força de Ataque` from tb_personagens 
order by forca_ataque desc limit 3; -- mostrar apenas 3 linhas

select count(*) from tb_personagens;  
select count(dieta) from tb_personagens; # não conta valor nulo
select count(nome) from tb_personagens where nome like "B%";

select sum(forca_ataque) from tb_personagens;  -- somando valores da coluna forca_ataque
select avg(forca_ataque) from tb_personagens;  -- média valores da coluna forca_ataque
select max(forca_ataque) from tb_personagens;  -- maior valor da coluna forca_ataque
select min(forca_ataque) from tb_personagens;  -- menor valor da coluna forca_ataque

select distinct forca_ataque from tb_personagens;  -- apenas um de cada

select * from tb_personagens inner join tb_classe  -- juntando as duas tabelas
on tb_classe.id_classe = tb_personagens.fk_classe;


select tb_personagens.nome, tb_personagens.forca_ataque, tb_classe.tipo
from tb_personagens inner join tb_classe
on tb_classe.id_classe = tb_personagens.fk_classe 
where tb_personagens.forca_ataque > 2000          -- apenas as linhas onde a força é maior que 2000
order by tb_personagens.nome;

select tb_personagens.nome, tb_personagens.forca_ataque, tb_classe.tipo
from tb_personagens inner join tb_classe
on tb_classe.id_classe = tb_personagens.fk_classe 
-- where tb_personagens.forca_ataque >= 1000 and tb_personagens.forca_ataque <= 2000
where tb_personagens.forca_ataque between 1000 and 2000  -- apenas as linhas onde a força está entre 1k e 2k
order by tb_personagens.nome;  -- colocando o resultado em ordem a partir da coluna nome.

truncate table tb_personagens; -- limpa os dados da tabela e mantem a estrutura da mesma. 


















