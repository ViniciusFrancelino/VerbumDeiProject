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

/* Criação de tabelas da biblia */
CREATE TABLE mateus (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Mateus',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE marcos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Marcos',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE lucas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Lucas',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE joao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'João',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE atos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Atos dos Apóstolos',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE romanos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Romanos',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE i_corintios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '1 Coríntios',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE ii_corintios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '2 Coríntios',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE galatas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Gálatas',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE efesios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Efésios',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE filipenses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Filipenses',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE colossenses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Colossenses',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE i_tessalonicense (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '1 Tessalonicenses',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE ii_tessalonicense (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '2 Tessalonicenses',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE i_timoteo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '1 Timóteo',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE ii_timoteo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '2 Timóteo',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tito (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Tito',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE filemon (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Filêmon',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE hebreus (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Hebreus',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tiago (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Tiago',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE i_pedro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '1 Pedro',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE ii_pedro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '2 Pedro',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE i_joao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '1 João',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE ii_joao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '2 João',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE iii_joao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '3 João',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE judas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Judas',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE apocalipse (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Apocalipse',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);