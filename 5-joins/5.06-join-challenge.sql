SELECT customer_id, customer.address_id, district, email
FROM customer
INNER JOIN address
ON address.address_id = customer.address_id
WHERE district = 'California';

SELECT *
FROM actor
WHERE last_name = 'Wahlberg'
;

SELECT *
FROM film_actor
WHERE film_id = 133
;

SELECT title, actor.first_name, actor.last_name
FROM film
LEFT JOIN film_actor
ON film_actor.film_id = film.film_id
LEFT JOIN actor
ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = 'Nick'
AND actor.last_name = 'Wahlberg'
ORDER BY title ASC
;




