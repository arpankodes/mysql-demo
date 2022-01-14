USE sql_store;
-- terminate each statement with a ';'

SELECT *
FROM customers
-- WHERE customer_id = 1 (this clause has been commented out)
ORDER BY first_name;
-- order of the clauses in the SELECT statement matters and
-- can not be executed in any other order

SELECT * FROM customers;
-- all the columns from customers table are selected

SELECT
	last_name,
    first_name,
    points,
    (points + 10)*100 AS 'discount_factor'
FROM customers;
-- specific columns are selected and
-- a new column with a custom name has been created

SELECT  DISTINCT state
FROM customers;

SELECT
	name,
    unit_price,
    unit_price * 1.1 AS new_price
FROM products;

-- Using WHERE clause for filtering data
SELECT *
FROM customers
WHERE points > 3000;

SELECT *
FROM customers
WHERE state = 'VA';

SELECT *
FROM customers
WHERE birth_date > '1990-01-01';

SELECT * FROM orders ;
SELECT * FROM orders WHERE order_date >= '2019-01-01';

INSERT INTO customers
VALUES (
	DEFAULT,
    'John',
    'Smith',
	DEFAULT,
    DEFAULT,
    'address',
    'city',
    'CA',
    DEFAULT);
-- DEFAULT values are provided in the column attributes

	INSERT INTO customers (
		first_name,
        last_name,
        address,
        city,
        state)
	VALUES (
		'Tony',
        'Stark',
        'Mars',
        'street101',
        'CA');
-- here the custom values for particular columns are inserted and
-- rest of the values are picked up by mySQL as DEFAULT
