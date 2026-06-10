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

       
       





