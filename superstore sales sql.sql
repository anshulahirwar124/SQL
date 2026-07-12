use anshu;
select * from `superstore sales dataset`;

create table sales (
order_id varchar(50),
order_date DATE,
customer_name varchar(50),
region varchar(50),
category varchar(50),
sales DECIMAL(10,2),
quantity INT,
profit DECIMAL(10,2),
discount decimal(5,2)
);

-- Total sales by region
select region, sum(sales) as total_sales
from `superstore sales dataset`
group by region;

SELECT `Category`, SUM(Profit) AS total_profit
FROM `superstore sales dataset`
GROUP BY `Category`
ORDER BY total_profit DESC
LIMIT 5;

-- monthly sales trend
SELECT
DATE_FORMAT(STR_TO_DATE(`Order Date`, '%d/%m/%Y'), '%Y-%m') AS Month,
SUM(Sales) AS Total_Sales
FROM `superstore sales dataset`
GROUP BY Month
ORDER BY Month;

-- highest discount impact
select discount, avg(profit)
from `superstore sales dataset`
group by Discount;

