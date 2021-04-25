SELECT *
FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
;

-- adding the where statement we return 0 rows
-- this confirms every customer has made a payment
SELECT *
FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS NULL
OR payment.payment_id IS NULL
;