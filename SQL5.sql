CREATE DATABASE student;
USE student;

create table student(
id INT PRIMARY KEY,
NAME VARCHAR(50),
city VARCHAR(50),
department VARCHAR(50),
salary INT
);


SELECT*FROM student;

insert into student
values
(id,"name","city","depatment",salary),
(1,"abd","bhopal","HR",40000),
(2,"TARA","INDORE","DOCTER",60000);

DELETE FROM student 
WHERE id=2;

ALTER table student
DROP column department;

