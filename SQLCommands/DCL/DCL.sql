CREATE TABLE Emps
(
    EmployeeId INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);
INSERT INTO Emps VALUES
(1, 'Arun', 'IT', 30000),
(2, 'Priya', 'HR', 25000),
(3, 'Kumar', 'Finance', 35000);
--Grant
GRANT SELECT ON Employees TO TestUser;
--Revoke
REVOKE SELECT ON Employees FROM TestUser;