CREATE TABLE Tecido 
( 
 idtecido INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
 UNIQUE (nome)
); 

CREATE TABLE Marca 
( 
 idmarca INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
 UNIQUE (nome)
); 

CREATE TABLE Cor 
( 
 idcor INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
 UNIQUE (nome)
); 

CREATE TABLE Tamanho 
( 
 idtamanho INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
 UNIQUE (nome)
); 

CREATE TABLE Traje 
( 
 idtraje INT PRIMARY KEY,  
 codigo INT NOT NULL,  
 descricao VARCHAR(n) NOT NULL,  
 localizacao VARCHAR(n),  
 valor_locacao FLOAT,  
 valor_venda FLOAT NOT NULL,  
 valor_indenizacao FLOAT,  
 idTamanho INT,  
 idTecido INT,  
 idMarca INT,  
 idCor INT,  
 idClasse INT,  
 UNIQUE (codigo)
); 

CREATE TABLE Locacao 
( 
 idlocacao INT PRIMARY KEY,  
 contato VARCHAR(n),  
 data_retirada DATE,  
 hora_retirada DATE,  
 valor_total FLOAT NOT NULL,  
 data_devolucao DATE,  
 valor_desconto FLOAT,  
 valor_entrada FLOAT,  
 data_evento DATE,  
 saldo_pagar FLOAT,  
 evento VARCHAR(n),  
 valor_indenizacao FLOAT,  
 data_assinatura DATE,  
 data_reserva DATE,  
 idFuncionario INT,  
 idCliente INT,  
); 

CREATE TABLE Traje_Locacao 
( 
 idTraje INT PRIMARY KEY,  
 idLocacao INT PRIMARY KEY,  
 quantidade INT,  
); 

CREATE TABLE Classe 
( 
 idclasse INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
 UNIQUE (nome)
); 

CREATE TABLE Parcela 
( 
 idparcela INT PRIMARY KEY,  
 data_vencimento FLOAT,  
 paga CHAR(n),  
 idLocacao INT,  
 idForma_Pagamento INT,  
); 

CREATE TABLE Ajuste 
( 
 idajuste INT PRIMARY KEY,  
 descricao VARCHAR(n) NOT NULL,  
 data_prova DATE,  
 hora_prova DATE,  
 idLocal_Ajuste INT,  
 idTraje INT,  
 idLocacao INT,  
); 

CREATE TABLE Local_Ajuste 
( 
 idlocal_ajuste INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
 UNIQUE (nome)
); 

CREATE TABLE Forma_Pagamento 
( 
 idforma_pagamento INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
); 

CREATE TABLE Cliente 
( 
 idcliente INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
 cpf CHAR(n),  
 rg VARCHAR(n) NOT NULL,  
 UNIQUE (cpf,rg)
); 

CREATE TABLE Endereco 
( 
 idendereco INT PRIMARY KEY,  
 logradouro VARCHAR(n) NOT NULL,  
 cep VARCHAR(n),  
 idCidade INT,  
); 

CREATE TABLE Funcionario 
( 
 idfuncionario INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
); 

CREATE TABLE Cliente_Endereco 
( 
 idCliente INT PRIMARY KEY,  
 idEndereco INT PRIMARY KEY,  
); 

CREATE TABLE Contato 
( 
 idcontato INT PRIMARY KEY,  
 tipo CHAR(n) NOT NULL,  
 conteudo VARCHAR(n) NOT NULL,  
 idCliente INT,  
); 

CREATE TABLE Cidade 
( 
 idcidade INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
 idEstado INT,  
 UNIQUE (nome)
); 

CREATE TABLE Estado 
( 
 idestado INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
 UNIQUE (nome)
); 

ALTER TABLE Traje ADD FOREIGN KEY(idTamanho) REFERENCES Tamanho (idTamanho)
ALTER TABLE Traje ADD FOREIGN KEY(idTecido) REFERENCES Tecido (idTecido)
ALTER TABLE Traje ADD FOREIGN KEY(idMarca) REFERENCES Marca (idMarca)
ALTER TABLE Traje ADD FOREIGN KEY(idCor) REFERENCES Cor (idCor)
ALTER TABLE Traje ADD FOREIGN KEY(idClasse) REFERENCES Classe (idClasse)
ALTER TABLE Locacao ADD FOREIGN KEY(idFuncionario) REFERENCES Funcionario (idFuncionario)
ALTER TABLE Locacao ADD FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente)
ALTER TABLE Traje_Locacao ADD FOREIGN KEY(idTraje) REFERENCES Tecido (idTraje)
ALTER TABLE Traje_Locacao ADD FOREIGN KEY(idLocacao) REFERENCES Tecido (idLocacao)
ALTER TABLE Parcela ADD FOREIGN KEY(idLocacao) REFERENCES Locacao (idLocacao)
ALTER TABLE Parcela ADD FOREIGN KEY(idForma_Pagamento) REFERENCES Forma_Pagamento (idForma_Pagamento)
ALTER TABLE Ajuste ADD FOREIGN KEY(idLocal_Ajuste) REFERENCES Local_Ajuste (idLocal_Ajuste)
ALTER TABLE Ajuste ADD FOREIGN KEY(idTraje) REFERENCES Traje (idTraje)
ALTER TABLE Ajuste ADD FOREIGN KEY(idLocacao) REFERENCES Locacao (idLocacao)
ALTER TABLE Endereco ADD FOREIGN KEY(idCidade) REFERENCES Cidade (idCidade)
ALTER TABLE Cliente_Endereco ADD FOREIGN KEY(idCliente) REFERENCES Tecido (idCliente)
ALTER TABLE Cliente_Endereco ADD FOREIGN KEY(idEndereco) REFERENCES Tecido (idEndereco)
ALTER TABLE Contato ADD FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente)
ALTER TABLE Cidade ADD FOREIGN KEY(idEstado) REFERENCES Estado (idEstado)
