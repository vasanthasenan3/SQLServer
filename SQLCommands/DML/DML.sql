CREATE TABLE Employee
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
--Update
Update Employees set ManagerID = 109 where EmpName = 'Karthik'
Update Employees Set EmpName = 'Abitha' , Age = 30 where EmpID = 108
Update Employees Set ManagerID = 110 where ManagerID is Null And EmpID = 106 
Update Employees Set City= ManagerID + EmpID where EmpID = 106 
--Insert
Insert into Employee Values (5, 'Ishan', 'Male', 21, 'Mechanical', 'SE', 24555 , 'Chennai', 23, 4)
--Delete 
Delete From Employee where EmpID = 1