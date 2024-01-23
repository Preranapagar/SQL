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

create table student (
	id int primary key,
    name varchar(50),
    course varchar(50),
    year int not null,
    marks float default 00
    );
    
insert into student
values
	(1,'Priyam','Mech',4,56),
    (2,'Ramesh','Comp',3,67),
    (3,'Keshav','Civil',1);
    
select * from student;