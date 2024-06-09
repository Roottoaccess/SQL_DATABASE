CREATE DATABASE pes;
USE pes;

create table student (
	id int primary key,
    name varchar(50),
    age int not null
);

insert into student values(1 , "Biswarup Dutta", 23);
insert into student values(2 , "Shradha Kapra", 24);
insert into student values(3 , "Jeet", 22);
insert into student values(4 , "Didi", 20);

select * from student;
