USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE first_name = ('Irena') OR first_name = ('Vidya') OR first_name = ('Maya');

SELECT *
FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
  AND gender = 'm';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e' ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e' ORDER BY emp_no DESC;

