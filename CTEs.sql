-- CTEs (Common Table Expression)
# Allows us to define a subquery block and we can reference it to the main query
# Allows us to perform more advanced calculations


WITH CTE_example AS
(
SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal, COUNT(salary) AS count_sal
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON	dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_example
;

# Same output as the CTE but by using Subqueries
SELECT AVG(avg_sal)
FROM(
SELECT gender, AVG(salary) AS avg_sal, MAX(salary) AS max_sal, MIN(salary) AS min_sal, COUNT(salary) AS count_sal
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON	dem.employee_id = sal.employee_id
GROUP BY gender
) AS example_subquery
;

# IT wont run as CTE is created a lot before ecause CTEs can only be used right after creating it
SELECT AVG(avg_sal)
FROM CTE_example
;

#Multiple CTEs 
WITH CTE_example AS
(
SELECT employee_id , gender , birth_date
FROM employee_demographics 
WHERE birth_date >'1985-01-01'
),
CTE_example2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_example
JOIN CTE_example2
	ON CTE_example.employee_id = CTE_example2.employee_id
;



WITH CTE_example(gender,Avg_salary,Max_salary,Min_salary,Count_salary) AS # the paranthesis will overwrite the column name in our queries
(
SELECT gender, AVG(salary) , MAX(salary) , MIN(salary), COUNT(salary) 
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON	dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_example
;