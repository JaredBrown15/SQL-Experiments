-- CTEs (Common Table Expressions

with CTE_Example (Gender, Avg_Sal, Max_Sal, Min_Sal, Count_Sal) as
(
select gender, AVG(salary), max(salary), min(salary), count(salary)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id = sal.employee_id
group by gender
)

select *
from CTE_Example;


with CTE_Example as
(
	select employee_id, gender, birth_date
    from employee_demographics
    where birth_date > '1985-01-01'
),
CTE_Example2 as
(
	select employee_id, salary
    from employee_salary
    where salary > 50000
)
select *
from CTE_Example
Join CTE_Example2
	On CTE_Example.employee_id = CTE_Example2.employee_id
;