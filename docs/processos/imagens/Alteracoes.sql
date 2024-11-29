--Adionando valor ao pedido

/*alter table Pedido
add valor DECIMAL;

alter table Contem
add qntd INT;*/


CREATE TABLE Realiza(
	idPedido INT,
	idConta INT,
	PRIMARY KEY (idPedido,idConta),
	FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
	FOREIGN KEY (idConta) REFERENCES Conta(idConta)
);