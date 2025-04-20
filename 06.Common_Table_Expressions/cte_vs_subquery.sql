USE cte;

-- CTE vs Subquery

-- Salarios Total por dpto
-- Subconsulta/Subquery
SELECT 
	d.nome_departamento,
	(
		SELECT 
			SUM(c.salario) 
		FROM colaboradores c
		WHERE c.id_departamento = d.id_departamento
	) AS salario_total
FROM departamentos d;

-- CTE
WITH total_salario AS (
	SELECT 
		c.id_departamento,
		SUM(c.salario) AS salario_total
	FROM colaboradores c
	GROUP BY c.id_departamento
)
SELECT 
	d.nome_departamento,
	ts.salario_total
FROM total_salario ts
JOIN departamentos d 
ON ts.id_departamento = d.id_departamento;