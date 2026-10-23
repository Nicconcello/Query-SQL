CREATE TABLE evento (
    codice INT PRIMARY KEY,
    tema VARCHAR(50)
);

CREATE TABLE servizio (
    codice INT PRIMARY KEY,
    tipologia VARCHAR(50) NOT NULL,
    tariffa DECIMAL(10, 2) NOT NULL
);

CREATE TABLE impiego (
    codices INT,
    codicee INT,
    ore INT CHECK (ore > 0),
    PRIMARY KEY (codices, codicee),
    FOREIGN KEY (codices) REFERENCES servizio(codice),
    FOREIGN KEY (codicee) REFERENCES evento(codice)
);

INSERT INTO evento (codice, tema) VALUES
(1, 'musica'),
(2, 'sport'),
(3, 'cultura'),
(4, NULL),
(5, 'musica');


INSERT INTO servizio (codice, tipologia, tariffa) VALUES
(101, 'sicurezza', 25.00),
(102, 'ristorazione', 50.00),
(103, 'trasporto', 30.00),
(104, 'pulizia', 15.00);

INSERT INTO impiego (codices, codicee, ore) VALUES
(101, 1, 4), -- Evento musica: sicurezza per 4 ore (impiego intensivo)
(102, 1, 2), -- Evento musica: ristorazione per 2 ore
(101, 2, 5), -- Evento sport: sicurezza per 5 ore (senza ristorazione per testare la Query 2)
(103, 2, 3), -- Evento sport: trasporto per 3 ore
(102, 3, 4), -- Evento cultura: ristorazione per 4 ore
(104, 4, 2), -- Evento NULL: pulizia per 2 ore (per testare la Query 5)
(101, 5, 2); -- Evento musica: sicurezza per 2 ore
