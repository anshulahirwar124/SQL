create database users;
use users;

create table users(
id int primary key,
username varchar(50),
city varchar(100),
age INT,
salary int
);



select*from users order by username desc;

INSERT INTO users
VALUES
(id,username,city,age,salary),
(1,'Tara','gungoan',21,40000),
(2,'anshul','jabalpur',22,50000),
(3,'vijay','banglore',23,60000);


UPDATE users
SET city = 'indore'
where id = 1;

SELECT * FROM users;


