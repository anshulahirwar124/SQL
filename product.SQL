-- DROP TABLE IF EXISTS product;
CREATE DATABASE product;
use product;

CREATE TABLE product(
product_id serial primary key,
product_name varchar(100),
category varchar(50),
price numeric (10,2),
quantity int,
added_date date,
discount_rate numeric(5,2)
);

INSERT INTO product(product_id,product_name,category,price,quantity,added_date,discount_rate)
values
(1,'laotop','Electronics',75000.50,10,'2001-08-02',10.00),
(2,'Smartphone','Electronics',45000.99,25,'2023-02-15',5.00),
(3,'Headphone','Accessories',1500.75,50,'2020-09-01',15.00),
(4,'Desk','Furniture',7000.00,20,'2022-07-18',12.00),
(5,'Monitor','Electronics',12000.00,8,'2019-07-15',7.50);

SELECT * FROM product;

-- total quantity of product
SELECT sum(quantity) as total_quantity
from product; 
 
SELECT sum(quantity) as quantity_of_ele
from product 
WHERE category = 'Electronics' and price > 20000;

SELECT count(*) AS total_product
from product;

select avg(price) as average_price
from product;

select avg(price) as average_price
from product
where category = 'Accessories';