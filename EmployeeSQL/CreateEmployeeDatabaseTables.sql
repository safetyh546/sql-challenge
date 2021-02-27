-- Create department table
CREATE TABLE department (
    dept_no VARCHAR(4),
    dept_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (dept_no)
);

-- Create title table
CREATE TABLE title (
    title_id VARCHAR(5),
    title VARCHAR(100) NOT NULL,
    PRIMARY KEY (title_id)
);

-- Create employee table
CREATE TABLE employee (
    emp_no int,
    title_id VARCHAR(5) NOT NULL,
	birth_date date NOT NULL,
	first_name varchar(255) NOT NULL,
	last_name varchar(255) NOT NULL,
	sex varchar(1) NOT NULL,
	hire_date date NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (title_id) REFERENCES title(title_id)
);

-- Create salary table
CREATE TABLE salary (
    emp_no int,
    salary money NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

-- Create department_manager table
CREATE TABLE department_manager (
    dept_no VARCHAR(4),
    emp_no int NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);

-- Create department_employee table
CREATE TABLE department_employee (
    emp_no int NOT NULL,
	dept_no VARCHAR(4),  
    PRIMARY KEY (emp_no,dept_no ),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
);
