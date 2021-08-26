USE employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
ORDER BY dept_name;

# Find the name of all departments currently managed by women.
SELECT d.dept_name AS Department_Name, CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager
FROM employees as e
         JOIN dept_manager as de
              ON de.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND gender = 'F'
ORDER BY dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT de.title AS title, COUNT(DISTINCT title) AS Total
FROM employees as e
         JOIN titles as de
              ON de.emp_no = e.emp_no
         JOIN dept_emp as d
              ON d.emp_no = de.emp_no
WHERE de.to_date = '9999-01-01'
ORDER BY title;