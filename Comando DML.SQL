--Tratativa de uma planilha de dados coletados no site do governo federal
select * from Orçamento; 

select * from Orçamento where [NOME ELEMENTO DE DESPESA] is null or [NOME ELEMENTO DE DESPESA] = 'Não informado'; --Filtrando registro não informado da coluna 'NOME ELEMENTO DE DESPESA' 

select Top 20538 * from Orçamento where [NOME ELEMENTO DE DESPESA] IS NULL OR [NOME ELEMENTO DE DESPESA] = 'Não informado'; 

select [NOME ELEMENTO DE DESPESA], sum([ORÇAMENTO ATUALIZADO (R$)]) as [ORÇAMENTO ATUALIZADO (R$)] from [Orçamento] where [NOME ELEMENTO DE DESPESA] = 'Não informado' and [ORÇAMENTO ATUALIZADO (R$)] != 0.00 and [NOME ELEMENTO DE DESPESA] LIKE 'Não informado%' group by [NOME ELEMENTO DE DESPESA]; 
 
exec sp_rename 'Planilha1$', 'Orçamento'; --Renomear Tabela criada  

alter table Orçamento add ORCAMENTO_REALIZADO decimal(5, 2); --Adicionando mais uma coluna dentro da planilha importado
ALTER TABLE Orçamento ALTER COLUMN ORCAMENTO_REALIZADO DECIMAL(5,2) NOT NULL;

UPDATE Orçamento
SET ORCAMENTO_REALIZADO = 00.00
WHERE ORCAMENTO_REALIZADO IS NULL;
 
alter table Orçamento add constraint DF_ORCAMENTO_rEALIZADO default 0.00 for [ORCAMENTO_REALIZADO] 

alter table Orçamento add ID int primary key identity(1,1); 
