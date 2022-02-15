create database db_funcTest;
use db_funcTest;

create table tb_empresa(
    id_emp int auto_increment primary key,
    nome text,
    salario numeric,
    idade integer
);

insert into tb_empresa 
values (default, "Ebony", 13000, 30);

create function dobrarSalario(tb_empresa) # quebrando, ajusto pelo encoder
returns numeric as $$
select $1.salario * 2 as salario;

select nome, dobrar_salario(tb_empresa.*) as `Salário dobrado`
from tb_empresa
where tb_empresa.id_emp = 1;  # quebrando, ajuste pelo encoder - 