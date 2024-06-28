-- UNIONS
# Allows us to combine rows together


SELECT first_name,last_name
FROM employee_demographics
UNION DISTINCT #Goona remove all the duplicate elements
SELECT first_name,last_name
FROM employee_salary
;

#by using ALL we can also include the duplicates in it
SELECT first_name,last_name
FROM employee_demographics
UNION ALL
SELECT first_name,last_name
FROM employee_salary
;

SELECT first_name,last_name, 'Old Man' AS label # Gives a label to the given data to use them for clarification
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name,last_name, 'Old Lady' AS label # 
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name,last_name, 'Highly Paid' AS label 
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name,last_name
;