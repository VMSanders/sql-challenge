-- Make all the tables to import in the CSV files. All of em.
DROP TABLE IF EXISTS titles CASCADE;

CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR
);

DROP TABLE IF EXISTS employees CASCADE;

CREATE TABLE employees (
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

DROP TABLE IF EXISTS departments CASCADE;

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

DROP TABLE IF EXISTS dept_manager CASCADE;

CREATE TABLE dept_manager (
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	emp_no INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE IF EXISTS dept_emp CASCADE;

CREATE TABLE dept_emp (
	emp_no INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

DROP TABLE IF EXISTS salaries CASCADE;

CREATE TABLE salaries (
	emp_no INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INTEGER
)

-- 1. Find employee number, first and last name, sex and salary for all employees.
SELECT employees.emp_no, last_name, first_name, sex, salary 
FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;

-- 2. Find the first and last name and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. List manager of each deparment w/ dept number, dept name, employee number, last name, and first name.
SELECT departments.dept_no, dept_name, employees.emp_no AS mgr_emp_no, last_name, first_name
FROM dept_manager 
INNER JOIN employees
ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments
ON departments.dept_no = dept_manager.dept_no;

-- 4. List dept number for each employee along with their employee number, first and last name, and dept name
SELECT departments.dept_no, dept_name, employees.emp_no, last_name, first_name
FROM dept_emp
INNER JOIN employees
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no;

-- 5. List first and last name and sex or each employee whose first name is Hercules and whose last name starts with B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- 6. List each employee in Sales dept including employee number, last name, and first name.
SELECT employees.emp_no, last_name, first_name
FROM dept_emp
INNER JOIN employees
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales';

-- 7. List each employee in Sales and Development depts, including emp number, last name, first name, and dept name.
SELECT employees.emp_no, last_name, first_name, dept_name
FROM dept_emp
INNER JOIN employees
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';

-- 8. List frequency counts, in descending order, of all employee last names.
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
