-- SQLite

-- Criando Tabela POSITIONS
CREATE TABLE POSITIONS (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    DESCRIPTION VARCHAR(120) NOT NULL
);

-- Inserindo dados  Tabela POSITIONS
INSERT INTO POSITIONS (DESCRIPTION)
    VALUES  ('Gerente de vendas'),
            ('Gerente de compras'),
            ('Vendedor'),
            ('Mecânico'),
            ('Assistente Administrativo');

SELECT * FROM POSITIONS;