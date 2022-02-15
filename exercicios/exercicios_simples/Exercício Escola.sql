/*
	Atividade 3
		Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará 
        com as informações dos estudantes deste registro dessa escola.
		Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 
        atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.

		Popule esta tabela com até 8 dados;
        
		Faça um select que retorne o/as estudantes com a nota maior do que 7.
		Faça um select que retorne o/as estudantes com a nota menor do que 7.
        
		Ao término atualize um dado desta tabela através de uma query de atualização.
		salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL 
        ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/

create database escola
default character set utf8mab4
default collate utf8_general_ci;

use escola; 

/*
	tb_alunes >>> id, nome, dt_nasc, 
				  turma(Python, Java, Pascal), 
                  formato(R, P), nota, status (True, False)
*/

create table tb_alunes(
	id_alune bigint(4) auto_increment, -- 9999
	nome varchar (30) not null,
	dt_nasc date,
	turma enum("Python", "Java","Pascal"),
	formato enum("R", "P"),
	nota real,
	stt boolean,
    
    primary key (id_alune)
) default charset = utf8mb4;

desc tb_alunes;
describe tb_alunes;

insert into tb_alunes(nome, dt_nasc, turma, formato, nota, stt) 
	      Values ("Maria", "1990-10-01", "Python", "R", 10.0, true),
	             ("Jubileu", "2000-09-12", "Python", "P", 4.5, true),
				 ("Juquinha", "2005-12-01", "Java", "R", 8.4, true),
                 ("Sebastiana", "1958-01-01", "Pascal" ,"P", 9.0, true),                    
				 ("Ebony",  "1990-11-01", "Python", "R", 5.4, false),
                 ("Cris", "1978-10-28", "Pascal", "P", 3.3, true),
		         ("Magali", "1946-07-21", "Pascal", "P", 9.1, false),
		         ("Betina", "2015-08-30", "Python", "R", 5.9, true);

select * from tb_alunes;
select * from tb_alunes where nota > 7;
select * from tb_alunes where nota <= 7 and nota > 5;
select * from tb_alunes where nota <= 5;

select nome, nota from tb_alunes;

select nome as 'Nome do Alune', date_format(dt_nasc, '%d/%m/%Y') 
as 'Data de nascimento' from tb_alunes;



