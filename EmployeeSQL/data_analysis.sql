-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e
	JOIN salaries as s
		ON (e.emp_no = s.emp_no);

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
	-- https://www.sqltutorial.org/sql-date-functions/how-to-extract-year-from-date-in-sql/
	WHERE EXTRACT(YEAR from hire_date) = 1986;
	
-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name
FROM dept_manager as dm
	JOIN department as d
		ON (d.dept_no = dm.dept_no)
		JOIN employees as e
			ON (e.emp_no = dm.emp_no);
			
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
	JOIN dept_emp as dm
		ON (e.emp_no = dm.emp_no)
		JOIN department as d
			ON (d.dept_no = dm.dept_no);
			
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT e.first_name, e.last_name, e.sex
FROM employees as e
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
	
--List each employee in the Sales department, including their employee number, last name, and first name
SELECT d.dept_name, de.emp_no, e.last_name, e.first_name
FROM employees as e
	JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
		JOIN department as d
			ON (de.dept_no = d.dept_no)
				WHERE d.dept_name = 'Sales';
				
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
	JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
		JOIN department as d
			ON (de.dept_no = d.dept_no)
				WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';
				
-- List the frequency counts, in descending order, of all the employee last names 
SELECT e.last_name, COUNT(e.last_name) AS last_name_frequency
FROM employees as e
GROUP BY e.last_name
ORDER BY last_name DESC;
