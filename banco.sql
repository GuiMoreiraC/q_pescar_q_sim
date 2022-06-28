CREATE DATABASE IF NOT EXISTS pescadorDeProcedures;
-- DROP DATABASE pescadorDeProcedures;

USE pescadorDeProcedures;

-- Criação do banco de dados

-- User
DROP TABLE IF EXISTS endereco;
CREATE TABLE endereco 
(
    id_endereco INT UNSIGNED NOT NULL AUTO_INCREMENT,
    pais VARCHAR(60) NOT NULL,
    estado VARCHAR(80) NOT NULL,
    cidade VARCHAR(80) NOT NULL,
    bairro VARCHAR(80) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    cep INT NOT NULL,
    numero INT NULL,
    complemento VARCHAR(255) NULL,
    PRIMARY KEY (id_endereco)
);


DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario 
(
    id_usuario INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    sobrenome VARCHAR(255) NOT NULL,
    data_nsc DATE NOT NULL,
    telefone VARCHAR(15) NOT NULL,
	PRIMARY KEY (id_usuario),
	id_endereco INT UNSIGNED NOT NULL,
    CONSTRAINT FK_usuario_endereco_id_endereco
		FOREIGN KEY (id_endereco)
        REFERENCES endereco (id_endereco)
);

-- Peixe
DROP TABLE IF EXISTS estacao;
CREATE TABLE estacao 
(
    id_estacao INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_estacao)
);

DROP TABLE IF EXISTS clima;
CREATE TABLE clima 
(
    id_clima INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_clima)
);

DROP TABLE IF EXISTS localidade;
CREATE TABLE localidade 
(
    id_localidade INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_localidade)
);

DROP TABLE IF EXISTS peixe;
CREATE TABLE peixe 
(
    id_peixe INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    PRIMARY KEY (id_peixe)
);
    
-- N : N - peixes
DROP TABLE IF EXISTS peixeEstacao;
CREATE TABLE peixeEstacao 
(
    id_peixeEstacao INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_peixeEstacao),
	id_peixe INT UNSIGNED NOT NULL,
	CONSTRAINT FK_peixeEstacao_peixe_id_peixe
		FOREIGN KEY (id_peixe)
        REFERENCES peixe (id_peixe),
	id_estacao INT UNSIGNED NOT NULL,
	CONSTRAINT FK_peixeEstacao_estacao_id_estacao
		FOREIGN KEY (id_estacao)
		REFERENCES estacao (id_estacao)
);

DROP TABLE IF EXISTS peixeClima;
CREATE TABLE peixeClima 
(
    id_peixeClima INT UNSIGNED NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (id_peixeClima),
	id_peixe INT UNSIGNED NOT NULL,
	CONSTRAINT FK_peixeClima_peixe_id_peixe
		FOREIGN KEY (id_peixe)
        REFERENCES peixe (id_peixe),
	id_clima INT UNSIGNED NOT NULL,
	CONSTRAINT FK_peixeClima_clima_id_clima
		FOREIGN KEY (id_clima)
        REFERENCES clima (id_clima)
);

DROP TABLE IF EXISTS peixeLocalidade;
CREATE TABLE peixeLocalidade 
(
    id_peixeLocalidade INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_peixeLocalidade),
	id_peixe INT UNSIGNED NOT NULL,
	CONSTRAINT FK_peixeLocalidade_peixe_id_peixe
		FOREIGN KEY (id_peixe)
        REFERENCES peixe (id_peixe),
	id_localidade INT UNSIGNED NOT NULL,
	CONSTRAINT FK_peixeLocalidade_localidade_id_localidade
		FOREIGN KEY (id_localidade)
        REFERENCES localidade (id_localidade)
);

-- Equipamento

DROP TABLE IF EXISTS varaPesca;
CREATE TABLE varaPesca 
(
    id_varaPesca INT UNSIGNED NOT NULL AUTO_INCREMENT,
    modelo varchar(255) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    tamanho INT NOT NULL,
    cor VARCHAR(45) NOT NULL,
    resistencia INT NOT NULL,
    valor DECIMAL (10,2) NULL,
    PRIMARY KEY (id_varaPesca)
);

DROP TABLE IF EXISTS linha;
CREATE TABLE linha 
(
    id_linha INT UNSIGNED NOT NULL AUTO_INCREMENT,
    modelo varchar(255) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    tamanho INT NOT NULL,
    cor VARCHAR(45) NOT NULL,
    resistencia INT NOT NULL,
    valor DECIMAL (10,2) NULL,
    PRIMARY KEY (id_linha)
);


DROP TABLE IF EXISTS anzol;
CREATE TABLE anzol 
(
    id_anzol INT UNSIGNED NOT NULL AUTO_INCREMENT,
    modelo varchar(255) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    tamanho INT NOT NULL,
    cor VARCHAR(45),
    resistencia INT NOT NULL,
    valor DECIMAL (10,2) NULL,
    PRIMARY KEY (id_anzol)
);


DROP TABLE IF EXISTS iscas;
CREATE TABLE iscas 
(
    id_iscas INT UNSIGNED NOT NULL AUTO_INCREMENT,
    modelo varchar(255) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    tamanho INT NOT NULL,
    cor VARCHAR(45) NOT NULL,
    valor DECIMAL (10,2) NULL,
    PRIMARY KEY (id_iscas)
);

DROP TABLE IF EXISTS equipamento;
CREATE TABLE equipamento 
(
    id_equipamento INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_equipamento),
	id_varaPesca int UNSIGNED NOT NULL,
	CONSTRAINT FK_equipamento_varaPesca_id_varaPesca
		FOREIGN KEY (id_varaPesca)
        REFERENCES varaPesca (id_varaPesca),
	id_linha INT UNSIGNED NOT NULL,
    CONSTRAINT FK_equipamento_linha_id_linha
		FOREIGN KEY (id_linha) 
        REFERENCES linha (id_linha),
	id_anzol INT UNSIGNED NOT NULL,
	CONSTRAINT FK_equipamento_anzol_id_anzol
		FOREIGN KEY (id_anzol) 
        REFERENCES anzol (id_anzol),
	id_iscas INT UNSIGNED NOT NULL,
	CONSTRAINT FK_equipamento_iscas_id_iscas
		FOREIGN KEY (id_iscas) 
        REFERENCES iscas (id_iscas)
);

-- Pescado

DROP TABLE IF EXISTS pescado;
CREATE TABLE pescado 
(
    id_pescado INT UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_pescado),
	id_usuario INT UNSIGNED NOT NULL,
    CONSTRAINT FK_pescado_usuario_id_usuario
		FOREIGN KEY (id_usuario) 
        REFERENCES usuario (id_usuario),
	id_peixe INT UNSIGNED NOT NULL,
    CONSTRAINT FK_pescado_peixe_id_peixe
		FOREIGN KEY (id_peixe) 
        REFERENCES peixe (id_peixe),
	id_equipamento INT UNSIGNED NOT NULL,
    CONSTRAINT FK_pescado_equipamento_id_equipamento
		FOREIGN KEY (id_equipamento) 
        REFERENCES equipamento (id_equipamento)
);

-- Tabelas Criadas