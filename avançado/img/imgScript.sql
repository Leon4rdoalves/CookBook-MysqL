create database db_imagem
default character set utf8mb4
default collate utf8mb4_general_ci;
use db_imagem;
 
 
create table tb_img (
    id_img bigint(3) auto_increment,
    nm_img varchar(255) not null,
    vb_img varbinary(500),
    
    primary key (id_img)
)default charset = utf8mb4;

select * from tb_img;


 