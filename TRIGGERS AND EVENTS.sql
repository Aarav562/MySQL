-- Triggers and Events
# Trigger is  A block of code that executes automatically when an event takes place in a specfic table

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

# A example of triggers and events where when a new employee is inserted into the employee_salary table it is also inserted into the employee_demographics table
DELIMITER $$
CREATE TRIGGER employee_insert
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics (employee_id,first_name,last_name)
    VALUES (NEW.employee_id, NEW.first_name, NEW.last_name);
END  $$
DELIMITER ;

INSERT INTO employee_salary(employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(13,'John','Mike','Entertainment 720 CEO',100000,NULL);

-- EVENTS
# An event takes place when it is scheduled
SELECT *
FROM employee_demographics;


DELIMITER $$
CREATE EVENT delete_retirees
ON SCHEDULE EVERY 30 SECOND
DO 
BEGIN
	DELETE 
    FROM employee_demographics
    WHERE age>=60;
END $$
DELIMITER ;

-- If the above code didnt work or the event was not created then
SHOW VARIABLES LIKE 'event%';