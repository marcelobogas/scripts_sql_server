--comando para apagar os dados da tabela
TRUNCATE TABLE pessoa;

--comando para identity da tabela iniciar do 1 novamente
DBCC CHECKIDENT(pessoa, RESEED, 1);