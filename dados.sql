USE pescadorDeProcedures;
-- Insersão de dados

-- Tabelas de Usuario

insert into endereco (pais, estado, cidade, bairro, rua, cep, numero, complemento) values
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
	
update endereco set complemento = 'Estatua na frente' where id_endereco = 8;
-- delete from endereco where id_endereco = 6;
-- select * from endereco;

insert into usuario (nome , sobrenome , data_nsc , telefone, id_endereco) values
    ('valdir', 'Santos', '1990-11-19', '61996657919', 1),
    ('valmir', 'pereira', '1985-11-11', '31996657919', 2),
    ('paulo', 'Santos', '1990-11-19', '61996567919', 3),
    ('joao', 'oliveira', '1995-10-10', '71996657019', 4),
    ('joana', 'dantas', '1982-01-10', '419966570100', 5), 
    ('joaquim', 'pereira', '1985-10-02', '71997657019', 6),
    ('DANIELINS', 'Fereira', '1995-11-02', '11997657011', 7),
    ('DANIELa', 'BRAVO', '1998-11-02', '11997657251', 8),
    ('DANI', 'SAfira', '1995-11-02', '11997657011', 9),
    ('DANIEL', 'holzts', '1999-11-02', '11997657023', 10);

-- delete from usuario where usuario = 4;
-- SELECT * FROM  usuario;
   
-- Tabelas de Equipamento
   
insert into varaPesca (modelo, marca, tamanho, cor, resistencia, valor) values
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
    
update varaPesca set cor = 'Verde' where id_varaPesca = 7;
-- delete from varaPesca where id_varaPesca = 3;
-- select * from varaPesca;
   
insert into linha (modelo, marca, tamanho, cor, resistencia, valor) values
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
    
-- delete from linha where id_linha = 4;
update linha set cor = 'Verde' where id_linha = 6;
select * from linha;

insert into anzol (modelo, marca, tamanho, cor, resistencia, valor) values
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
    
update anzol set cor = 'Preto' where id_anzol = 1;
-- delete from anzol where id_anzol = 2;
-- select * from anzol;
   
insert into iscas (modelo, marca, tamanho, cor, valor) values
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
    
update iscas set tamanho = '14' where id_iscas = 9;
-- delete from iscas where id_iscas = 4;
-- select * from iscas;

-- Tabelas de Peixes.

INSERT INTO estacao (nome) VALUES
    ('Primavera'),
    ('Verão'),
    ('Outono'),
    ('Inverno');

INSERT INTO clima (nome) VALUES
    ('Sol'),
    ('Chuva'),
    ('Vento'),
    ('Tempestade'),
    ('Neve');

INSERT INTO localidade (nome) VALUES
    ('Lago da Montanha '),
    ('Lago da Floresta'),
    ('Lagoa do Bosque'),
    ('Rio'),
    ('Oceano');

INSERT INTO peixe (nome, tamanho) VALUES
    ('Baiacu', '3-94'),
    ('test01','3-30'),
    ('test02','5-12');

INSERT INTO peixeEstacao (id_peixe, id_estacao) VALUES
    (1, 1), (1, 2), (1, 3),
    (2, 1), (2, 2), (2, 3),
    (3, 1), (3, 2), (3, 3);

INSERT INTO peixeClima (id_peixe, id_clima) VALUES
    (1, 2), (1, 4),
    (2, 3),
    (3, 1), (3, 2), (3, 3);

INSERT INTO peixeLocalidade (id_peixe, id_localidade) VALUES
    (1, 3),
    (2, 2), (2, 3),
    (3, 1), (3, 2), (3, 3);

SELECT p.nome, p.tamanho, l.nome  FROM peixe p
INNER JOIN peixeLocalidade pl
ON p.id_peixe = pl.id_peixe
INNER JOIN localidade l
ON pl.id_localidade  = pl.id_localidade;

