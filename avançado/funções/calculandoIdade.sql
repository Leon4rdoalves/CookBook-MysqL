if obj_id('calcIdade', 'FN') is null
begin
	exec('create function calcIdade() returns int as begin return 1 end')
end;

alter function calcIdade(@dt_nasc date), @dt_base date)
returns int
as 
begin
  declare @idade int;
  declare @dia_inicio;
  declare @dia_fim;
  
  set @base = isnull(@base, getdate());
  set @idade = datediff(year, @dt_nasc, @base);
  set @dia_inicio = (month(@dt_nasc) * 100) + day(@dt_nasc);
  set @dia_fim = (month(@base) * 100) + day(@base);
  
if @dia_fim < @dia_inicio 
  begin
	set @idade = @idade - 1;
end;
return @idade;
end;
