SELECT
	payment_date,
	total_amount,
	SUM(total_amount) OVER (
		ORDER BY payment_date ASC
	) AS running_total
FROM(
SELECT
	SUM(amount) AS total_amount,
	TO_CHAR(payment_date, 'YYYY-MM-dd') AS payment_date
FROM payment
GROUP BY TO_CHAR(payment_date, 'YYYY-MM-dd')
	) AS total_payment;