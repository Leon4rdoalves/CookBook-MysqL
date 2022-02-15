/*
	Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as 
    informações dos produtos deste ecommerce. 
	Crie uma tabela produtos e utilizando a habilidade de abstração e determine 
    5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
	Popule esta tabela com até 8 dados;
	Faça um select que retorne os produtos com o valor maior do que 5.00
	Faça um select que retorne os produtos com o valor menor do que 5.00
	Ao término atualize um dado desta tabela através de uma query de atualização.
*/
    
create database db_ecomerce
default character set utf8mb4
default collate utf8mb4_general_ci;

use db_ecomerce;

create table tb_produtos (
	id_produto bigint(3) auto_increment,
    nome varchar(30) not null,
    sabor varchar(20) not null,
    descricao longtext,
    validade date not null,
    preco decimal(10,2) not null,
    primary key (id_produto)
) default charset = utf8mb4;

insert into tb_produtos (nome, sabor, descricao, validade, preco)
values ("Sorvete", "Morango", "", "2021-12-30", 3.50),
	   ("Sorvete", "Chocolate", "", "2021-10-25", 4.50),
	   ("Sorvete", "Chiclete", "Este sabor é especial", "2021-10-01", 9.95),
       ("Sorvete", "Menta", "Este sabor é especial", "2022-02-10", 9.50),
       ("Sorvete", "Black", "Este sabor é especial", "2022-01-20", 16.50);
       
select * from tb_produtos;

-- produtos com valor maior que R$5.00 em ordem crescente de preço
select nome as Nome, sabor as Sabor, preco as Preço
from tb_produtos where preco >= 5.00 order by preco;  

-- produtos com valor menor que R$5.00 em ordem crescente de preço
select nome as Nome, sabor as Sabor, preco as Preço
from tb_produtos where preco < 5.00 order by preco;








