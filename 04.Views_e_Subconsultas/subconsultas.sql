USE cinema;
-- Subconsultas: O nome do cliente recente a fazer uma reserva no cinema
SELECT nome
FROM clientes
WHERE id_cliente = (SELECT max(id_cliente) FROM reservas);