title

title_id VARCHAR PK
title VARCHAR 
	
employee

emp_no INTEGER PK
emp_title_id VARCHAR FK >- titles.title_id
birth_date DATE
first_name VARCHAR 
last_name VARCHAR
sex VARCHAR
hire_date DATE
 
departments

dept_no VARCHAR PK
dept_name VARCHAR 

---- The dept_manager table is many-many relationship, so two primary keys are needed
dept_manager
dept_no PK VARCHAR FK >- departments.dept_no
emp_no PK INTEGER FK >- employee.emp_no

-- The dept_emp table is many-many relationship, so two primary keys are needed
dept_emp

emp_no PK int FK >- employees.emp_no
dept_no PK VARCHAR FK >- departments.dept_no

salaries
emp_no PK int FK - employees.emp_no
salary int
 
