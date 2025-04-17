DROP DATABASE IF EXISTS cinema;
CREATE DATABASE cinema;

USE cinema;

-- ---------------------------- CREATE TABLES -------------------------------------
-- Table clientes
CREATE TABLE IF NOT EXISTS clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

-- Tabela salas
CREATE TABLE IF NOT EXISTS salas (
    id_sala INT AUTO_INCREMENT PRIMARY KEY,
    capacidade INT NOT NULL
);

-- Tabela filmes
CREATE TABLE IF NOT EXISTS filmes (
    id_filme INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    genero VARCHAR(50),
    duracao TIME
);

-- Tabela sessoes
CREATE TABLE IF NOT EXISTS sessoes (
    id_sessao INT AUTO_INCREMENT PRIMARY KEY,
    id_filme INT NOT NULL,
    id_sala INT NOT NULL,
    horario DATETIME NOT NULL,
    FOREIGN KEY (id_filme) REFERENCES filmes(id_filme),
    FOREIGN KEY (id_sala) REFERENCES salas(id_sala)
);

-- Tabela reservas
CREATE TABLE IF NOT EXISTS reservas (
    id_reserva INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_sessao INT NOT NULL,
    data_reserva DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_sessao) REFERENCES sessoes(id_sessao)
);

-- Tabela assento_reservado
CREATE TABLE IF NOT EXISTS assento_reservado (
    id_assento_reservado INT AUTO_INCREMENT PRIMARY KEY,
    id_reserva INT NOT NULL,
    id_assento INT NOT NULL,
    FOREIGN KEY (id_reserva) REFERENCES reservas(id_reserva)
);

-- Tabela assentos
CREATE TABLE IF NOT EXISTS assentos (
    id_assento INT AUTO_INCREMENT PRIMARY KEY,
    id_sala INT NOT NULL,
    numero_assento VARCHAR(10) NOT NULL,
    FOREIGN KEY (id_sala) REFERENCES salas(id_sala)
);



-- --------------------------------- INSERT -------------------------------------------

-- Inserir dados na tabela clientes
INSERT INTO clientes(nome) 
VALUES
	('João Silva'),
	('Maria Santos'),
	('Carlos Oliveira'),
	('Ana Souza'),
	('Pedro Lima');

-- Inserir dados na tabela Salas
INSERT INTO salas(capacidade) 
VALUES
	(100),
	(150),
	(200),
	(80),
	(120);

-- Inserir dados na tabela Filmes
INSERT INTO filmes(titulo, genero, duracao) 
VALUES
	('O Senhor dos Anéis', 'Aventura', '03:30:00'),
	('Matrix', 'Ficção Científica', '02:16:00'),
	('Titanic', 'Romance', '03:14:00'),
	('Vingadores: Ultimato', 'Ação', '03:01:00'),
	('A Origem', 'Suspense', '02:28:00');

-- Inserir dados na tabela Sessoes
INSERT INTO sessoes(id_filme, id_sala, horario) 
VALUES
	(1, 1, '2024-10-10 14:00:00'),
	(2, 2, '2024-10-11 16:00:00'),
	(3, 3, '2024-10-12 18:00:00'),
	(4, 4, '2024-10-13 20:00:00'),
	(5, 5, '2024-10-14 22:00:00');

-- Inserir dados na tabela Reservas
INSERT INTO reservas(id_cliente, id_sessao, data_reserva) 
VALUES
	(1, 1, '2024-09-20'), -- João Silva
	(1, 2, '2024-09-21'), -- João Silva (mais uma reserva)
	(2, 2, '2024-09-21'), -- Maria Santos
	(2, 3, '2024-09-22'), -- Maria Santos (mais uma reserva)
	(3, 3, '2024-09-22'), -- Carlos Oliveira
	(4, 4, '2024-09-23'), -- Ana Souza
	(4, 5, '2024-09-24'), -- Ana Souza (mais uma reserva)
	(5, 5, '2024-09-24'); -- Pedro Lima
	
-- Inserir dados na tabela Assentos
INSERT INTO assentos(id_sala, numero_assento) 
VALUES
	(1, 'A1'),
	(2, 'B2'),
	(3, 'C3'),
	(4, 'D4'),
	(5, 'E5');

-- Inserir dados na tabela Assento_Reservado
INSERT INTO assento_reservado(id_reserva, id_assento) 
VALUES
	(1, 1), -- João Silva, Assento A1
	(1, 2), -- João Silva, Assento B2
	(2, 3), -- João Silva, Assento C3
	(2, 4), -- Maria Santos, Assento D4
	(3, 5), -- Carlos Oliveira, Assento E5
	(4, 1), -- Ana Souza, Assento A1
	(4, 2), -- Ana Souza, Assento B2
	(4, 3), -- Ana Souza, Assento C3
	(5, 4); -- Pedro Lima, Assento D4
	


-- --------------------------------- SELECT -------------------------------------
-- Mostrar todos os dados da tabela clientes
SELECT * FROM clientes;

-- Mostrar todos os dados da tabela salas
SELECT * FROM salas;

-- Mostrar todos os dados da tabela filmes
SELECT * FROM filmes;

-- Mostrar todos os dados da tabela sessoes
SELECT * FROM sessoes;

-- Mostrar todos os dados da tabela reservas
SELECT * FROM reservas;

-- Mostrar todos os dados da tabela assentos
SELECT * FROM assentos;

-- Mostrar todos os dados da tabela Assento_Reservado
SELECT * FROM assento_reservado;