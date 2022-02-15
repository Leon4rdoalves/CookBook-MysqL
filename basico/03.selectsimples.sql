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
	A instrução select é com certeza a mais poderosa do SQL,
    por isso vamos ver aqui de forma simples, pois isso será
    abordado de forma avançada mais a frente...
*/
select * from tb_pessoas;

/*
	Veja que no output, agora temos uma visão completa dos valores
    que foram inseridos na tabela tb_pessoas. O * após select, 
    representa todas as colunas.
*/

desc tb_pessoas;










