#JOIN 
# ALlows us to combine two tables or more if they have a commmon column where the data inside the column must be similar

SELECT * FROM employee_demographics;

SELECT * FROM employee_salary;

#INNER JOIN = returns rows that are the same in both columns from both tables
# By default JOIN is inner join

#SELECT employee_id, age, gender : Will not be able to identify from which table to select the employee_id
SELECT dem.employee_id,age, occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
#	ON employee_id = employee_id doesnt know from which table the both are, making it ambigious
	ON dem.employee_id = sal.employee_id
;


#OUTER JOIN
# LEFT OUTER JOIN = will take everything from the left table and only return the matches from the right table

SELECT *
FROM employee_demographics AS dem #(left Table)
LEFT JOIN employee_salary AS sal  #(right Table)
	ON dem.employee_id = sal.employee_id
;

# RIGHT OUTER JOIN = the same thing as left outer join but only that it takes everything from the right table
# IF no match then it will write NULL
SELECT *
FROM employee_demographics AS dem #(left Table)
RIGHT JOIN employee_salary AS sal  #(right Table)
	ON dem.employee_id = sal.employee_id
;


# SELF JOIN
SELECT emp1.employee_id AS emp_santa,
emp1.first_name AS first_name_santa,
emp1.last_name AS last_name_santa,
emp2.employee_id AS employee,
emp2.first_name AS first_name,
emp2.last_name AS last_name
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 = emp2.employee_id
;


# JOINING MULTIPLE TABLES TOGETHER

SELECT *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments AS pd
	ON sal.dept_id = pd.department_id
;

# parks_departments is the reference table
SELECT *
FROM parks_departments; 

