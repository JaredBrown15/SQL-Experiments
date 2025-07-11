-- String Functions

select length('skyfall');


select first_name, length(first_name)
from employee_demographics
order by 2;

select upper('sky');
select lower('SKY');

select first_name, Upper(first_name)
from employee_demographics;

Select trim('           sky         ');	# Ltrim, Rtrim, trim (left, right, and both)

select first_name, 
left(first_name, 4),
right(first_name, 4),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) as birth_month
from employee_demographics;


select first_name, replace(first_name, 'a', 'Z')	# Case sensitive
from employee_demographics;

select locate('x', 'Alexander');		# What position is 'x' in in the word 'Alexander'?

select first_name, last_name,
concat(first_name, ' ', last_name) as full_name
from employee_demographics;