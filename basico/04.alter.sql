create database db_cadastro
default character set utf8mb4            
default collate utf8mb4_general_ci;   

use db_cadastro;

create table tb_pessoas(
	nome varchar(45),         
    cpf bigint,      
	idade int,                  
    altura decimal(3,2) 
)default charset = utf8mb4; 


/*
	Note que, por padrão a instrução add, adiciona uma nova coluna
    na última posição.
*/
alter table tb_pessoas add cor_preferida varchar(45);

/* 
	...neste caso queremos que a coluna id, seja 
    a primeira, por isto utilizamos a instrução first.
*/
alter table tb_pessoas add id bigint first; 


/*
	Agora, queremos que a coluna identidade seja adicionada
    após o cpf, para isso usamos a instrução after seguida
    da coluna. Ps. não temos uma instrução before, para fazer
    o oposto.
*/
alter table tb_pessoas add identidade bigint after cpf; 

/*
	Agora vamos remover uma coluna,lembrando que, a remoção
    também é uma alteração, desta forma, seguiremos com a
    instruçao alter.
*/
alter table tb_pessoas drop column cor_preferida;

/*
	Agora, vamos modificar uma coluna da nossa tabela,
    essa alteração pode ser apenas no nome e/ou tipo de 
    dado, mas é importante entender que, o nome e o tipo
    de dado devem ser informados.
    Observe que estamos mantendo o nome da coluna e o tipo
    varchar(45) para varchar(60).
*/
alter table tb_pessoas modify column nome varchar(60);
