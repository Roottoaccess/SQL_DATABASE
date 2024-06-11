create database joining;

use joining;

create table student(
	student_id int primary key,
    name varchar(50)
);

create table course(
	student_id int primary key,
    course varchar(50)
);

-- Inserting the values
insert into student values
(101 , "adam"),
(102 , "bob"),
(103, "casey");

insert into course values
(102, "english"),
(105, "maths"),
(103, "science"),
(107, "computer science");
-- This is the inner join operation
select * from student
inner join course
on student.student_id = course.student_id;

-- Left join operation
select * from student
left join course
on student.student_id = course.student_id;

-- right join operation
select * from student
right join course
on student.student_id = course.student_id;

-- Performing the full join
select * from student as s
left join course as c
on s.student_id = c.student_id

union

select * from student as s
right join course as c
on s.student_id = c.student_id;

-- Left joint Exclusive
select * from student as s
left join course as c
on s.student_id = c.student_id
where c.student_id is null;

-- Right Join Exclusive
select * from student as s
right join course as c
on s.student_id = c.student_id
where s.student_id is null;

-- Union (gives unique values)
select name from student
union
select name from student