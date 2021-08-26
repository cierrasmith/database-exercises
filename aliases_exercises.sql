USE employees;

SELECT CONCAT (emp_no, ' - ', last_name, ', ', first_name) full_name, birth_date DOB
FROM employees
ORDER BY emp_no AND last_name AND first_name AND birth_date LIMIT 10;