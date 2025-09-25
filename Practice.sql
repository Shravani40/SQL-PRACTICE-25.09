create database shopA;
use shopA;

create table customersA (
customer_id int primary key,
customer_name varchar(50),
customer_city varchar(50)
);

INSERT INTO customersA (customer_id, customer_name, customer_city) VALUES (1, 'Rajesh Kumar', 'Delhi'),
(2, 'Anita Sharma', 'Mumbai'),
(3, 'Vikram Mehta', 'Bengaluru'),
(4, 'Pooja Rani', 'Chennai'),
(5, 'Amitabh Verma', 'Kolkata'),
(6, 'Neha Desai', 'Ahmedabad');

create table ordersA (
order_id int primary key,
order_date int,
customer_id int,
order_amount decimal(10,2)
);

INSERT INTO ordersA (order_id, order_date, customer_id, order_amount) VALUES (1, 20250901, 1, 2500.00),
(2, 20250902, 1, 1750.50),
(3, 20250903, 3, 3200.75),
(4, 20250904, 2, 1500.00),
(5, 20250905, 2, 980.25),
(6, 20250906, 6, 4100.00);



select * from customersA;
select * from ordersA;

SELECT customer_id, COUNT(*) AS total_orders
FROM ordersA
GROUP BY customer_id;

SELECT customer_id, SUM(order_amount) AS total_amount
FROM ordersA
GROUP BY customer_id;

SELECT customer_id, AVG(order_amount) AS average_order_value
FROM ordersA
GROUP BY customer_id;
