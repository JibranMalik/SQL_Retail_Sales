
# 🛒 Retail Sales Analysis

**SQL Portfolio Project | Data Cleaning, EDA & Business Analysis**

---

## 📌 Project Overview

The **Retail Sales Analysis** project demonstrates practical SQL skills commonly used by **junior data analysts** to explore, clean, and analyze transactional retail data.

The project involves setting up a retail sales database, performing **data cleaning and exploratory data analysis (EDA)**, and answering real-world **business questions** using SQL. The goal is to extract meaningful insights related to **sales performance, customer behavior, and product categories**.

---

## 🎯 Project Objectives

* Set up and manage a retail sales database
* Perform data cleaning to ensure data quality
* Conduct exploratory data analysis (EDA)
* Answer business-driven questions using SQL queries
* Generate insights that support decision-making

---

## 🧰 Tools & Technologies

* **SQL**
* **Relational Database Management System** (PostgreSQL / MySQL / SQL Server)
* **Git & GitHub** for version control and documentation

---

## 🗂 Database Structure

### Database Name

* `p1_retail_db`

### Table: `retail_sales`

The table stores transaction-level retail data with the following columns:

* `transaction_id`
* `sale_date`
* `sale_time`
* `customer_id`
* `gender`
* `age`
* `category`
* `quantity`
* `price_per_unit`
* `cogs`
* `total_sale`

This structure supports both **operational reporting** and **analytical queries**.

---

## 🔍 Data Exploration & Cleaning

The following data quality and exploration steps were performed:

* **Record Count:** Identified the total number of transactions
* **Customer Count:** Calculated the number of unique customers
* **Category Count:** Identified all unique product categories
* **Null Value Check:**

  * Checked for missing or null values
  * Removed records with incomplete data to maintain accuracy

These steps ensured the dataset was clean and ready for analysis.

---

## 📊 Data Analysis & Key SQL Queries

The following SQL queries were written to answer common retail business questions:

* Retrieve all sales made on **`2022-11-05`**
* Retrieve all **Clothing** transactions where quantity sold was greater than 4 during **November 2022**
* Calculate **total sales by product category**
* Find the **average age** of customers who purchased from the **Beauty** category
* Identify transactions where **total sales exceeded 1000**
* Calculate the **number of transactions by gender and category**
* Calculate **average monthly sales**
* Identify the **best-selling month for each year**
* Find the **top 5 customers** based on total sales
* Count **unique customers per product category**
* Analyze order volume by **time-based shifts**:

  * Morning (< 12)
  * Afternoon (12–17)
  * Evening (> 17)

These queries demonstrate the use of:

* `GROUP BY`
* `HAVING`
* Aggregate functions (`SUM`, `AVG`, `COUNT`)
* Date and time filtering
* Conditional logic (`CASE WHEN`)

---

## 📈 Key Findings

### 🔹 Customer Demographics

* Customers span multiple age groups
* Sales are distributed across categories such as **Clothing** and **Beauty**

### 🔹 High-Value Transactions

* Multiple transactions exceeded a total sale value of **1000**
* Indicates the presence of premium purchases

### 🔹 Sales Trends

* Monthly analysis reveals fluctuations in sales
* Helps identify **peak sales periods** and seasonal trends

### 🔹 Customer Insights

* Identified **top-spending customers**
* Highlighted the most popular product categories
* Measured customer engagement across different shopping times

---

## 📑 Reports Generated

* **Sales Summary Report**

  * Total sales by category
  * Customer demographics
  * Category performance

* **Trend Analysis Report**

  * Monthly sales trends
  * Order distribution by shifts

* **Customer Insights Report**

  * Top customers
  * Unique customer counts per category

---

## 🎓 Learning Outcomes

Through this project, I strengthened my ability to:

* Design and query relational databases
* Clean and validate real-world transactional data
* Perform exploratory data analysis using SQL
* Translate business questions into SQL queries
* Communicate insights clearly using structured analysis

---

## 🚀 Future Enhancements

* Connect the database to Power BI or Tableau
* Add advanced SQL features (CTEs, window functions)
* Create stored procedures and views
* Automate reporting for ongoing analysis

---

## 👤 Author

**[Your Name]**
Aspiring Data Analyst
📧 Email: jibranmalik126@gmail.com
🔗 LinkedIn: https://www.linkedin.com/in/jibran-malik-99a90b176/
