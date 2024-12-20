CREATE DATABASE LIVRARIA;
GO

CREATE TABLE [Livro] (
    [ISBN] nvarchar(450) NOT NULL,
    [Titulo] nvarchar(100) NOT NULL,
    [Autor] nvarchar(200) NOT NULL,
    [Categoria] nvarchar(100) NOT NULL,
    [Preco] decimal(18,2) NOT NULL,
    [QtdEstoque] int NOT NULL,
    CONSTRAINT [PK_Livro] PRIMARY KEY ([ISBN])
);

CREATE TABLE [Cliente] (
    [IdCliente] int NOT NULL IDENTITY,
    [Nome] nvarchar(100) NOT NULL,
    [DtNascimento] datetime2 NOT NULL,
    [CPF] nvarchar(11) NOT NULL,
    CONSTRAINT [PK_Cliente] PRIMARY KEY ([IdCliente])
);

CREATE TABLE [Venda] (
    [IdVenda] int NOT NULL IDENTITY,
    [NomeLivro] nvarchar(100) NOT NULL,
    [QtdVendida] int NOT NULL,
    [DtVenda] datetime2 NOT NULL,
    CONSTRAINT [PK_Venda] PRIMARY KEY ([IdVenda])
);