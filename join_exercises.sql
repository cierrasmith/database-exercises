USE employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
ORDER BY dept_name;

# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND gender = 'F'
ORDER BY d.dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS 'title', COUNT(t.emp_no) AS 'Total'
FROM employees as e
         JOIN titles as t
              ON t.emp_no = e.emp_no
         JOIN dept_emp de
              ON e.emp_no = de.emp_no
         JOIN departments as d
              ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01' AND t.to_date = '9999-01-01'
  AND d.dept_name = 'Customer Service'
GROUP BY t.title
ORDER BY 'Total' desc;

# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN salaries as s
              ON e.emp_no = s.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name .
# Completed with walk through, need more help because this is confusing
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.dept_name AS 'Department', CONCAT(e2.first_name, ' ', e2.last_name) AS 'Manager'
FROM departments as d

         JOIN dept_emp as de
              ON d.dept_no = de.dept_no
         JOIN dept_manager as dm
              ON d.dept_no = dm.dept_no
         JOIN employees as e
              ON de.emp_no = e.emp_no
         JOIN employees as e2
                ON dm.emp_no = e2.emp_no
WHERE de.to_date = '9999-01-01' and dm.to_date = '9999-01-01'
ORDER BY d.dept_name;





