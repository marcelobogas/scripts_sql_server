CREATE OR ALTER FUNCTION formatar_cpf(@STRING VARCHAR(11))
RETURNS VARCHAR(14)
AS
BEGIN

	DECLARE 
		@FIRST_PART		 VARCHAR(3),
		@SECOND_PART	 VARCHAR(3),
		@THIRD_PART		 VARCHAR(3),
		@LAST_PART		 VARCHAR(2),
		@STRING_FORMATED VARCHAR(14)
		
		SET @FIRST_PART = LEFT(@STRING, 3)
		SET @SECOND_PART = SUBSTRING(@STRING, 4, 3)
		SET @THIRD_PART = SUBSTRING(@STRING, 7, 3)
		SET @LAST_PART = RIGHT(@STRING, 2)
		SET @STRING_FORMATED =  @FIRST_PART + '.' + @SECOND_PART + '.' + @THIRD_PART + '-' + @LAST_PART

	RETURN @STRING_FORMATED

END
GO