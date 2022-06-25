USE PescaERia; 

-- Inserção de dados em uma das tabelas peixes.

INSERT INTO estacao (nome)
VALUES
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
('Lagoa do Bosque Secreto'),
('Oceano');
-- ('Covil dos Insetos Mutantes'),
-- ('Lago da Ilha Gengibre'),
-- ('Rio da Ilha Gengibre'),
-- ('Os Esgotos');

INSERT INTO peixe (nome, tamanho) VALUES
('test', '2-10'),
('test01','3-30'),
('test02','5-12');

INSERT INTO peixeEstacao (id_peixe, id_estacao) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3);
INSERT INTO peixeClima (id_peixe, id_clima) VALUES
(1, 2),
(1, 4),
(2, 3),
(3, 1),
(3, 2),
(3, 3);
INSERT INTO peixeLocalidade (id_peixe, id_localidade) VALUES
(1, 3),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3);

SELECT p.nome, p.tamanho, l.nome  FROM peixe p
INNER JOIN peixeLocalidade pl
ON p.id_peixe = pl.id_peixe
INNER JOIN localidade l
ON pl.id_localidade  = pl.id_localidade;

