USE cinema;

-- Window Function com Soma/Contagem
-- Total de Assentos Reservados por cliente e no geral.
SELECT 
	c.nome,
	COUNT(ar.id_assento) AS assentos_reservados,
	SUM(COUNT(ar.id_assento)) OVER () AS total_assentos_reservados
FROM clientes c
JOIN reservas r 
	ON c.id_cliente = r.id_cliente
JOIN assento_reservado ar 
	ON r.id_reserva = ar.id_reserva
GROUP BY c.nome;