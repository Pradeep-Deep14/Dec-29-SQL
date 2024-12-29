CREATE TABLE employees (
         employee_id INT, 
         employee_name VARCHAR(100), 
         salary DECIMAL(10, 2), 
         department_id INT
     );
     INSERT INTO employees VALUES 
         (1, 'Ravi Gupta', 50000.00, 1), 
         (2, 'Meera Singh', 60000.00, 2), 
         (3, 'Amit Shah', 70000.00, 3), 
         (4, 'Nisha Patil', 40000.00, 1), 
         (5, 'Vikram Yadav', 90000.00, 2), 
         (6, 'Arjun Reddy', 80000.00, 3), 
         (7, 'Deepika Kumar', 30000.00, 4), 
         (8, 'Kavya Nair', 35000.00, 4), 
         (9, 'Ritesh Choudhary', 45000.00, 3), 
         (10, 'Riya Kapoor', 50000.00, 2);


/*
Retrieve employees with salaries above the average salary
*/

SELECT * FROM EMPLOYEES

--APPROACH 1
	
SELECT EMPLOYEE_NAME FROM EMPLOYEES WHERE SALARY >
(SELECT AVG(SALARY) FROM EMPLOYEES)


--APPROACH 2

WITH CTE AS (
    SELECT AVG(SALARY) AS AVERAGE_SALARY
    FROM EMPLOYEES
)
SELECT EMPLOYEE_NAME
FROM EMPLOYEES 
WHERE SALARY > (SELECT AVERAGE_SALARY FROM CTE);

