-- 1.	Write a query to select all columns from the employees table.
-- SELECT * FROM employee_info

-- 2.	How do you find all customers from the state 'Nevada'?
-- SELECT * FROM customer_table WHERE state='Nevada'

-- 3.	Write a query to count total sales in the sales table.
-- SELECT COUNT(sale_id) FROM sales_info

-- 4.	How to get all products where price is greater than 100?
-- SELECT sale_id, unit_price FROM sales_info WHERE unit_price>100

-- 5.	Select employee names and their salaries from the employees table.
-- SELECT CONCAT_WS(' ',first_name,last_name) AS employee_name ,salary FROM employee_info

-- 6.	Write a query to insert a new record into the products table.
-- INSERT INTO product_info VALUES (201,'drive','Food',1000.00,48,88,33,true,'2025-09-19','2025-09-20') 


-- 7.	How do you update the status of an order to 'Completed'?
-- UPDATE order_table SET completed WHERE Status='Pending'

-- 8.	Write a query to delete a customer with customer_id = 2.
-- DELETE  FROM customer_table WHERE customer_id=2

-- 9.	Write a query to get total sales amount grouped by salesperson.
-- SELECT salesperson_id,SUM(total_sale) AS Total_sale FROM sales_info GROUP BY salesperson_id

-- 10.	Join the sales and products table and show product name with sales quantity.
-- SELECT product_name ,quantity FROM product_info PI JOIN sales_info SI ON PI.product_id=SI.product_id

-- 11.	Get the top 5 products by total sales.
-- SELECT product_name ,total_sale FROM product_info PI JOIN sales_info SI ON PI.product_id=SI.product_id 
-- ORDER BY total_sale DESC LIMIT 5

-- 12.	How do you get all orders placed after '2023-01-01'?
-- SELECT * FROM order_table WHERE order_date>'2023-01-01'

-- 13.	Write a query to find employees who manage other employees.
-- SELECT DISTINCT e1.employee_id, CONCAT_WS(' ',e1.first_name,e1.last_name) AS employee_name
-- FROM employee_info e1 JOIN employee_info e2 ON e1.employee_id = e2.manager_id;

-- 14.	Retrieve customer details with their latest order date.
-- SELECT CONCAT_WS(' ',first_name,last_name) AS customer_name, MAX(order_date) FROM customer_table CT 
-- JOIN order_table OT ON 
-- CT.customer_id=OT.customer_id  GROUP BY customer_name 

-- 15.	Write a query to calculate total revenue grouped by product category.
-- SELECT category , SUM(price*stock_quantity) AS total_revenue FROM product_info GROUP BY category


-- 16.	How to find products that are discontinued and have stock quantity > 0?
-- SELECT * FROM product_info WHERE discontinued = true AND stock_quantity > 0;

-- 17.	Write a query to show customers along with total amount they have spent.
-- SELECT  CONCAT_WS(' ',first_name,last_name) AS customer_name ,total_sale FROM customer_table CT JOIN sales_info SI 
-- ON CT.customer_id=SI .customer_id 

-- 18.	Using a join, display all orders with corresponding salesperson details.
-- SELECT OT.*,SI.* FROM order_table OT JOIN sales_info SI ON OT.customer_id=SI.customer_id

-- 19.	Find sales with a discount greater than 0.15 and sort by total_sale descending.
-- SELECT * FROM sales_info WHERE discount>0.15 ORDER BY total_sale DESC

-- 20.	Write a query to find the average salary of employees per department.
-- 

-- 21.	Write a query to find the region that generated the highest total sales.
-- SELECT region,MAX(total_sale) AS highest_total_sale FROM sales_info GROUP BY region

-- 22.	Find all customers who have placed orders but have no sales recorded in the sales table.
-- SELECT DISTINCT CT.customer_id, CONCAT_WS(' ',first_name,last_name) AS customer_name
-- FROM customer_table CT JOIN order_table OT ON CT.customer_id = OT.customer_id
-- LEFT JOIN sales_info SI ON OT.customer_id = SI.customer_id
-- WHERE SI.customer_id IS NULL

-- 23.	Write a subquery to find products that have never been sold.
-- SELECT * FROM product_info  WHERE product_id NOT IN ( SELECT DISTINCT product_id FROM sales_info)

-- 24.	How would you optimize a slow query joining customers and sales on customer_id?

-- 25.	Write a window function query to rank salespersons based on total sales amount
-- SELECT salesperson_id,SUM(total_sale) AS total_sales,
-- RANK() OVER (ORDER BY SUM(total_sale) DESC) AS sales_rank FROM sales_info GROUP BY salesperson_id;















