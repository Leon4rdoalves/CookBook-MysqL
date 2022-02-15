/*
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database db_ecomerce
default character set utf8mb4
default collate utf8mb4_general_ci;

use db_ecomerce;

create table tb_produtos (
	id_produto bigint(3) auto_increment,
    nome varchar(45) not null,
    descricao longtext,
    preco_compra decimal(10,2),
    preco_venda decimal(10,2),
    dt_cadastro timestamp,
    
    primary key(id_produto)

)default charset = utf8mb4;


insert into tb_produtos values
(default, "Caneta", "Caneta Azul...Azul Caneta, caixa com 500", 90, 150, current_date()),
(default, "Caneta", "Preta, pretona mesmo... caixa com 250", 45, 75, current_date()),
(default, "Lapis 3B", "Faber Castel, caixa com 1k unidades", 350, 700, current_date()),
(default, "Borracha", "Borracha padrão branca, caixa 3k unid", 450, 800, current_date()),
(default, "Papel", "Padrão macio/liso, tam A3, caixa 5k unid", 900, 1250, current_date());

/*
update nome_tabela set nome_coluna = novo_valor
where nome_coluna_que_identifica_1_linha = valor_da_linha
*/
update tb_produtos set preco_venda = 110 where id_produto = 2;

select * from tb_produtos;

/*
select nome_coluna as nome_que_vai_aparecer
from nome_tabela where nome_coluna > valor_qualquer
*/
select nome, descricao as Descrição, preco_venda as Preço 
from tb_produtos where preco_venda > 500;

select nome, descricao as Descrição, preco_venda as Preço 
from tb_produtos where preco_venda < 500;