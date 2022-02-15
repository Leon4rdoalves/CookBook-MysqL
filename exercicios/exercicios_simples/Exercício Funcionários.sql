/*
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema 
trabalhará com as informações dos funcionaries desta empresa. 

Crie uma tabela de funcionaries, utilizando a habilidade de abstração e 
determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.

Popule esta tabela com até 5 dados;

Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
*/

create database db_funcionaries              # criando o banco de dados funcionaries
default character set utf8mb4                # definindo o padrão de caracteres o banco
default collate utf8mb4_general_ci;      

use db_funcionaries;                         # habilitando o uso do banco funcionaries

create table tb_cadastro (
	id_funcionarie int auto_increment,       # Campo será preenchido automaticamente
    nome varchar(30) not null,               # Campo não poderá ficar vazio
    cargo varchar(20) not null,              # Campo não poderá ficar vazio 
    matricula varchar(15) not null unique,   # Unique - valor deste campo será único
    dt_contrato date not null,               # Data deve ser inserida no padrão ano-mes-dia
    dt_cadastro timestamp not null,          # Esta data será inserida automaticamente
    salario decimal(10,2),                   # Campo salário até (00000000, 00)
    primary key (id_funcionarie)             # Definindo o campo que será a chave primária
) default charset = utf8mb4;                 # Confirmando o padrão de caracteres do banco


-- Posso inserir um de cada vez, ou como a partir da linha 37, todos de uma vez só.
 
insert into tb_cadastro (nome, cargo, matricula, dt_contrato, dt_cadastro, salario)
values ("Ebony Alves", "Desenvolvedor", "dev015", "2000-10-05", current_timestamp(), 10000.00);

insert into tb_cadastro (nome, cargo, matricula, dt_contrato, dt_cadastro, salario)
values ("Maria das Coves", "Desenvolvedora", "Dev020", "2010-08-15", current_timestamp(), 1900.50),
       ("Pedro Pedreira", "Tester", "Test050", "2009-10-23", current_timestamp(), 1590.00),
	   ("Magali Monfes", "Quality Assurance", "Qa190", "1990-06-30", current_timestamp(), 5000.00),
	   ("Zéca Brito", "Desenvolvedor", "Dev095", "2005-12-20", current_timestamp(), 1900.50);

select * from tb_cadastro;
select nome, matricula, salario from tb_cadastro where salario < 2000;
select nome, matricula, salario from tb_cadastro where salario >= 2000;








