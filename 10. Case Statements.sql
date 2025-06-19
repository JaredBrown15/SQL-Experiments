-- Case Statements

select first_name, last_name,
case
	when age <= 30 then 'Young'
    when age between 31 and 50 then 'old'
    when age >50 then "On death's door"
end as age_bracket
from employee_demographics;


-- Pay Increase Bonus
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% bonus


select first_name, last_name, salary,
case
	when salary < 50000 then salary*1.05
    when salary >= 50000 then salary*1.07
end as new_salary,
case
	when dept_id = 6 then salary*0.1
    else 0
end as Bonus
from employee_salary;