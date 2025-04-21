DROP DATABASE IF EXISTS economia_ia;
CREATE DATABASE economia_ia;

USE economia_ia;

-- ------------ CREATE TABLES ----------------------
CREATE TABLE paises (
    id INT PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE empresas (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    pais_id INT,
    FOREIGN KEY (pais_id) REFERENCES paises(id)
);

CREATE TABLE tecnologias (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);


CREATE TABLE categorias_tecnologias(
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE tecnologia_categoria (
    tecnologia_id INT,
    categoria_id INT,
    PRIMARY KEY (tecnologia_id, categoria_id),
    FOREIGN KEY (tecnologia_id) REFERENCES tecnologias(id),
    FOREIGN KEY (categoria_id)  REFERENCES categorias_tecnologias(id)
);

CREATE TABLE fases_corrida (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT
);

CREATE TABLE participacao_fases (
    empresa_id INT,
    fase_id INT,
    start_date DATE,
    end_date DATE,
    PRIMARY KEY (empresa_id, fase_id),
    FOREIGN KEY (empresa_id) REFERENCES empresas(id),
    FOREIGN KEY (fase_id) REFERENCES fases_corrida(id)
);

CREATE TABLE projetos (
    id INT PRIMARY KEY,
    empresa_id INT,
    nome VARCHAR(255) NOT NULL,
    budget INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);

CREATE TABLE eventos (
    id INT PRIMARY KEY,
    id_projeto INT,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    FOREIGN KEY (id_projeto) REFERENCES projetos(id) 
);

CREATE TABLE colaboradores (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    posicao VARCHAR(255),
    empresa_id INT,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);



CREATE TABLE colaboradores_projeto(
    colaborador_id INT,
    projeto_id INT,
    start_date DATE,
    end_date DATE,
    PRIMARY KEY (colaborador_id, projeto_id),
    FOREIGN KEY (colaborador_id) REFERENCES colaboradores(id),
    FOREIGN KEY (projeto_id) REFERENCES projetos(id)
);

CREATE TABLE metricas_performance(
    id INT PRIMARY KEY,
    projeto_id INT,
    nome_metrica VARCHAR(255) NOT NULL,
    valor_metrica DECIMAL(10,2),
    data_registro DATE,
    FOREIGN KEY (projeto_id) REFERENCES projetos(id)
);

CREATE TABLE patentes (
    id INT PRIMARY KEY,
    empresa_id INT,
    titulo VARCHAR(255) NOT NULL,
    data_pedido DATE,
    status_patente VARCHAR(255),
    FOREIGN KEY (empresa_id) REFERENCES empresas(id)
);


CREATE TABLE parceiros_pesquisa (
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(255)
);

CREATE TABLE colaboracao_pesquisa (
    empresa_id INT,
    parceiro_id INT,
    projeto_id INT,
    tipo VARCHAR(255),
    PRIMARY KEY (empresa_id, parceiro_id, projeto_id),
    FOREIGN KEY (empresa_id) REFERENCES empresas(id),
    FOREIGN KEY (parceiro_id) REFERENCES parceiros_pesquisa(id),
    FOREIGN KEY (projeto_id) REFERENCES projetos(id)
);


CREATE TABLE licenciamento (
    id INT PRIMARY KEY,
    empresa_id INT,
    entidade_licenciamento VARCHAR(255) NOT NULL,
    tecnologia_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (empresa_id) REFERENCES empresas(id),
    FOREIGN KEY (tecnologia_id) REFERENCES tecnologias(id)
);