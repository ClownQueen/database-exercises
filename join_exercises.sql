SELECT d.dept_name AS 'Department Manager', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS m
ON e.emp_no = m.emp_no
JOIN departments AS d
ON d.dept_no = m.dept_no
WHERE m.to_date > CURDATE();

SELECT d.dept_name AS 'Department Manager', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS m
ON e.emp_no = m.emp_no
JOIN departments AS d
ON d.dept_no = m.dept_no
WHERE m.to_date > CURDATE() AND e.gender = 'F';

SELECT t.title, COUNT(t.emp_no) AS 'Count'
FROM titles AS t
JOIN dept_emp de
ON t.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
WHERE de.to_date > CURDATE() AND t.to_date > CURDATE() AND d.dept_name = 'Customer Service'
GROUP BY t.title;

SELECT d.dept_name AS 'Department Manager', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM employees AS e
JOIN dept_manager AS m
ON e.emp_no = m.emp_no
JOIN departments AS d
ON d.dept_no = m.dept_no
JOIN salaries s
ON s.emp_no = e.emp_no
WHERE m.to_date > CURDATE() AND s.to_date > CURDATE();