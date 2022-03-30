SELECT DISTINCT last_name
FROM employees
ORDER BY last_name desc
LIMIT 10;

SELECT emp_no, salary
FROM salaries
ORDER BY salary desc
LIMIT 5 OFFSET 45;
