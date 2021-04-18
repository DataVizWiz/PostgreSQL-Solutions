SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id
;

-- adding the where clause we can see we do not have any
-- inventory in any stores for those filtered films
SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory
ON inventory.film_id = film.film_id
WHERE inventory.film_id IS NULL
;