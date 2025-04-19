USE cte;

-- Quantidades de colaboradores por departamento
WITH colabs_por_dpto AS (
	SELECT 
		c.id_departamento,
		COUNT(*) AS total_colabs
	FROM colaboradores c 
	GROUP BY c.id_departamento
)
SELECT
	d.nome_departamento,
	cpd.total_colabs
FROM colabs_por_dpto cpd
JOIN departamentos d 
ON cpd.id_departamento = d.id_departamento;


-- Salário médio por departamento
WITH media_salario AS (
	SELECT 
		c.id_departamento, 
		AVG(c.salario) AS salario_medio
	FROM colaboradores c 
	GROUP BY c.id_departamento  
)
SELECT 
	d.nome_departamento,
	ms.salario_medio
FROM media_salario ms
JOIN departamentos d 
ON ms.id_departamento = d.id_departamento;