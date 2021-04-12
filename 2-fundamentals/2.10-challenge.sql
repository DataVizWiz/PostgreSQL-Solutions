SELECT COUNT(payment_id)
FROM payment
WHERE amount > 5
;

SELECT COUNT(first_name)
FROM actor
WHERE first_name
LIKE 'P%'
;

SELECT COUNT(DISTINCT district)
FROM address
;

SELECT DISTINCT district
FROM address
;

SELECT *
FROM film
WHERE rating = 'R'
AND replacement_cost
BETWEEN 5
AND 15
;

SELECT COUNT(title)
FROM film
WHERE title
LIKE '%Truman%'
;