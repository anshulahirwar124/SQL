create database user_submissions;
use user_submissions;

create table user_submissions(
id int primary key,
question_id int,
points int,
username varchar(50)
);

insert into user_submissions
(id,question_id,points,username)
values
(1,12,5,'anshul'),
(2,45,67,'jaish');

select*from user_submissions;

select
     username,
     count(id) as total_submissions,
     sum(points) as points_earned
from user_submissions
group by username  
ORDER by username, total_submissions asc