USE conexao_php;

CREATE TABLE pessoa(
	id INT PRIMARY KEY CLUSTERED IDENTITY(1,1) NOT NULL,
	id_tipo_pessoa INT NOT NULL,
	nome varchar(50) NOT NULL
);

CREATE TABLE usuarios(
	id INT PRIMARY KEY CLUSTERED IDENTITY(1,1) NOT NULL,
	id_pessoa INT NOT NULL,
	email VARCHAR(70) NOT NULL,
	senha VARCHAR(70) NOT NULL,
	admin BIT NOT NULL,
	ativo BIT NOT NULL
);

CREATE TABLE tipo_pessoa(
	id INT PRIMARY KEY CLUSTERED IDENTITY(1,1) NOT NULL,
	descricao VARCHAR(20) NOT NULL
);

CREATE TABLE dados_pessoa_fisica(
	id INT PRIMARY KEY CLUSTERED IDENTITY(1,1) NOT NULL,
	id_pessoa INT NOT NULL,
	cpf VARCHAR(11) NOT NULL,
	rg VARCHAR(20) NULL,
	sexo VARCHAR(10) NULL,
	data_nascimento DATE NULL,
	logradouro VARCHAR(256) NULL,
	numero VARCHAR(10) NULL,
	complemento VARCHAR(100) NULL,
	bairro VARCHAR(70) NULL,
	id_cidade INT NULL,
	id_estado INTs NULL,
	cep VARCHAR(10) NULL
);

CREATE TABLE dados_pessoa_juridica(
	id INT PRIMARY KEY CLUSTERED IDENTITY(1,1) NOT NULL,
	id_pessoa INT NOT NULL,
	nome_fantasia VARCHAR(70),
	cnpj VARCHAR(14) NOT NULL,
	insc_estadual VARCHAR(20) NOT NULL,
	insc_municipal VARCHAR(20) NOT NULL,
	data_abertura DATE NULL,
	logradouro VARCHAR(256) NULL,
	numero VARCHAR(10) NULL,
	complemento VARCHAR(100) NULL,
	bairro VARCHAR(70) NULL,
	id_cidade INT NULL,
	id_estado INT NULL,
	cep VARCHAR(10) NULL,
	site VARCHAR(100) NULL
);
