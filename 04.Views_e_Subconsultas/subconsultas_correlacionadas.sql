USE cinema;

-- Subconsultas correlacionadas
-- Lista dos clientes // filtro: parametro de data
SELECT c.nome
FROM clientes c
WHERE EXISTS (
	SELECT 1
	FROM reservas r 
	WHERE r.id_cliente = c.id_cliente
		  AND r.data_reserva > '2025-01-01'
);