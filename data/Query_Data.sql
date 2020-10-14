select * from employees

select last_name, mean(last_name) as "Average Names"
from employees
Group by last_names

create table employee_lastname as
select last_name, count(last_name) as "Common Name"
from employees
group by "last_name" 
ORDER BY "Common Name" DESC;

select * from employee_lastname