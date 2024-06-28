# HAVING VS WHERE

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) >40
;

# HAVING only works for the GROUP BY function after it is already executed
SELECT occupation,
AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) >75000
;