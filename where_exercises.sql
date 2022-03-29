SELECT count(emp_no)
FROM employees
WHERE first_name = ('Irena' OR first_name = 'Vidya' OR first_name ='Maya') AND gender = 'M';

SELECT count(emp_no)
FROM employees
WHERE last_name LIKE '%E%';

SELECT count(emp_no)
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT count(emp_no)
FROM employees
WHERE last_name LIKE '%q%'  AND last_name NOT LIKE '%qu%';