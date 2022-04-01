use micah;

SELECT COUNT(hire_date)
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE emp_no = 101010
    );

SELECT COUNT(e.first_name) AS 'Total Aamod', COUNT(t.title) AS 'Unique Titles'
FROM employees AS e
JOIN titles AS t
ON e.emp_no = t.emp_no
WHERE t.title IN (
    SELECT title
    FROM titles
    WHERE e.first_name = 'Aamod'
    GROUP BY title
    );

SELECT e.first_name, e.last_name
FROM employees AS e
JOIN dept_manager AS m
ON e.emp_no = m.emp_no
WHERE m.to_date > CURDATE() AND e.gender IN (
    SELECT gender
    FROM employees
    WHERE e.gender = 'F'
    );