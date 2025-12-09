---SQL retail sales analysis
--create table
create table retail_sales (
	transactions_id	int primary key,
	sale_date date,
	sale_time time,
	customer_id	int,
	gender	varchar(255),
	age	int,
	category varchar(255),	
	quantiy	float ,
	price_per_unit	float,
	cogs float,
	total_sale float

)

select *
from retail_sales;


select count(*)
from retail_sales;

select *
from retail_sales
where transactions_id is null

select *
from retail_sales
where 
	sale_date is null
or
sale_date is null
	or
gender is null
	or
category is null
	or
cogs is null

---
delete from retail_sales
where 
	transactions_id is null
or
sale_date is null
	or
	sale_time is null
	or
gender is null
	or
category is null
	or
cogs is null

--Data Exploraion
--How many sales we have
select count(*) as tota_sales
from retail_sales

--Unique customer
select count(distinct customer_id) as total_sale from retail_sales

--unique category
select distinct category as total_sale from retail_sales

--Data Analysis key problems

--retrieve all columns on specific date
select *
from retail_sales
where sale_date = '2022-11-05'

--all transactions in clothing
select *
from retail_sales
where category = 'Clothing'
	and 
	to_char(sale_date, 'YYYY-MM') = '2022-11'
 and quantiy >= 4

---calculate the total sales for each category

select category, sum(total_sale) as net_sales,
	count(*) as total_orders
from retail_sales
group by 1

--avg age of customers who purchased from beauty category

Select 
	round(avg(age),2) as avg_age
from retail_sales
where category = 'Beauty'

---all transactions wher total sale > 1000
 select *
from retail_sales
where total_sale > 1000

---total number of transaction made by each gender
select category, gender, count(*) as total_trans
from retail_sales
group by category,gender
order by 1

--avg sale of each month. best selling month-

select year, month, avg_sale
	from
(
select 
	extract(year from sale_date) as year,
	extract(month from sale_date) as month,
	avg(total_sale) as avg_sale,
	rank() over(partition by extract(year from sale_date) order by avg(total_sale) desc) as rank
	from retail_sales
 group by 1, 2
--order by 1, 3 desc
) as t1
where rank = 1

--top 5 customers basted of total sale

select customer_id,
	sum(total_sale) as total_sales
from retail_sales
group by 1
order by 2 desc
limit 5


---unique customers who purchased from each category

select category, 
	count(distinct customer_id) as distinct_cust
	
from retail_sales
group by category

---each shift and number of orders
with hourly_sales 
	as
(
select *,
	case
	when extract(hour from sale_time)< 12 then 'Morning'
	when extract(hour from sale_time)between 12 and 17 then 'Afternoon'
	else 'Evening'
 end as shift
from retail_sales
)
select 
	shift,
	count(*) as total_orders
	from hourly_sales
group by shift

---END











