USE pescadorDeProcedures;
-- 1. Utilize Alter Table para acrescentar uma coluna a uma tabela.

ALTER TABLE pescado
	ADD tamanho_cm INT;

-- 2. Crie uma procedure que, dado um número como parâmetro, retorne dados
-- de duas ou mais tabelas.

DROP PROCEDURE IF EXISTS pescaUsario;

DELIMITER $$
CREATE PROCEDURE pescaUsario (p_idUser INT)
BEGIN
		SELECT p.id_pescado, 
		CONCAT(u.nome, ' ', u.sobrenome) nomeUsuario,
		p2.nome peixe, p.tamanho_cm,
		CONCAT (vp.marca, ' ',vp.modelo) varaPesca,
		CONCAT (l.marca, ' ',l.modelo) linha,
		CONCAT (a.marca, ' ',a.modelo) anzol,
		CONCAT (i.marca, ' ',i.modelo) iscas
		FROM pescado p
		INNER JOIN usuario u ON p.id_usuario = u.id_usuario
		INNER JOIN peixe p2 ON p.id_peixe = p2.id_peixe
		INNER JOIN equipamento e ON p.id_equipamento = e.id_equipamento
		INNER JOIN varaPesca vp  ON e.id_varaPesca =vp.id_varaPesca 
		INNER JOIN linha l  ON e.id_linha = l.id_linha 
		INNER JOIN anzol a  ON e.id_anzol = a.id_anzol 
		INNER JOIN iscas i  ON e.id_iscas = i.id_iscas
		WHERE u.id_usuario = p_idUser;
END $$
DELIMITER ;


		
-- CALL pescaUsario(1);
	
	
-- 3. Crie uma view que contemple os principais dados do banco, de forma que
-- qualquer usuário possa manipular os dados apenas pela view criada.

	
	