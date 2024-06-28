# LIMIT + ALIASING

#LIMIT = limits the number of rows to be displayed can be used with ORDER BY To be very powerful
SELECT *
FROM employee_demographics
LIMIT 3
;

# The three oldest people
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3
;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1 # Starting at position 2 and taking the 1 row after
;

#ALIASING = Used to rename the column names

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40
;
