-- create Employee3 table
CREATE DATABASE employee3;

create table Employee3(
employee_id serial primary key,
first_name varchar(50),
last_name varchar(50),
department_id int
);

INSERT INTO employee3(employee_id,first_name, last_name, department_id)
values
(1,'raghav','sharma',101),
(2,'priya','mehta',102),
(3,'ankit','asati',103),
(4,'karun','rajak',null),
(5,'Neha','Tiwari',101);

select*from employee3;

create table departments (
department_id int primary key,
department_name varchar(50)
);

-- insert into department

INSERT INTO departments(department_id,department_name)
values
(101,'Sales'),
(102,'Marketing'),
(103,'HR'),
(104,'IT');

SELECT*FROM departments;

-- SELECT e.employee_id,
    -- e.first_name,
      -- e.last_name,
      -- d.department_id,
      -- d.department_name
 -- FROM employee3 e
 -- INNER JOIN departments d
 -- left join departments d
  -- right join departments d
  -- ON e.department_id = d.department_id;
  
  -- cross join
  SELECT e.employee_id,
     e.first_name,
       e.last_name,
       d.department_name
 from employee3 e  
 cross join
 departments d;
 
 

 
 