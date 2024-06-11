create database sub;

use sub;

create table student(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    city varchar(25) not null
);

insert into student values
(101, "anil", 78,"Pune"),
(102, "bhumika", 93, "Mumbai"),
(103, "chetan" , 85, "Mumbai"),
(104, "dhruv", 96, "Delhi"),
(105, "emanuel", 92, "Delhi"),
(106, "farah", 82, "Delhi");

select * from student;

select avg(marks) from student;

select name , avg(marks) from student group by name;

select name,marks from student where marks > 87.6667;

-- Applying the sub query --
-- Dynamic sql query --
select name , marks
from student 
where marks > (select avg(marks) from student); -- This is the application of sub query --

-- Finding all the even roll numbers
select rollno from student where rollno % 2 = 0;
-- Find the names of students where even roll no
select name , rollno
from student 
where rollno in (select rollno from student where rollno % 2 = 0);

-- (From Subquery) and solving another problem
-- Finding the student of delhi
select max(marks) from (select * from student where city = "Delhi")as temp;


-- Creating the view of the table
-- Creating a vertual table
create view view1 as
select rollno, name, marks from student;

select * from view1;

select name, marks from view1 where marks > 90;

-- To drop a view
-- drop view view1;


