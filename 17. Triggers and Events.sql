-- Triggers and Events

-- Select * from employee_demographics;

-- select *  from employee_salary;

-- Stored in parks_and_recreation --> employee_salary --> Triggers
DELIMITER $$
create trigger employee_insert
	after insert on employee_salary
    for each row
    Begin
		insert into employee_demographics (employee_id, first_name, last_name)
        values (New.employee_id, new.first_name, new.last_name);
    End $$
    DELIMITER ;
    
Insert into employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
values(13, 'Jean-Ralphio', 'Saperstein', 'Exntertainment 720 CEO', 1000000, NULL);




-- Events
# More like a scheduled automation technique
Select * from employee_demographics

Delimiter $$
alter event delete_retirees
on schedule Every 30 day
DO
Begin 
	DELETE
    from employee_demographics
    where age >= 60;
END $$
Delimiter ;


SHOW VARIABLES LIKE 'event%';





