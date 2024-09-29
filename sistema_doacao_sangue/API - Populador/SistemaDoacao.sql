CREATE DATABASE IF NOT EXISTS SistemaDoacao;
USE SistemaDoacao;
SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE IF NOT EXISTS TiposSanguineos (
    codTipoSanguineo INT PRIMARY KEY AUTO_INCREMENT,
    nomeTipoSang VARCHAR(10) NOT NULL,
    totalDisponivel INT DEFAULT 0
);

CREATE TABLE IF NOT EXISTS Funcionarios (
    codFuncionario INT PRIMARY KEY AUTO_INCREMENT,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    nome VARCHAR(100) NOT NULL,
    profissao VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Doadores (
    codDoador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE,
    telefone VARCHAR(15),
    codTipoSanguineo INT,
    endereco TEXT,
    FOREIGN KEY (codTipoSanguineo) REFERENCES TiposSanguineos(codTipoSanguineo)
);

CREATE TABLE IF NOT EXISTS CentrosDoacao (
    codCentroDoacao INT PRIMARY KEY AUTO_INCREMENT,
    nomeLocal VARCHAR(100) NOT NULL,
    endereco TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Doacoes (
    codDoacao INT PRIMARY KEY AUTO_INCREMENT,
    codDoador INT,
    codFuncionario INT,
    codCentroDoacao INT,
    data DATE NOT NULL,
    mlSangue INT NOT NULL,
    FOREIGN KEY (codDoador) REFERENCES Doadores(codDoador),
    FOREIGN KEY (codFuncionario) REFERENCES Funcionarios(codFuncionario),
    FOREIGN KEY (codCentroDoacao) REFERENCES CentrosDoacao(codCentroDoacao)
);

CREATE TABLE IF NOT EXISTS RetiradasSangue (
    codRetiradaSangue INT PRIMARY KEY AUTO_INCREMENT,
    codTipoSanguineo INT,
    mlSangue INT NOT NULL,
    FOREIGN KEY (codTipoSanguineo) REFERENCES TiposSanguineos(codTipoSanguineo)
);
