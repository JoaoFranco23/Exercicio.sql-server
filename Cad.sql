create database cadastro; 

create table cadusuarios(
Id tinyint,
Nome varchar(100) not null,
Email varchar(10),
Senha char(100) null,
Data_Nasc date,
Idade smallint,
Genero char(2),
check(Idade >= 18 and Senha >= 100),
primary key(Id, Idade)
);

select * from cadusuarios;

drop table cadusuarios;

alter table cadusuarios alter column Email varchar(100); --Alterando o cartactere de tipo para 100
alter table cadusuarios drop constraint CK__cadusuarios__49C3F6B7; -- Removendo as Restriçoes 
alter table cadusuarios alter column senha varchar(100);

insert into cadusuarios (Id, Nome, Email, Senha, Data_Nasc, Idade, Genero) values (1, 'Joao Vitor', 'joaovitor@hotmail.com', 'Joao123', '2000-02-05', 25, 'M'); --Inserindo os dados dentro da coluna  
insert into cadusuarios (Id, Nome, Email, Senha, Data_Nasc, Idade, Genero) values (2, 'Mafalda', 'mafalda123@gmail.com', 'Mafalda1234', '05-02-2001',  23, 'F');



select * from cadusuarios order by Data_Nasc desc; 
select * from cadusuarios order by CONVERT(date, Data_Nasc, 103) asc; 

select FORMAT(Data_Nasc, 'dd/MM/yyyy') as Data_nasc from cadusuarios; --Exibindo a data em formato dd/mm/yyyy

SELECT RIGHT('00' + CAST(DAY(Data_Nasc) AS VARCHAR), 2) + '-' +
       RIGHT('00' + CAST(MONTH(Data_Nasc) AS VARCHAR), 2) + '-' +
       CAST(YEAR(Data_Nasc) AS VARCHAR) AS DataReformatada
FROM cadusuarios; --Rordena os componentes da data
