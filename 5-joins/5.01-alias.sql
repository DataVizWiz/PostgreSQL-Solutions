SELECT COUNT(amount) AS num_transactions
FROM payment
;

SELECT customer_id, SUM(amount) AS total_spend
FROM payment
GROUP BY customer_id
;