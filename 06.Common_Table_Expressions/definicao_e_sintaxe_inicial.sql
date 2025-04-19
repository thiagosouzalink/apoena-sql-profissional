USE cte;

-- CTE (Common Table Expression)
WITH colaboradores_cte AS (
	SELECT 
		c.id_colaborador,
		c.nome,
		c.salario,
		c.id_departamento
	FROM colaboradores c 
)
SELECT * FROM colaboradores_cte;

WITH colaboradores_cte AS (
	SELECT 
		c.nome,
		c.salario
	FROM colaboradores c 
)
SELECT * FROM colaboradores_cte;