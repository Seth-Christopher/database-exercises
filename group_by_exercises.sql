USE employees;

# In your script, use DISTINCT to find the unique titles in the titles table. Your results should look like:
        -- Senior Engineer
        -- Staff
        -- Engineer
        -- Senior Staff
        -- Assistant Engineer
        -- Technique Leader
        -- Manager
SELECT DISTINCT title
FROM titles;

# Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY. The results should be:
        -- Eldridge
        -- Erbe
        -- Erde
        -- Erie
        -- Etalle
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
GROUP BY last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
GROUP BY last_name, first_name;

# Find the unique last names with a 'q' but not 'qu'. Your results should be:
        -- Chleq
        -- Lindqvist
        -- Qiwen

SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# Add a COUNT() to your results and use GROUP BY to make it easier to find employees whose unusual name is shared with others.
        -- 189 Chleq
        -- 190 Lindqvist
        -- 168 Qiwen
SELECT COUNT(*), last_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:
        -- 441 M
        -- 268 F
SELECT COUNT(*),gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

