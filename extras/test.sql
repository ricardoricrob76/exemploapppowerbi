-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE TABLE DimCliente (
codigocliente Integer PRIMARY KEY,
nomecliente varchar(80),
sexo varchar(10),
bairro varchar(80)
);

CREATE TABLE DimProduto (
codigoproduto Integer PRIMARY KEY,
nomeproduto varchar(60),
tipoproduto varchar(80),
fabricante varchar(80)
);

CREATE TABLE DimVendedor (
codigovendedor Integer PRIMARY KEY,
nomevendedor varchar(80),
salario float
);

CREATE TABLE DimTempo (
codigotempo Integer PRIMARY KEY,
diasemana varchar(50),
data varchar(50),
ano varchar(4)
);

CREATE TABLE FatoVenda (
qtdvendida Integer,
valorvenda float,
valorimposto float,
codigocliente Integer,
codigoproduto Integer,
codigovendedor Integer,
codigotempo Integer,
FOREIGN KEY(codigocliente) REFERENCES DimCliente (codigocliente),
FOREIGN KEY(codigoproduto) REFERENCES DimProduto (codigoproduto),
FOREIGN KEY(codigovendedor) REFERENCES DimVendedor (codigovendedor),
FOREIGN KEY(codigotempo) REFERENCES DimTempo (codigotempo)
);

