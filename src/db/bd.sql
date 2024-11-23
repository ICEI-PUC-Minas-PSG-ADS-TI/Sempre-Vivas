-- Criação da tabela Usuario
CREATE TABLE Usuario (
    id_Usuario INTEGER PRIMARY KEY 
);

-- Criação da tabela Conta
CREATE TABLE Conta (
    id_Conta INTEGER PRIMARY KEY,
    Email VARCHAR UNIQUE,
    Senha VARCHAR,
    Username VARCHAR UNIQUE,
    id_Usuario INTEGER,
    FOREIGN KEY (id_Usuario) REFERENCES Usuario(id_Usuario)
    
);

-- Criação da tabela Cliente
CREATE TABLE Cliente (
    id_Cliente INTEGER PRIMARY KEY,
    Nome CHARACTER,
    Data_Nascimento DATE,
    Endereco VARCHAR,
    Telefone INTEGER,
    id_Conta INTEGER,
    FOREIGN KEY (id_Conta) REFERENCES Conta(id_Conta)
);

-- Criação da tabela RepresentanteComunidade
CREATE TABLE RepresentanteComunidade (
    id_Representante INTEGER PRIMARY KEY,
    Nome CHARACTER,
    Telefone INTEGER,
    Papel_Social VARCHAR,
    Descricao VARCHAR,
    Email VARCHAR UNIQUE,
    id_Conta INTEGER,
    FOREIGN KEY (id_Conta) REFERENCES Conta(id_Conta)
  
);

-- Criação da tabela Organizacao
CREATE TABLE Organizacao (
    id_Organizacao INTEGER PRIMARY KEY,
    Nome CHARACTER,
    Email VARCHAR UNIQUE,
    Telefone INTEGER,
    CNPJ INTEGER,
    Endereco VARCHAR
);

-- Criação da tabela Comunidade
CREATE TABLE Comunidade (
    id_Comunidade INTEGER PRIMARY KEY,
    Nome CHARACTER,
    Estado CHARACTER,
    Descricao VARCHAR,
    Cidade CHARACTER,
    Caracteristicas_Geograficas VARCHAR,
    Tipo_Area CHARACTER,
    id_Representante INTEGER,
	id_Conta INTEGER,
    FOREIGN KEY (id_Representante) REFERENCES RepresentanteComunidade(id_Representante),
	FOREIGN KEY (id_Conta) REFERENCES Conta(id_Conta)
  
);

-- Criação da tabela Produto
CREATE TABLE Produto (
    id_Produto INTEGER PRIMARY KEY,
    Nome CHARACTER,
    Descricao VARCHAR,
    Preco FLOAT,
);

-- Criação da tabela Pedido
CREATE TABLE Pedido (
    id_Pedido INTEGER PRIMARY KEY,
    frete FLOAT,
    data_Pedido DATE,
    recebedor CHARACTER,
    endereco_Entrega VARCHAR,
    id_Produto INTEGER,
    FOREIGN KEY (id_Produto) REFERENCES Produto(id_Produto),
    
);

CREATE TABLE Cliente_Pedido(
	id_Produto INTEGER ,
	id_Cliente INTEGER,
	PRIMARY KEY(id_Produto,	id_Cliente),
	FOREIGN KEY (id_Produto) REFERENCES Produto(id_Produto),
	FOREIGN KEY (id_Cliente) REFERENCES Cliente(id_Cliente)
);

CREATE TABLE Produto_Pedido(
	id_Produto INTEGER ,
	id_Pedido INTEGER,
	PRIMARY KEY(id_Produto,	id_Pedido),
	FOREIGN KEY (id_Produto) REFERENCES Produto(id_Produto),
	FOREIGN KEY (id_Pedido) REFERENCES Pedido(id_Pedido)
);