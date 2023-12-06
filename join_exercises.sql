USE employees;

# write a query that shows each department along with the name of the current manager for that department.

SELECT departments.dept_name AS Dept_Name, CONCAT(employees.first_name, ' ', employees.last_name) AS Dept_Manager
FROM employees
JOIN dept_manager
ON dept_manager.to_date LIKE '9%' AND dept_manager.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no;
# the above query is retrieving the department name and the full name of the department manager for each department where the manager's employment end date starts with '9'.

# Find the name of all departments currently managed by women.
SELECT departments.dept_name AS Dept_Name, CONCAT(employees.first_name, ' ', employees.last_name) AS Dept_Manager
FROM employees
JOIN dept_manager
ON dept_manager.to_date LIKE '9%' AND dept_manager.emp_no = employees.emp_no AND employees.gender = 'F'
JOIN departments
ON departments.dept_no = dept_manager.dept_no;


# Find the name of all departments currently managed by men.
SELECT departments.dept_name AS Dept_Name, CONCAT(employees.first_name, ' ', employees.last_name) AS Dept_Manager
FROM employees
JOIN dept_manager
ON dept_manager.to_date LIKE '9%' AND dept_manager.emp_no = employees.emp_no AND employees.gender = 'M'
JOIN departments
ON departments.dept_no = dept_manager.dept_no;

# Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title, COUNT(titles.title) AS Total
FROM titles
JOIN dept_emp
ON titles.emp_no = dept_emp.emp_no AND titles.to_date LIKE '9%' AND dept_emp.dept_no = 'd009'
GROUP BY titles.title
ORDER BY Total DESC;

# Find the current salary of all current managers.
SELECT departments.dept_name AS Dept_Name, CONCAT(employees.first_name, ' ', employees.last_name) AS Dept_Manager, salaries.salary AS Salary
FROM employees
JOIN titles
    ON titles.title = 'Manager' AND titles.to_date LIKE '9%' AND titles.emp_no = employees.emp_no
JOIN dept_emp
    ON dept_emp.emp_no = employees.emp_no
JOIN departments
    ON dept_emp.dept_no = departments.dept_no
JOIN salaries
    ON salaries.emp_no = dept_emp.emp_no AND salaries.to_date LIKE '9%';

SELECT CONCAT(first_name, ' ',  last_name) AS name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
LIMIT 10;