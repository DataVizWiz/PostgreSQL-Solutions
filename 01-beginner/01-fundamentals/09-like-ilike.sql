SELECT *
FROM customer
WHERE first_name
LIKE 'J%'
AND last_name
LIKE 'S%'
;

SELECT *
FROM customer
WHERE first_name
ILIKE 'j%'
AND last_name
ILIKE 's%'
;

SELECT *
FROM customer
WHERE first_name
LIKE '_her%'
;

SELECT *
FROM customer
WHERE first_name
NOT LIKE '_her%'
;

SELECT *
FROM customer
WHERE first_name
LIKE 'A%'
ORDER BY last_name
;