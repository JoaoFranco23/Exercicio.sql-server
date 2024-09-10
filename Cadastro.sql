create database Usuario;

use Usuario;
go

create table Cadastro(
	ID int identity(1, 1) not null primary key,
	Nome varchar(100),
	Data_Nasc date,
	Idade int,
	Endereco varchar(100),
	Bairro varchar(50),
	Cidade varchar(50),
	Estado varchar(20),
	Email varchar(100),
	Senha varbinary(8000),
	check (Idade >=18 and Data_Nasc = 'AAAA-MM-DD')
);

select * from Cadastro;
