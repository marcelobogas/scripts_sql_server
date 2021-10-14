CREATE OR ALTER VIEW pessoa_fisica  
AS

	SELECT u.id, u.admin, u.ativo, u.id_pessoa, p.id_tipo_pessoa, tp.descricao AS tipo_pessoa, p.nome, 
	u.email, u.senha, dpf.cpf, dpf.rg, dpf.sexo, dpf.data_nascimento, dpf.logradouro, dpf.numero,
	dpf.complemento, dpf.bairro, dpf.cidade, dpf.estado, dpf.cep
	FROM usuarios u
	INNER JOIN pessoa p ON p.id = u.id_pessoa
	INNER JOIN tipo_pessoa tp ON tp.id = p.id_tipo_pessoa
	INNER JOIN dados_pessoa_fisica dpf ON dpf.id_pessoa = p.id

GO  