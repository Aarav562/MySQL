-- Case Statements
# Allows us to add logic in our SELECT statement

SELECT first_name,
last_name,
CASE
	WHEN age <= 30 THEN 'Young'
	#WHEN age >= 30 AND age < 50 THEN 'Middle Aged'
    WHEN age BETWEEN 31 and 50 THEN 'Middle Aged'
	ELSE 'Old'
END AS 'General'
FROM employee_demographics;

-- Pay INcrease and Bonus
# < 50000 = 5%
# > 50000 = 7%
# Finance = 10% 

SELECT first_name,
last_name,
salary,
CASE
	WHEN salary < 50000 THEN salary + (salary *0.05)
    WHEN salary > 50000 THEN salary + (salary *0.07)
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN salary + (salary *0.1)
END AS bonus
FROM employee_salary
;

SELECT *
FROM employee_salary;
SELECT *
FROM parks_departments;