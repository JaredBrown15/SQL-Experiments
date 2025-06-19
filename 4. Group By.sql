-- Group By 

select * from employee_demographics;

select gender, AVG(age), MAX(age), count(age)
from employee_demographics
group by gender;	# Select must match group by (unless using aggregate function)

select occupation, salary
from employee_salary
group by occupation, salary;	# Select must match group by (unless using aggregate function (such as AVG())

select *
from employee_demographics
ORDER BY gender DESC, age ASC;	# ASC vs DESC
# Order of gender, then age matters!!! First column must have the mulitples 
# (if you put age first, it will not work becasue it will sort by age, then within each age, sort by gender, but each age only has 1 gender associated... see below)

select *
from employee_demographics
ORDER BY 4 DESC, 5 ASC;	# ASC vs DESC