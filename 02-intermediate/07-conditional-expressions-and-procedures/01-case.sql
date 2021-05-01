SELECT 
	customer_id,
	CASE
		WHEN (customer_id <= 100) THEN 'Premium'
		WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
		ELSE 'Economy'
	END AS customer_class
FROM customer;

SELECT 
	customer_id,
	CASE customer_id
		WHEN 2 THEN 'Winner'
		WHEN 5 THEN 'Second place'
		ELSE 'Normal'
	END AS raffle_result
FROM customer;

SELECT
	SUM(bargains) AS total_bargains
FROM (
SELECT
	rental_rate,
	CASE rental_rate
		WHEN 0.99 THEN 1
		ELSE 0
	END AS bargains
FROM film
	) AS rental_rate;

SELECT
	bargains,
	SUM(bargains) AS total_bargains
FROM (
SELECT
	rental_rate,
	CASE rental_rate
		WHEN 0.99 THEN 1
		WHEN 2.99 THEN 2
		ELSE 0
	END AS bargains
FROM film
	) AS rental_rate
GROUP BY bargains;























