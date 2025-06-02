create table Cadastro(
Id int primary key identity(1,1), --Identificador unico 
Nome nvarchar(100) not null,
Idade smallint not null,
Genero char(2), 
Email nvarchar(100) not null, 
Senha char(100) null,
CPF char(14) not null unique, --Incluimos um tip que caracteriza numeros 
CPF_Formatado as 
	substring(CPF, 1, 3) + '.' +
	substring(CPF, 4, 3) + '.' +
	substring(CPF, 7, 3) + '-' +
	substring(CPF, 10, 2), --Nesta função formatamos a coluna para exibir os numeros do cpf organizado como mostra o fisico 
Endereco nvarchar(100) not null, 
Numero nvarchar(100), 
Complemento varchar(50) not null, 
Bairro nvarchar(50) not null,
Cidade nvarchar(50) not null,
Estado char(2) not null,
Cep char(9) not null,
Cep_Formatado as stuff(Cep, 6, 0, '-'), --Formata o numero para exibir o traço no meio
check(Idade >= 18 and Senha >= 100), 
CadCheck as checksum(Nome, Email, Endereco, Numero, Complemento, Bairro, Cidade)
);

select * from Cadastro;

select name from sys.check_constraints where parent_object_id = OBJECT_ID('Cadastro');

select name, definition from sys.check_constraints where parent_object_id = OBJECT_ID('Cadastro'); --Selecionamos e checamos nomes que aderiram a constraint

alter table Cadastro drop constraint CK__Cadastro__4AB81AF0; --Removendo a constraint 

insert into Cadastro (Nome, Idade, Genero, Email, Senha, CPF, Endereco, Numero, Complemento, Bairro, Cidade, Estado, Cep) values ('Mafalda', 33, 'F', 'mafalda23@hotmail.com', 'jmr123', '42382838200', 'rua fernando cunha', '114', 'apartamento', 'vila', 'Minas gerais', 'MG', '35620000'); 

declare @Senha char(100) = 'joon3234'; --Ao inserir, utilizamos o HASHBYTES ao inserir novos dados dentro da tabela 
insert into Cadastro (Nome, Idade, Genero, Email, Senha, CPF, Endereco, Numero, Complemento, Bairro, Cidade, Estado, Cep) values ('jon', 26, 'M', 'joon@gmail.com', HASHBYTES('SHA2_256', @Senha), '48767232100', 'Av. Brasil', '200', 'Casa', 'Centro', 'Rio de Janeiro', 'RJ', '22041000')

declare @Senha char(100) = 'joaovitor123';

select Senha, CONVERT(char(100), Senha) as 'Backup_Senha' into Senha_Backup from Cadastro; --Copia de Segurança 

update Cadastro set Senha = HASHBYTES('SHA2_256', CONVERT(char(100), Senha)) where Senha is not null; --Criptografando a Senha inserindo na tabela

--Comparando os hash-- 
declare @Email nvarchar(100) = 'joaovitor.franco23@hotmail.com';
declare @Senha char(100) = 'joaovitor123'; 

select * from Cadastro where Email = @Email and Senha = HASHBYTES('SHA2_256', @Senha); 

--Descriptografando Dados--
declare @Senha nvarchar(100) = 'joaovitor123';
declare @Senha nvarchar(100) = 'joon3234';
select @Senha, convert(nvarchar(100), DECRYPTBYPASSPHRASE(@Senha, Senha)) as 'Senha_Backup' from Cadastro;
