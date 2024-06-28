# WHERE STATEMENT

SELECT * 
FROM employee_salary
WHERE first_name = 'Leslie'
;


SELECT * 
FROM employee_salary
WHERE salary <= 50000
;


SELECT * 
FROM employee_demographics
WHERE birth_date > '1985-01-01'
;

#AND OR NOT

SELECT * 
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age =44)
OR age > 55
;

#LIKE STATEMENT
# %and_ %:Means anything _:Means no of values
SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'a___%' #The name should start with A and have 3 characters at least then it can have anything.
;
