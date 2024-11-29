 -- Criação da tabela Usuario
CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY 
);

-- Criação da tabela Conta
CREATE TABLE Conta (
    idConta INT PRIMARY KEY,
    email VARCHAR(50) UNIQUE,
    senha VARCHAR(16),
    username VARCHAR(16) UNIQUE,
    idUsuario INT,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
    
);  

-- Criação da tabela Cliente
CREATE TABLE Cliente (
    nome VARCHAR(100),
    dataNascimento DATE,
    endereco VARCHAR(200),
    telefone BIGINT,
    idConta INT,
    FOREIGN KEY (idConta) REFERENCES Conta(idConta)
);

-- Criação da tabela RepresentanteComunidade
CREATE TABLE RepresentanteComunidade (
    nome VARCHAR(100),
    telefone BIGINT,
    Papel_Social VARCHAR(200),
    Descricao VARCHAR(500),
    id_Conta INTEGER,
    FOREIGN KEY (id_Conta) REFERENCES Conta(idConta)
  
);

-- Criação da tabela Organizacao
CREATE TABLE Organizacao (
    nome VARCHAR(100) UNIQUE,
    email VARCHAR(50) UNIQUE,
    telefone BIGINT,
    cnpj BIGINT UNIQUE,
    endereco VARCHAR(200)
);

-- Criação da tabela Comunidade
CREATE TABLE Comunidade (
    idComunidade INT PRIMARY KEY,
    nome VARCHAR(100),
    estado VARCHAR(50),
    descricao VARCHAR(500),
    cidade VARCHAR(50),
    caracteristicasGeograficas VARCHAR(500),
    tipoArea VARCHAR(500),
	id_Conta INTEGER,
	FOREIGN KEY (id_Conta) REFERENCES Conta(idConta)
);

-- Criação da tabela Produto
CREATE TABLE Produto (
    idProduto INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(600),
    preco DECIMAL
);

-- Criação da tabela Pedido
CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY,
    frete DECIMAL,
    data_Pedido DATE,
    recebedor VARCHAR(100),
    enderecoEntrega VARCHAR(200)
);

-- Criação das tabela de relacionamento N:M
CREATE TABLE Realiza(
	idPedido INT,
	idConta INT,
	PRIMARY KEY (idPedido,idConta),
	FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
	FOREIGN KEY (idConta) REFERENCES Conta(idConta)
);

CREATE TABLE Contem(
	idProduto INT,
	idPedido INT,
	PRIMARY KEY (idProduto,idPedido),
	FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
	FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido)
);
CREATE TABLE Cadastra(
	idProduto INT,
	idComunidade INT,
	PRIMARY KEY (idProduto,idComunidade),
	FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
	FOREIGN KEY (idComunidade) REFERENCES Comunidade(idComunidade)
);
