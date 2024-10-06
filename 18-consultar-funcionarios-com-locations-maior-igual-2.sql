-- SQLite
-- 18 - Construa uma consulta capaz de exibir somente os funcionários que realizaram mais ou igual a 2 locações.

SELECT * FROM EMPLOYEES
WHERE (SELECT COUNT(LOCATIONS.ID) 
       FROM LOCATIONS 
       WHERE LOCATIONS.EMPLOYEE_ID = EMPLOYEES.ID) >= 2;


SELECT * FROM EMPLOYEES;
SELECT * FROM LOCATIONS;
