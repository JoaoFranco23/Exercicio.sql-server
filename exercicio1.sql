create database PRODUTOS; 

use PRODUTOS;
go

create table Mercado(
	ID int identity(1, 1) not null primary key,
	Produto varchar(100) not null,
	Preco numeric(20, 2) not null,
	Descricao text
);

select * from Mercado; 

set identity_insert dbo.mercado on; --
SET IDENTITY_INSERT [ PRODUTOS . [ Mercado ] . ] dbo.Desconto { ON | OFF }

insert into mercado (ID,Produto,Preco,Descricao) values (1 ,'Processador i3' , 798.99 , 'INTEL CORE I3-14100F');
insert into mercado (ID,Produto,Preco,Descricao) values (2 , 'Processador i5' , 1468.99 , 'INTEL CORE I5-14400F');
insert into mercado (ID,Produto,Preco,Descricao) values (3 ,'Processador i7' , 2698.99 , 'INTEL CORE I7-14700');
insert into mercado (ID,Produto,Preco,Descricao) values (4 ,'Processador i7' , 5199.99 , 'INTEL CORE I9-14900KS');
insert into mercado (ID,Produto,Preco,Descricao) values (5 ,'PLACA MAE GIGABYTE' , 879.99 , 'B760M GAMING AC');
insert into mercado (ID,Produto,Preco,Descricao) values (6 ,'PLACA MAE ASUS' , 2499.99 , 'TUF GAMING Z790-BTF WIFI');
insert into mercado (ID,Produto,Preco,Descricao) values (7 ,'PLACA MAE MSI' , 1499.99 , 'MAG B760M MORTAR WIFI II');
insert into mercado (ID,Produto,Preco,Descricao) values (8 ,'PLACA MAE ASROCK' , 2899.99 , 'Z790 TAICHI LITE, DDR5');
insert into mercado (ID,Produto,Preco,Descricao) values (9 ,'PLACA MAE GIGABYTE' , 2299.99, 'Z790 AORUS ELITE X, DDR5') 

alter table [Mercado] set [Produto] = '' where [Produto] = ''; -- Altera a Descrição da Tabela Criada

drop  table Mercado; --Deleta a Tabela Criada

update [Mercado] set [Produto] = 'Processador i9' where ID = 4; --Altera os Valores do Banco de Dados Inseridos 

alter table [dbo].[Mercado] add Desconto numeric not null default 0; --Inclui nova tabela antes ou depois da coluna 

insert into mercado (Desconto) values (5);
