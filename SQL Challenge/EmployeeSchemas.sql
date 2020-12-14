CREATE TABLE salaries (
	emp_no INTEGER PRIMARY KEY,
	salary INTEGER NOT NULL
);

CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY, 
	dept_name VARCHAR NOT NULL
);

CREATE TABLE titles (
	title_id VARCHAR NOT NULL PRIMARY KEY,
	title VARCHAR NOT NULL
);
	
CREATE TABLE employees (
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
	
CREATE TABLE dept_managers (
	dept_no VARCHAR NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
);

CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL, 
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


