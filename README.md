# 📚 SQL Project: Online Book Store Analysis

## 🧠 Project Overview

This project focuses on analyzing an **Online Book Store** using **SQL** to derive meaningful insights from sales, customer behavior, and book inventory. The project utilizes a structured relational database with three core tables:

- `books` – contains details of the books available for sale.
- `customers` – holds customer information.
- `orders` – stores order transaction data.

The goal is to demonstrate SQL proficiency by applying **20 SQL commands**, categorized into:

- 🔹 11 **Basic & Intermediate** commands  
- 🔹 9 **Advanced** SQL commands  

This analysis helps in understanding customer preferences, sales trends, top-performing books, and more—critical for business decisions in e-commerce platforms.

---

## 🗃️ Dataset Description

### 1. `books` Table
| Column Name       | Description                       |
|-------------------|-----------------------------------|
| book_id           | Unique identifier for each book   |
| title             | Title of the book                 |
| author            | Author of the book                |
| genre             | Genre or category of the book     |
| price             | Price of the book                 |
| stock_quantity    | Number of copies available        |

### 2. `customers` Table
| Column Name       | Description                          |
|-------------------|--------------------------------------|
| customer_id       | Unique identifier for each customer  |
| name              | Customer's name                      |
| email             | Customer's email address             |
| city              | City where the customer resides      |
| signup_date       | Date of customer registration        |

### 3. `orders` Table
| Column Name       | Description                          |
|-------------------|--------------------------------------|
| order_id          | Unique identifier for each order     |
| customer_id       | ID of the customer placing the order |
| book_id           | ID of the purchased book             |
| order_date        | Date when the order was placed       |
| quantity          | Number of books ordered              |
| total_amount      | Total cost for the order             |

---

## 🎯 Objectives

- Practice structured query writing using real-world use cases.
- Apply both basic and advanced SQL concepts to extract insights.
- Build end-to-end analysis suitable for dashboards and business decisions.

---

## 🧠 Business Questions Solved with SQL
-- 1) Retrieve all books in the "Fiction" genre:
-- 2) Find books published after the year 1950:
-- 3) List all customers from the Canada:
-- 4) Show orders placed in November 2023:
-- 5) Retrieve the total stock of books available:
-- 6) Find the details of the most expensive book:
-- 7) Show all customers who ordered more than 1 quantity of a book:
-- 8) Retrieve all orders where the total amount exceeds $20:
-- 9) List all genres available in the Books table:
-- 10) Find the book with the lowest stock:
-- 11) Calculate the total revenue generated from all orders:
-- 12) Retrieve the total number of books sold for each genre:
-- 13) Find the average price of books in the "Fantasy" genre:
-- 14) List customers who have placed at least 2 orders:
-- 15) Find the most frequently ordered book:
-- 16) Show the top 3 most expensive books of 'Fantasy' Genre :
-- 17) Retrieve the total quantity of books sold by each author:
-- 18) List the cities where customers who spent over $30 are located:
-- 19) Find the customer who spent the most on orders:
--20) Calculate the stock remaining after fulfilling all orders:
according to it write a  Key Insights & Analysis Performed

## 🔧 SQL Concepts Used

---

## 📊 Key Insights & Analysis Performed
-- Retrieved all Fiction genre books to understand category-specific inventory.
-- Identified books published after 1950 to analyze modern vs classic trends.
-- Filtered customers based on country (e.g., Canada) for regional marketing insights.
-- Analyzed orders placed in November 2023 to identify seasonal trends.
-- Calculated total stock across all books to evaluate inventory levels.
-- Found the most expensive book to highlight premium listings.
-- Isolated customers who ordered more than one copy of a book, indicating high purchase intent.
-- Identified orders exceeding $20 to study high-value transactions.
-- Listed distinct genres to analyze category diversity.
-- Determined the book with the lowest stock to flag restocking needs.
-- Calculated total revenue from all orders for profitability analysis.
-- Measured total number of books sold by genre for category performance.
-- Computed average price of books in the Fantasy genre to assess pricing strategy.
-- Identified customers with at least two orders to highlight loyalty.
-- Discovered the most frequently ordered book to pinpoint bestsellers.
-- Ranked top 3 most expensive Fantasy books to explore high-end offerings.
-- Summed total quantity sold per author to determine author-wise sales impact.
-- Listed cities of customers who spent over $30 for targeted promotions.
-- Identified the customer with the highest total spend for premium targeting.
-- Calculated remaining stock after all orders for inventory planning.


---
## 📁 Project Structure

📦 Online-Bookstore-SQL-Analysis
├── 📄 books.csv
├── 📄 customers.csv
├── 📄 orders.csv
├── 📄 online_book_store_analysis.sql
└── 📄 README.md

## 🧩 Tools & Environment

- **RDBMS**: MySQL (or any SQL-based system)
- **IDE**: MySQL Workbench / DBeaver / VS Code with SQL extension
- **Data Source**: sample datasets (CSV)


## 💡 Future Enhancements

- Integrate with a BI tool like Power BI or Tableau for visual dashboards.
- Normalize tables further for performance optimization.
- Implement stored procedures and triggers for automation.

---

## 🙌 Acknowledgements

This project was created for educational and portfolio purposes. It demonstrates a strong grasp of SQL techniques relevant for Data Analyst and Data Engineering roles.

---

## 🧑‍💻 Author

**[Rahul Bairagi]**  
Aspiring Data Analyst | Passionate about SQL, Python, and Business Insights  

---

