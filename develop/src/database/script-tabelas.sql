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


INSERT INTO indiceBiblia (livro, ordem) VALUES
('mateus', 1),
('marcos', 2),
('lucas', 3),
('joao', 4),
('atos', 5),
('romanos', 6),
('i_corintios', 7),
('ii_corintios', 8),
('galatas', 9),
('efesios', 10),
('filipenses', 11),
('colossenses', 12),
('i_tessalonicense', 13),
('ii_tessalonicense', 14),
('i_timoteo', 15),
('ii_timoteo', 16),
('tito', 17),
('filemon', 18),
('hebreus', 19),
('tiago', 20),
('i_pedro', 21),
('ii_pedro', 22),
('i_joao', 23),
('ii_joao', 24),
('iii_joao', 25),
('judas', 26),
('apocalipse', 27);