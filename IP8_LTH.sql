use `premier_products`;

# Print all rows and columns of the dataset
SELECT * FROM customer;
# primary key customer_num
SELECT * FROM order_line;
# primary key is order_num and part_num
SELECT * FROM orders;
# primary key is order_num
SELECT * FROM part;
# orimary key is part_num
SELECT * FROM sales_rep;
# primary key is sales_rep_num

 # All rows, last name , first name, sales rep number, 
 # city from sales rep table 
 SELECT last_name, first_name, sales_rep_num, city 
 FROM sales_rep;
 
 # Select order and customer number from orders
 SELECT order_num, customer_num FROM orders;
 
 # Select only two rows from order line
 SELECT * FROM order_line LIMIT 2;
 
 # Select all of the entries from customer where sales rep num=20
 SELECT * FROM customer WHERE sales_rep_num = 20;
 
 # Select only customer name, balance, 
 # credit limit from customer where sales rep num=20
 SELECT customer_name, balance, credit_limit 
 FROM customer WHERE sales_rep_num = 20;
 
 # Select part num, num ordered, 
 # quoted price and total price where total price is 
 # (num_ordered * quoted_price) where only 1 num ordered 
 # and the order number is 21617
SELECT part_num, num_ordered, quoted_price, (num_ordered * quoted_price) AS total_price 
FROM order_line 
WHERE num_ordered= 2 and order_num = 21617;

# Show all the orders from order date between '2010-10-20’ \
# and '2010-10-22'
  SELECT * FROM orders WHERE order_date BETWEEN '2010-10-20' 
  AND '2010-10-22';

# List all of parts where the part description starts 
# with ‘D’ and end with  ‘er’
SELECT * FROM part WHERE part_description LIKE 'D%er';

# Show total balance from customer
SELECT SUM(balance) AS total_balance FROM customer;

# Show minimum balance from customer
SELECT MIN(balance) AS minimum_balance FROM customer;

# Count number of customers in customer table
SELECT COUNT(*) AS number_of_customers FROM customer;

# Select order number where the quote price 
# is more than 500 but less than 1000
SELECT order_num FROM order_line WHERE quoted_price > 500 
AND quoted_price < 1000;

# Create a new table of customer name, last name, and 
# first name from customer and sales rep table by matching up 
# their primary key
SELECT c.customer_name, s.last_name, s.first_name, s.sales_rep_num
FROM customer c 
JOIN sales_rep s 
ON c.sales_rep_num = s.sales_rep_num;





















 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 