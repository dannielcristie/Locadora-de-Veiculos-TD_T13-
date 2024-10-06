-- SQLite

-- Criando Tabela CAR_MODELS
CREATE TABLE CAR_MODELS(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    MODEL_NAME VARCHAR(120) NOT NULL
);

-- Inserindo dados Tabela CAR_MODELS
INSERT INTO CAR_MODELS (MODEL_NAME) 
    VALUES  ('Conversível'),
            ('Sedã'),
            ('Hatch'),
            ('Coupé'),
            ('Perua'),
            ('SUV'),
            ('Picape'),
            ('Minivan'),
            ('Utilitário'),
            ('Buggy');

SELECT * FROM CAR_MODELS;

