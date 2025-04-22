USE economia_ia;

-- 1. Desempeho dos projetos nos diferentes eventos
SELECT 
	e.nome AS evento,
	p.nome AS projeto,
	mp.nome_metrica,
	mp.valor_metrica,
	mp.data_registro
FROM 
	eventos e 
JOIN 
	projetos p 
	ON p.id = e.id_projeto
JOIN 
	metricas_performance mp 
	ON mp.projeto_id = p.id
ORDER BY 
	e.nome,
	mp.nome_metrica;


-- 2. Investimento Total de Cada Projeto
SELECT 
	e.nome AS empresa,
	SUM(p.budget) AS investimento_total
FROM 
	empresas e 
JOIN 
	projetos p
	ON e.id = p.empresa_id
GROUP BY
	e.nome
ORDER BY 
	investimento_total;


-- 3. Comparação entre o tempo de conclusão dos projetos
SELECT 
	c.nome AS colaborador,
	p.nome AS projeto,
	DATEDIFF(p.end_date, p.start_date) AS tempo_conclusao
FROM 
	colaboradores c
JOIN 
	colaboradores_projeto cp 
	ON c.id = cp.colaborador_id
JOIN 
	projetos p 
	ON p.id = cp.projeto_id
ORDER BY 
	tempo_conclusao;


-- 4. Quais universidades estão colaborando com quais empresesas?
SELECT 
	e.nome AS empresa,
	pp.nome AS paceiro,
	p.nome AS projeto
FROM 
	colaboracao_pesquisa cp 
JOIN
	empresas e 
	ON e.id = cp.empresa_id
JOIN parceiros_pesquisa pp 
	ON pp.id = cp.parceiro_id
JOIN 
	projetos p 
	ON p.id = cp.projeto_id
ORDER BY
	e.nome,
	pp.nome,
	p.nome;


-- 5. Status das Patentes
SELECT 
	e.nome AS empresa,
	p.titulo AS patente,
	p.data_pedido,
	p.status_patente
FROM 
	patentes p
JOIN 
	empresas e 
	ON e.id = p.empresa_id
ORDER BY 
	e.nome,
	p.data_pedido;

	


