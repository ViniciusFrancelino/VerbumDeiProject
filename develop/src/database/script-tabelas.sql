CREATE DATABASE vdconfig;
USE vdconfig;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	fk_empresa INT,
	FOREIGN KEY (fk_empresa) REFERENCES empresa(id)
);

Tabela para
CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

/* Tabela De Perguntas Quiz */
CREATE TABLE quizPerguntas(
	id INT PRIMARY KEY AUTO AUTO_INCREMENT,
	pergunta VARCHAR(100) NOT NULL UNIQUE,
	categoria VARCHAR(10) NOT NULL,
	CONSTRAINT chkCategoria CHECK (categoria IN('Biblica', 'Milagres', 'Sacramento', 'Historia')),
	dificuldade VARCHAR(7) NOT NULL,
	CONSTRAINT chkDificuldade CHECK (categoria IN('Facil', 'Medio', 'Dificil')),
	status BOOLEAN NOT NULL,
);

/* Tabela De Respostas Quiz */
CREATE TABLES quizRespostas (
	id INT PRIMARY KEY AUTO_INCREMENT,
	resposta VARCHAR(100) NOT NULL UNIQUE,
	validacao BOOLEAN,
)