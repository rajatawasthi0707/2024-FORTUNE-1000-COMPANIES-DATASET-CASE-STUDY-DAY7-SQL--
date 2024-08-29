# 2024-FORTUNE-1000-COMPANIES-DATASET-CASE-STUDY-DAY7-SQL--
2024-FORTUNE-1000-COMPANIES-DATASET-CASE-STUDY-DAY7-SQL- 
# 2024 Fortune 1000 Companies SQL Case Study

## Project Overview
This project focuses on analyzing the 2024 Fortune 1000 Companies dataset using SQL. The dataset provides details about the top 1,000 U.S. companies by revenue, including information on their revenue, profit, number of employees, and industry classification. The goal of this analysis is to derive insights, such as identifying the companies with the highest and lowest revenue, analyzing the most profitable companies, and examining the distribution of companies across various industries.

## Dataset
The dataset used in this project is the [2024 Fortune 1000 Companies dataset](https://www.kaggle.com/datasets/jeannicolasduval/2024-fortune-1000-companies). The dataset includes the following columns:
- `Company`: The name of the company.
- `Revenues_M`: Revenue in millions.
- `Profits_M`: Profit in millions.
- `Number_of_employees`: Number of employees.
- `Industry`: The industry to which the company belongs.
- `Profitable`: Whether the company is profitable ("yes") or not.

## Prerequisites
To replicate this project, you'll need:
- A SQL environment (e.g., MySQL, PostgreSQL, or SQLite)
- The dataset loaded into your SQL environment as a table named `companies_data`.

## SQL Queries
Here are the SQL queries used for analyzing the dataset:

```sql
-- Q1: How many companies are listed in the dataset?
SELECT COUNT(*) FROM companies_data;

-- Q2: What is the total revenue of all companies combined?
SELECT SUM(Revenues_M) FROM companies_data;

-- Q3: Which company has the highest revenue?
SELECT * FROM companies_data
ORDER BY Revenues_M DESC
LIMIT 1;

-- Q4: Which company has the lowest revenue?
SELECT * FROM companies_data
ORDER BY Revenues_M
LIMIT 1;

-- Q5: What is the average revenue of the companies?
SELECT AVG(Revenues_M) FROM companies_data;

-- Q6: How many companies reported a profit?
SELECT COUNT(*) FROM companies_data
WHERE Profitable = 'yes';

-- Q7: How many companies reported a loss?
SELECT COUNT(*) FROM companies_data
WHERE Profitable != 'yes';

-- Q8: Which company has the highest profit?
SELECT * FROM companies_data
ORDER BY Profits_M DESC
LIMIT 1;

-- Q9: Which company has the highest number of employees?
SELECT * FROM companies_data
ORDER BY Number_of_employees DESC
LIMIT 1;

-- Q10: What is the average number of employees across all companies?
SELECT ROUND(AVG(Number_of_employees)) FROM companies_data;

-- Q11: Which industry has the most companies listed?
SELECT Industry, COUNT(*) AS num FROM companies_data
GROUP BY Industry
ORDER BY num DESC
LIMIT 1;

-- Q12: Which industry generates the most total revenue?
SELECT Industry, SUM(Revenues_M) AS total FROM companies_data
GROUP BY Industry
ORDER BY total DESC
LIMIT 1;

-- Q13: What is the average revenue per employee?
SELECT SUM(Revenues_M) / SUM(Number_of_employees) FROM companies_data;

-- Q14: How many companies belong to the "Technology" industry?
SELECT COUNT(*) FROM companies_data
WHERE Industry = 'Technology';

-- Q15: What is the average profit margin (Profit/Revenue) across all companies?
SELECT AVG(Profits_M / Revenues_M) AS profit_margin FROM companies_data;

-- Q16: Which company has the highest profit margin?
SELECT Company, (Profits_M / Revenues_M) AS profit_margin FROM companies_data
ORDER BY profit_margin DESC
LIMIT 1;

-- Q17: How many companies have more than 100,000 employees?
SELECT COUNT(*) FROM companies_data
WHERE Number_of_employees > 100000;

-- Q18: Which industry has the highest average profit?
SELECT Industry, AVG(Profits_M) AS avg_profit FROM companies_data
GROUP BY Industry
ORDER BY avg_profit DESC
LIMIT 1;

-- Q19: What is the total number of employees across all companies?
SELECT SUM(Number_of_employees) FROM companies_data;

-- Q20: Which industry has the lowest average revenue?
SELECT Industry, AVG(Revenues_M) AS avg_revenue FROM companies_data
GROUP BY Industry
ORDER BY avg_revenue
LIMIT 1;

-- Q21: What is the total profit of all companies combined?
SELECT SUM(Profits_M) FROM companies_data;

-- Q22: Which company has the lowest number of employees?
SELECT Company, Number_of_employees FROM companies_data
ORDER BY Number_of_employees
LIMIT 1;

-- Q23: What is the average profit of companies in the "Healthcare" industry?
SELECT AVG(Profits_M) FROM companies_data
WHERE Industry = 'Healthcare';

-- Q24: How many companies have a profit margin greater than 20%?
SELECT COUNT(*) FROM companies_data
WHERE (Profits_M / Revenues_M) > 0.2;

-- Q25: Which industry has the highest total number of employees?
SELECT Industry, SUM(Number_of_employees) AS total_employees FROM companies_data
GROUP BY Industry
ORDER BY total_employees DESC
LIMIT 1;
