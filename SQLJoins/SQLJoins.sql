
CREATE TABLE Emp
(
    EmployeeId INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentId INT
);
INSERT INTO Emp VALUES
(1, 'Arun', 101),
(2, 'Priya', 102),
(3, 'Kumar', 103),
(4, 'Vijay', NULL),
(5, 'Divya', 105);
CREATE TABLE Departments
(
    DepartmentId INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
INSERT INTO Departments VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance'),
(104, 'Sales');
--InnerJOin
SELECT E.EmployeeName, D.DepartmentName
FROM Emp E
INNER JOIN Departments D
ON E.DepartmentId = D.DepartmentId;
--LeftJoin
SELECT E.EmployeeName, D.DepartmentName
FROM Emp E
LEFT JOIN Departments D
ON E.DepartmentId = D.DepartmentId;
--RightJoin
SELECT E.EmployeeName, D.DepartmentName
FROM Emp E
RIGHT JOIN Departments D
ON E.DepartmentId = D.DepartmentId;
--FullOuterJoin
SELECT E.EmployeeName, D.DepartmentName
FROM Emp E
FULL OUTER JOIN Departments D
ON E.DepartmentId = D.DepartmentId;
--CrossJoin
SELECT E.EmployeeName, D.DepartmentName
FROM Emp E
CROSS JOIN Departments D;

