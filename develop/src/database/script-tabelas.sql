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


/* Tabela De Perguntas Quiz */
CREATE TABLE quizPergunta (
	id INT PRIMARY KEY AUTO_INCREMENT,
	pergunta VARCHAR(100) NOT NULL UNIQUE,
	categoria VARCHAR(10) NOT NULL,
	CONSTRAINT chkCategoria CHECK (categoria IN('Biblica', 'Milagres', 'Sacramento')),
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
CREATE TABLE quizResultado(
	id INT PRIMARY KEY AUTO_INCREMENT,
	idUsuario int,
	FOREIGN KEY (idUsuario) REFERENCES usuario(id),
	pontuacao int NOT NULL, 
	tipoQuiz VARCHAR(10),
	CONSTRAINT chkCategoria CHECK (categoria IN('Biblico', 'Milagres', 'Sacramento'))
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