-- SQLite
CREATE TABLE Publicacao(
    issn INT NOT NULL,
    titulo VARCHAR(100),
    editora VARCHAR(100),
    url VARCHAR(300),
    PRIMARY KEY(issn)
);

CREATE TABLE Artigos(
    id_artigos INT NOT NULL,
    titulo_art VARCHAR(100),
    n_paginas INT,
    ano INT,
    issn INT,
    PRIMARY KEY (id_artigos),
    CONSTRAINT fk_publicacao FOREIGN KEY (issn) REFERENCES Publicacao(issn)

);

CREATE TABLE PalavraChave(
    id_palavrachave INT NOT NULL,
    descricaoPC VARCHAR(500),
    PRIMARY KEY (id_palavrachave)
);

CREATE TABLE Artigos_PalavraChave(
    id_artigos INT NOT NULL,
    id_palavrachave INT NOT NULL,
    PRIMARY KEY(id_artigos,id_palavrachave),
    CONSTRAINT fk_artigos FOREIGN KEY (id_artigos) REFERENCES Artigos (id_artigos),
    CONSTRAINT fk_palavrachave FOREIGN KEY (id_palavrachave) REFERENCES PalavraChave(id_palavrachave)
);

CREATE TABLE Area(
    id_area INT NOT NULL,
    descricao_area VARCHAR(500),
    PRIMARY KEY (id_area)

);

CREATE TABLE Artigos_Area(
    id_area INT NOT NULL,
    id_artigos INT NOT NULL,
    PRIMARY KEY(id_area,id_artigos),
    CONSTRAINT fk_area FOREIGN KEY (id_area) REFERENCES Area(id_area),
    CONSTRAINT fk_artigosa FOREIGN KEY(id_artigos) REFERENCES Artigos(id_artigos)

);




INSERT INTO Publicacao VALUES (34567890,'Artificial Intelligence Review','AIPress','Link');
INSERT INTO Publicacao VALUES (23456789,'Journal of Computing','TechPress','Link');
INSERT INTO Publicacao VALUES (34567891,'PsychologyandTech','SaudeTech','Link');
INSERT INTO Publicacao VALUES (56789012,'CyberSecurity Journal','SecureData','Link');
INSERT INTO Publicacao VALUES (78901234,'DataScienceReview','DataPress','Link');


INSERT INTO Artigos VALUES (1,'O Impacto Da IA na Medicina',20,2023,34567891);
INSERT INTO Artigos VALUES (2,'Algoritmos Geneticos Para Otimizacao',14,2022,78901234);
INSERT INTO Artigos VALUES (3,'A Evolucao Da Internet Das Coisas',25,2023,23456789);
INSERT INTO Artigos VALUES (4,'Blockchain Na Seguranca Cibernetica',13,2020,56789012);
INSERT INTO Artigos VALUES (5,'BigData Na Analise De Tendencias',21,2022,34567890);

INSERT INTO PalavraChave VALUES(1,'IA');
INSERT INTO PalavraChave VALUES(2,'Medicina');
INSERT INTO PalavraChave VALUES(3,'Diagnostico');
INSERT INTO PalavraChave VALUES(4,'Algoritmos');
INSERT INTO PalavraChave VALUES(5,'Otimizacao');

INSERT INTO Artigos_PalavraChave VALUES (1,1);
INSERT INTO Artigos_PalavraChave VALUES (2,1);
INSERT INTO Artigos_PalavraChave VALUES (3,1);
INSERT INTO Artigos_PalavraChave VALUES (2,5);
INSERT INTO Artigos_PalavraChave VALUES (5,4);

INSERT INTO Area VALUES(1,'InteligenciaArtificial');
INSERT INTO Area VALUES(2,'Computacao');
INSERT INTO Area VALUES(3,'AprendizadodeMaquina');
INSERT INTO Area VALUES(4,'Tecnologia');
INSERT INTO Area VALUES(5,'Seguranca');

INSERT INTO Artigos_Area VALUES(1,1);
INSERT INTO Artigos_Area VALUES(3,4);
INSERT INTO Artigos_Area VALUES(5,4);
INSERT INTO Artigos_Area VALUES(2,2);


select*from Publicacao;
select*from Area;
select*from Artigos_Area;
select*from Artigos_PalavraChave;
select*from Artigos;
select*from PalavraChave;
