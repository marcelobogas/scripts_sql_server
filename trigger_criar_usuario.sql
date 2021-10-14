CREATE OR ALTER TRIGGER criar_usuario 
ON pessoa
FOR INSERT  
AS  
   BEGIN
		DECLARE
		@ID		INT

		SELECT @ID = id FROM INSERTED

		INSERT INTO usuarios(id_pessoa, admin, ativo)
		VALUES (@ID, 0, 1)
   END
GO  