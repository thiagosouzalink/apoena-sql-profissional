USE cinema;

-- PARTITION BY
-- Total de assentos Reservados por sala de Cinema

SELECT 
	sa.id_sala,
	COUNT(ar.id_assento) AS assentos_reservados,
	SUM(COUNT(ar.id_assento)) OVER (PARTITION BY sa.id_sala) AS total_sala
FROM sessoes ss 
JOIN salas sa
	ON ss.id_sala = sa.id_sala
JOIN reservas r 
	ON r.id_sessao = ss.id_sessao
JOIN assento_reservado ar 
	ON ar.id_reserva = r.id_reserva
GROUP BY sa.id_sala;