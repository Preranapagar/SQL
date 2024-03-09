show databases;
use mysql_demo;

-- Product Table
create table Product(
	product_id int primary key,
    product_name varchar(50)
);

insert into Product
values
	(100, 'Nokia'),
    (200, 'Apple'),
    (300, 'Samsung')
	;

select * from Product;

-- Sales Table
create table Sales(
	sale_id int,
    product_id int,
    year int,
    quantity int,
    price int,
    primary key(sale_id,year),
    foreign key(product_id) references Product(product_id)
    );
    
    insert into Sales
    values
		(1,100,2008,10,5000),
        (2,100,2009,12,5000),
        (7,200,2011,15,9000)
	;
    
    select * from Sales;

-- Write a solution to report product_name, year, and price for each sale_id in the sales table

select p.product_name, s.year, s.price
from Sales s
right join Product p
on s.product_id = p.product_id;

create table Visits(
	visit_id int primary key,
    customer_id int
);

insert into Visits values 
	(1,23),
    (2,9),
    (4,30),
    (5,54),
    (6,96),
    (7,54),
    (8,54)
;

create table Transactions(
	transaction_id int primary key,
    visit_id int,
    amount int,
    foreign key (visit_id) references Visits(visit_id)
);

insert into Transactions
values 
	(2,5,310),
    (3,5,300),
    (9,5,200),
    (12,1,910),
    (13,2,970);
    
select v.customer_id, count(v.visit_id) as visit_count
from Visits v
left join Transactions t
on v.visit_id = t.visit_id
where t.transaction_id is null
group by v.customer_id;


create table Weather(
	id int,
    recordDate date,
    temperature int
    );
    
insert into Weather
values 
	(1,'2015-01-01',10),
    (2,'2015-01-02',25),
    (3,'2015-01-03',30),
    (4,'2025-01-04',34)
;
SET SQL_SAFE_UPDATES = 0;

update Weather set temperature = 20 where id = 3 and recordDate = '2015-01-03';
select id from (select id, temperature, lag(temperature) over(order by recordDate) as prev_temp from Weather) as subquery
where temperature > prev_temp;

select w1.id
from Weather w1, weather w2
where datediff(w1.recordDate,w2.recordDate) =1 and w1.temperature > w2.temperature;

select id from(
select
	id, temperature, recordDate, 
	lag(temperature) over (order by recordDate) as prev_temp,
    lag(recordDate) over (order by recordDate) as prev_date
    from Weather
) as t
where t.temperature > t.prev_temp 
and date_sub(recordDate, interval 1 day) = t.prev_date;

select
	id, temperature, recordDate, 
	lag(temperature) over (order by recordDate) as prev_temp,
    lag(recordDate) over (order by recordDate) as prev_date
    from Weather;
    
create table Activity_Table(
machine_id int,
process_id int,
acttivity_type enum('start','end'),
time_stamp float,
primary key (machine_id, process_id)
);

insert into Activity_Table
values
	(0,0,'start',0.712),
    (0,0,'end',1.520),
    (0,1,'start',3.140),
    (0,1,'end',4.120),
	(1,0,'start',0.550),
    (1,0,'end',1.550),
	(1,1,'start',0.430),
    (1,1,'end',1.420),
	(2,0,'start',4.100),
    (2,0,'end',4.512),
	(2,1,'start',2.500),
    (2,1,'end',5.000)
;

