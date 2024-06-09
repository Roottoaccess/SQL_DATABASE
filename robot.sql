create database robot;

use robot;

create table robo_parts(
	ProcesserId int primary key,
    name varchar(50),
    Engine varchar(120),
    parts_count int unsigned
);

-- show tables;

-- Insert the value to the database
insert into robo_parts values(101,"VimramLander","37244cf101", 4);
insert into robo_parts values(102,"Gaganyan","CL22fff45", 14);
insert into robo_parts values(103,"AdithoL1","ALO220144", 28);

-- Its time to display the data
select * from robo_parts;
