SELECT *
FROM payment
INNER JOIN customer 
ON payment.customer_id = customer.customer_id
;

SELECT payment_id, payment.customer_id, first_name
FROM payment
INNER JOIN customer 
ON payment.customer_id = customer.customer_id
;

SELECT payment_id, p.customer_id, first_name
FROM payment AS p
INNER JOIN customer AS c
ON p.customer_id = c.customer_id
;