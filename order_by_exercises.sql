USE employees;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# Find all employees whose last name starts with 'E' — 7,330 rows.
# Can use SELECT COUNT (*) to return a count
SELECT *
FROM employees
WHERE last_name like 'E%';

# Find all employees with a 'q' in their last name — 1,873 rows.
SELECT *
FROM employees
WHERE last_name like '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
        # Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
        SELECT *
  FROM employees
  WHERE gender = 'M'
    AND (
        first_name = 'Irena'
     OR first_name = 'Vidya'
     OR first_name = 'Maya'
        )
        ORDER BY first_name ASC;

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name like 'E%' OR last_name like '%E';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
    SELECT *
                                   FROM employees
                                   WHERE last_name like 'E%' AND last_name like '%E';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT *
FROM employees
WHERE last_name like '%q%' AND last_name NOT like '%qu%';







