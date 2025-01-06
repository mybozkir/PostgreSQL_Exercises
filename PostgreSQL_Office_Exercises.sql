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

-- Exercise 3
-- Combine the first_name, last_name and email fields in the office table with a space between them.
-- And, do this operation in 3 different ways.
SELECT first_name, last_name, email,
	CONCAT(first_name, ' ', last_name, ' ', email)
FROM employees;

SELECT first_name, last_name, email,
	CONCAT_WS(' ', first_name, last_name, email)
FROM employees;

SELECT first_name, last_name, email,
	first_name || ' ' || last_name || ' ' || email
FROM employees;