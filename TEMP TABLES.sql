-- Temporary Table
# Tables that are only visible to the session that their created
# Storing intermediate results from complex queries, for manipulating data before inserting into a permanent table
# Lives in the memory



#First way to create a temp table
CREATE TEMPORARY TABLE temp_table
(
first_name VARCHAR(50),
last_name VARCHAR(50),
favourite_movie VARCHAR(100)
);


SELECT *
FROM temp_table
;

INSERT INTO temp_table
VALUES('Alex','Freiberg','Lord of The Rings: The Two Towers') ;


#Second way of creating temp table
SELECT *
FROM employee_salary;


#Creating a temporary table from an already existing table
CREATE TEMPORARY TABLE salary_over_50k
SELECT * 
FROM employee_salary
WHERE salary >= 50000
;


SELECT *
FROM salary_over_50k
;
