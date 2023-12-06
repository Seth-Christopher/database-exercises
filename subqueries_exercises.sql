USE employees;




# Find all the employees with the same hire date as employee 101010 using a sub-query.
#  69 Rows
SELECT *
FROM employees
WHERE hire_date =
      (SELECT hire_date FROM employees WHERE emp_no = '101010');

# Find all the titles held by all employees with the first name Aamod.
# 314 total rows
SELECT title
FROM titles
WHERE emp_no IN
      (SELECT emp_no FROM employees WHERE first_name = 'Aamod');

# Find all the current department managers that are female.
SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Employee_name
FROM employees
WHERE gender = 'F' AND emp_no IN
      (SELECT emp_no FROM titles
        WHERE title = 'Manager' AND to_date LIKE '9%');

# Find all the department names that currently have female managers.
select dept_name
from departments
where dept_no in (
    select dept_no from dept_emp
    where emp_no in (
        select emp_no from employees
        where gender = 'F' and emp_no in (
            select emp_no from titles
            where to_date like '9%' and title = 'Manager')
        )
    );