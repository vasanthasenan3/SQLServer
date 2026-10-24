CREATE TABLE Employees
(
    EmployeeId INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeName VARCHAR(50),
    Department VARCHAR(50)
);
INSERT INTO Employees (EmployeeName, Department)
VALUES ('Arun', 'IT');
INSERT INTO Employees (EmployeeName, Department)
VALUES ('Priya', 'HR');

SELECT IDENT_CURRENT('Employees') AS CurrentIdentity;
SELECT @@IDENTITY AS LastIdentity;
SELECT SCOPE_IDENTITY() AS ScopeIdentity;

INSERT INTO Employees (EmployeeName, Department)
VALUES ('Kumar', 'Finance');

SELECT * FROM Employees;

SELECT SCOPE_IDENTITY() AS LatestIdentity;