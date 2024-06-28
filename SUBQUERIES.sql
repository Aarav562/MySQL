-- SUBQUERIES
# A query within another query


-- Selecting everything in emplotee_demographics table which is in the employee_id of the salary table where dept_id =1
# Can only have one column inside the Operand
#Subquery in WHERE QUERY
SELECT *
FROM employee_demographics
WHERE employee_id IN
	(SELECT employee_id
		FROM employee_salary
			WHERE dept_id = 1)
;


#SUBQUERY in SELECT QUERY
SELECT first_name,
salary,
	(SELECT AVG(salary)
		FROM employee_salary)
FROM employee_salary
;


#SUBQUERY IN FROM QUERY
SELECT gender, AVG(age) AS avg_age, MAX(age) AS max_age, MIN(age) AS min_age, COUNT(age) AS count_age
FROM employee_demographics
GROUP BY gender
;

SELECT  AVG(`MAX(age)`)
FROM
(SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender) AS aggreted_table