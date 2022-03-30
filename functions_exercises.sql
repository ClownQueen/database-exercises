SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE '%E%';

SELECT COUNT(*)
FROM employees
WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

SELECT COUNT(*)
FROM employees
WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999;

SELECT first_name, last_name, hire_date
FROM employees
WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999
ORDER BY hire_date desc;

SELECT first_name, last_name, hire_date, DATEDIFF(NOW(), hire_date)
FROM employees
WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) BETWEEN 1990 AND 1999;