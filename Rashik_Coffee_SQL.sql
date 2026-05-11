create database coffee_shop_sales_db;
select * from coffee_shop_sales;

update coffee_shop_sales
set transaction_date= str_to_date(transaction_date, '%d-%m-%Y');

Alter table coffee_shop_sales
modify column transaction_date date;

update coffee_shop_sales
set transaction_time= str_to_date(transaction_time, '%H:%i:%s')

Alter table coffee_shop_sales
modify column transaction_time Time

Alter table coffee_shop_sales
change column ï»¿transaction_id transaction_id int;

Describe coffee_shop_sales

SET SQL_SAFE_UPDATES = 0

--Q1.--
select concat((Round(sum(unit_price * transaction_qty)))/1000, "K") as Total_sales
from coffee_shop_sales
where month(transaction_date)=5  --May Month--

select 
month(transaction_date) as Month,
round(sum(unit_price * transaction_qty)) as Total_sales,
(sum(unit_price * transaction_qty)-Lag(sum(unit_price * transaction_qty),1) -- Month sales difference
over(order by Month(transaction_date)))/Lag(sum(unit_price * transaction_qty),1) -- Divided by PM sales
over(order by Month(transaction_date))*100 as MOM_Increase_Percentage-- Percentage
from coffee_shop_sales
where Month(transaction_date) in(4,5) -- for Months of April(PM) and May(CM)
group by Month(transaction_date)
order by Month(transaction_date)

--Q2.--
select count(transaction_id) as Total_Orders
from coffee_shop_sales
where month(transaction_date)=5 -- May Month

select
month(transaction_date) as Month,
round(count(transaction_id)) as Total_orders,
(count(transaction_id)-LAG(count(transaction_id),1) -- Month order Difference
over(order by Month(transaction_date)))/LAG(count(transaction_id),1) -- Divided by PM orders
over(order by Month(transaction_date))*100 as mom_increase_percentage -- Percentage
from coffee_shop_sales
where Month(transaction_date) in(4,5) -- for Months of April(PM) and May(CM)
group by Month(transaction_date)
order by Month(transaction_date)

--Q3.--
select sum(transaction_qty) as Total_Quantity_sold
from coffee_shop_sales
where month(transaction_date)=5 -- May Month

select
month(transaction_date) as Month,
round(sum(transaction_qty)) as Total_Quantity_sold,
(sum(transaction_qty)-LAG(sum(transaction_qty),1) -- Month order Difference
over(order by Month(transaction_date)))/LAG(sum(transaction_qty),1) -- Divided by PM orders
over(order by Month(transaction_date))*100 as mom_increase_percentage -- Percentage
from coffee_shop_sales
where Month(transaction_date) in(4,5) -- for Months of April(PM) and May(CM)
group by Month(transaction_date)
order by Month(transaction_date)

--Q4.Heat_Map--
select 
concat(round(sum(unit_price*transaction_qty)/1000,1),'K') as Total_sales,
concat(round(sum(transaction_qty)/1000,1),'K') as Total_quantity_sold,
concat(round(count(transaction_id)/1000,1),'K') as Total_orders
from coffee_shop_sales
where Transaction_date= '2023-05-18'

--Q5.Weekday,Weekend_sales--
select
case when dayofweek(transaction_date) in (1,7) then 'Weekends'
else 'Weekdays'
end as date_type,
sum(unit_price*transaction_qty) as Total_sales
from coffee_shop_sales
where month(transaction_date)=3
group by 
	case when dayofweek(transaction_date) in (1,7) then 'Weekends'
	else 'Weekdays'
	end
	
    --Q6.Store_location--
    select store_location,
    concat(round(sum(unit_price*transaction_qty)/1000,2),'K') as Total_sales
    from coffee_shop_sales
    where month(transaction_date)=3
	group by store_location
    order by  sum(unit_price*transaction_qty) desc
    
    --Q7.Avg_Sales--
    select avg(Total_sales) as Avg_sales
    from
    (select sum(unit_price*transaction_qty) as total_sales
	 from coffee_shop_sales
	 where month(transaction_date)=5
	 group by transaction_date) as Internal_Query
     
     select
     Day(transaction_date) as day_of_month,
     sum(unit_price*transaction_qty) as total_sales
     from coffee_shop_sales
     where month(transaction_date)=5
     group by Day(transaction_date)
     order by Day(transaction_date)
     
     --daily_sales vs Avg_sales--
     
    select day_of_month,
    case
    when total_sales>avg_sales then 'above_avg'
    when total_sales<avg_sales then 'below_avg'
    else 'Avg'
    end as sales_status,
    total_sales
    from
    (select day(transaction_date) as day_of_month,
    sum(unit_price*transaction_qty) as total_sales,
    avg(sum(unit_price*transaction_qty)) over() as avg_sales
    from coffee_shop_sales
    where month(transaction_date)=5
    group by day(transaction_date)) as sales_data
    order by day_of_month
    
    --Q8.Sales_by_Produc_category on basis of Top 10--
    select product_category,
    sum(unit_price*transaction_qty) as total_sales
    from coffee_shop_sales
    where month(transaction_date)=5 and product_category='coffee'
    group by product_category
    order by  sum(unit_price*transaction_qty) desc
    limit 10
    
    --Q9.sales analysis on basis of hours and days--
    select
    concat(round(sum(transaction_qty*unit_price)/1000,2),'K') as total_sales,
    sum(transaction_qty) as total_qty_sold,
    count(*) as total_orders
    from coffee_shop_sales
    where month(transaction_date)=5
    
    --Hour based sales--
    select
    hour(transaction_time) as Hours,
    Sum(transaction_qty*unit_price) as total_sales
    from coffee_shop_sales
    where month(transaction_date)=5
    group by hour(transaction_time)
    order by hour(transaction_time)
    
    --Day based sales--
select
    case
    when dayofweek(transaction_date)=2 then 'Monday'
	when dayofweek(transaction_date)=3 then 'Tuesday'
    when dayofweek(transaction_date)=4 then 'Wednesday'
    when dayofweek(transaction_date)=5 then 'Thursday'
    when dayofweek(transaction_date)=6 then 'Friday'
    when dayofweek(transaction_date)=7 then 'Saturday'
    Else 'Sunday'
End as Day_of_week,
round(sum(transaction_qty*unit_price)) as total_sales
from coffee_shop_sales
where month(transaction_date)=5
group by
case
    when dayofweek(transaction_date)=2 then 'Monday'
	when dayofweek(transaction_date)=3 then 'Tuesday'
    when dayofweek(transaction_date)=4 then 'Wednesday'
    when dayofweek(transaction_date)=5 then 'Thursday'
    when dayofweek(transaction_date)=6 then 'Friday'
    when dayofweek(transaction_date)=7 then 'Saturday'
    Else 'Sunday'
End


    

