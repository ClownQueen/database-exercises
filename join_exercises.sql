SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS Manager
FROM employees AS e
JOIN dept_manager AS m
ON m.emp_no = e.emp_no
JOIN departments as d;
