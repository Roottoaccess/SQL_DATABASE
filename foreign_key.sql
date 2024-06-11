-- creating the database
create database school;
-- using the school database
use school;
-- creating a course table
create table course(
	id int primary key,
    name varchar(25)
);

-- creating another table teacher
create table teacher(
	id int primary key,
    name varchar(25),
    dept_id int,
    foreign key(dept_id) references course(id)
    on update cascade
    on delete cascade
);

show tables;

-- Inserting the data in the two tables
insert into course values
(101 , "Science"),
(102 , "English"),
(103 , "Hindi");


insert into teacher values
(101, "Adam" , 101),
(102, "Bob", 103),
(103, "Casey", 102),
(104, "Donald", 102);

-- updating the Id from course table
update course
set id = 105
where id = 103;

select * from teacher;