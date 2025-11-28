CREATE DATABASE vdconfig;
USE vdconfig;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	fk_empresa INT
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);


/* Tabela De Perguntas Quiz */
CREATE TABLE quizPergunta (
	id INT PRIMARY KEY AUTO_INCREMENT,
	pergunta VARCHAR(100) NOT NULL UNIQUE,
	categoria VARCHAR(10) NOT NULL,
	CONSTRAINT chkCategoria CHECK (categoria IN('Biblica', 'Milagres', 'Sacramento', 'Historia')),
	dificuldade VARCHAR(7) NOT NULL,
	CONSTRAINT chkDificuldade CHECK (categoria IN('Facil', 'Medio', 'Dificil')),
	status BOOLEAN NOT NULL
);

/* Tabela De Respostas Quiz */
CREATE TABLE quizResposta (
	id INT PRIMARY KEY AUTO_INCREMENT,
	fkPergunta INT,
	resposta VARCHAR(100) NOT NULL UNIQUE,
	validacao BOOLEAN,
	FOREIGN KEY (fkPergunta) REFERENCES quizPergunta(id)
);

/* Tabela de Acertos do Quiz */
CREATE TABLE quizResultado (
	id INT PRIMARY KEY AUTO_INCREMENT,
	fkUsuario INT,
	fkPergunta INT,
	fkResposta INT,
	resultado BOOLEAN,
	dataQuiz DATETIME,
	FOREIGN KEY (fkUsuario) REFERENCES usuario(id),
	FOREIGN KEY (fkPergunta) REFERENCES quizPergunta(id),
	FOREIGN KEY (fkResposta) REFERENCES quizResposta(id)
);

/* Criação de tabelas para biblia */
CREATE TABLE indiceBiblia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    livro VARCHAR(17),
    ordem INT
);

CREATE TABLE novoTestamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    idLivro INT,
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL,
    FOREIGN KEY (idLivro) REFERENCES indiceBiblia(id)
);