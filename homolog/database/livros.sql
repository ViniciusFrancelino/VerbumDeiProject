CREATE DATABASE biblia_catolica;
USE biblia_catolica;

-- Antigo Testamento
CREATE TABLE genesis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Gênesis',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE exodo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Êxodo',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE levitico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Levítico',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE numeros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Números',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE deuteronomio (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Deuteronômio',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE josue (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Josué',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE juizes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Juízes',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE rute (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Rute',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE i_samuel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '1 Samuel',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE ii_samuel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '2 Samuel',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE i_reis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '1 Reis',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE ii_reis (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '2 Reis',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE i_cronicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '1 Crônicas',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE ii_cronicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '2 Crônicas',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE esdras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Esdras',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE neemias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Neemias',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tobias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Tobias',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE judite (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Judite',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE ester (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Ester',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE i_macabeus (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '1 Macabeus',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE ii_macabeus (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT '2 Macabeus',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE jo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Jó',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE salmos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Salmos',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE proverbios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Provérbios',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE eclesiastes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Eclesiastes',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE cantar (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Cântico dos Cânticos',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE sabedoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Sabedoria',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE eclesiastico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Eclesiástico',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE isaias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Isaías',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE jeremias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Jeremias',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE lamentacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Lamentações',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE baruc (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Baruc',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE ezequiel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Ezequiel',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE daniel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Daniel',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE oseias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Oséias',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE joel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Joel',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE amos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Amós',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE obadias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Obadias',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE jonas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Jonas',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE miqueias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Miquéias',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE naum (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Naum',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE habacuc (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Habacuc',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE sofonias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Sofonias',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE ageu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Ageu',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE zacarias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Zacarias',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE malaquias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livro VARCHAR(100) NOT NULL DEFAULT 'Malaquias',
    capitulo INT NOT NULL,
    versiculo INT NOT NULL,
    descricao TEXT NOT NULL
);

-- Novo Testamento
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