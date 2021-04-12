SELECT
	MIN(replacement_cost),
	MAX(replacement_cost), 
	ROUND(AVG(replacement_cost), 2),
	COUNT(DISTINCT replacement_cost),
	SUM(replacement_cost)
FROM film
;