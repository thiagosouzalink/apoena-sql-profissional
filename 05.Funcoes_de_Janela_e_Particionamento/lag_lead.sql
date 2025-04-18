USE cinema;

-- LAG e LEAD
-- Reservas anteriores e posteriores de cada cliente
SELECT 
	c.nome,
	r.data_reserva,
	LAG(r.data_reserva, 1) OVER (ORDER BY r.data_reserva) AS reserva_anterior,
	LEAD(r.data_reserva, 1) OVER (ORDER BY r.data_reserva) AS reserva_posterior
FROM clientes c 
JOIN reservas r 
ON c.id_cliente = r.id_cliente;