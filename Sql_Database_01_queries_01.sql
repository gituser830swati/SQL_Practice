SELECT *FROM worker;

SELECT  salary FROM worker;

SELECT  first_name FROM worker;

SELECT  first_name,salary FROM worker;

SELECT ucase('swaTi');

SELECT lcase('swaTi');

SELECT *FROM worker WHERE salary > 90000;

SELECT *FROM worker WHERE department= 'HR';

-- uppercase
SELECT ucase('swaTi');

-- lowercase
SELECT lcase('swaTi');

-- WHERE use
SELECT *FROM worker WHERE salary > 90000;
SELECT *FROM worker WHERE department= 'HR';

-- BETWEEN use
-- salary [80000,300000]
SELECT *FROM worker WHERE salary BETWEEN 80000 AND 300000;

-- IN use
-- reduce OR statements
-- HR, ADMIN
SELECT *FROM worker WHERE department = 'Account' OR department = 'Admin';

-- better way : IN
SELECT *FROM worker WHERE department IN ('Account','Admin');

-- NOT 
SELECT *FROM worker WHERE department NOT IN ('Account','Admin');

-- is null 
SELECT *FROM worker WHERE salary IS NULL;

-- WILDCARD
SELECT *FROM worker WHERE FIRST_NAME LIKE '%i%' ;
SELECT *FROM worker WHERE FIRST_NAME LIKE '_i%' ;

-- sorting using ORDER BY
SELECT *FROM worker ORDER BY salary;
SELECT *FROM worker ORDER BY salary DESC ;

-- DISTINCT 
SELECT DISTINCT department from worker;

-- GROUP BY
SELECT department from worker GROUP BY department;

-- GROUP BY COUNT
SELECT department, COUNT(department) from worker GROUP BY department;

-- AVG salary per department
SELECT department, AVG(salary) FROM worker GROUP BY department;

-- MIN salary per department
SELECT department, MIN(salary) FROM worker GROUP BY department;


-- MAX salary per department
SELECT department, MAX(salary) FROM worker GROUP BY department;

-- SUM salary per department
SELECT department, SUM(salary) FROM worker GROUP BY department;

-- GROUP BY HAVING
SELECT department, COUNT(department) from worker GROUP BY department HAVING COUNT(Department)>3;

-- unique 
-- name varchar(23) unique,
 































