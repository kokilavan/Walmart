create database Walmart

use walmart

select * from walmart

-- walmart KPIs
select sum(sales) as total_sales, sum(profit) as total_profit, sum(quantity) as total_quantity,
(sum(profit) / nullif(sum(sales), 0)) * 100 as profit_margin from walmart;

-- category
select category,sum(sales) as total_sales,sum(profit) as total_profit from walmart
group by category order by total_sales desc;

-- monthly sales
select year(order_date) as year,month(order_date) as month,sum(sales) as monthly_sales from walmart
group by year(order_date), month(order_date) order by year, month;

-- drill through orders
select order_id,order_date,state,category,sub_category,sales,profit,quantity
from walmart where category = 'Technology';



