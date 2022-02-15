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


insert into tb_pessoas 
(nome, cpf, idade, altura) # esta linha não é obrigatória 
values
("Ebony", 12312312312, 32, 1.83); # os valores precisam seguir a ordem da tabela


# você pode optar por inserir várias linhas de única vez.
insert into tb_pessoas 
(nome, cpf, idade, altura) 
values
("Carlo", 44444444444, 18, 1.83),
("Maria", 00000000000, 25, 1.50),
("Bruno", 11111111111, 22, 1.60),
("Paulo", 22222222222, 37, 1.70),
("Joana", 33333333333, 58, 1.40);
