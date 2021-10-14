CREATE OR ALTER VIEW pessoa_juridica
AS

	SELECT u.id, u.admin, u.ativo, u.id_pessoa, p.id_tipo_pessoa, tp.descricao AS tipo_pessoa, p.nome, 
	u.email, u.senha, dpj.nome_fantasia, dpj.cnpj, dpj.insc_estadual, dpj.insc_municipal, dpj.data_abertura,
    dpj.logradouro, dpj.numero, dpj.complemento, dpj.bairro, dpj.cidade, dpj.estado, dpj.cep, dpj.site
	FROM usuarios u
	INNER JOIN pessoa p ON p.id = u.id_pessoa
	INNER JOIN tipo_pessoa tp ON tp.id = p.id_tipo_pessoa
	INNER JOIN dados_pessoa_juridica dpj ON dpj.id_pessoa = p.id
GO  