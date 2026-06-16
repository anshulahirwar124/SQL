-- Create Database
CREATE DATABASE OnlineBookstore;

-- Switch to the database

-- Create Tables
DROP TABLE IF EXISTS Books;
CREATE TABLE Books (
    Book_ID SERIAL PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Price NUMERIC(10, 2),
    Stock INT
);
DROP TABLE IF EXISTS customers;
CREATE TABLE Customers (
    Customer_ID SERIAL PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15),
    City VARCHAR(50),
    Country VARCHAR(150)
);
DROP TABLE IF EXISTS orders;
CREATE TABLE Orders (
    Order_ID SERIAL PRIMARY KEY,
    Customer_ID INT REFERENCES Customers(Customer_ID),
    Book_ID INT REFERENCES Books(Book_ID),
    Order_Date DATE,
    Quantity INT,
    Total_Amount NUMERIC(10, 2)
);

SELECT * FROM Books;
SELECT * FROM Customers;
SELECT * FROM Orders;




-- 1) Retrieve all books in the "Fiction" genre:
SELECT distinct Genre
From Books;

SELECT*FROM Books
where Genre = ' Fiction';

-- 2) Find books published after the year 1950:
select*from Books
where published_year>1950;

-- 3) List all customers from the Canada:
select*from Customers
where country = 'Canada';


-- 4) Show orders placed in November 2023:
select*from orders
where order_date between '2023-11-01' and '2023-11-30';


-- 5) Retrieve the total stock of books available:
select sum(stock) as total_stock
from books;


-- 6) Find the details of the most expensive book:
select*from books order by price desc limit 1;

-- 7) Show all customers who ordered more than 1 quantity of a book:
select*from orders
where quantity>1;

-- 8) Retrieve all orders where the total amount exceeds $20:
select*from orders
where total_amount>20;

-- 9) List all genres available in the Books table:
select distinct genre from books;

-- 10) Find the book with the lowest stock:
select*from books order by stock limit 1;

-- 11) Calculate the total revenue generated from all orders:
select sum(total_amount) as revenue from orders;

-- Advance Questions : 

-- 1) Retrieve the total number of books sold for each genre:
SELECT*FROM ORDERS;
SELECT b.Genre, sum(o.Quantity) as total_book_sold
from orders o
join books b on o.book_id = b.book_id
group by b.Genre;


-- 2) Find the average price of books in the "Fantasy" genre:
select avg(price) as average_price
from books
where genre = 'fantasy';


-- 3) List customers who have placed at least 2 orders:
select o.customer_id ,c.name,count(order_id) as order_count
from orders o
join customers c on o.Customer_ID = c.Customer_ID
group by o.Customer_ID,c.name
having count(Order_id) >=2;

-- 4) Find the most frequently ordered book:
select o.book_id,b.title, count(o.order_id) as order_count
from orders o
join books b on o.book_id=b.book_id
group by o.book_id,b.title
order by order_count desc limit 1;


