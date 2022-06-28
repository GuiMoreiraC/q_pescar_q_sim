USE pescadorDeProcedures;

-- Insersão de dados

-- Tabelas de Usuario
INSERT INTO 
	endereco (pais, estado, cidade, bairro, rua, cep, numero, complemento) 
VALUES
    ('Brasil', 'Santa Catarina', 'Icara', 'Presidente Vargas', 'Anitta Garibalde', '88820000', '7', 'Casa azul'),    
    ('Argentina', 'Patagonia', 'Buenos Aires', 'Hermano', 'Manito', '81840000', '71', 'Casa '),    
    ('Brasil', 'Paraiba', 'Criciuma', 'Presidente Lutor', 'Alfredo Bascoal', '88820015', '17', 'apt 143'),    
    ('Brasil', 'Roraima', 'Biridin', 'Cataratas azuis', 'Dom Pedro 1', '15420100', '14', 'ao lado do colegio'),    
    ('Chile', 'Dolado', 'Machu Pichu', 'Maias', 'Tribus', '96420000', '1', 'Casa de esquina'),    
    ('Uruguai', 'Jhambo', 'Da boa', 'Verdinha', 'cultivo', '420000420', null, 'Sem muro'),    
    ('Brasil', 'Sao Paulo', 'Sao Paulo', 'Presidente Vargas', 'Anitta Garibalde', '1455633256', '66', 'Buzine'),    
    ('Brasil', 'Parana', 'Curitiba', 'Presidente Vargas', 'Anitta Garibalde', '453546456', '134', ''),    
    ('Brasil', 'Rio Grande do Sul', 'Alegrete', 'Onde fica', 'Osvaldo Correa', '67532670', '987', 'janelas pretas'),	
    ('Brasil', 'Acre', 'Bom Jardim', 'Rio dio Rastro', 'Serrinha', '798073431', '657', 'Casa dois andares');

-- Ver Informacoes
SELECT * FROM endereco;

-- Atualizar o id 8
UPDATE endereco 
SET complemento = 'Estatua na Frente' 
WHERE id_endereco = 8;

-- Ver Alteracoes
SELECT * FROM endereco;

/*
-- Deletar ID 6
DELETE FROM endereco
WHERE id_endereco = 6;

-- Ver Alteracoes
SELECT * FROM endereco;
*/

INSERT INTO 
	usuario (nome , sobrenome , data_nsc , telefone, id_endereco) 
VALUES
    ('valdir', 'Santos', '1990-11-19', '61996657919', 1),
    ('valmir', 'pereira', '1985-11-11', '31996657919', 2),
    ('paulo', 'Santos', '1990-11-19', '26596487919', 3),
    ('joao', 'oliveira', '1995-10-10', '71996657019', 4),
    ('joana', 'dantas', '1982-01-10', '419966570100', 5), 
    ('joaquim', 'pereira', '1985-10-02', '12367657019', 6),
    ('DANIELINS', 'Fereira', '1995-11-02', '11997657011', 7),
    ('DANIELa', 'BRAVO', '1998-11-02', '11997657251', 8),
    ('DANI', 'SAfira', '1995-11-02', '11997657011', 9),
    ('DANIEL', 'holzts', '1999-11-02', '11997657023', 10);

-- Ver Informacoes
SELECT * FROM usuario;

-- Atualizar o id 6
UPDATE usuario 
SET telefone = '61997757352' 
WHERE id_usuario = 6;

-- Ver Alteracoes
SELECT * FROM usuario;

/*
-- Deletar ID 4
DELETE FROM usuario
WHERE id_usuario = 4;

-- Ver Alteracoes
SELECT * FROM usuario;
*/

   
-- Tabelas de Equipamento
INSERT INTO 
	varaPesca (modelo, marca, tamanho, cor, resistencia, valor)
VALUES
    ('C601H 1', 'Marine', '4', 'Azul', '20', '299.00'),
	('C531H 4', 'Marine', '3', 'Rosa', '15', '150.00'),
	('C531H 8', 'Marine', '5', 'Preta', '25', '340.00'),
	('D534H 2', 'Marine Ultimates', '6', 'Laranja', '35', '560.00'),
	('C574G 6', 'MarineSuper', '3', 'Azul', '15', '180.00'),
	('Mia CD7', 'MarineLifa', '5', 'Rosa', '25', '250.00'),
	('C972K 9', 'Marines', '3', 'Cinza', '15', '190.00'),
	('C584H 4', 'MarineKids', '2', 'Vermelha', '10', '99.00'),
	('C589P 5', 'MarineKids', '2', 'Preta', '10', '99.00'),
	('C934H 1', 'MarineKids', '2', 'Azul', '10', '110.00');
    
-- Ver Informacoes
SELECT * FROM varaPesca;

-- Atualizar o id 7
UPDATE varaPesca 
SET cor = 'Verde'
WHERE id_varaPesca = 7;

-- Ver Alteracoes
SELECT * FROM varaPesca;

/*
-- Deletar ID 3
DELETE FROM varaPesca
WHERE id_varaPesca = 3;

-- Ver Alteracoes
SELECT * FROM varaPesca;
*/
   
INSERT INTO 
	linha (modelo, marca, tamanho, cor, resistencia, valor)
VALUES
    ('C101H 1', 'Marine', '250', 'Vermelha', '20', '80.00'),    
	('C201H 1', 'Marine', '150', 'Rosa', '30', '60.00'),    
	('C301H 1', 'Marine', '350', 'Verde', '35', '120.00'),    
	('C401H 1', 'Marine', '100', 'Azul', '25', '50.00'),    
	('C501H 1', 'Marine', '200', 'Cinza', '20', '70.00'),    
	('C601H 1', 'Marine', '250', 'Preta', '30', '80.00'),    
	('C701H 1', 'Marine', '100', 'Vermelha', '35', '60.00'),    
	('C801H 1', 'Marine', '350', 'Branca', '40', '120.00'),    
	('C901H 1', 'Marine', '450', 'Azul', '10', '150.00'),    
	('C001H 1', 'Marine', '150', 'Verde', '10', '60.00');
    
-- Ver Informacoes
SELECT * FROM linha;

-- Atualizar o id 6
UPDATE linha 
SET cor = 'Verde'
WHERE id_linha = 6;

-- Ver Alteracoes
SELECT * FROM linha;

/*
-- Deletar ID 4
DELETE FROM linha
WHERE id_linha = 4;

-- Ver Alteracoes
SELECT * FROM linha;
*/

INSERT INTO 
	anzol (modelo, marca, tamanho, cor, resistencia, valor)
VALUES
	('C001A 1', 'Marine', '5', 'Preto', '10', '14.00'),    
	('C001B 1', 'Marine', '4', 'Preto', '15', '9.00'),    
	('C001C 1', 'Marine', '3', 'Preto', '20', '6.00'),    
	('C001D 1', 'Marine', '6', 'Preto', '15', '9.00'),    
	('C001E 1', 'Marine', '7', 'Preto', '25', '11.00'),    
	('C001F 1', 'Marine', '4', 'Preto', '10', '15.00'),    
	('C001G 1', 'Marine', '6', 'Preto', '15', '12.00'),    
	('C001H 1', 'Marine', '8', 'Preto', '10', '7.00'),    
	('C001I 1', 'Marine', '10', 'Preto', '35', '18.00'),    
	('C001J 1', 'Marine', '5', 'Preto', '25', '5.00');

-- Ver Informacoes
SELECT * FROM anzol;

-- Atualizar o id 1
UPDATE anzol 
SET cor = 'Preto'
WHERE id_anzol = 1;

-- Ver Alteracoes
SELECT * FROM anzol;

/*
-- Deletar ID 2
DELETE FROM anzol
WHERE id_anzol = 2;

-- Ver Alteracoes
SELECT * FROM anzol;
*/
   
INSERT INTO 
	iscas (modelo, marca, tamanho, cor, valor)
VALUES
	('A001J 1', 'Marine', '5', 'Preto', '20.00'),
	('B001J 3', 'Marine', '6', 'Vermelho', '22.00'),
	('C001J 1', 'Marine', '3', 'Verde', '7.00'),
	('D001J 4', 'Marine', '8', 'Laranja', '5.00'),
	('E001J 1', 'Marine', '12', 'Preto', '10.00'),
	('F001J 7', 'Marine', '15', 'Azul', '30.00'),
	('G001J 2', 'Marine', '14', 'Verde', '15.00'),
	('H001J 1', 'Marine', '9', 'Rosa', '18.00'),
	('I001J 9', 'Marine', '8', 'Cinza', '20.00'),
	('J001J 1', 'Marine', '5', 'Preto', '16.00');

-- Ver Informacoes
SELECT * FROM iscas;

-- Atualizar o id 9
UPDATE iscas 
SET tamanho = '14'
WHERE id_iscas = 9;

-- Ver Alteracoes
SELECT * FROM iscas;

/*
-- Deletar ID 4
DELETE FROM iscas
WHERE id_iscas = 4;

-- Ver Alteracoes
SELECT * FROM iscas;
*/

-- Tabelas de Peixes.

INSERT INTO 
	estacao (nome) 
VALUES
    ('Primavera'),
    ('Verão'),
    ('Outono'),
    ('Inverno');

INSERT INTO 
	clima (nome) 
VALUES
    ('Sol'),
    ('Chuva'),
    ('Vento'),
    ('Tempestade'),
    ('Neve');

INSERT INTO 
	localidade (nome)
VALUES
    ('Lago da Montanha '),
    ('Lago da Floresta'),
    ('Lagoa do Bosque'),
    ('Rio'),
    ('Oceano');

INSERT INTO 
	peixe (nome, tamanho)
VALUES
    ('Baiacu', '3-94'),
    ('Anchova', '3-43'),
    ('Atum', '30-155'),
    ('Brema', '30-79'),
    ('Sardinha', '3-33'),
    ('Achigã' , '28-79 '),
    ('Picão-verde', '25-104'),
    ('Peixe-sol', '13-41'),
    ('Cioba', '20-66')
    ('Linguado', '10-43');


INSERT INTO peixeEstacao (id_peixe, id_estacao) VALUES
    (1, 2),
    (2, 1), (2, 3),
    (3, 1), (3, 3),
    (4, 1), (4, 2), (4, 3), (4, 4),
    (5, 1), (5, 2), (5, 3),
    (6, 1), (6, 2), (6, 3), (6, 4),
    (7, 3), (7, 4),
    (8, 1), (8, 2),
    (9, 2), (9, 3), (9, 4),
    (10, 1), (10, 2);

INSERT INTO peixeClima (id_peixe, id_clima) VALUES
    (1, 1),
    (2, 1), (2, 2), (2, 3), (2, 4), (2, 5),
    (3, 1), (3, 2), (3, 3), (3, 4), (3, 5),
    (4, 1), (4, 2), (4, 3), (4, 4), (4, 5),
    (5, 1), (5, 2), (5, 3), (5, 4), (5, 5),
    (6, 1), (6, 2), (6, 3), (6, 4), (6, 5),
    (7, 2),
    (8, 1), (8, 3),
    (9, 2),
    (10, 1), (10, 2), (10, 3), (10, 4), (10, 5);

INSERT INTO peixeLocalidade (id_peixe, id_localidade) VALUES
    (1, 5),
    (2, 5),
    (3, 5),
    (4, 2), (4, 3), (4, 4),
    (5, 5),
    (6, 1),
    (7, 2), (7,4),
    (8, 4),
    (9, 5),
    (10, 5);

INSERT INTO equipamento (id_varaPesca, id_linha, id_anzol, id_iscas) VALUES
	(10,2,5,8), (5,7,3,4), (1,3,10,1), (7,8,1,9), (3,10,9,5),
    (3,10,3,10), (7,9,4,2), (8,2,8,3), (1,5,5,7), (1,2,2,6);
   
   
INSERT INTO pescado (id_usuario, id_peixe, id_equipamento) VALUES
    (1, 3, 4), (1, 5, 4), (1, 1, 4),
    (2, 6, 2), (2, 2, 2), (2, 2, 2),
    (3, 1, 3), (3, 1, 3),
    (4, 2, 5),
    (5, 3, 8), (5, 10, 8), (5, 9, 8), (5, 9, 7),
    (6, 7, 9), (6, 10, 9),
    (7, 5, 6),
    (8, 8, 10),
    (9, 2, 1), (9, 8, 1), (9, 5, 1),
    (10, 4, 3), (10, 2, 3);
