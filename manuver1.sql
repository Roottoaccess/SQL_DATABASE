CREATE DATABASE clg;

USE clg;

create table child(
	roll_no int primary key,
    name varchar(50)
);

insert into child values(1, "Biswarup");
insert into child values(2, "Jeet");

select * from child;

