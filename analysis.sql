use project;

show tables;

SELECT * FROM superstore LIMIT 9694;

SELECT count(*) from superstore;

select * from superstore
where Sales is null or Profit is null;

use project;

SELECT `Order ID`, COUNT(*)
FROM superstore
GROUP BY `Order ID`
HAVING COUNT(*) > 1;

SELECT `Product ID`, COUNT(*)
FROM superstore
GROUP BY `Product ID`
HAVING COUNT(*) > 1;

SELECT SUM(Sales) AS total_revenue FROM superstore;

select Sum(Profit) AS total_revenue From superstore;

SELECT DATE_FORMAT(`Order Date`, '%Y-%m') AS month,
SUM(Sales) AS revenue
FROM superstore
GROUP BY month
ORDER BY month;

SELECT `Product Name`, SUM(Sales) AS revenue
FROM superstore
GROUP BY `Product Name`
ORDER BY revenue DESC
LIMIT 10;

select Category, Sum(sales) as revenue 
from superstore 
group by Category;

SELECT `Customer Name`, SUM(Sales) AS total_spent
FROM superstore
GROUP BY `Customer Name`
ORDER BY total_spent DESC
LIMIT 10;

select region, sum(sales) as revenue 
from superstore 
group by region;


