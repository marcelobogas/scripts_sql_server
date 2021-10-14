CREATE OR ALTER TRIGGER reset_auto_increment_estados
ON estados
FOR DELETE
AS
	BEGIN
		DECLARE @MAX_ID INT
		SET @MAX_ID = (SELECT MAX(id) FROM estados)

		--comando para identity da tabela iniciar do 1 novamente
		DBCC CHECKIDENT(estados, RESEED, @MAX_ID);
	END
GO