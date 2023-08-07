--find the employee number, last name, first name, sex and salary of each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
salaries.emp_no=employees.emp_no;

--Determine the first name, last name, and hire date of employees hired in 1986
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date LIKE '%/1986';

--determine the first name, last name, department name, department number, 
-- and employee number for the manager of each department.
SELECT  dept_manager.dept_no, employees.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM dept_manager
INNER JOIN department ON
department.dept_no=dept_manager.dept_no
INNER JOIN employees ON
employees.emp_no=dept_manager.emp_no;

--Determine the department number, employee number, last name, first name,
--and department name for each employee.
SELECT  dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM dept_emp
INNER JOIN department ON
department.dept_no=dept_emp.dept_no
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no;

--Find the first name, last name, and sex of each employee with a first name of
--"Hercules" and a last name beginning with "B"
SELECT first_name, last_name, sex 
FROM employees
WHERE
		first_name = 'Hercules'
		AND last_name LIKE 'B%';
		
--Determine the first name, last name and employee number of every employee in Sales
SELECT dept_emp.emp_no, employees.last_name, employees.first_name
FROM dept_emp
INNER JOIN department ON
department.dept_no=dept_emp.dept_no
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no
WHERE dept_name = 'Sales';

--Determine the first and last names, employee number, and department name of each
--employee in Sales and Development
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, department.dept_name
FROM dept_emp
INNER JOIN department ON
department.dept_no=dept_emp.dept_no
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no
WHERE 
		dept_name = 'Sales'
		OR dept_name = 'Development'
		
--Determine how many employees have the same last name, 
--and list the frequencies in descending order
SELECT last_name, COUNT(last_name) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY "Last Name Count" DESC;