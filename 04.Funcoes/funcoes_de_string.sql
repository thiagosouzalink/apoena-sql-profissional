USE apoena;

-- Funções String
-- CONCAT()
SELECT 
	CONCAT(nome, ' ', sobrenome) AS nome_completo
FROM clientes;

-- LENGTH()
SELECT
	LENGTH(nome) AS tamanho_nome
FROM clientes;

-- LOWER()
SELECT
	nome, LOWER(nome) AS nome_minusculo
FROM clientes;

-- LOWER()
SELECT
	nome, UPPER(nome) AS nome_maiusculo
FROM clientes;

-- SUBSTRING
SELECT 
	SUBSTRING(nome, 1, 3) AS substring_nome1,
	SUBSTRING(nome, 2, 4) AS substring_nome2
FROM clientes;

-- TRIM()
SELECT
	TRIM(nome) AS nome_trimado
FROM clientes;

SELECT
	TRIM('a' FROM nome) AS nome_trimado
FROM clientes;

-- REPLACE()
SELECT 
	REPLACE(email, '@', '[at]') AS email_modificado
FROM clientes;