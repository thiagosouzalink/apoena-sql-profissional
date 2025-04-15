USE cinema;

-- Subconsultas não correlacionadas
-- Lista de emails dos clientes // filtro: parametro data
SELECT nome, email 
FROM clientes
WHERE id_cliente IN (SELECT id_cliente 
					 FROM reservas
				     WHERE data_reserva > '2025-01-01');