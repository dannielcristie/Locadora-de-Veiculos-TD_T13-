-- SQLite

-- 19 - Construa uma consulta capaz de exibir somente os clientes que realizaram mais ou igual a 2 locações.

SELECT * FROM CUSTOMERS
WHERE (SELECT COUNT(LOCATIONS.ID) 
       FROM LOCATIONS 
       WHERE LOCATIONS.CUSTOMER_ID = CUSTOMERS.ID) >= 2;


SELECT * FROM CUSTOMERS;
SELECT * FROM LOCATIONS;
