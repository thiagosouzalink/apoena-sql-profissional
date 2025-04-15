CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE autor (
	id int AUTO_INCREMENT PRIMARY KEY,
	nome varchar(255)
);

CREATE TABLE livro (
	id int AUTO_INCREMENT PRIMARY KEY,
	titulo varchar(255),
	ano_publicacao int,
	id_autor int,
	FOREIGN KEY (id_autor) REFERENCES autor(id)
);

CREATE TABLE emprestimo (
	id int AUTO_INCREMENT PRIMARY KEY,
	data_emprestimo date,
	data_devolucao date,
	id_livro int,
	FOREIGN KEY (id_livro) REFERENCES livro(id)
);

SHOW tables;