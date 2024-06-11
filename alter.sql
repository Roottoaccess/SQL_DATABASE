-- Creating the database
create database newData;
-- Selecting the database
use newData;
-- Creating the table
create table student(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar (10),
    city varchar (25)
);

-- Inserting the values in the table
insert into student values
(101, "anil", 78, "C" , "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");


-- Displaying the data from the table
select * from student;

-- Suppose we want to add a new column in the table student so then we will use the concept of Alter
alter table student
add column age int;

-- Delete a single column we need to use alter drop
alter table student
drop column age;

-- Operation and running all the queries
alter table student
add column age int not null default 18;

alter table student
modify column age varchar(2);

-- change the column to the table
alter table student
change age stud_age int;

insert into student
(rollno, name, marks, stud_age) 
values (107, "gargi", 68, 100);

-- Changing the table name
alter table student
rename to stu;

select * from stu;


