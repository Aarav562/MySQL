-- Stored Procedures
# A way to save our sql code which we can reuse over and over again
# It is somewhat like a function

-- SELECT *
-- FROM employee_salary
-- WHERE salary>=50000
-- ;

# USE parks_and_recreation # For specifying the database
-- CREATE PROCEDURE large_salaries()
-- SELECT *
-- FROM employee_salary
-- WHERE salary>=50000
-- ;


-- DELIMITER $$  #Changing the DElimeter creating our stored procedue and storing all the code in the procedure
-- CREATE PROCEDURE large_salaries3()
-- BEGIN
-- 	SELECT *
-- 	FROM employee_salary
-- 	WHERE salary>=50000;
-- 	SELECT *
-- 	FROM employee_salary
-- 	WHERE salary>=100000;
-- END $$
-- DELIMITER ;

-- CALL large_salaries3();

DELIMITER $$
CREATE PROCEDURE large_salary()
BEGIN
	SELECT *
    FROM employee_salary
    WHERE salary>=50000;
    SELECT *
    FROM employee_salary
    WHERE salary >=10000;
END $$
DELIMITER ;


-- DELIMITER $$
-- CREATE PROCEDURE large_salaries(employee_id INT) # A parameter
-- BEGIN
-- 	SELECT salary
--     FROM employee_salary
--     WHERE employee_id = employee_id
--     ;
-- END $$
-- DELIMITER ;

CALL large1(7);


