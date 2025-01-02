-- Exercise 1
-- First and Last Name: Steven.King@dbhunter.net
-- Salaries with a 35% increase
SELECT first_name || '.' || last_name || '@dbhunter.net' AS email,
	   salary * 1.35 AS salary_increased
FROM employees

-- Exercise 2
