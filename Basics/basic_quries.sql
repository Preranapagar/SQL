-- SQL is not case sensitive so we can use upper as well as lower case to write queries

-- to create a database

create database temp;
create database collage;
create database if not exists collage;
-- to drop database

drop database medline;
drop database db_jan;
drop database temp;
drop database if exists temp2;

-- to check databases in server

show databases;

-- to use database

use collage;

-- to create table

create table student(
	ID int primary key,
    name varchar(50),
    Age int not null
);

-- to insert data into table
insert into student values (1,'Aman',25);
insert into student values (2,'Ram',45);

-- to check the tables

show tables;

-- to select and view all columns and rows

select * from student;

-- to drop table

drop table student;

-- creating new table

create table students(
Rollno int primary key,
Name varchar(50)
);

select * from students;

insert into students (Rollno, Name)
values
(101,'Karan'),
(102,'Arjun');

insert into students
values 
(103,'Rita'),
(104,'Geeta');

-- creating new table

show tables;

create table emp_df(
	empid int primary key,
    fname varchar(50),
    lname varchar(50),
    dept varchar(10) default 'bench'
);

insert into emp_df values(101,'Mahesh','Pagar','IT');
insert into emp_df (empid,fname,lname) values(102,'Nana','Dev');

select * from emp_df;

select fname from emp_df;

-- create new table and perform aggregrate functions on columns

create table car_data (
	no int primary key,
    name varchar(50),
    type varchar(50),
    price int
);

insert into car_data
values
	(1,'alto','hatchback',400000),
    (2,'Scorpio','SUV',2100000),
    (3,'Nexon','SUV',1500000),
    (4,'City','sedan',1200000);
    
select max(price)from car_data;

