CREATE TABLE Employees
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
--Alter
Alter Table Employees Add NoticePeriod varchar(20)
Alter table Employees Add constraint UQ_ManagerID Unique(Age)
Alter Table Employees Alter Column ManagerID Numeric
--Drop
Alter table Employees Drop constraint UQ_ManagerID
Alter Table Employees Drop Column NoticePeriod
--Rename
SP_Rename 'Employees','Stafs'
EXEC sp_Rename 'Employees.Empname', 'Name', 'Column'
--Truncate
Truncate Table Employees