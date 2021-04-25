SELECT customer_id, SUM(amount)
FROM payment
WHERE customer_id = 1
GROUP BY customer_id
ORDER BY SUM(amount) DESC
;

SELECT customer_id, staff_id, SUM(amount)
FROM payment
GROUP BY staff_id, customer_id
ORDER BY customer_id
;

SELECT DATE(payment_date), SUM(amount)
FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC
;

SELECT staff_id, COUNT(amount)
FROM payment
GROUP BY staff_id
;

SELECT rating, ROUND(AVG(replacement_cost), 2)
FROM film
GROUP BY rating
;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5
;