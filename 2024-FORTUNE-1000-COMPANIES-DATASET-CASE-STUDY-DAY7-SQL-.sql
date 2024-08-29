-- USE company

-- How many companies are listed in the dataset?

SELECT COUNT(*) FROM companies_data;

-- What is the total revenue of all companies combined?

SELECT SUM(Revenues_M) FROM companies_data;

-- Which company has the highest revenue?

SELECT * FROM companies_data
ORDER BY Revenues_M DESC
LIMIT 1;

-- Which company has the lowest revenue?

SELECT * FROM companies_data
ORDER BY Revenues_M
LIMIT 1;

-- What is the average revenue of the companies?

SELECT AVG(Revenues_M) FROM companies_data;

-- How many companies reported a profit?

SELECT COUNT(*) FROM companies_data
WHERE Profitable = 'yes';

-- How many companies reported a loss?

SELECT COUNT(*) FROM companies_data
WHERE Profitable != 'yes';

-- Which company has the highest profit?

SELECT * FROM companies_data
ORDER BY Profits_M DESC
LIMIT 1;

-- Which company has the highest number of employees?

SELECT * FROM companies_data
ORDER BY Number_of_employees DESC
LIMIT 1;

--  What is the average number of employees across all companies?

SELECT ROUND(AVG(Number_of_employees)) FROM companies_data;

-- Which industry has the most companies listed?

SELECT Industry,COUNT(*) AS num FROM companies_data
GROUP BY Industry
ORDER BY num DESC
LIMIT 1;

-- Which industry generates the most total revenue?

SELECT Industry,SUM(Revenues_M) as total FROM companies_data
GROUP BY Industry
ORDER BY total DESC
LIMIT 1;

-- What is the average revenue per employee?

SELECT SUM(Revenues_M)/SUM(Number_of_employees) FROM companies_data;

-- How many companies belong to the "Technology" industry?

SELECT COUNT(*) FROM companies_data
WHERE Industry = 'Technology';

-- What is the average profit margin (Profit/Revenue) across all companies?

SELECT AVG(Profits_M/Revenues_M) AS profit_margin FROM companies_data;

-- Which company has the highest profit margin?

-- How many companies have more than 100,000 employees?

SELECT COUNT(*) FROM companies_data
WHERE 'Number_of_employees' > 100000;

-- Which industry has the highest average profit?

SELECT Industry,AVG(Profits_M) AS profit FROM companies_data
GROUP BY Industry 
ORDER BY profit DESC
LIMIT 1;

-- What is the total number of employees across all companies?

SELECT SUM(Number_of_employees) FROM companies_data;

-- Which industry has the lowest average revenue?

SELECT Industry,AVG(Revenues_M)as Revenue FROM companies_data
GROUP BY Industry
ORDER BY Revenue
LIMIT 1;

-- What is the total profit of all companies combined?

SELECT SUM(Profits_M) FROM companies_data;

-- Which company has the lowest number of employees?

SELECT Company,Number_of_employees FROM companies_data
ORDER BY Number_of_employees
LIMIT 1;

-- What is the average profit of companies in the "Healthcare" industry?

SELECT AVG(Profits_M) FROM companies_data
WHERE Industry = 'Healthcare';

-- How many companies have a profit margin greater than 20%?

SELECT COUNT(*) FROM companies_data
WHERE (Profits_M/Revenues_M) > 0.2;

-- Which industry has the highest total number of employees?

SELECT * FROM companies_data
ORDER BY Number_of_employees DESC
LIMIT 1;

-- 



