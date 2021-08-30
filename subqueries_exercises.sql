USE EMPLOYEES;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
SELECT e.first_name, e.last_name, e.hire_date
FROM employees as e
WHERE e.hire_date IN (
    SELECT e.hire_date
    FROM employees as e
    WHERE e.emp_no = 101010
);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT t.title AS total_titles
FROM titles as t
WHERE t.emp_no IN (
    SELECT e.emp_no
    FROM employees as e
    WHERE e.first_name = 'Aamod'
);

# This shows the unique 6 titles
SELECT DISTINCT t.title AS unique_titles
FROM titles as t
WHERE t.emp_no IN (
    SELECT e.emp_no
    FROM employees as e
    WHERE e.first_name = 'Aamod'
);

# Find all the current department managers that are female.
SELECT e.first_name, e.last_name
FROM employees as e
WHERE e.gender = 'F'
AND e.emp_no IN (
    SELECT dm.emp_no
    FROM dept_manager as dm
    WHERE dm.to_date = '9999-01-01'
    );

# BONUS - Find all the department names that currently have female managers.

# SELECT e.emp_no
# FROM employees as e
# WHERE gender = 'F';

SELECT dept_name
FROM dept_manager as dm
JOIN departments as d ON dm.dept_no = d.dept_no
WHERE emp_no IN (
    SELECT e.emp_no
    FROM employees as e
    WHERE gender = 'F'
    )
  AND dm.to_date = '9999-01-01'
ORDER BY dept_name;

# Find the first and last name of the employee with the highest salary.
# Sub Query Version walk-through w/ Sam
SELECT first_name, last_name
FROM employees as e
WHERE e.emp_no IN (
    SELECT s.emp_no
    FROM salaries as s
    WHERE salary IN (
        SELECT MAX(s.salary)
        FROM salaries s
        )
    );

# Join method, ran quicker than the subquery
SELECT e.first_name, e.last_name
FROM employees as e
JOIN salaries as s ON e.emp_no = s.emp_no
ORDER BY s.salary desc limit 1;
