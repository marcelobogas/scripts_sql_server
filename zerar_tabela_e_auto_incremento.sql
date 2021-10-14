--comando para apagar os dados da tabela
TRUNCATE TABLE cidades;

--comando para identity da tabela iniciar do 1 novamente
DBCC CHECKIDENT(cidades, RESEED, 1);