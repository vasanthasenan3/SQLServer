CREATE TABLE Employee(Id INT,Name VARCHAR(50), Department VARCHAR(20), Salary INT);
INSERT INTO Employee VALUES
(1, 'Arun', 'IT', 30000),
(2, 'Kumar', 'HR', 25000),
(3, 'Vicky', 'IT', 45000),
(4, 'Rahul', 'Sales', 28000),
(5, 'Priya', 'HR', 35000);
--The employees whose salary is greater than the average salary
SELECT*FROM Employee WHERE Salary > (SELECT AVG(Salary)FROM Employee);
-- The employees whose earn highest salary
SELECT*FROM Employee WHERE Salary in (SELECT MAX(Salary) FROM Employee)
-- The employees who earn second highest salary
SELECT MAX(Salary)FROM Employee WHERE Salary < (SELECT MAX(Salary) FROM Employee);
-- The employees whose earn lowest salary
SELECT*FROM Employee WHERE Salary in (SELECT MIN(Salary) FROM Employee);
---The employees who work in the same department as Arun
SELECT*FROM Employee WHERE Department in (SELECT Department FROM Employee WHERE Name = 'Arun');
--Who is earn Lowest salary than kumar
SELECT*FROM Employee WHERE Salary < (SELECT Salary FROM Employee WHERE Name = 'Arun');
--Order By
SELECT Top 1 *FROM Employee Order By Salary ASC
--DecOrder By
SELECT*FROM Employee Order By Salary DESC