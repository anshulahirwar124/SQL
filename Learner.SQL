DROP TABLE IF exists learner_2024;
CREATE DATABASE learner_2024;

create table learner_2024(
learner_id int primary key,
learner_name varchar(50),
course varchar(50)
);

INSERT INTO learner_2024(learner_id,learner_name,course) values
(1,'Abhinay','Computer science engineering'),
(2,'Abhilash','Mechanical Engineering'),
(3,'Abhay', 'Civil Engineering'),
(4,'Jatin','Electrical Engineering'),
(5,'Naina','Computer Science Engineering');

SELECT * FROM learner_2024;

DROP TABLE IF exists learner_2024;
create table learner_2025(
learner_id int primary key,
learner_name varchar(50),
course varchar(50)
);

INSERT INTO learner_2025(learner_id,learner_name,course) values
(1,'vaishali','Civil Engineering'),
(2,'Abhilash','Mechanical Engineering'),
(3,'Abhay', 'Civil Engineering'), 
(4,'nilesh','mathematics'),
(5,'Akshay','Mechanical Engineering');

SELECT * FROM learner_2025;

SELECT learner_name,course
FROM learner_2024
UNION
SELECT learner_name,course
FROM learner_2025; 