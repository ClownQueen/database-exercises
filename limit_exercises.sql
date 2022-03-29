SELECT DISTINCT last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya','Maya')
ORDER BY last_name desc
LIMIT 10;

SELECT emp_no
FROM employees
