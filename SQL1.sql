CREATE DATABASE teacher;
use teacher;

create table teacher(
id INT PRIMARY KEY,
NAME VARCHAR(50),
city VARCHAR(50),
subject VARCHAR(50),
salary INT
);

SELECT*FROM teacher;

insert INTO teacher
values
(id,"name","city","subject",salary),
(1,"anshul","jabalpur","math",50000),
(2,"jaish","sagar","science",40000),
(3,"john","banglore","computer",60000);

update teacher
set city = 'indore'
where id = 1