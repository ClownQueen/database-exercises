SELECT DISTINCT title FROM titles;

SELECT DISTINCT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT COUNT(*), last_name
FROM employees
GROUP BY last_name;

SELECT COUNT(*)
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya'
GROUP BY gender;