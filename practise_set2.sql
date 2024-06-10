-- C	reating the databse
create database ecommerce;

-- using the database
use ecommerce;

-- creating the table for the database....
create table payment (
customer_id int primary key , 
customer varchar(50) not null,
mode varchar(50) not null,
city varchar(25) not null
);

-- Displaying the table
show tables;

-- Inserting the data in the table
insert into payment values(101, "Olivia Barrett", "Netbanking", "Portland") ,
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seattle"),
(104, "Liam Donovan" , "Netbanking", "Denver"),
(105, "Sophia Nguyen", "Credit Card" , "New Orleans"),
(106, "Caleb Foster" , "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas Carter", "Netbanking", "Boston"),
(109, "Isabella Martinez", "Netbanking", "Nashville"),
(110, "Jackson Brooks", "Credit Card", "Boston");

-- Displaying the total table
select * from payment;

-- Now the task
select mode , count(customer) from payment group by mode;

select city, count(customer) from payment where mode = "Credit Card" group by city order by city asc;

-- To prevent the safe mode error while updating we can use the command
set sql_safe_updates = 0;

-- Update query in sql
update payment 
set mode = "NetworkBanking" 
where mode = "Netbanking";

-- Another update query to perform the delete query
update payment
set mode = "Poliester"
where customer_id = 109;

-- deleting the Poliester mode row
delete from payment where mode = "Poliester";


select * from payment;

