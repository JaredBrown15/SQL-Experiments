-- Unions

select first_name, last_name
from employee_demographics
Union distinct	# Distinct (removes duplicates) vs All
select first_name, last_name
from employee_salary;


select first_name, last_name, 'Old Man' as label
from employee_demographics
where age > 40 and gender = 'Male'
Union
select first_name, last_name, 'Old Lady' as label
from employee_demographics
where age > 40 and gender = 'female'
union
select first_name, last_name, 'Highly Paid Employee' as label
from employee_salary
where salary > 70000
order by first_name, last_name;
    
    