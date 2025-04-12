USE cinema;

INSERT INTO filmes(titulo, genero, duracao)
VALUES('Matrix', 'Sci-Fi', '02:16:00');

INSERT INTO clientes(nome, email)
VALUES('João', 'joao@mail.com');

SELECT * FROM filmes;
SELECT * FROM clientes;

INSERT INTO salas(capacidade)
VALUES(200);

INSERT INTO sessoes(id_filme, id_sala, horario)
VALUES(1, 1, '2025-04-11 20:55:00');

INSERT INTO assentos
	(id_assento, id_sala, numero_assento)
VALUES
	(1, 1, 'A1'),
	(2, 1, 'A2'),
	(3, 1, 'A3');

INSERT INTO reservas
	(id_reserva, id_cliente, id_sessao, data_reserva)
VALUES 
	(1, 1, 1, '2025-04-11');

