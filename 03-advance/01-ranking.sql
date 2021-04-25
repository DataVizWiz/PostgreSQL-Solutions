SELECT  
	*,
	RANK() OVER (ORDER BY total_amount DESC)
FROM(
SELECT
	customer_id, 
	SUM(amount) AS total_amount
FROM payment
GROUP BY customer_id
	) AS payment
;