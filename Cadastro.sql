create database Usuario;

use Usuario;
go

create table Cadastro(
	ID int identity(1, 1) not null primary key,
	Nome varchar(100),
	Endereco varchar(100),
	Bairro varchar(50),
	Cidade varchar(50),
	Estado varchar(20),
);
