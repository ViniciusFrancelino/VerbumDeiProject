CREATE DATABASE vdconfig;
USE vdconfig;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

/* Tabela de Resultado do Quiz */
CREATE TABLE quizResultado(
	id INT PRIMARY KEY AUTO_INCREMENT,
	idUsuario int,
	FOREIGN KEY (idUsuario) REFERENCES usuario(id),
	pontuacao int NOT NULL, 
	tipoQuiz VARCHAR(10),
	CONSTRAINT chkTipoQuiz CHECK (tipoQuiz IN('Biblico', 'Milagres', 'Sacramento'))
);