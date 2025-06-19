-- Where Clause

Select * from parks_and_recreation.employee_salary;

Select * FROM employee_salary
where first_name = 'Leslie';	# New line doesn't matter. Semi-colon marks end of current query

Select * FROM employee_salary
where salary >= '50000';	# Don't need quotes here around 50000

Select * from employee_demographics
where gender = 'Female';	# DO need quotes here around 50000

Select * from employee_demographics
where birth_date > '1985-01-01'	# Standard Date format (Y-M-D)
and not (gender = 'male' or age > 30);

SELECT * FROM employee_demographics
where first_name like 'jer%';		# 
# %a% - must contain a
# jer% -  must start with jer
# %ry must end with ry
# a__ must have an a followed by exactly 2 characters
# a___% must have an a followed by at least 3 characters

