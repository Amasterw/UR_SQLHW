select * from departments
select * from dept_ee_info
select * from dept_emp
select * from dept_manager
select * from emp_info
select * from employees
select * from mang_info
select * from salaries
select * from titles
select * from ee_HB
select * from deptm_ee_info
select * from dept_sales

create table deptm_ee_info as 
select dept_ee_info.emp_no, dept_ee_info.dept_no, dept_ee_info.first_name, dept_ee_info.last_name, departments.dept_name
from dept_ee_info
inner join departments on dept_ee_info.dept_no=departments.dept_no

select * from deptm_ee_info

create table ee_HB as
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

select * from ee_HB

create table dept_sales as
select * from deptm_ee_info
where dept_name = 'Sales'

select * from dept_sales

create table dept_sales_dev as
select emp_no, first_name, last_name, dept_name
from deptm_ee_info
where dept_name = 'Sales'
or dept_name = 'Development';

select * from dept_sales_dev

create table emp_1986 as
select last_name, first_name, hire_date
from employees 
where hire_date like '%1986';

select * from emp_1986