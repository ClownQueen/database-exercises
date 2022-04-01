use micah;

SELECT COUNT(e.first_name)
FROM employees AS e
WHERE e.hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

SELECT DISTINCT COUNT(t.title)
FROM titles AS t
WHERE emp_no IN (
    SELECT t.emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

SELECT first_name, last_name
FROM employees
WHERE gender = 'F' AND emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > CURDATE()
    );