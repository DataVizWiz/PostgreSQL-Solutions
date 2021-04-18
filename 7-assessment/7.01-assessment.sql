SELECT *
FROM CD.FACILITIES ;


SELECT NAME,
	MEMBERCOST
FROM CD.FACILITIES ;


SELECT NAME,
	MEMBERCOST
FROM CD.FACILITIES
WHERE MEMBERCOST > 0 ;


SELECT FACID,
	NAME,
	MEMBERCOST,
	MONTHLYMAINTENANCE,
	THRESHOLD
FROM
	(SELECT *,
			(0.02 * MONTHLYMAINTENANCE) AS THRESHOLD
		FROM CD.FACILITIES
		WHERE MEMBERCOST > 0 ) AS X
WHERE MEMBERCOST < THRESHOLD;

SELECT *
FROM CD.FACILITIES
WHERE NAME ILIKE '%TENNIS%' ;

SELECT *
FROM CD.FACILITIES
WHERE FACID IN (1, 5) ;

SELECT *, MONTH()
FROM CD.MEMBERS
WHERE JOINDATE > ;













