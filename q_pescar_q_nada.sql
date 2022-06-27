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
     insert into usuario (nome , sobrenome , data_nsc , telefone)
         values('valdir', 'Santos', '19/11/1990', '61996657919' );
    insert into usuario (nome , sobrenome , data_nsc , telefone)
         values('valmir', 'pereira', '11/11/1985', '31996657919');
    insert into usuario (nome , sobrenome , data_nsc , telefone)
         values('paulo', 'Santos', '19/11/1990', '61996657919' );
    insert into usuario (nome , sobrenome , data_nsc , telefone)
         values('joao', 'oliveira', '10/10/1995', '71996657019');
    insert into usuario (nome , sobrenome , data_nsc , telefone)
         values('joana', 'dantas', '10/01/1982', '419966570100' ); 
    insert into usuario (nome , sobrenome , data_nsc , telefone)
         values('joaquim', 'pereira', '02/10/1985', '71997657019');
    insert into usuario (nome , sobrenome , data_nsc , telefone)
         values('DANIELINS', 'Fereira', '02/11/1995', '11997657011');
    insert into usuario (nome , sobrenome , data_nsc , telefone)
         values('DANIELa', 'BRAVO', '02/11/1998', '11997657251');
    insert into usuario (nome , sobrenome , data_nsc , telefone)
         values('DANI', 'SAfira', '02/11/1995', '11997657011' );
     insert into usuario (nome , sobrenome , data_nsc , telefone)
         values('DANIEL', 'holzts', '02/11/1999', '11997657023');

	delete from usuario where usuario = 4;
	
    update usuario set  'usuario' where = 10 ;
    
    
    SELECT * FROM  usuario;



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
    nome varchar(255) NOT NULL,
    PRIMARY KEY (id_varaPesca)
);


DROP TABLE IF EXISTS linha;
CREATE TABLE linha (
    id_linha int NOT NULL AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    PRIMARY KEY (id_linha)
);

DROP TABLE IF EXISTS anzol;
CREATE TABLE anzol (
    id_anzol int NOT NULL AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    PRIMARY KEY (id_anzol)
);

DROP TABLE IF EXISTS iscas;
CREATE TABLE iscas (
    id_iscas int NOT NULL AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
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


























