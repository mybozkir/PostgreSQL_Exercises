-- Exercise 1
-- First and Last Name: Steven.King@dbhunter.net
-- Salaries with a 35% increase
SELECT first_name || '.' || last_name || '@dbhunter.net' AS email,
	   salary * 1.35 AS salary_increased
FROM employees

-- Exercise 2
-- Find employees whose salary is not between 4000 and 7000 also whose job_id is different than 16.
SELECT first_name, last_name, salary, job_id
FROM employees
WHERE (salary NOT BETWEEN 4000 AND 7000)
	AND (NOT job_id = 16)