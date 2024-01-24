-- Working with Database

-- check available databases
show databases;

-- To use database
use collage;

-- check which database you are in
select database();

-- create new database
create database company;

-- drop database
drop database company;

-- working with tables

-- views tables in database
show tables;

-- create table
create table house_expenses(
	sr_no int primary key,
    expense_name varchar(50),
    expense_type varchar(50),
    amount int
);

-- see table structure
describe house_expenses;
desc house_expenses;

-- insert data to table
insert into house_expenses
values
	(1,'Milk','Grocery',28),
    (2,'Soap','Toiletry',45),
    (3,'Water Bottle','Kitchenware',200),
    (4,'Cup','Kitchenware',150),
    (5,'Handwash','Toiletry',70),
    (6,'Electricity bill','Utility',1200);
    
-- add column to table
alter table house_expenses add budget int;

-- rename column name
alter table house_expenses
change expense_name Name varchar(50),
change expense_type Type varchar(50);

alter table house_expenses
change amount Amount int,
change budget Budget int default 0;

-- change datatype of column
alter table house_expenses add age float;
alter table house_expenses modify age int;

-- rearranging columns
alter table house_expenses 
modify column Budget int after Type;

alter table house_expenses
change age Date datetime,
change sr_no Sr int;

alter table house_expenses
modify Date Datetime after Sr;

-- To drop column
alter table house_expenses
add xyz int;

alter table house_expenses
drop xyz;

select * from house_expenses;

