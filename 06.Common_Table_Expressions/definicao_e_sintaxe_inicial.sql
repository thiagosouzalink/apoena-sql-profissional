USE apoena;

-- CTE (Common Table Expression)
WITH colaboradores_cte AS
(
	SELECT id, nome, posicao, empresa_id
	FROM colaboradores
)
SELECT * FROM colaboradores_cte;

WITH colaboradores_cte AS
(
	SELECT nome, posicao
	FROM colaboradores
)
SELECT * FROM colaboradores_cte;
