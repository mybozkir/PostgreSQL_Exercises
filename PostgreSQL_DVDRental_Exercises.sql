-- Exercise 1
-- How many different ratings there are in the film table.
-- Sort the returned list in reverse.
SELECT DISTINCT rating
FROM film
ORDER BY rating DESC;

-- Exercise 2
-- Find the films where the length of is not between 100 and 120
SELECT *
FROM film
WHERE length NOT BETWEEN 100 and 120;

-- Exercise 3
-- Find the films where the length of is not between 100 and 120 (do not use NOT or BETWEEN)
SELECT *
FROM film
WHERE (length < 100) OR (length > 120);

-- Exercise 4
-- Find the customers whose 3 characters after the first character are 'her'
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '_her%'