USE cinema;

-- RANK / DENSE_RANK
SELECT 
	c.nome,
	COUNT(ar.id_assento) AS assentos_reservados,
	RANK() OVER (ORDER BY COUNT(ar.id_assento) DESC) AS rank_reservas,
	DENSE_RANK() OVER (ORDER BY COUNT(ar.id_assento) DESC) AS dense_rank_reservas
FROM clientes c 
JOIN reservas r 
	ON c.id_cliente = r.id_cliente
JOIN assento_reservado ar 
	ON r.id_reserva = ar.id_reserva
GROUP BY c.nome;



