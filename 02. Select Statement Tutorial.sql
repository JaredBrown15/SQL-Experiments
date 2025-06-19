SELECT * FROM parks_and_recreation.employee_demographics; # Don't NEED parks_and_recreation if focus is on correct database (bolded database in schemas to the left)

SELECT first_name, 
last_name, 
birth_date,
age,
age + 10
FROM parks_and_recreation.employee_demographics;

select distinct gender from parks_and_recreation.employee_demographics;

select distinct first_name, gender from parks_and_recreation.employee_demographics # Uses distinct combinations of name AND gender