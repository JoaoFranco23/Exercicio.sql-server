create database Orçamento; 

use Orçamento;

create table Gastos(
Id int primary key identity(1,1), --Identificador unico
Orgão varchar(100) not null, --Descrição unica
Orgão_Subordinado varchar(100) not null, --Descrição do orgão subordinado
Funcao varchar(100) not null, --Cargo Destinado 
Subfuncao varchar(100) not null, --Outras funçõs Destinados 
Despesa varchar(100) not null, --Despesas Gastas
Orcamento decimal(18,2) not null default 0, --Total de Gasto 
ORCAMENTO_REALIZADO DECIMAL(5,2) NOT NULL,
Data_Gasto date not null default getdate() --Utilizamos dentro da definição da tabela o "Getdate()" que retornara a data e a hora atual
);

drop table Gastos; --Deletar a tabela criada 

select * from gastos

insert into gastos (
    Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto
) 
values (
    'Justiça Militar', 'Justiça Militar - Unidades com vínculo direto', 'Judiciária', 'Ação judiciária', 'Outros Serviços de Terceiros - Pessoa Jurídica', 0, 0, '2025-01-20'
);

insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Segurança pública', 'Proteção e benefícios ao trabalhador', 'Despesas de Exercícios Anteriores', 5409.76, 100, '2023-02-10');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Administração', 'Administração geral', 'Despesas de Exercícios Anteriores', 599.94, 100, '2023-02-11');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Segurança pública', 'Outros encargos especiais', 'Obrigações Patronais', 520236.08, 31.76, '2023-02-11');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Administração', 'Administração geral', 'Não informado', 3323.50, 0.00, '2023-02-21');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Administração', 'Outros encargos especiais', 'Obrigações Patronais', 4000.00, 85.97, '2023-11-21')
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Segurança pública', 'Outros encargos especiais', 'Outros Serviços de Terceiros - Pessoa Jurídica', 3002406.24, 31.22, '2024-05-21')
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Administração', 'Administração geral', 'Outros Serviços de Terceiros - Pessoa Jurídica', 620183.6, 64.5, '2024-03-21')
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Segurança pública', 'Outros encargos especiais', 'Não informado', 3293826, 0.00, '2024-03-21');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Administração', 'Outros encargos especiais', 'Obrigações Patronais', 95433, 23.94, '2024-05-21')
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Administração', 'Administração geral', 'Diárias - Civil', 28500, 77.33, '2024-05-21');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Segurança pública', 'Proteção e benefícios ao trabalhador', 'Ressarcimento de Despesas de Pessoal Requisitado', 200000, 18.32, '2025-05-21');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Administração', 'Administração geral', 'Diárias - Civil', 215000, 33.57, '2025-05-21');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Empresa Brasil de Comunicação', 'Administração', 'Desenvolvimento científico', 'Não informado', 980631, 0.00, '2025-05-21');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Gabinete da Vice-Presidência da República', 'Administração', 'Outros encargos especiais', 'Não informado', 2338344, 0.00, '2025-05-21');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Administração', 'Administração geral', 'Passagens e Despesas com Locomoção', 64000, 50.26, '2025-05-21');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Segurança pública', 'Proteção e benefícios ao trabalhador', 'Indenizações e Restituições', 2700000, 28.27, '2025-05-21');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Administração', 'Administração geral', 'Passagens e Despesas com Locomoção', 930060.73, 39.00, '2025-05-21');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Fundo de Imprensa Nacional', 'Administração', 'Outros encargos especiais', 'Não informado', 945838, 0.00, '2025-06-21')
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Administração', 'Administração geral', 'Outros Serviços de Terceiros - Pessoa Física', 23500, 64.90, '2024-05-21');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Administração', 'Comunicação social', 'Serviços de Tecnologia da Informação e Comunicação', 100000, 0.00, '2025-07-21');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Administração', 'Administração geral', 'Outros Serviços de Terceiros - Pessoa Física', 378000, 43.92, '2025-07-21');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Gestão ambiental', 'Preservação e conservação ambiental', 'Não informado', 3000000000, 0.00, '2025-08-26');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Segurança pública', 'Administração geral', 'Obrigações Patronais', 2600000, 36.94, '2025-08-02');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Previdência social', 'Previdência do regime estatutário', 'Pensões', 53000000, 31.99, '2025-02-12');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Administração', 'Administração geral', 'Não informado', 8485348.73, 0.00, '2025-03-12');
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Segurança pública', 'Administração geral', 'Vencimentos e Vantagens Fixas - Pessoal Militar', 120000, 0.00, '2025-09-12')
insert into gastos (Orgão, Orgão_Subordinado, Funcao, Subfuncao, Despesa, Orcamento, ORCAMENTO_REALIZADO, Data_Gasto) values ('Presidência da República', 'Presidência da República', 'Previdência social', 'Previdência do regime estatutário', 'Despesas de Exercícios Anteriores', 50000, 33.73, '2024-12-05') 

select Orcamento, sum([Orcamento]) * 100 /2 as [ORCAMENTO_REALIZADO] from Gastos group by [Orcamento] order by SUM([Orcamento]) * 100 / 2 DESC;

select * from Gastos where MONTH([Data_Gasto]) = MONTH(GETDATE()) and YEAR([Data_Gasto]) = YEAR(GETDATE()); -- Selecionando as despesas do mês atual

select Orcamento, sum([Orcamento]) / COUNT(*) as Orcamento from Gastos group by [Orcamento];

select FORMAT(Orcamento, 'C', 'pt-BR') as Orcamento from Gastos; --Chamando a tabela de orçamento com uma coluna contendo simbo de moeda 

select AVG(Orcamento) as 'Orcamento', sum([Orcamento]) as 'Total de gastos' from Gastos group by Orcamento; --Função agrega um unico valor que abrange cada grupo 

select AVG(DISTINCT Orcamento) as 'Orçamento' from Gastos; --Retornamos o orçameto medio dos gastos no banco de dados, usando "DISTINCT" 

select avg(Orcamento) as 'Orçamento' from Gastos; 

