-- Create Database
CREATE DATABASE onlinebookstore ;

-- Switch to Database
USE onlinebookstore ;

-- Create table Books
DROP TABLE IF EXISTS books ;
CREATE TABLE books (
book_id int PRIMARY KEY,
title varchar(100),
author varchar(100),
genre varchar(50),
published_year int,
price numeric(10, 2),
stock int ) ;

-- Create table Customers
DROP TABLE IF EXISTS customers ;
CREATE TABLE customers (
customer_id int PRIMARY KEY,
name varchar(100),
email varchar(100),
phone varchar(15),
city varchar(50),
country varchar(150) );

-- Create table Orders
DROP TABLE IF EXISTS orders ;
CREATE TABLE orders (
order_id int PRIMARY KEY,
customer_id int REFERENCES customers(customer_id),
book_id int REFERENCES book(book_id),
order_date DATE,
quantity int,
total_amount numeric(10, 2) ) ;

SELECT * 
FROM books ;

SELECT * 
FROM customers ;

SELECT *
FROM orders ;

-- 1) Retrieve all books in the "Fiction" genre:
SELECT 
	*
FROM 
	books
WHERE 
	genre = "Fiction" ;

-- 2) Find books published after the year 1950:
SELECT
	title
FROM
	books
WHERE
	published_year > 1950 ;

-- 3) List all customers from the Canada:
SELECT
	*
FROM
	customers
WHERE
	country = "Canada" ;

-- 4) Show orders placed in November 2023:
SELECT
	*
FROM
	orders
WHERE
	order_date BETWEEN "2023-11-01" AND "2023-11-30" ;

-- 5) Retrieve the total stock of books available:
SELECT
	SUM(stock) AS total_stock
FROM
	books ;

-- 6) Find the details of the most expensive book:
SELECT
	*
FROM
	books
ORDER BY
	price DESC
LIMIT 1 ;

-- 7) Show all customers who ordered more than 1 quantity of a book:
SELECT
	*
FROM
	orders
WHERE
	quantity > 1 ;

-- 8) Retrieve all orders where the total amount exceeds $20:
SELECT
	*
FROM
	orders
WHERE
	total_amount > 20 ;

-- 9) List all genres available in the Books table:
SELECT 
	DISTINCT genre
FROM
	books ;

-- 10) Find the book with the lowest stock:
SELECT
	*
FROM
	books
ORDER BY
	stock
LIMIT 1 ;

-- 11) Calculate the total revenue generated from all orders:
SELECT
	SUM(total_amount) AS Revenue
FROM
	orders ;

-- Advance Questions : 

-- 1) Retrieve the total number of books sold for each genre:
SELECT 
	b.genre, SUM(o.quantity) AS total_book_sold
FROM 
	orders o
INNER JOIN 
	books b ON o.book_id = b.book_id 
GROUP BY 
	b.genre ;

-- 2) Find the average price of books in the "Fantasy" genre:
SELECT  
	AVG(price) AS Average_Price
FROM 
	books
WHERE 
	genre = "Fantasy" ;

-- 3) List customers who have placed at least 2 orders:
SELECT 
	c.name, COUNT(o.order_id) AS total_Orders
FROM
	customers c
INNER JOIN
	orders o ON c.customer_id = o.customer_id
GROUP BY 
	c.customer_id, c.name
HAVING
	COUNT(o.order_id) >= 2 ;

-- 4) Find the most frequently ordered book:
SELECT 
	b.title, SUM(o.quantity) AS total_quantity
FROM 
	books b
INNER JOIN 
	orders o ON b.book_id = o.book_id
GROUP BY 
	o.book_id, b.title
ORDER BY 
	total_quantity DESC
LIMIT 1 ;

-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :
SELECT 
	title, price
FROM 
	books
WHERE 
	genre = "Fantasy"
ORDER BY 
	price DESC, title ASC
LIMIT 3;

-- 6) Retrieve the total quantity of books sold by each author:
SELECT 
	SUM(o.quantity) AS total_book_sold, b.author
FROM 
	books b
INNER JOIN
	orders o ON b.book_id = o.book_id
GROUP BY 
	b.author ;
    
-- 7) List the cities where customers who spent over $30 are located:
SELECT 
	DISTINCT c.city
FROM 
	customers c
INNER JOIN 
	orders o ON c.customer_id = o.customer_id
GROUP BY 
	c.customer_id, c.city
HAVING 
	SUM(o.total_amount) > 30 ;

-- 8) Find the customer who spent the most on orders:
SELECT 
	c.name, c.customer_id, SUM(o.total_amount) AS total_spent
FROM 
	customers c
INNER JOIN 
	orders o ON c.customer_id = o.customer_id
GROUP BY 
	c.customer_id, c.name
ORDER BY 
	total_spent DESC
LIMIT 1 ;

-- 9) Calculate the stock remaining after fulfilling all orders:
SELECT 
    b.book_id,
    b.title,
    b.stock AS initial_stock,
    IFNULL(SUM(o.quantity), 0) AS total_ordered,
    b.stock - IFNULL(SUM(o.quantity), 0) AS remaining_stock
FROM 
    books b
LEFT JOIN 
    orders o ON b.book_id = o.book_id
GROUP BY 
    b.book_id, b.title, b.stock
ORDER BY 
    remaining_stock ASC;





