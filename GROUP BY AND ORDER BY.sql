#GROUP BY
# Groups rows on the basis of a specific columns
SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT gender,
AVG(age)
FROM employee_demographics
GROUP BY gender
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

SELECT gender,
AVG(age),
MAX(age),
MIN(age),
COUNT(age)
FROM employee_demographics
GROUP BY gender
;

#ORDER BY
# -- Arranges in the ascending or descending order
SELECT *
FROM employee_demographics
ORDER BY gender, age DESC #Will only be descending for age
;

#Gender wont be used as no unique value in it
SELECT *
FROM employee_demographics
ORDER BY age, gender
;

#Can also use Column Position
SELECT *
FROM employee_demographics
ORDER BY 5, 4
;

