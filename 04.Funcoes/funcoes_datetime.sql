USE apoena;

-- Funçoes Datetime

-- Verificar data e hora do momento
SELECT NOW() AS datahora;

-- Verificar Data
SELECT CURDATE() AS data_;

-- Verificar Horário
SELECT CURTIME() AS hora;

-- Formatar Data
SELECT 
	DATE_FORMAT(data_nascimento, '%d/%m/%Y') AS data_formatada
FROM clientes;

-- Calcular diferença entre datas
SELECT 
	DATEDIFF('2025-04-16', '2024-12-25') AS diferenca;

-- Adicionar intervalo
SELECT 
	DATE_ADD(CURDATE(), INTERVAL 10 DAY) AS data_futura;

-- Subtrair intervalo
SELECT
	DATE_SUB(CURDATE(), INTERVAL 15 DAY) AS data_passado;