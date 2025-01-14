-- SQLite

-- Criando Tabela CARS
CREATE TABLE CARS (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NAME VARCHAR(120) NOT NULL,
    YEAR INTEGER NOT NULL,
    COLOR VARCHAR(32) NOT NULL,
    KM DECIMAL(10,2) NOT NULL,
    STATUS VARCHAR(17) NOT NULL,
    
    BRAND_ID INTEGER,
    MODEL_ID INTEGER,

    FOREIGN KEY (BRAND_ID) REFERENCES CAR_BRAND (ID),
    FOREIGN KEY (MODEL_ID) REFERENCES CAR_MODELS (ID)
);


-- Inserindo dados Tabela CARS
INSERT INTO CARS (NAME,YEAR, COLOR, KM, STATUS, BRAND_ID, MODEL_ID)
    VALUES  ('Chevrolet Onix LT', '2016', 'Preto', '8000', 'Liberado',	'1'	, '3'),
            ('Hyundai HB20 1.6', '2022', 'Prata', '3000', 'Em manutenção',	'3'	, '3'),
            ('Toyota Yaris', '2021','Branca', '10000' ,'Liberado',	'2'	, '3'),
            ('Fiat Cronos', '2022', 'Preto', '2500', 'Liberado', '8' , '2'),
            ('Honda HR-V', '2018', 'Prata', '40000', 'Em manutenção', '7', '6'),
            ('VW Amarok', '2019', 'Prata', '25000', 'Liberado',	'4'	, '6');


SELECT 
    CARS.NAME, CARS.YEAR, CARS.COLOR, CARS.KM, CARS.STATUS,
    CARS.BRAND_ID, CAR_BRAND.BRAND_NAME, 
    CARS.MODEL_ID, CAR_MODELS.MODEL_NAME
    
    FROM CARS
    JOIN CAR_BRAND ON (CARS.BRAND_ID = CAR_BRAND.ID)
    JOIN CAR_MODELS ON (CARS.MODEL_ID = CAR_MODELS.ID);

SELECT * FROM CAR_BRAND;
SELECT * FROM CAR_MODELS;