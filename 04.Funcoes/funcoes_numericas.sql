USE apoena;

-- Funçoes Numéricas

-- Arrendodamento (ROUND)
SELECT 
	ROUND(preco, 2) AS preco_arrendodado
FROM produtos;

-- Arredondamento "Para Baixo" (FLOOR)
SELECT 
	FLOOR(preco) AS preco_inferior
FROM produtos;

-- Arredondamento "Para Cima" (CEIL)
SELECT 
	CEIL(preco) AS preco_superior
FROM produtos;

-- Valor Absoluto (ABS)
SELECT
	ABS(-10) AS valor_absoluto;