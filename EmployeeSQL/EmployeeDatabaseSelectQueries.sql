--1.List the following details of each employee: employee number, last name, first name, sex, and salary.
select e.emp_no as "Employee Number"
,e.last_name
,e.first_name
,e.sex
,s.salary
--select count(*)
from employee e
join salary s on e.emp_no = s.emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.
select 
e.first_name
,e.last_name
,e.hire_date
from employee e
where  date_part('year', e.hire_date) = 1986

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select d.dept_no as "Department Number"
, d.dept_name as "Department Name"
, dm.emp_no as "Manager Employee Number"
, e.last_name
, e.first_name
from department as d
join department_manager as dm on d.dept_no = dm.dept_no
join employee as e on dm.emp_no = e.emp_no
order by d.dept_no, dm.emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select e.emp_no as "Employee Number"
,e.last_name
,e.first_name
,d.dept_name as "Department Name"
--select count(*)
from employee as e
join department_employee as de on e.emp_no = de.emp_no
join department as d on de.dept_no = d.dept_no

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select 
e.first_name 
,e.last_name
,e.sex
--select count(*)
from employee as e
where 
e.first_Name = 'Hercules'
and left(e.last_name,2) = 'B.'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select e.emp_no as "Employee Number"
,e.last_name
,e.first_name
,d.dept_name as "Department Name"
--select count(*)
from employee as e
join department_employee as de on e.emp_no = de.emp_no
join department as d on de.dept_no = d.dept_no
where d.dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no as "Employee Number"
,e.last_name
,e.first_name
,d.dept_name as "Department Name"
--select count(*)
from employee as e
join department_employee as de on e.emp_no = de.emp_no
join department as d on de.dept_no = d.dept_no
where d.dept_name in( 'Sales','Development')
