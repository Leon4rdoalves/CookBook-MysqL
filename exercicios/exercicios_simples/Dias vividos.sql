create database db_dias_vividos
default character set utf8mb4
default collate utf8mb4_general_ci;

use db_dias_vividos;

create table tb_usuario (
	id_usuario bigint(3) auto_increment,
    nome varchar(30) not null, 
    email varchar(40) not null,
    stt boolean,
    dt_nasc date not null,
    dt_criacao timestamp not null, 
    dt_atualizacao timestamp not null,
	primary key (id_usuario) 
)default charset = utf8mb4;

insert into tb_usuario (nome, email, stt, dt_nasc, dt_criacao, dt_atualizacao) values 
("Ebony", "ebony@ebonysys.net", true,"1990-11-01", current_date(), current_timestamp()),
("Zeca Brito", "zecabrito@gmail.com", true,"2000-10-02",current_date(), current_timestamp()),
("Pedro Pedra", "pedreira@gmail.com", false,"2015-05-03",current_date(), current_timestamp()),
("Ana Cana", "anacana@gmail.com", true,"1980-04-12",current_date(), current_timestamp()),
("João Leão", "leao@gmail.com", false,"1994-12-26",current_date(), current_timestamp()),
("Joana Batata", "frita@gmail.com", true,"1999-04-17",current_date(), current_timestamp());

select nome as Nome, date_format(dt_nasc, "%d/%m/%y") as `Data de nascimento`
from tb_usuario;

select
date_format(curdate(), "%d/%m/%y") as Hoje,
date_format(dt_nasc,"%d | %m | %Y") as `Data de Nascimento`,

date_format(dt_criacao, "%D • %M • %Y") as `Criado em:`,
date_format(dt_atualizacao, "%d * %m * %y") as `Atualizado em:`,

datediff(curdate(), dt_nasc) as `Dias de vida`
from tb_usuario;










