/*
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database db_escola
default character set utf8mb4
default collate utf8mb4_general_ci;

use db_escola;

create table tb_estudantes (
	id_aluno bigint(3) auto_increment,
    nome varchar(45) not null,
    dt_nascimento date,
    sexo enum ("M", "F", "O"),
    nota float,   # ps. FLOAT só pq não será necessário fazer calculos com esta nota.
    dt_cadastro timestamp,
    
    primary key(id_aluno)

)default charset = utf8mb4;


insert into tb_estudantes values
(default, "Leonardo", "1990-11-01", "M", 7.5, current_date()),
(default, "Marcinha", "2000-10-28", "F", 10, current_date()),
(default, "Monnique", "1988-04-03", "O", 8.4,current_date()),
(default, "Jubiliano", "1990-06-04", "O", 5, current_date()),
(default, "Gustavão", "1956-07-13", "M", 3.6, current_date()),
(default, "Rennatha", "2014-10-01", "O", 2.7, current_date()),
(default, "Robertha", "2015-12-09", "F", 6, current_date());


/*
update nome_tabela set nome_coluna = novo_valor
where nome_coluna_que_identifica_1_linha = valor_da_linha
*/
update tb_estudantes set nota = 10 where nome = "Leonardo";

select * from tb_estudantes;

/*
select nome_coluna as nome_que_vai_aparecer
from nome_tabela where nome_coluna > valor_qualquer
*/
select id_aluno as Matricula, nome as Nome, nota as Nota 
from tb_estudantes where nota > 7.0 order by nome;

select id_aluno as Matricula, nome as Nome, nota as Nota 
from tb_estudantes where nota < 7.0 order by nota;