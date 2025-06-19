-- Stored Procedures

Select * from employee_salary
where salary >= 50000;

create procedure large_salaries()
Select * 
from employee_salary
where salary >= 50000;

call  large_salaries();
 
DELIMITER  $$
create procedure large_salaries3()
BEGIN 
	Select * from employee_salary
	where salary >= 50000;
	Select * from employee_salary
	where salary >= 10000;
END $$
DELIMITER ;

call large_salaries3();


DELIMITER  $$
create procedure large_salaries4(id INT)
BEGIN 
	Select salary
    from employee_salary
	where employee_salary.employee_id = id;
END $$
DELIMITER ;


call large_salaries4(1)