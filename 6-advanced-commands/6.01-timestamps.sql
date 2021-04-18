SHOW ALL;

SHOW TIMEZONE;

SELECT NOW() AS timestamp;

SELECT TIMEOFDAY();

SELECT CURRENT_TIME;

SELECT CURRENT_DATE;

SELECT
	EXTRACT(YEAR FROM payment_date) AS payment_year,
	EXTRACT(QUARTER FROM payment_date) AS payment_quarter,
	EXTRACT(MONTH FROM payment_date) AS payment_month,
	EXTRACT(WEEK FROM payment_date) AS payment_week,
	EXTRACT(DAY FROM payment_date) AS payment_day
FROM payment
;

SELECT AGE(payment_date) AS payment_age
FROM payment
;

SELECT
	TO_CHAR(payment_date, 'MON-YYYY') AS payment_month_year,
	TO_CHAR(payment_date, 'dd-MM-YYYY') AS payment_date
FROM payment
;







