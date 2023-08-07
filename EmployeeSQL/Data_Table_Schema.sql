--Drop table if pre-existing
DROP TABLE department;

DROP TABLE titles;

DROP TABLE employees;

DROP TABLE dept_emp;

DROP TABLE dept_manager;

DROP TABLE salaries;


--create tables
CREATE TABLE department(
	dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);

SELECT * FROM department;

CREATE TABLE Titles(
  title_id VARCHAR NOT NULL PRIMARY KEY,
  title VARCHAR NOT NULL
);

SELECT * FROM Titles;

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager(
	dept_no VARCHAR NOT NULL,
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	PRIMARY KEY (dept_no, emp_no)
);

SELECT * FROM dept_manager;


CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no, salary)
);

SELECT * FROM salaries;


--Data was imported by selecting each table name in the sidebar to the left, and selecting the import option.
--The corresponding file was selected for each table, and imported in the order they were created.

