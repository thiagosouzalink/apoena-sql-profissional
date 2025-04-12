CREATE DATABASE cinema;

USE cinema;

CREATE TABLE filmes(
	id_filme int AUTO_INCREMENT PRIMARY KEY,
	titulo varchar(100) NOT NULL,
	genero varchar(100),
	duracao time NOT NULL
);

CREATE TABLE clientes(
	id_cliente int AUTO_INCREMENT PRIMARY KEY,
	nome varchar(100) NOT NULL,
	email varchar(100) UNIQUE NOT NULL
);

CREATE TABLE salas(
	id_sala int AUTO_INCREMENT PRIMARY KEY,
	capacidade int NOT NULL
);

CREATE TABLE assentos(
	id_assento int AUTO_INCREMENT PRIMARY KEY,
	id_sala int,
	numero_assento varchar(100) NOT NULL,
	FOREIGN KEY (id_sala) REFERENCES salas(id_sala)
);

CREATE TABLE sessoes(
	id_sessao int AUTO_INCREMENT PRIMARY KEY,
	id_filme int,
	id_sala int,
	horario datetime NOT NULL,
	FOREIGN KEY (id_filme) REFERENCES filmes(id_filme),
	FOREIGN KEY (id_sala) REFERENCES salas(id_sala)
);

CREATE TABLE reservas(
	id_reserva int AUTO_INCREMENT PRIMARY KEY,
	id_cliente int,
	id_sessao int,
	data_reserva date NOT NULL,
	FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
	FOREIGN KEY (id_sessao) REFERENCES sessoes(id_sessao)
);

CREATE TABLE assento_reservado(
	id_assento_reservado int AUTO_INCREMENT PRIMARY KEY,
	id_reserva int,
	id_assento int,
	FOREIGN KEY (id_reserva) REFERENCES reservas(id_reserva),
	FOREIGN KEY (id_assento) REFERENCES assentos(id_assento)
);