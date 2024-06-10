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

