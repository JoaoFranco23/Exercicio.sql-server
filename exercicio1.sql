create database PRODUTOS; 


create table Mercado(
ID int identity(1, 1) not null primary key,
Produto varchar(100) not null,
Preco numeric(20, 2) not null,
Descricao text
);

select * from Mercado; 

set identity_insert dbo.mercado on; --

insert into mercado (ID,Produto,Preco,Descricao) values (1 ,'Processador i3' , 798.99 , 'INTEL CORE I3-14100F');
