DROP TABLE IF EXISTS employee2;

create database anshu;

CREATE TABLE employee2(
	employee_id	INT	PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50),	
	department VARCHAR(20),	
	salary NUMERIC(10,2),	
	joining_date DATE,	
	age INT	
);

INSERT INTO employee2(employee_id,first_name,last_name,email,department,salary,joining_date,age)
values
(1,'anshul','ahirwar','anshu134@gmail.com','HR',50000,'2009-05-01',24);

SELECT * FROM employee2;

SELECT first_name,salary,
       (salary*0.10) AS BONUS
 FROM employee2; 
 
-- calculate new salary  
      
SELECT first_name, last_name, salary,
(salary*12) AS annual_salary,
(salary*0.05) AS increament_salary,
(salary + salary*0.05)
FROM employee2;

-- Type of oprators in sql
-- 1. Arthematic Operator
-- 2. Comparison Operator
-- 3. Logical Operator
-- 4. Between Operator
-- 4. Like Operator
-- 5. In Operator

SELECT first_name,age FROM employee2
where age!=24;
 SELECT first_name, age FROM employee2
where salary >= 50000;

-- using AND operator
SELECT * FROM employee2
where age>30 AND salary > 50000;

-- using OR operator
SELECT * FROM employee2
where age>24 OR salary > 50000;

-- using NOT operator
SELECT * FROM employee2
Where NOT (department='IT');

SELECT first_name, last_name , salary 
FROM employee2 
Where salary BETWEEN 50000 AND 90000;

SELECT first_name FROM employee2
WHERE first_name LIKE 'a%';

SELECT first_name , last_name, department FROM employee2
where department IN ('HR','IT');

SELECT first_name, last_name, email
FROM employee2
WHERE email IS NULL;

SELECT first_name, last_name, salary 
FROM employee2
ORDER BY salary DESC;

