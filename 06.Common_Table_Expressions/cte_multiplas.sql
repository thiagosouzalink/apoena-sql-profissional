USE cte;

-- Colaboradores com salário acima da média
WITH salario_medio AS (
	SELECT 
		AVG(c.salario) AS media_salarial
	FROM colaboradores c 
),
colaboradores_acima_media AS (
	SELECT
		c.nome,
		c.salario,
		d.nome_departamento
	FROM colaboradores c 
	JOIN departamentos d 
	ON c.id_departamento = d.id_departamento
	WHERE c.salario > (SELECT media_salarial 
					   FROM salario_medio)
)
SELECT * FROM colaboradores_acima_media;

-- Diferença entre o maior e o menor salario por departamento
WITH salario_departamento AS (
	SELECT
		c.id_departamento,
		MAX(c.salario) AS maior_salario,
		MIN(c.salario) AS menor_salario
	FROM colaboradores c
	GROUP BY c.id_departamento
),
diferenca_salario AS (
	SELECT 
		id_departamento,
		(maior_salario - menor_salario) AS diferenca
	FROM salario_departamento
)
SELECT 
	d.nome_departamento,
	ds.diferenca
FROM diferenca_salario ds
JOIN departamentos d 
ON ds.id_departamento = d.id_departamento;