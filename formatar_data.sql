CREATE OR ALTER FUNCTION formatar_data(@DATE DATE)
RETURNS VARCHAR(10)
AS
BEGIN

	DECLARE @DATE_FORMATED VARCHAR(10)

	SET @DATE_FORMATED = CONVERT(CHAR, @DATE, 103)

	RETURN @DATE_FORMATED
END
GO