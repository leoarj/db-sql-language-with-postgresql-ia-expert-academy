CREATE TABLE Categoria 
( 
 idcategoria INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
); 

CREATE TABLE Livro 
( 
 idlivro INT PRIMARY KEY,  
 data_lancamento DATE,  
 numero_paginas INT,  
 resumo VARCHAR(n),  
 isbn VARCHAR(n),  
 idCategoria INT,  
); 

CREATE TABLE Livro_Autor 
( 
 idLivro INT PRIMARY KEY,  
 idAutor INT PRIMARY KEY,  
); 

CREATE TABLE Autor 
( 
 idautor INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
); 

CREATE TABLE Venda 
( 
 idvenda INT PRIMARY KEY,  
 frete FLOAT,  
 valor FLOAT,  
 idcliente INT,  
); 

CREATE TABLE Venda_Livro 
( 
 idLivro INT PRIMARY KEY,  
 idVenda INT PRIMARY KEY,  
 quantidade FLOAT,  
); 

CREATE TABLE Cliente 
( 
 idcliente INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
); 

CREATE TABLE Estado 
( 
 idestado INT PRIMARY KEY,  
 nome VARCHAR(n) NOT NULL,  
); 

CREATE TABLE Cidade 
( 
 idcidade INT PRIMARY KEY,  
 nome INT NOT NULL,  
 idestado INT,  
); 

CREATE TABLE Endereco 
( 
 idendereco INT PRIMARY KEY,  
 logradouro VARCHAR(n),  
 numero VARCHAR(n),  
 cep VARCHAR(n),  
 idcidade INT,  
); 

CREATE TABLE Cliente_Endereco 
( 
 idCliente INT PRIMARY KEY,  
 idEndereco INT PRIMARY KEY,  
); 

ALTER TABLE Livro ADD FOREIGN KEY(idCategoria) REFERENCES Categoria (idCategoria)
ALTER TABLE Livro_Autor ADD FOREIGN KEY(idLivro) REFERENCES Categoria (idLivro)
ALTER TABLE Livro_Autor ADD FOREIGN KEY(idAutor) REFERENCES Categoria (idAutor)
ALTER TABLE Venda ADD FOREIGN KEY(idcliente) REFERENCES Cliente (idcliente)
ALTER TABLE Venda_Livro ADD FOREIGN KEY(idLivro) REFERENCES Categoria (idLivro)
ALTER TABLE Venda_Livro ADD FOREIGN KEY(idVenda) REFERENCES Categoria (idVenda)
ALTER TABLE Cidade ADD FOREIGN KEY(idestado) REFERENCES Categoria (idestado)
ALTER TABLE Endereco ADD FOREIGN KEY(idcidade) REFERENCES Cidade (idcidade)
ALTER TABLE Cliente_Endereco ADD FOREIGN KEY(idCliente) REFERENCES Categoria (idCliente)
ALTER TABLE Cliente_Endereco ADD FOREIGN KEY(idEndereco) REFERENCES Categoria (idEndereco)
