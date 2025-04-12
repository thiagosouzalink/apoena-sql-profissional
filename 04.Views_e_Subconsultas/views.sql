USE cinema;

CREATE VIEW reservas_recentes AS 
    SELECT c.nome, r.data_reserva
    FROM clientes c
    JOIN reservas r
    ON c.id_cliente = r.id_cliente
    WHERE r.data_reserva > '2025-01-01';

SELECT * FROM reservas_recentes;