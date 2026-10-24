CREATE TABLE Students
(
    StudentId INT PRIMARY KEY,
    StudentName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 18),
    City VARCHAR(50) DEFAULT 'Chennai'
);
--PrimaryKey
INSERT INTO Students
VALUES (1, 'Arun', 'arun@gmail.com', 21, 'Chennai');
INSERT INTO Students
VALUES (1, 'Priya', 'priya@gmail.com', 22, 'Madurai');
--NotNull
INSERT INTO Students
VALUES (2, NULL, 'kumar@gmail.com', 23, 'Chennai');
--Unique
INSERT INTO Students
VALUES (2, 'Priya', 'arun@gmail.com', 22, 'Madurai');
--Check
INSERT INTO Students
VALUES (2, 'Priya', 'priya@gmail.com', 16, 'Madurai');
--Default
INSERT INTO Students(StudentId, StudentName, Email, Age)
VALUES(2, 'Priya', 'priya@gmail.com', 22);
