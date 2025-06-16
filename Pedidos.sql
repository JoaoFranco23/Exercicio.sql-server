--Tabela de Pedidos--
create table Pedidos(
Id int primary key identity(1,1), --Identificador unico 
Nome nvarchar(100) not null, 
DDD char(2) not null,
DDD_Formatado as '(' + DDD + ')' persisted,
Telefone char(9) not null unique,
Num_Tel_Form AS 
        '(' + DDD + ') ' + 
        SUBSTRING(Telefone, 1, 5) + '-' + 
        SUBSTRING(Telefone, 6, 4) PERSISTED, -- Formatação correta do número com DDD, --Nesta função formatamos a coluna para exibir os numeros do Telefone 
Categoria_Produtos nchar(100) not null, --Categoria do Produto
Produto varchar(100) not null, --Tipo de Produto 
Descricao_Produto text, --Descrição do Produto
Valor decimal(10, 2) not null, --Preço do Produto Adquirido
Total_Pedido decimal(10) not null, --Total de Produtos Pedidos 
Data_Pedido date not null default getdate(), 
Horario_Pedido time not null,
constraint chk_Horario_Pedido check(Horario_Pedido >= '08:00:00' and Horario_Pedido <= '18:00:00'), --Checa o horario que estará efetivando a compra 
Endereco nvarchar(100) not null, 
Numero nvarchar(100), 
Complemento varchar(50) not null, 
Bairro nvarchar(50) not null,
Cidade nvarchar(50) not null,
Estado char(2) not null,
Cep char(9) not null,
Cep_Formatado as stuff(Cep, 6, 0, '-') --Formata o numero de exibição do cep 
);

select * from Pedidos; 

insert into Pedidos (Nome, DDD, Telefone, Categoria_Produtos, Produto, Descricao_Produto, Valor, Total_Pedido, Data_Pedido, Horario_Pedido, Endereco, Numero, Complemento, Bairro, Cidade, Estado, Cep) 
	values(
	'Joao', 18, 999999998, 'informatica', 'Placa de Video MSI GeForce RTX 5060 Shadow 2X OC, 8GB', 'A linha Shadow da MSI une desempenho de ponta com um design discreto e robusto. Com 8GB GDDR7 e arquitetura NVIDIA de nova geração, ela é ideal para quem busca performance em Full HD e QHD.', 2659.99, 2, '2025-06-08', '14:17', 'Rua general izidoro', 1000, 'casa', 'vila endo', 'Adamantina', 'SP', '17800444'
	); 

drop table Pedidos; 

alter table Pedidos add Desconto decimal(5, 2) default 0.00; 

insert into Pedidos (Nome, DDD, Telefone, Categoria_Produtos, Produto, Descricao_Produto, Valor, Total_Pedido, Data_Pedido, Horario_Pedido, Endereco, Numero, Complemento, Bairro, Cidade, Estado, Cep, Desconto) 
	values (
	'mafalda', 18, 999762020, 'Livros', 'Ponerologia: Psicopatas no poder (2ª Edição)', 'O discurso pró-comunista ou esquerdista é cem por cento baseado na exploração da compaixão e da culpa. Isso é da experiência comum. Mas o que o dr. Lobaczewski e seus colaboradores descobriram foi muito além: descobriram, em primeiro lugar, que só uma classe de psicopatas tem a agressividade mental suficiente para se impor a toda uma sociedade por esses meios. Segundo, que quando os psicopatas dominam, a insensitividade moral se espalha por toda a sociedade, roendo o tecido das relações humanas e fazendo da vida um inferno. Terceiro: descobriram que isso acontece não porque a psicopatia seja contagiosa, mas porque aquelas mentes menos ativas que, meio às tontas, vão se adaptando às novas regras e valores, se tornam presas de uma sintomatologia claramente histérica, ou histeriforme. O histérico não diz o que sente, mas passa a sentir aquilo que disse — e, na medida em que aquilo que disse é a cópia de fórmulas prontas espalhadas na atmosfera como gases onipresentes, qualquer empenho de chamá-lo de volta às suas percepções reais abala de tal modo a sua segurança psicológica emprestada, que acaba sendo recebido como uma ameaça, uma agressão, um insulto', 72.12, 50, '2025-06-08', '17:01', 'Rua Tritano ', 1000, 'casa', 'Jardim Maria Beatriz', 'São Paulo', 'SP', '06365210', 5
	); 

--Alterando Dados Inseridos 
update Pedidos set DDD = 11 where Id = 4;
update Pedidos set Desconto = 10 where Id = 1;  
update Pedidos set Total_Pedido = 1 where Id = 3;

insert into Pedidos (Nome, DDD, Telefone, Categoria_Produtos, Produto, Descricao_Produto, Valor, Total_Pedido, Data_Pedido, Horario_Pedido, Endereco, Numero, Complemento, Bairro, Cidade, Estado, Cep, Desconto)
	values (
	'joon', 18, 999662320, 'informatica', 'Processador Intel I5-11400F, 2.6GHz, Cache 12MB, Hexa Core, 12 Threads, LGA 1200', 'Atuando em uma harmonia sem precedentes, o novo núcleo e arquiteturas gráficas, desempenho inteligente baseado em IA e a melhor conectividade sem fio e com fio da categoria, os processadores Intel Core da 11ª Geração elevam o desempenho de notebooks e desktops a novos patamares. Os processadores para desktop Intel Core da 11ª Geração reimaginam o desempenho e o ajuste para jogabilidade de elite com uma nova arquitetura de CPU, aceleração baseada em IA, recursos de overclock aprimorados, 1 velocidades de memória de até DDR4-3200, 20 vias de PCIe 4.0 para CPU e muito mais. Desempenho inteligente baseado em IA, gráficos imersivos Intel Xe, opções de ajuste aprimoradas e mais trabalho conjunto nos processadores para desktop da Intel Core da 11ª Geração a fim de melhorar a produtividade criativa, acelerar edições de fotos e vídeo, assim como tarefas de design gráfico. A nova e revolucionária arquitetura dos processadores para desktop Intel Core da 11ª Geração combina desempenho inteligente baseado em IA, gráficos Intel Xe que transformam o cenário atual, a melhor conectividade com e sem fio da categoria e muito mais para experiências surpreendentes..', 987.99, 1, '2025-06-08', '14:15', 'Rua Tritano ', 1001, 'casa', 'Jardim Maria Beatriz', 'São Paulo', 'SP', '06365210', 5 
	);
