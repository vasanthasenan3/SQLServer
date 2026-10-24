CREATE TABLE Emps
(
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Department VARCHAR(30),
    Designation VARCHAR(30),
    Salary DECIMAL(10,2),
    City VARCHAR(30),
    JoinDate DATE,
    ManagerID INT
);
--Select
Select EmpName, EmpID from Employees
Select EmpName from Employees
Select EmpName, Salary From Employees where Salary > 40000
--Select(In, Like, Between)
Select*from Employees where Department in ('IT')
Select EmpName, EmpID, Department from Employees where Department in ('IT')
Select EmpName, EmpID, Department from Employees where Department in ('IT', 'HR')
--Like
Select*from Employees where Gender like ('F%')
Select EmpName, Department from Employees where Gender like ('F%')
Select EmpName, Department from Employees where Department like ('%T')
Select EmpName, Department, EmpID from Employees where EmpID like ('%11%')
--between
Select EmpName, Salary from Employees where Salary Between 35000 And 50000