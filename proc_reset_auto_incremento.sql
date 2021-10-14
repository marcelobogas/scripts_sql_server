CREATE OR ALTER PROCEDURE reset_auto_incremento
@TABLE VARCHAR(70)

AS
BEGIN

    DECLARE @MAX_ID INT
    SET @MAX_ID = (SELECT MAX(id) FROM @TABLE) + 1

    --comando para identity da tabela iniciar a partir do último número
    DBCC CHECKIDENT(@TABLE, RESEED, @MAX_ID);

END
GO