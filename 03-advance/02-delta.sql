SELECT
	payment_month,
	total_amount,
	total_amount - LAG(total_amount, 1) OVER (ORDER BY payment_month) AS monthly_delta
FROM(
SELECT
	payment_month,
	SUM(amount) AS total_amount
FROM(
SELECT
	amount,
	EXTRACT(MONTH FROM payment_date) AS payment_month 
FROM payment
	) AS payment
GROUP BY payment_month
	) AS month_totals;