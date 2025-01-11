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

-- Exercise 5
-- Write a query that returns moviesw with the words "drama" and "Australia" in the 'description' field of the movie table
-- in the format below. Search should not be case sensitive.
SELECT
	UPPER(title) AS title_new,
	LOWER(description) AS description_new
FROM film
WHERE LOWER(description) LIKE '%drama%australia%';

-- Exercise 6
-- Find movies with the word "Hunter" in description field in 3 different ways. Search should be case sensitive.
SELECT title, description
FROM film
WHERE description LIKE '%Hunter%'

SELECT title, description
FROM film
WHERE INITCAP(description) LIKE '%Hunter%'

SELECT title, description
FROM film
WHERE POSITION('Hunter' IN description) > 0

-- Exercise 7
-- Using today's date, create an output like the one below. Do it in 2 different ways.
SELECT CURRENT_DATE,
       EXTRACT(CENTURY FROM CURRENT_DATE) AS century_,
	   EXTRACT(QUARTER FROM CURRENT_DATE) AS quarter_,
	   EXTRACT(DECADE FROM CURRENT_DATE) AS decade_;


SELECT 'Quarter is: ' || DATE_PART('quarter', CURRENT_DATE)::varchar ||
       ', Year is: ' || DATE_PART('year', CURRENT_DATE)::varchar ||
	   ', Month is: ' || DATE_PART('month', CURRENT_DATE)::varchar ||
	   ', Doy is: ' || DATE_PART('doy', CURRENT_DATE)::varchar;

SELECT 'Quarter is: ' || EXTRACT(QUARTER FROM CURRENT_DATE)::varchar ||
       ', Year is: ' ||  EXTRACT(YEAR FROM CURRENT_DATE)::varchar ||
	   ', Month is: ' ||  EXTRACT(MONTH FROM CURRENT_DATE)::varchar ||
	   ', Doy is: ' ||  EXTRACT(DOY FROM CURRENT_DATE)::varchar;

-- Exercise 8
-- Write a query that returns only 5 rows, using the field shown below in the payment table.

SELECT customer_id, amount, payment_date,
	   customer_id || ' paid: $ ' || amount || ' at ' || TO_CHAR(payment_date, 'HH24:MI:SS') || ' on ' || TO_CHAR(payment_date, 'Mon-DD-YYYY')
FROM payment;















