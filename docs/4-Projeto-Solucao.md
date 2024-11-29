## 4. Projeto da Solução

### 4.1 Modelo de dados

Login: Ao entrar no site o usuário verá uma opção de login. Se ele já estiver cadastrado na aplicação, basta que ele insira o email e a senha cadastradas para que haja a verificação por parte do sistema e, caso a verificação aponte como emails e senha corretos, ele será redirecionado à página inicial do site com algumas novas funcionalidades desbloqueadas. Caso o email e senhas postos nos campos devidos não estejam conforme os registrados, o usuário poderá tentar repetir o processo novamente.

Cadastro (Grupo Étnico): Ao entrar no site, o usuário terá a opção de cadastro, para quando ele não possuir uma conta vinculada no sistema. Dentro de cadastro poderá ser escolhido outras opções, como o Cadastro de Grupo Étnico, onde o usuário irá informar o nome, localização e descrição do grupo com o qual a comunidade tradicional se identifica. Caso o representante seja constituinte do respectivo grupo étnico, deverá informar o papel social, nome completo, telefone, e-mail, descrição, além de usuário e senha. Mas, caso o representante seja participante de uma organização social, deverá informar nome, endereço, telefone, CNPJ, e-mail, além de seu usuário e senha.

Cadastro (Cliente): Ao entrar no site, o usuário terá a opção de cadastro, para quando ele não possuir uma conta vinculada no sistema. Dentro do cadastro poderá ser escolhido outras opções, como o Cadastro de Cliente. O usuário deverá informar seu nome completo, data de nascimento, endereço, e-mail, usuário e senha, e sua conta poderá ser criada.

Cadastro novo produto: Uma Comunidade dentro do site terá a possibilidade de cadastrar um novo produto na sua loja, onde ele deverá adicionar o nome do produto, uma descrição, seu valor e algumas imagens, onde o produto estará disponível na sua loja para ser comprado por Clientes.

Realizar pedido: O Cliente terá a opção no seu carrinho de realizar um pedido, onde seus itens selecionados no carrinho serão adicionados automaticamente, e ele deverá informar a forma de pagamento, endereço de entrega completo e CEP, e após isso poderá efetuar a compra de seu(s) produto(s) dos selecionados.

#### 4.1.1 Modelo ER

O Modelo ER representa através de um diagrama como as entidades (coisas, objetos) se relacionam entre si na aplicação interativa.]

> - [Modelo ER]([https://www.ibm.com/docs/pt-br/cognos-analytics/10.2.2?topic=designer-creating-relational-model](https://app.brmodeloweb.com/#!/publicview/673f8032f3fe6ec81282cceb))

#### 4.1.2 Esquema Relacional

O Esquema Relacional corresponde à representação dos dados em tabelas juntamente com as restrições de integridade e chave primária.
 
As referências abaixo irão auxiliá-lo na geração do artefato “Esquema Relacional”.

> - [Criando um modelo relacional - Documentação da IBM](https://www.ibm.com/docs/pt-br/cognos-analytics/10.2.2?topic=designer-creating-relational-model)

![Exemplo de um modelo relacional](images/modeloRelacional.png "Exemplo de Modelo Relacional.")
---


#### 4.1.3 Modelo Físico


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


#### 1 - Manipulação de tabelas

##### Alterações

![Registro produto](../docs/processos/imagens/Alteracoes.sql)

##### Criação de tabelas

![Criar tabelas](../docs/processos/imagens/CreateTable.sql)

##### Vizualização

![Vizualização de tabelas](../docs/processos/imagens/Vizualizacao.sql)

##### Reset

![Resetar tabelas](../docs/processos/imagens/Reset.sql)



#### 2 - Registros


##### Cadastra

![Registro cadastra](../docs/processos/imagens/CadastraProduto.sql)

##### Cliente

![Registro cliente](../docs/processos/imagens/Cliente.sql)

##### Comunidade

![Registro comunidade](../docs/processos/imagens/Comunidade.sql)

##### Conta

![Registro conta](../docs/processos/imagens/Conta.sql)

##### Contém

![Registro contém produto](../docs/processos/imagens/ContemProduto.sql)

##### Organização

![Registro organização](../docs/processos/imagens/Organizacao.sql)

##### Pedido

![Registro pedido](../docs/processos/imagens/Pedido.sql)

##### Produto

![Registro produto](../docs/processos/imagens/Produto.sql)

##### Usuário

![Registro usuário](../docs/processos/imagens/Usuário.sql)

##### Realiza pedido

![Registro realiza pedido](../docs/processos/imagens/RealizaPedido.sql)

##### Representante comunidade

![Registro representante comunidade](../docs/processos/imagens/RepresentanteComunidade.sql)

##### Usuário

![Registro usuário](../docs/processos/imagens/Usuario.sql)












### 4.4. Tecnologias

| **Dimensão**   | **Tecnologia**  |
| ---            | ---             |
| SGBD           | MySQL           |
| Front end      | HTML+CSS+JS     |
| Deploy         | Github Pages    |

