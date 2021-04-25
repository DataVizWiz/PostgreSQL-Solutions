INSERT INTO job(
	job_name
)
VALUES(
	'Cowboy'
)
RETURNING job_name;

DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name;

DELETE FROM job
WHERE job_name = 'Data Analyst'
RETURNING *;