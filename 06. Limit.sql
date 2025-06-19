-- Limit

select * from employee_demographics
order by age desc
limit 2, 1; # Start at podition 2, select the next 1 row

-- Aliasing
select gender, avg(age) as avg_age	# "as" is not necessary here
from employee_demographics
group by gender
having avg_age > 40