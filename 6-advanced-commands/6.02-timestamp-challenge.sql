SELECT DISTINCT TO_CHAR(payment_date, 'Month') AS payment_month
FROM payment
;

SELECT DISTINCT
	TO_CHAR(payment_date, 'Day') AS payment_day,
	COUNT(TO_CHAR(payment_date, 'Day')) AS payment_count
FROM payment
GROUP BY payment_day
;

SELECT
	COUNT(payment_id)
FROM (
SELECT
	payment_id,
	EXTRACT(DOW FROM payment_date) AS payment_day_of_week
FROM payment
) AS x
WHERE payment_day_of_week = 1;





