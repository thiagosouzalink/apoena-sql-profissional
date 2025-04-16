USE apoena;

-- Funções de Agregação

SHOW tables;

-- AVG - Média
SELECT 
	AVG(preco) AS media_preco
FROM produtos;

-- COUNT() - Contagem
SELECT 
	COUNT(*) AS total_clientes
FROM clientes;

-- GROUP_CONCAT
SELECT
	GROUP_CONCAT(nome ORDER BY nome SEPARATOR ', ') AS todos_nomes
FROM clientes;

-- MAX()
SELECT 
	MAX(preco) AS maior_preco
FROM produtos;

-- MIN()
SELECT 
	MIN(preco) AS menor_preco
FROM produtos;

SELECT 
	MAX(preco) AS maior_preco,
	MIN(preco) AS menor_preco
FROM produtos;

-- SUM()
SELECT 
	SUM(valor_venda) AS total
FROM vendas;