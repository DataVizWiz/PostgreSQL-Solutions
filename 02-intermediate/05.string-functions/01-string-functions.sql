SELECT LENGTH(first_name)
FROM customer
;

SELECT first_name || ' ' || last_name AS customer_name
FROM customer
;

SELECT LOWER(LEFT(first_name, 1)) || '.' || LOWER(last_name) || '@gmail.com' AS email
FROM customer
;
