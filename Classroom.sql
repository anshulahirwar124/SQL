CREATE DATABASE COLLEGE;
USE college;
CREATE TABLE student(
rollNo INT PRIMARY KEY,
NAME varchar(50)
);

SELECT*FROM student;
 
INSERT INTO student
(rollno, name)
values
(100, "rahul"),
(245,"anshul"),
(686, "sapna");
