-- WINDOWS FUNCTION
# allows us to look at a partition or a group where they each keep their rows

SELECT gender, AVG(salary) AS avg_salary
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal .employee_id
GROUP BY gender
;

# gives us the average salary of the entire column
SELECT gender, AVG(salary) OVER() #average salary over everything
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal .employee_id
;

# partitions the average salary by gender
SELECT dem.first_name, dem.last_name,gender, AVG(salary) OVER(PARTITION BY gender) 
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal .employee_id
;

#rolling total is goona start at a specific value and add on values from subsequent rows based on the partition
SELECT dem.first_name, dem.last_name,gender, SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id)  AS rolling_total,salary
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal .employee_id
;


SELECT dem.employee_id,dem.first_name, dem.last_name,gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC)AS rank_num, # gives position positionally
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC)AS dense_rank_num # gives position numerically
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal .employee_id
;