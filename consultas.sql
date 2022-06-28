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
		SELECT 
			p.id_pescado, 
			CONCAT(u.nome, ' ', u.sobrenome) nomeUsuario,
			p2.nome peixe, p.tamanho_cm,
			CONCAT (vp.marca, ' ',vp.modelo) varaPesca,
			CONCAT (l.marca, ' ',l.modelo) linha,
			CONCAT (a.marca, ' ',a.modelo) anzol,
			CONCAT (i.marca, ' ',i.modelo) iscas
		FROM pescado p
		INNER JOIN usuario u 
			ON p.id_usuario = u.id_usuario
		INNER JOIN peixe p2 
			ON p.id_peixe = p2.id_peixe
		INNER JOIN equipamento e 
			ON p.id_equipamento = e.id_equipamento
		INNER JOIN varaPesca vp  
			ON e.id_varaPesca =vp.id_varaPesca 
		INNER JOIN linha l  
			ON e.id_linha = l.id_linha 
		INNER JOIN anzol a  
			ON e.id_anzol = a.id_anzol 
		INNER JOIN iscas i  
			ON e.id_iscas = i.id_iscas
		WHERE u.id_usuario = p_idUser;
END $$
DELIMITER ;

-- CALL pescaUsario(1);
	

-- 3. Crie uma view que contemple os principais dados do banco, de forma que
	-- qualquer usuário possa manipular os dados apenas pela view criada.

CREATE VIEW vw_usuarios AS
	SELECT 
		usuario.id_usuario AS ID,
		concat(usuario.nome, " ", usuario.sobrenome) AS Usuario,
		usuario.data_nsc AS Nascimento,
		usuario.telefone AS Telefone,
		endereco.rua AS Rua,
		endereco.numero AS Numero,
        endereco.cep AS CEP,
		endereco.bairro AS Bairro,
		endereco.complemento AS Complemento,
		endereco.cidade AS Cidade,
		endereco.estado AS Estado,
		endereco.pais AS Pais
	FROM usuario
	INNER JOIN endereco
		ON endereco.id_endereco = usuario.id_endereco
	ORDER BY usuario.id_usuario ASC;
    
 -- Consultar a View vw_usuario
	SELECT *
    FROM vw_usuarios;
    
    
-- Criacao da View com dados dos equipamentos
CREATE VIEW vw_equipamentos AS
		SELECT 
			p.id_equipamento AS ID, 
			CONCAT (vp.marca, ' ',vp.modelo) varaPesca,
			CONCAT (l.marca, ' ',l.modelo) linha,
			CONCAT (a.marca, ' ',a.modelo) anzol,
			CONCAT (i.marca, ' ',i.modelo) iscas
		FROM pescado p
		INNER JOIN equipamento e 
			ON p.id_equipamento = e.id_equipamento
		INNER JOIN varaPesca vp  
			ON e.id_varaPesca =vp.id_varaPesca 
		INNER JOIN linha l  
			ON e.id_linha = l.id_linha 
		INNER JOIN anzol a  
			ON e.id_anzol = a.id_anzol 
		INNER JOIN iscas i  
			ON e.id_iscas = i.id_iscas
		ORDER BY p.id_equipamento ASC;

-- Consultar a View vw_equipamentos
	SELECT *
	FROM vw_equipamentos;
            
-- Criacao da View com dados dos peixes
CREATE VIEW vw_peixe AS
	SELECT 
		id_peixe AS ID,
		peixe.nome AS Nome,
		peixe.tamanho AS Tamanho,
        estacao.nome AS Estacao,
        localidade.nome AS Localidade,
		clima.nome AS Clima
    FROM 
		peixe,
        estacao,
        clima,
        localidade
	ORDER BY id_peixe ASC;
    
    -- Consultar a View vw_peixe
	SELECT *
    FROM vw_peixe;