CREATE TABLE Stafs
(
    EmployeeId INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT
);
INSERT INTO Stafs VALUES
(1, 'Arun', 'IT', 30000),
(2, 'Priya', 'HR', 25000),
(3, 'Kumar', 'Finance', 35000);

BEGIN TRANSACTION;

UPDATE Stafs
SET Salary = 35000
WHERE EmployeeId = 1;

SAVE TRANSACTION MySavepoint;

UPDATE Stafs
SET Salary = 30000
WHERE EmployeeId = 2;

ROLLBACK TRANSACTION MySavepoint;

COMMIT TRANSACTION;