CREATE DATABASE xyz;

USE xyz;

create table employee_info(
	id int unsigned primary key,
	name varchar (50),
	salary int unsigned not null
);

/* inserting the data in the table of the created database */
insert into employee_info values(1 , "adam", 25000);
insert into employee_info values(2 , "bob", 30000);
insert into employee_info values(3 , "casey", 40000);

select * from employee_info;
