-- SQLite
-- 17 - Construa uma consulta capaz de exibir todos os funcionários e seus respectivos cargos

SELECT EMPLOYEES.NAME, EMPLOYEES.PHONE_NUMBER, POSITIONS.DESCRIPTION
FROM EMPLOYEES JOIN POSITIONS ON (EMPLOYEES.POSITION_ID = POSITIONS.ID);