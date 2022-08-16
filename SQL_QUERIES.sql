-- Use the provided information to create all tables
-- create table title

CREATE TABLE title
(
	title_id VARCHAR  NOT NULL,
	title VARCHAR NOT NULL,
	PRIMARY KEY (title_id)	
);

-- Query all fields from the table
SELECT *
FROM title;

--create table employee
CREATE TABLE employee

(emp_no INTEGER PRIMARY KEY,
 emp_title_id VARCHAR,
 birth_date DATE,
 first_name VARCHAR ,
 last_name VARCHAR,
 sex VARCHAR,
 hire_date DATE,
 FOREIGN KEY (emp_title_id) REFERENCES title(title_id)
 );
 
-- Query all fields from the table
SELECT *
FROM employee;

--create department table
CREATE TABLE departments
(
	dept_no VARCHAR PRIMARY KEY NOT NULL,
	dept_name VARCHAR NOT NULL,
);
-- Query all fields from the table
SELECT  *
FROM departments ;

--create department manager table
   CREATE TABLE dept_manager
   (dept_no VARCHAR,
    emp_no INTEGER,
    PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);
 
 -- Query all fields from the table
 SELECT *
 FROM dept_manager ;

--create department employee table
 CREATE TABLE dept_emp
 (emp_no INTEGER,
  dept_no VARCHAR,
    PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);
 -- Query all fields from the table
 SELECT *
 FROM dept_emp
 
 --create salaries table
 CREATE TABLE salaries
 (emp_no INTEGER PRIMARY KEY,
  salary INTEGER
  FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
 );
-- Query all fields from the table
SELECT *
FROM salaries

--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employee.emp_no, last_name, first_name, sex,salary
FROM employee
JOIN salaries ON employee.emp_no = salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employee
WHERE hire_date
LIKE  '%1986' ;

--3. List the manager of each department with the following information:
--department number, department name, the manager's employee number, last name, first name.
SELECT departments.dept_no, dept_name, dept_manager.emp_no, last_name, first_name
FROM employee
JOIN dept_manager ON employee.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no;

--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, last_name, first_name, departments.dept_name
FROM employee
JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;
--JOIN employee ON dept_emp.emp_no = employee.emp_no

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employee 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employee.emp_no, last_name, first_name, dept_name
FROM employee
JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no LIKE 'd007';

--7. List all employees in the Sales and Development departments,
--including their employee number, last name, first name, and department name.
SELECT employee.emp_no, last_name, first_name, dept_name
FROM employee
JOIN dept_emp ON employee.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
-- The department numbers of Sales and Development departments are d007 and d005
WHERE departments.dept_no = 'd007' or departments.dept_no = 'd005';
SELECT * FROM departments;

--8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

SELECT last_name, COUNT(last_name) AS "Frequency count"
FROM employee
GROUP BY last_name
ORDER BY "Frequency count" DESC;


