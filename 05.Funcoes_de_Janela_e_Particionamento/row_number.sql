USE cinema;

-- ROW_NUMBER
-- Numero de linha de reserva da sessao
SELECT
	c.nome,
	r.data_reserva,
	ROW_NUMBER() OVER (PARTITION BY r.id_sessao ORDER BY r.data_reserva DESC) AS numero_linha
FROM clientes c 
JOIN reservas r 
ON c.id_cliente = r.id_cliente;