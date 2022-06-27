CREATE DATABASE PescaERia;
-- DROP DATABASE PescaERia;

USE PescaERia;

-- Criação do banco de dados

-- User
DROP TABLE IF EXISTS endereco;
CREATE TABLE endereco (
    id_endereco int NOT NULL AUTO_INCREMENT,
    cidade varchar(255) NOT NULL,
    rua varchar(255) NOT NULL,
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
    telefone int NOT NULL,
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

	insert into varapesca (modelo, marca, tamanho, cor, resistencia, valor)
	values('C601H 1', 'Marine', '4', 'Azul', '20', '299.00');
    insert into varapesca (modelo, marca, tamanho, cor, resistencia, valor)
	values('C531H 4', 'Marine', '3', 'Rosa', '15', '150.00');
    insert into varapesca (modelo, marca, tamanho, cor, resistencia, valor)
	values('C531H 8', 'Marine', '5', 'Preta', '25', '340.00');
    insert into varapesca (modelo, marca, tamanho, cor, resistencia, valor)
	values('D534H 2', 'Marine Ultimates', '6', 'Laranja', '35', '560.00');
    insert into varapesca (modelo, marca, tamanho, cor, resistencia, valor)
	values('C574G 6', 'MarineSuper', '3', 'Azul', '15', '180.00');
    insert into varapesca (modelo, marca, tamanho, cor, resistencia, valor)
	values('Mia CD7', 'MarineLifa', '5', 'Rosa', '25', '250.00');
    insert into varapesca (modelo, marca, tamanho, cor, resistencia, valor)
	values('C972K 9', 'Marines', '3', 'Cinza', '15', '190.00');
    insert into varapesca (modelo, marca, tamanho, cor, resistencia, valor)
	values('C584H 4', 'MarineKids', '2', 'Vermelha', '10', '99.00');
    insert into varapesca (modelo, marca, tamanho, cor, resistencia, valor)
	values('C589P 5', 'MarineKids', '2', 'Preta', '10', '99.00');
    insert into varapesca (modelo, marca, tamanho, cor, resistencia, valor)
	values('C934H 1', 'MarineKids', '2', 'Azul', '10', '110.00');
    
    delete from varapesca where id_varapesca = 3;
    
    update varapesca set cor = 'Verde' where id_varapesca = 7;
    
    select * from varapesca;

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

	insert into linha (modelo, marca, tamanho, cor, resistencia, valor)
	values('C101H 1', 'Marine', '250', 'Vermelha', '20', '80.00');
    insert into linha (modelo, marca, tamanho, cor, resistencia, valor)
	values('C201H 1', 'Marine', '150', 'Rosa', '30', '60.00');
    insert into linha (modelo, marca, tamanho, cor, resistencia, valor)
	values('C301H 1', 'Marine', '350', 'Verde', '35', '120.00');
    insert into linha (modelo, marca, tamanho, cor, resistencia, valor)
	values('C401H 1', 'Marine', '100', 'Azul', '25', '50.00');
    insert into linha (modelo, marca, tamanho, cor, resistencia, valor)
	values('C501H 1', 'Marine', '200', 'Cinza', '20', '70.00');
    insert into linha (modelo, marca, tamanho, cor, resistencia, valor)
	values('C601H 1', 'Marine', '250', 'Preta', '30', '80.00');
    insert into linha (modelo, marca, tamanho, cor, resistencia, valor)
	values('C701H 1', 'Marine', '100', 'Vermelha', '35', '60.00');
    insert into linha (modelo, marca, tamanho, cor, resistencia, valor)
	values('C801H 1', 'Marine', '350', 'Branca', '40', '120.00');
    insert into linha (modelo, marca, tamanho, cor, resistencia, valor)
	values('C901H 1', 'Marine', '450', 'Azul', '10', '150.00');
    insert into linha (modelo, marca, tamanho, cor, resistencia, valor)
	values('C001H 1', 'Marine', '150', 'Verde', '10', '60.00');
    
    delete from linha where id_linha = 4;
    
    update linha set cor = 'Verde' where id_linha = 6;
    
    select * from linha;


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

	insert into anzol (modelo, marca, tamanho, cor, resistencia, valor)
	values('C001A 1', 'Marine', '5', 'Preto', '10', '14.00');
    insert into anzol (modelo, marca, tamanho, cor, resistencia, valor)
	values('C001B 1', 'Marine', '4', 'Preto', '15', '9.00');
    insert into anzol (modelo, marca, tamanho, cor, resistencia, valor)
	values('C001C 1', 'Marine', '3', 'Preto', '20', '6.00');
    insert into anzol (modelo, marca, tamanho, cor, resistencia, valor)
	values('C001D 1', 'Marine', '6', 'Preto', '15', '9.00');
    insert into anzol (modelo, marca, tamanho, cor, resistencia, valor)
	values('C001E 1', 'Marine', '7', 'Preto', '25', '11.00');
    insert into anzol (modelo, marca, tamanho, cor, resistencia, valor)
	values('C001F 1', 'Marine', '4', 'Preto', '10', '15.00');
    insert into anzol (modelo, marca, tamanho, cor, resistencia, valor)
	values('C001G 1', 'Marine', '6', 'Preto', '15', '12.00');
    insert into anzol (modelo, marca, tamanho, cor, resistencia, valor)
	values('C001H 1', 'Marine', '8', 'Preto', '10', '7.00');
    insert into anzol (modelo, marca, tamanho, cor, resistencia, valor)
	values('C001I 1', 'Marine', '10', 'Preto', '35', '18.00');
    insert into anzol (modelo, marca, tamanho, cor, resistencia, valor)
	values('C001J 1', 'Marine', '5', 'Preto', '25', '5.00');
    
    delete from anzol where id_anzol = 2;
    
    update anzol set cor = 'Preto' where id_anzol = 1;
    
    select * from anzol;

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

	insert into iscas (modelo, marca, tamanho, cor, valor)
	values('A001J 1', 'Marine', '5', 'Preto', '20.00');
    insert into iscas (modelo, marca, tamanho, cor, valor)
	values('B001J 3', 'Marine', '6', 'Vermelho', '22.00');
    insert into iscas (modelo, marca, tamanho, cor, valor)
	values('C001J 1', 'Marine', '3', 'Verde', '7.00');
    insert into iscas (modelo, marca, tamanho, cor, valor)
	values('D001J 4', 'Marine', '8', 'Laranja', '5.00');
    insert into iscas (modelo, marca, tamanho, cor, valor)
	values('E001J 1', 'Marine', '12', 'Preto', '10.00');
    insert into iscas (modelo, marca, tamanho, cor, valor)
	values('F001J 7', 'Marine', '15', 'Azul', '30.00');
    insert into iscas (modelo, marca, tamanho, cor, valor)
	values('G001J 2', 'Marine', '14', 'Verde', '15.00');
    insert into iscas (modelo, marca, tamanho, cor, valor)
	values('H001J 1', 'Marine', '9', 'Rosa', '18.00');
    insert into iscas (modelo, marca, tamanho, cor, valor)
	values('I001J 9', 'Marine', '8', 'Cinza', '20.00');
    insert into iscas (modelo, marca, tamanho, cor, valor)
	values('J001J 1', 'Marine', '5', 'Preto', '16.00');
    
    delete from iscas where id_iscas = 4;
    
    update iscas set tamanho = '14' where id_iscas = 9;
    
    select * from iscas;

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


























