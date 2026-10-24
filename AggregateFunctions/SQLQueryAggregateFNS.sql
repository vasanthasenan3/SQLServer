CREATE TABLE Employee
(
    EmployeeId INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);
select*from Employee
INSERT INTO Employee VALUES
(1, 'Arun', 'IT', 30000),
(2, 'Priya', 'HR', 25000),
(3, 'Kumar', 'IT', 40000),
(4, 'Divya', 'HR', 35000),
(5, 'Vijay', 'Finance', 45000),
(6, 'Ravi', 'Finance', 20000);

SELECT COUNT(*) AS TotalEmployees FROM Employee;
SELECT SUM(Salary) AS TotalSalary FROM Employee;
SELECT AVG(Salary) AS AverageSalary FROM Employee;
SELECT MIN(Salary) AS MinimumSalary FROM Employee;
SELECT MAX(Salary) AS MaximumSalary FROM Employee;
SELECT Department,
    COUNT(*) AS TotalEmployee,
    SUM(Salary) AS TotalSalary,
    AVG(Salary) AS AverageSalary,
    MIN(Salary) AS MinimumSalary,
    MAX(Salary) AS MaximumSalary
FROM Employee
GROUP BY Department;
