create table Fornecedores(
Id int primary key identity(1,1), 
Nome_Fornecedor nvarchar(100) not null,
Categoria_Produto nchar(100) not null,
Data_Entrada date not null,
constraint chk_Data_Entrada check( --Controle de dias em que o produto  será registrado no banco de dados
	 (
            datename(weekday, Data_Entrada) = 'Sabado'
            and Horario_Entrada_Produto between '08:30:00' and '12:20:00'
        )
        or (
            datename(weekday, Data_Entrada) not in ('Sabado', 'Domingo')
        )
    ),
Horario_Entrada_Produto time not null,
constraint chk_Horario_Entrada_Produto check(Horario_Entrada_Produto >= '08:30:00' and Horario_Entrada_Produto <= '17:00:00')
);


declare @Data_Entrada date = '2025-06-15'; --Verificando se a data não é sábado ou domingo
if datename(weekday, @Data_Entrada) in ('Sabado', 'Domingo')
	print 'Data Invalida (Final de Semana)'
else
	print 'Data Válida (Dia Útil)'

select * from Fornecedores;

alter table Fornecedores add Data_Entrada_Produto ; 

drop table Fornecedores;

insert into Fornecedores (Nome_Fornecedor, Categoria_Produto, Data_Entrada, Horario_Entrada_Produto)
values (
	'Nvidia', 'Informatica', '2025-06-13', '10:30:00'
);

insert into Fornecedores (Nome_Fornecedor, Categoria_Produto, Data_Entrada, Horario_Entrada_Produto)
values (
	'AMD', 'Informatica', '2025-06-13', '10:30:00'
);

insert into Fornecedores (Nome_Fornecedor, Categoria_Produto, Data_Entrada, Horario_Entrada_Produto)
values (
	'Intel', 'Informatica', '2025-06-13', '10:30:00'
);

insert into Fornecedores (Nome_Fornecedor, Categoria_Produto, Data_Entrada, Horario_Entrada_Produto)
values (
	'Redragon', 'Informatica', '2025-06-13', '10:30:00'
);

insert into Fornecedores (Nome_Fornecedor, Categoria_Produto, Data_Entrada, Horario_Entrada_Produto)
values (
	'Fortrek', 'Informatica', '2025-06-13', '10:30:00'
);

--Formatando o time da coluna da tabela de horas
select format(Horario_Entrada_Produto, 'HH:mm:ss') as horario from Fornecedores; --Exibindo no formato do horario "HH:mm:ss"

select stuff(right('0000' + cast(Horario_Entrada_Produto as varchar(4)), 4), 3, 0, ':') as Horario_Entrada from Fornecedores; --Formatando a hora com 4 ou 6 digitos
