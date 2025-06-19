-- Temporary Tables
# Only available in the session in which they are created

CREATE TEMPORARY TABLE temp_table
( first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(50)
);

Select * from temp_table;

INSERT INTO temp_table
Values('Jared','Brown','Batman: The Dark Knight');

Select *
FROM employee_salary;

Create temporary table salary_over_50k
Select * from employee_salary
where salary >= 50000;

Select *
FROM salary_over_50k;


