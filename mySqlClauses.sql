use employees;

# This will grab any record that has an a and then a u in the last name
SELECT * FROM employees.employees e WHERE e.last_name like '%a%u%';

# This will grab any record that has a lastname that starts with a v
SELECT * FROM employees.employees E WHERE e.last_name like 'v%';

# This will grab any record that has a lastname that ends with e
SELECT * FROM employees.employees E WHERE e.last_name like '%e';

# This will grab any record that has a lastname that contains the seq of "gh" regardless if it starts or ends with it
SELECT * FROM employees.employees E WHERE e.last_name like '%gh%';


SELECT * FROM employees.employees e WHERE birth_date BETWEEN '1964-06-02' and '1964-06-07';

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');


