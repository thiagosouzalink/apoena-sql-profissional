USE cinema;

-- Lista de todos os filmes com suas sessoes, salas e horário.
SELECT
	filmes.titulo AS filme,
	sessoes.horario AS horario,
	salas.capacidade AS capacidade_sala
FROM sessoes
JOIN filmes
ON sessoes.id_filme = filmes.id_filme
JOIN salas
ON sessoes.id_sala = salas.id_sala;

-- Lista de clientes, reservas com filme, sessão e data.
SELECT
	clientes.nome AS nome,
	filmes.titulo AS filme,
	sessoes.horario AS horario,
	reservas.data_reserva AS data_reserva
FROM reservas
JOIN clientes
ON reservas.id_cliente = clientes.id_cliente
JOIN sessoes
ON reservas.id_sessao = sessoes.id_sessao
JOIN filmes
ON sessoes.id_filme = filmes.id_filme

-- Listar todos os assentos reservados por cliente, incluindo numero do assento e a sala.
SELECT
	clientes.nome AS cliente,
	salas.id_sala AS sala,
	assentos.numero_assento AS assento
FROM assento_reservado
JOIN reservas
ON assento_reservado.id_reserva = reservas.id_reserva
JOIN clientes
ON reservas.id_cliente = clientes.id_cliente
JOIN assentos 
ON assento_reservado.id_assento = assentos.id_assento
JOIN salas 
ON assentos.id_sala = salas.id_sala;
