SELECT *
FROM payment
WHERE amount != 0.00
ORDER BY payment_date DESC
LIMIT 5
;

SELECT customer_id
FROM payment
ORDER BY payment_date ASC
LIMIT 10
;

SELECT title, length
FROM film
ORDER BY length ASC
LIMIT 5
;

SELECT COUNT(title)
FROM film
WHERE length <= 50
;