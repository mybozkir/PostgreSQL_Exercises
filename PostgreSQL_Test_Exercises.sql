-- Exercise 1
-- Who was working in the office on '2022-05-01'?
SELECT *
FROM staff
WHERE '2022-05-01' BETWEEN hire_date AND departure_date