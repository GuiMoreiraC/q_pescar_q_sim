CREATE DATABASE pescadorDeProcedures;
-- DROP DATABASE pescadorDeProcedures;

USE pescadorDeProcedures;

-- Criação do banco de dados

-- User
DROP TABLE IF EXISTS endereco;
CREATE TABLE endereco (
    id_endereco int NOT NULL auto_increment,
    pais varchar(60) NOT NULL,
    estado varchar(80) NOT NULL,
    cidade varchar(80) NOT NULL,
    bairro varchar(80) NOT NULL,
    rua varchar(100) NOT NULL,
    cep int NOT NULL,
    numero int,
    complemento varchar(255),
    PRIMARY KEY (id_endereco)
);


DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario (
    id_usuario int NOT NULL AUTO_INCREMENT,
    id_endereco int NOT NULL,
    nome varchar(255) NOT NULL,
    sobrenome varchar(255) NOT NULL,
    data_nsc date NOT NULL,
    telefone varchar(15) NOT NULL,
    PRIMARY KEY (id_usuario),
    FOREIGN KEY (id_endereco) REFERENCES endereco(id_endereco)
);

-- Peixe
DROP TABLE IF EXISTS estacao;
CREATE TABLE estacao (
    id_estacao int NOT NULL AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    PRIMARY KEY (id_estacao)
);

DROP TABLE IF EXISTS clima;
CREATE TABLE clima (
    id_clima int NOT NULL AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    PRIMARY KEY (id_clima)
);

DROP TABLE IF EXISTS localidade;
CREATE TABLE localidade (
    id_localidade int NOT NULL AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    PRIMARY KEY (id_localidade)
);

DROP TABLE IF EXISTS peixe;
CREATE TABLE peixe (
    id_peixe int NOT NULL AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    tamanho varchar(255) NOT NULL,
    PRIMARY KEY (id_peixe)
);
    
-- N : N - peixes
DROP TABLE IF EXISTS peixeEstacao;
CREATE TABLE peixeEstacao (
    id_peixeEstacao int NOT NULL AUTO_INCREMENT,
	id_peixe int NOT NULL,
	id_estacao int NOT NULL,
    PRIMARY KEY (id_peixeEstacao),
    FOREIGN KEY (id_peixe) REFERENCES peixe (id_peixe),
	FOREIGN KEY (id_estacao) REFERENCES estacao (id_estacao)

);

DROP TABLE IF EXISTS peixeClima;
CREATE TABLE peixeClima (
    id_peixeClima int NOT NULL AUTO_INCREMENT,
    id_peixe int NOT NULL,
    id_clima int NOT NULL,
    PRIMARY KEY (id_peixeClima),
	FOREIGN KEY (id_peixe) REFERENCES peixe (id_peixe),
	FOREIGN KEY (id_clima) REFERENCES clima (id_clima)
);

DROP TABLE IF EXISTS peixeLocalidade;
CREATE TABLE peixeLocalidade (
    id_peixeLocalidade int NOT NULL AUTO_INCREMENT,
    id_peixe int NOT NULL,
    id_localidade int NOT NULL,
    PRIMARY KEY (id_peixeLocalidade),
	FOREIGN KEY (id_peixe) REFERENCES peixe (id_peixe),
    FOREIGN KEY (id_localidade) REFERENCES localidade (id_localidade)
);

-- Equipamento

DROP TABLE IF EXISTS varaPesca;
CREATE TABLE varaPesca (
    id_varaPesca int NOT NULL AUTO_INCREMENT,
    modelo varchar(255) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    tamanho INT NOT NULL,
    cor VARCHAR(45) NOT NULL,
    resistencia INT NOT NULL,
    valor DECIMAL (10,2),
    PRIMARY KEY (id_varaPesca)
);

DROP TABLE IF EXISTS linha;
CREATE TABLE linha (
    id_linha int NOT NULL AUTO_INCREMENT,
    modelo varchar(255) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    tamanho INT NOT NULL,
    cor VARCHAR(45) NOT NULL,
    resistencia INT NOT NULL,
    valor DECIMAL (10,2),
    PRIMARY KEY (id_linha)
);


DROP TABLE IF EXISTS anzol;
CREATE TABLE anzol (
    id_anzol int NOT NULL AUTO_INCREMENT,
    modelo varchar(255) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    tamanho INT NOT NULL,
    cor VARCHAR(45),
    resistencia INT NOT NULL,
    valor DECIMAL (10,2),
    PRIMARY KEY (id_anzol)
);


DROP TABLE IF EXISTS iscas;
CREATE TABLE iscas (
    id_iscas int NOT NULL AUTO_INCREMENT,
    modelo varchar(255) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    tamanho INT NOT NULL,
    cor VARCHAR(45) NOT NULL,
    valor DECIMAL (10,2),
    PRIMARY KEY (id_iscas)
);

DROP TABLE IF EXISTS equipamento;
CREATE TABLE equipamento (
    id_equipamento int NOT NULL AUTO_INCREMENT,
    id_varaPesca int NOT NULL,
    id_linha int NOT NULL,
    id_anzol int NOT NULL,
    id_iscas int NOT NULL,
    PRIMARY KEY (id_equipamento),
    FOREIGN KEY (id_varaPesca) REFERENCES varaPesca(id_varaPesca),
    FOREIGN KEY (id_linha) REFERENCES linha (id_linha),
    FOREIGN KEY (id_anzol) REFERENCES anzol(id_anzol),
    FOREIGN KEY (id_iscas) REFERENCES iscas(id_iscas)
);

-- Pescado

DROP TABLE IF EXISTS pescado;
CREATE TABLE pescado (
    id_pescado int NOT NULL AUTO_INCREMENT,
    id_usuario int NOT NULL,
    id_peixe int NOT NULL,
    id_equipamento int NOT NULL,
    PRIMARY KEY (id_pescado),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_peixe) REFERENCES peixe (id_peixe),
    FOREIGN KEY (id_equipamento) REFERENCES equipamento(id_equipamento)
);


























