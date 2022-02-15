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
	Ambas as instruções abaixo, retornam as informações da sua tabela,
    repare que eles não trazem os dados e sim a estrutura da tabela,[
    isso inclui, campos, tipo de dado e outros parâmetros. 
*/
desc tb_pessoas;
describe tb_pessoas;