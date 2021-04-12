SELECT title, rental_rate, rating
FROM film
WHERE rental_rate > 4
AND replacement_cost >= 19.99
AND rating != 'R'
;

SELECT email
FROM customer
WHERE first_name = 'Nancy' 
AND last_name = 'Thomas'
;

SELECT description
FROM film
WHERE title = 'Outlaw Hanky'
;

SELECT phone
FROM address
WHERE address = '259 Ipoh Drive'
;