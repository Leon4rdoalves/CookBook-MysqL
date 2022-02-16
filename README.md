 iaeeeEE 🖖🏾! Estou atualizando o conteúdo do meu curso de BD, se você veio pelo SuperProf, 
 relaxe porque seu material está pronto, apenas este repositório está sendo remodelado com
 as atualizações que o material oficial já tem... Bjunda e bons estudos! 

[Abertura](https://youtu.be/TShlXg7BRf0)

<h3> Banco de dados <i> MySQL </i></h3>
<p>
    Quando agrupamos informações que de alguma forma se relacionam
    e tratam do mesmo assunto, estamos facilmente criando um banco
    de dados. 
    Alguns exemplos são: Agenda telefonica do seu smartphone,
    listas de cadastros clientes, informações de vendas de uma 
    empresa e etc. 
    
    Detalhe mega importante, por padrão... em sua natureza a linguagem SQL exige o uso de ; ao fim de cada 
    comando, isso porque seu uso inicialmente de deu apenas no terminal, não sendo possível por exemplo,
    escrever um comando e quebrar linhas entre a sintaxe, além de ter que digitá-lo em linha única, o mesmo 
    deve terminar com ";" 
    
    Você vai perceber que os SGDS que temos atualmente permitem algumas facilidades, como o desuso do ";" 
    e comandos feitos em linhas quebradas, valendo ressaltar que, o comando que será executado, é aquele 
    onde está o cursor.
</p>

* [Instalando MySQL](https://drive.google.com/file/d/1QqVg5yxgEKJECWw3F6sbJ-PVzsdH-3LQ/view?usp=sharing)
* [Reinstalando MySQL](https://drive.google.com/file/d/1TLH6t0Rgj27CQTNn1Y6FCkUVsU3dNhyt/view?usp=sharing)

<h4> SGBD <i>Sistema de Gerenciamento de banco de dados.</i></h4>
<p>
   Os mais antigos, tendem a forçar a crença de que conhece SQL
   quem o utiliza diretamente no terminal, como o foi concebido, mas
   felizmente, hoje temos softwares que fazem essa gestão de forma
   mais amigável e agradável. São conhecidos como SGBD, onde podemos
   fazer toda a criação e manipulação de banco de dados sem digitar uma
   única linha de código, entretanto, também é possível escrever e
   executar todos os comandos que conhecemos pelo terminal.
   <br><br> Segue a lista de alguns dos SGDB´s mais populares:
</p>

* [MySQL Workbench](https://www.mysql.com/)
* [PostGresSQL](https://www.postgresql.org/)
* [Oracle](https://www.oracle.com/br/database/)

[Conhecendo o Workbench](https://youtu.be/-32dLTyxB0A)

<p>
    Posso entender que você já concluiu os passos de instalação e agora, 
    o workbench está aberto e devidamente configurado, sendo assim, 
    vamos aos primeiros comandos da forma mais simples possível...

</p>

<p align="center">
    <img src="https://github.com/Ebony-Full-Stack/Bloco_2/blob/upstream/Banco%20de%20Dados/basico/assets/img1.png">
</p>

<p>
    Pronto, seu primeiro banco de dados está criado da forma mais simples possível, agora vamos melhorar um pouquinho essa estrutura...
</p>

<p align="center">
    <img src="https://github.com/Ebony-Full-Stack/Bloco_2/blob/main/Banco%20de%20Dados/basico/assets/img2.png">
</p>
 
* [Entendendo o que foi feito](https://youtu.be/2kRx9Yn40jU)
* [Tipos de dados](https://docs.microsoft.com/pt-br/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver15)

<p>

    Daqui pra frente vamos seguir de forma diferente, mas note que, os arquivos tratam apenas do comando específico.
</p>

[Desc / Describe](https://github.com/Ebony-Full-Stack/Bloco_2/blob/main/Banco%20de%20Dados/basico/01.describe.sql) <br>
[Insert](https://github.com/Ebony-Full-Stack/Bloco_2/blob/main/Banco%20de%20Dados/basico/02.insert.sql) <br>
[Select Simples](https://github.com/Ebony-Full-Stack/Bloco_2/blob/main/Banco%20de%20Dados/basico/03.selectsimples.sql) <br>
[Alter](https://github.com/Ebony-Full-Stack/Bloco_2/blob/main/Banco%20de%20Dados/basico/04.alter.sql)
* [Entendo o que foi feito](https://youtu.be/gSGYMiAOVoA)

<p>
    Legal, agora precisamos conhecer alguns conceitos importantes antes de prosseguir-mos. Vamos falar sobre 
    CHAVE PRIMÁRIA, CHAVE ESTRANGEIRA, MULTIPLAS CHAVES P e/ou E... cola <a href="">aqui</a> !
</p>

<p>
    Certo, agora vamos prosseguir, para isto, sem medo de ser feliz,<strong>drope</strong> seu banco de dados e recrie, insira uma tabela tb_pessoas com os campos:
    <br>id_pessoa<br>nome<br>data de nascimento<br>sexo<br>cpf<br>altura<br>país<br>data de cadastro<br>data de atualização<br><br>
    Aproveite, e crie também uma nova tabela tb_produtos, com os seguintes campos: <br> 
    id_produto<br>nome<br>descricao<br>validade<br>quantidade<br><br>
    Ahhhhh Lembre-se de que o campo id deve ser a chave primária das suas tabelas e o relacionamento deve ser de n:n,
    ou seja, muitos para muitos! <br><a href="">meu exemplo!</a></a>
    
    Feito?! ToOp, vamos conhecer mais alguns comandos então...
</p>

[Select]()<br>
[Where]()<br>
[Order By]()<br>
[Count]()<br>
[Like]()<br>
[Min Max Sum Avg]()<br>
* [Entendendo o que foi feito]()

<p>
    Einta, estamos avançando bem, mas agora precisamos falar sobre
    relacionamento, não vamos nos aprofundar, mas cola <a href="">aqui</a>, 
    preciso te contar algumas coisas...
</p>


    Certo, agora que criamos nosso primeiro relacionamento, vamos conhecer mais alguns comandos...


[Join]()<br>
[Union]()<br>
[Group By]()<br>
[Disctint]()
* [Entendendo o que foi feito]()

[Between]()<br>
[In]()<br>
[Having]()<br>
[As]()<br>
* [Entendo o que foi feito]()

[DatePart]()<br>
[SubQuery]()<br>
[Check Constraint]()<br>
[Not Null Constraint]()<br>
[Unique Constraint]()<br>
[Views]()<br>
* [Entendo o que foi feito]()

<p>
    Heeeeeey, parabéns por chegar até aqui, agora acho que está
    pronto(a)(e) pra conhecer a parte <strong>avançada</strong> de SQL, se interessou?
    Encosta <a href="">aqui</a> que temos mais assuntos para tratar...
</p>


[Códigos Simples - Banco de Dados](https://www.youtube.com/channel/UC8fRZfYGd21_D8DwuEcFuHw) <br>
<hr>
Cursos na plataforma SUPERPROF: <br>

[Python](https://www.superprof.com.br/aprenda-python-maneira-correta-com-exercicios-fixacao-bonus-sobre-games.html) <br>
[Banco de Dados](https://www.superprof.com.br/aulas-banco-dados-sql-basico-avancado-com-exercicios-para-dominio-das-rotinas.html)

