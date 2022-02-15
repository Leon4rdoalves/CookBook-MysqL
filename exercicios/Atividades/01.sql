/*
Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database db_empresa
default character set utf8mb4
default collate utf8mb4_general_ci;

use db_empresa;

create table tb_func (
	id_func bigint(3) auto_increment primary key,
    nome varchar(45) not null,
    matricula int not null,
    salario decimal(10,2),
    dt_cadastro timestamp

)default charset = utf8mb4;


insert into tb_func values
(default, "Leonardo", 0001, 9800, current_date()),
(default, "Jubileu C", 0002, 4700, current_date()),
(default, "Maiara Ab", 0003, 12100, current_date()),
(default, "Ana Paula", 0004, 800, current_date()),
(default, "João Coves", 0005, 550, current_date());

/*
update nome_tabela set nome_coluna = novo_valor
where nome_coluna_que_identifica_1_linha = valor_da_linha
*/
update tb_func set salario = 180 where id_func = 2;

select * from tb_func;


/*
select nome_coluna as nome_que_vai_aparecer
from nome_tabela where nome_coluna > valor_qualquer
*/
select nome as `Pessoas com `, salario as `Salario > 2k` 
from tb_func where salario > 2000;

select nome as `Pessoas com `, salario as `Salario < 2k` 
from tb_func where salario < 2000;

















