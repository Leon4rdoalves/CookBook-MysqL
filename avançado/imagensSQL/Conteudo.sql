-----------------------------------------------------------------
-- Gerenciando imagens no SQL:
-----------------------------------------------------------------
-- Banco de testes
use master
if db_id('Curso') is not null 
	drop database Curso
create database Curso
go
use Curso

create table imagens (
	id int identity (1, 1) not null,
	nm_arquivo varchar(1000) not null,
	vb_imagem varbinary(max) not null
)



insert into imagens (nm_arquivo, vb_imagem) 
	select 
		'Inserido via t-sql',
		*
	from openrowset (bulk 'C:\Tmp\Gerenciando-Imagens-no-SQL\Java.jpg', single_blob) imagem





