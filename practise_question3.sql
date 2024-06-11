create database p3;
use p3;

create table student(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar (10),
    city varchar (25)
);

insert into student values
(101, "anil", 78, "C" , "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

-- changing the name of column "name" to "full_name" --
alter table student
change name full_name varchar(50);

set sql_safe_updates = 0;

-- Deleting all the students who scroed marks less than 80 --
delete from student where marks < 80;

-- Deleting the column for grade --
alter table student
drop column grade;

select * from student;