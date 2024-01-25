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

-- to rename table name
rename table house_expenses to house_exp;

-- to drop primary key
alter table house_exp drop primary key;

-- to add primary key
alter table house_exp add primary key (Sr,Name);

select * from house_exp;

-- to add foreign key

create table price_menu(Item varchar(50) primary key, Value int default 0);
insert into price_menu values
	('Milk',28),
    ('Cup', 150),
    ('Electricity bill',1200);
    
insert into price_menu values
	('Water Bottle',200),
    ('Cup', 150),
    ('Electricity bill',1200);
    
select * from price_menu;
    
alter table house_exp add constraint item_key foreign key(Name) references price_menu(Item);
desc house_exp;
desc price_menu;

-- To check which column has a foreign key when you dont know the refrence table name
SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE REFERENCED_TABLE_NAME IS NOT NULL;

-- 
